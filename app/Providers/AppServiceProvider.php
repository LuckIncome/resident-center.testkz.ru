<?php

namespace App\Providers;
use App\Models\Contact;
use App\Models\Consultation;
use TCG\Voyager\Models\Page;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;
use TCG\Voyager\Http\Controllers\ContentTypes\Image;
use TCG\Voyager\Http\Controllers\ContentTypes\MultipleImage;
use TCG\Voyager\Http\Controllers\Controller;
use TCG\Voyager\Http\Controllers\VoyagerController;
use TCG\Voyager\Http\Controllers\VoyagerSettingsController;
use TCG\Voyager\Http\Controllers\VoyagerBaseController;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(VoyagerBaseController::class, \App\Http\Controllers\Voyager\VoyagerBaseController::class);
        $this->app->bind(VoyagerController::class, \App\Http\Controllers\Voyager\VoyagerController::class);
        $this->app->bind(Controller::class, \App\Http\Controllers\Voyager\Controller::class);
        $this->app->bind(VoyagerSettingsController::class, \App\Http\Controllers\Voyager\VoyagerSettingsController::class);
        $this->app->bind(Image::class, \App\Http\Controllers\Voyager\ContentTypes\Image::class);
        $this->app->bind(MultipleImage::class, \App\Http\Controllers\Voyager\ContentTypes\MultipleImage::class);
    }

    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        Schema::defaultStringLength(191); 

         view()->composer([
            'partials.header', 
            'partials.footer',
            'partials.consultation',  
            'partials.sidebar',
            'pages.contacts', 
        ], function ($view)
        {
            $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();
            $view->with('phone',$phone);

            $phones = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->orderBy('sort_id')->get();
            $view->with('phones',$phones);

            $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();
            $view->with('email',$email);

            $address = Contact::select('value')->where('type','address')->where('is_main',true)->where('status',true)->firstOrFail();
            $view->with('address',$address);

            $socials = Contact::where('type','social')->where('is_main',true)->where('status',true)->orderBy('sort_id')->get();
            $view->with('socials',$socials);

            $map = Contact::select('value', 'icon')->where('type','map')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();
            $view->with('map',$map);

            $consultation = Consultation::firstOrFail();
            $view->with('consultation',$consultation);

            $pages = Page::whereNotIn('type',['home'])->where('status',Page::STATUS_ACTIVE)->get();
            $pages = $pages->groupBy('type');
            $view->with('pages',$pages);
        });
    }
}

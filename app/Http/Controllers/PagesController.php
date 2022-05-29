<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Contact;
use App\Models\Partner;
use App\Models\FAQ;
use App\Models\About;
use App\Models\Review;
use App\Models\Service;
use App\Models\Slider;
use App\Models\Policy;
use App\Models\Citizenship;
use App\Models\Document;
use App\Models\Give;
use App\Models\Consultation;

use App\Models\User;
use Illuminate\Http\Client\Response;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class PagesController extends Controller
{
    public function getPage($slug = 'home')
    {
        if (strpos(url()->current(), 'home') !== false) {            
            abort(404);
        } else {
            $page = Page::select('type', 'id', 'title', 'excerpt', 'body', 'image', 'slug', 'seo_title', 'meta_description', 'meta_keywords', 'status')
                ->where(['slug' => $slug, 'status' => Page::STATUS_ACTIVE])
                ->firstOrFail();
        }

        switch ($page->type) {
            case 'home':
                $sliders = Slider::get();
                $about = About::firstOrFail();
                $faqs = FAQ::get();
                $reviews = Review::where('status', true)->orderBy('updated_at', 'desc')->get();
                $citizenship = Citizenship::where('status', true)->take(4)->get();
                $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();
                $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();
                $consultation = Consultation::firstOrFail();
                return view('pages.' . $page->type, compact(
                    'page', 
                    'reviews', 
                    'faqs',
                    'about',
                    'sliders',
                    'citizenship',
                    'phone',
                    'email',
                    'consultation'
                ));
                break;
            case 'partners':
                $partners = Partner::get();
                return view('pages.' . $page->type, compact('page', 'partners'));
                break;
            case 'faqs':
                $faqs = FAQ::get();
                return view('pages.' . $page->type, compact('page', 'faqs'));
                break;
            case 'about':
                $about = About::firstOrFail();
                return view('pages.' . $page->type, compact('page', 'about'));
                break;
            case 'reviews':
                $reviews = Review::where('status', true)->orderBy('updated_at', 'desc')->paginate(10);
                return view('pages.' . $page->type, compact('page', 'reviews'));
                break;
            case 'services':
                $services = Service::paginate(5);
                return view('pages.' . $page->type, compact('page', 'services'));
                break;
            case 'policy':
                $policy = Policy::firstOrFail();
                return view('pages.' . $page->type, compact('page', 'policy'));
                break;
            case 'simple':
                return view('pages.' . $page->type, compact('page'));
                break;
            default :
                return view('pages.' . $page->type, compact('page'));
                break;
        }
    }
}

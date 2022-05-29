<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;

use Illuminate\Http\Request;

use App\Models\Citizenship;
use App\Models\Document;
use App\Models\Give;
use App\Models\Contact;
use App\Models\Consultation;

class CitizenshipController extends Controller
{
    public function index() 
    {
        $citizenship = Citizenship::where('status', true)->paginate(12);

        $page = Page::where(['type' => 'citizenship'])->firstOrFail();
        return view('pages.citizenship.index', compact('page', 'citizenship'));
    }

    public function show($article) 
    {
        $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();

        $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();

        $data = Citizenship::with(['document'])
            ->with(['give'])
            ->where('slug', $article)
            ->first();
        $consultation = Consultation::firstOrFail();
		
		if($data) {
			$citizenship = $data;
		} else {
			abort(404);
		}
        return view('pages.citizenship.show', compact('citizenship', 'phone', 'email', 'consultation'));
    }
}

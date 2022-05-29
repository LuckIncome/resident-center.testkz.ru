<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Status;
use App\Models\What;
use App\Models\Contact;
use App\Models\Consultation;

use Illuminate\Http\Request;

class StatusController extends Controller
{
    public function index() 
    {
        $status = Status::where('status', true)->paginate(12);
        $page = Page::where(['type' => 'status'])->firstOrFail();
        return view('pages.status.index', compact('page', 'status'));
    }

    public function show($article) 
    {
        $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();

        $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();
        
        $data = Status::with(['what'])->where('slug', $article)->first();
		$consultation = Consultation::firstOrFail();
		
		if($data) {
			$status = $data;
		} else {
			abort(404);
		}
		return view('pages.status.show', compact('status', 'phone', 'email', 'consultation'));
     
    }
}

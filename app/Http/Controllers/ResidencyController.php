<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Residency;
use App\Models\Contact;
use App\Models\Consultation;

use Illuminate\Http\Request;

class ResidencyController extends Controller
{
    public function index() 
    {
        $residency = Residency::where('status', true)->paginate(12);
        $page = Page::where(['type' => 'residency'])->firstOrFail();
        return view('pages.residency.index', compact('page', 'residency'));
    }

    public function show($article) 
    {
        $phone = Contact::select('value', 'link')->where('type','phone')->where('is_main',true)->where('status',true)->where('sort_id',1)->firstOrFail();

        $email = Contact::select('value', 'link')->where('type','email')->where('is_main',true)->where('status',true)->firstOrFail();
 
		$data = Residency::where('slug', $article)->first();
		$consultation = Consultation::firstOrFail();
		if($data) {
			$residency = $data;
		} else {
			abort(404);
		}
		return view('pages.residency.show', compact('residency', 'phone', 'email', 'consultation'));    
    }
}

<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Education;
use App\Models\EducationContent;

use Illuminate\Http\Request;

class EducationController extends Controller
{
    public function index() 
    {
        $educations = Education::where('status', true)->paginate(12);

        $page = Page::where(['type' => 'education'])->firstOrFail();
        return view('pages.education.index', compact('page', 'educations'));
    }

    public function show($article) 
    {
        $data = Education::with(['education_content'])->where('slug', $article)->first();
		if($data) {
			$education = $data;
		} else {
			abort(404);
		}
        return view('pages.education.show', compact('education'));
    }
}

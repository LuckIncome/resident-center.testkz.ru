<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Page;
use App\Models\Work;
use App\Models\WorkContent;

use Illuminate\Http\Request;

class WorkController extends Controller
{
    public function index() 
    {
        $works = Work::where('status', true)->paginate(12);

        $page = Page::where(['type' => 'work'])->firstOrFail();
        return view('pages.work.index', compact('page', 'works'));
    }

    public function show($article) 
    {
        $data = Work::with(['work_content'])->where('slug', $article)->first();
		if($data) {
			$work = $data;
		} else {
			abort(404);
		}
        return view('pages.work.show', compact('work'));
    }
}

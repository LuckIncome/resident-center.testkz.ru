@extends('partials.layout')
@section('page_title',(strlen($work->title) > 1 ? $work->title : ''))
@section('seo_title', (strlen($work->seo_title) > 1 ? $work->seo_title : ''))
@section('meta_keywords',(strlen($work->meta_keywords) > 1 ? $work->meta_keywords : ''))
@section('meta_description', (strlen($work->meta_description) > 1 ? $work->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', [
            'linktitle' => '/work',
            'title' => 'Работа',
            'subtitle' => $work->title
        ])

        <div class="navigation__title">
            <h1 class="title">{{ $work->title }}</h1>
        </div>
    </div>
</section>

<section class="previews">
    <img src="{{ Voyager::image($work->image) }}" alt="{{ $work->title }}">
</section>

<section class="works">
    <div class="container">

        @foreach($work->work_content as $w)
	        <div class="work">
	            <h3>{{ $w->title }}</h3>	
	            <div class="editors">
	                {!! $w->content !!}
	                {{-- Illuminate\Support\Str::limit($w->content, 428,'...') --}}
                </div>
	            <button @click="toggleModalLeaveFeedback('{{ $w->title }}')">получить консультацию</button>
	        </div>
        @endforeach

    </div>
</section>

@include('partials.consultation')  

@endsection


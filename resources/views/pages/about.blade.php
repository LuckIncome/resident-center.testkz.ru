@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', ['title' => $page->title])

        <div class="navigation__title">
            <h1 class="title">{{ $about->title }}</h1>
            <p>{{ $about->excerpt }}</p>
        </div>
    </div>
</section>

<section class="about-page">
    <img src="{{ Voyager::image($about->image) }}" class="about-page__banner" alt="{{ $about->title }}">
    <div class="advantage">
        <div class="container">
            <div class="advantage__item">
                <img src="{{ Voyager::image($about->adv_first_image) }}" alt="{{ $about->adv_first_title }}">
                <h4>{{ $about->adv_first_title }}</h4>
                <p>{{ $about->adv_first_excerpt }}</p>
            </div>
            <div class="advantage__item">
                <img src="{{ Voyager::image($about->adv_second_image) }}" alt="{{ $about->adv_second_title }}">
                <h4>{{ $about->adv_second_title }}</h4>
                <p>{{ $about->adv_second_excerpt }}</p>
            </div>
            <div class="advantage__item">
                <img src="{{ Voyager::image($about->adv_third_image) }}" alt="{{ $about->adv_third_title }}">
                <h4>{{ $about->adv_third_title }}</h4>
                <p>{{ $about->adv_third_excerpt }}</p>
            </div>
            <div class="advantage__item">
                <img src="{{ Voyager::image($about->adv_fouth_image) }}" alt="{{ $about->adv_fouth_title }}">
                <h4>{{ $about->adv_fouth_title }}</h4>
                <p>{{ $about->adv_fouth_excerpt }}</p>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="editors">
            {!! $about->content !!}
        </div>
    </div>
</section>

@include('partials.consultation') 

@endsection
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
            <h1 class="title">{{ $page->title }}</h1>
        </div>
    </div>
</section>

<section class="articles articles-page">
    <div class="container">
        <div class="articles__items">
            
            @foreach($citizenship as $c)
                <a href="{{ route('citizenship.show', ['article' => $c->slug]) }}" class="country">
                    <img src="{{ Voyager::image($c->bg_img) }}" alt="{{ $c->alt_bg_img }}">
                    <span>{{ $c->nav_title }}</span>
                </a>
            @endforeach
            
        </div>
    </div>
</section>

@include('partials.consultation') 

@endsection
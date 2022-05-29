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

<section class="partnership">
    <div class="container">
        <div class="partnership__info">
            
            @foreach($partners as $partner)
                <div class="item">
                    <h3>{{ $partner->title }}</h3>
                    <div class="editors">
                        {!! $partner->content !!}
                    </div>
                </div>
            @endforeach
         
        </div>
        <div class="partnership__image">
            <img src="{{ asset('assets/images/partnership-1.jpg') }}" alt="partnership">
        </div>
    </div>
</section>

@include('partials.consultation') 

@endsection
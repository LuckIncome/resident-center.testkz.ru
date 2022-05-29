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
            
            @foreach($educations as $education)
                <a href="{{ route('education.show', ['article' => $education->slug]) }}" class="country">
                    <img src="{{ Voyager::image($education->image) }}" alt="{{ $education->title }}">
                    <span>{{ $education->title }}</span>
                </a>
            @endforeach

        </div>
    </div>
</section>

@if($educations)
<section class="pagination">
    {{ $educations->links('partials.paginate') }}
</section>
@endif 

@include('partials.consultation') 

@endsection
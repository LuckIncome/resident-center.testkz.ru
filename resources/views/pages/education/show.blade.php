@extends('partials.layout')
@section('page_title',(strlen($education->title) > 1 ? $education->title : ''))
@section('seo_title', (strlen($education->seo_title) > 1 ? $education->seo_title : ''))
@section('meta_keywords',(strlen($education->meta_keywords) > 1 ? $education->meta_keywords : ''))
@section('meta_description', (strlen($education->meta_description) > 1 ? $education->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', [
            'linktitle' => '/education',
            'title' => 'Образование',
            'subtitle' => $education->title
        ])

        <div class="navigation__title">
            <h1 class="title">{{ $education->title }}</h1>
        </div>
    </div>
</section>

<section class="previews">
    <img src="{{ Voyager::image($education->image) }}" alt="{{ $education->title }}">
</section> 

<section class="educationes">
    <div class="container">
        
        @foreach($education->education_content as $ed)
	        <div class="education">
	            <img src="{{ Voyager::image($ed->image) }}" alt="{{ $ed->title }}">
	            <div>
	                <h3>{{ $ed->title }}</h3>
	                <div class="editors">
	                    {!! $ed->content !!}
	                    {{-- Illuminate\Support\Str::limit($ed->content, 428,'...') --}}
	                </div>
	                <button @click="toggleModalLeaveFeedback('{{ $ed->title }}')">получить консультацию</button>
	            </div>
	        </div>
        @endforeach
    
    </div>
</section>

@include('partials.consultation')         

@endsection


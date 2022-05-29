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

<section class="questions" id="questions">
    <div class="container">
        {{-- <h2 class="title">Частые вопросы</h2> --}}
        <div class="questions__items">
            
            @foreach($faqs as $faq)
                <div class="questions__item">
                    <button @click="toggleQuestions({{ $faq->id }})" :class="{'questions-show':valueQuestions == {{ $faq->id }}}">
                        {{ $faq->question }}
                        <i class="bi bi-caret-down-fill"></i>
                    </button>
                    <transition name="fade">
                        <div class="questions__body" v-if="valueQuestions == {{ $faq->id }}">
                            {!! $faq->answer !!}
                        </div>
                    </transition>
                </div>
            @endforeach

        </div>
    </div>
</section>

@include('partials.consultation') 

@endsection
@extends('partials.layout')
@section('page_title',(strlen($status->title) > 1 ? $status->title : ''))
@section('seo_title', (strlen($status->seo_title) > 1 ? $status->seo_title : ''))
@section('meta_keywords',(strlen($status->meta_keywords) > 1 ? $status->meta_keywords : ''))
@section('meta_description', (strlen($status->meta_description) > 1 ? $status->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">

        @include('partials.breadcrumbs', [
            'linktitle' => '/status',
            'title' => 'Налоговые статусы',
            'subtitle' => $status->nav_title
        ])

    </div>
</section>

<section class="article-page">
    <div class="container">
        <div class="article-page__head">
            <div>
                <h1>{{ $status->title }}</h1>
                <div class="description">{{ $status->description }}</div>
            </div>
            <img src="{{ Voyager::image($status->flag_img) }}" alt="{{ $status->title }}">
        </div>
        <div class="editors">
            {!! $status->first_content !!}
        </div>
    </div>
    <img src="{{ Voyager::image($status->bg_img) }}" class="article-page__main-img" alt="{{ $status->alt_bg_img }}">
</section>

@if($status->what->count() != 0)
    <section class="benefit">
        <div class="container">
            <h2 class="title">Что дает гражданство? </h2>
            <div class="benefit__items">

                @foreach($status->what as $what)
                    <div class="benefit__item">
                        <h3>{{ $what->title }}</h3>
                        {!! $what->content !!}
                    </div>
                @endforeach

            </div>
        </div>
    </section>
@endif

<section class="block">
    <div class="container">
        <h2 class="title">Кто может учавствовать в программе?</h2>
        <div class="block__items">
            <div class="block__item">
                <div class="block__info">
                    <div class="editors">
                        {!! $status->second_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($status->second_img) }}" alt="{{ $status->alt_second_img }}">
                    @if($status->first_second_img)
                        <img src="{{ Voyager::image($status->first_second_img) }}" alt="{{ $status->alt_first_second_img }}">
                    @endif
                    @if($status->second_second_img)
                        <img src="{{ Voyager::image($status->second_second_img) }}" alt="{{ $status->alt_second_second_img }}">
                    @endif
                </div>
            </div>

            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Необходимые документы:</h2>
                    <div class="editors">
                        {!! $status->third_content !!}
                    </div>
                    <button @click="toggleModalLeaveFeedback('Необходимые документы')">Заказать консультацию</button>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($status->third_img) }}" alt="{{ $status->alt_third_img }}">
                    @if($status->first_third_img)
                     <img src="{{ Voyager::image($status->first_third_img) }}" alt="{{ $status->alt_first_third_img }}">
                    @endif
                </div>
            </div>
            
            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Процесс подачи:</h2>
                    <div class="editors">
                        {!! $status->fourth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    @if($status->first_fourth_img)
                        <img src="{{ Voyager::image($status->first_fourth_img) }}" alt="{{ $status->alt_first_fourth_img }}">
                    @endif
                </div>
            </div>
        </div>
    </div>
</section>

<section class="consultation">
    <div class="consultation__wrapper">
    </div>
    <div class="container">
        <div class="consultation__info">
            <h2>Хотите получить {{ $status->help }}?</h2>
            <p>{{ $consultation->subtitle }}</p>
        </div>
        <div class="consultation__info">
            <button @click="toggleModalLeaveFeedback('{{ $status->help }}')">Заказать консультацию</button>
            <div class="items">
                <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">
                    <img src="{{ asset('assets/images/icons/call.svg') }}" alt="call"> 
                    {{ $phone->value }}
                </a>
                <a href="mailto:{{ $email->link }}">
                    <img src="{{ asset('assets/images/icons/email.svg') }}" alt="email"> 
                    {{ $email->value }}
                </a>
            </div>  
        </div>
    </div>
</section>

@endsection
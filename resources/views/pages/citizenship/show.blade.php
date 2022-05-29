@extends('partials.layout')
@section('page_title',(strlen($citizenship->title) > 1 ? $citizenship->title : ''))
@section('seo_title', (strlen($citizenship->seo_title) > 1 ? $citizenship->seo_title : ''))
@section('meta_keywords',(strlen($citizenship->meta_keywords) > 1 ? $citizenship->meta_keywords : ''))
@section('meta_description', (strlen($citizenship->meta_description) > 1 ? $citizenship->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">
        @include('partials.breadcrumbs', [
            'linktitle' => '/citizenship',
            'title' => 'Гражданство',
            'subtitle' => $citizenship->nav_title
        ])
    </div>
</section>

<section class="article-page">
    <div class="container">
        <div class="article-page__head">
            <div>
                <h1>{{ $citizenship->title }}</h1>
                <div class="description">{{ $citizenship->description }}</div>
            </div>
            <img src="{{ Voyager::image($citizenship->flag_img) }}" alt="{{ $citizenship->title }}">
        </div>
        <div class="editors">
            {!! $citizenship->first_content !!}
        </div>
    </div>
    <img src="{{ Voyager::image($citizenship->bg_img) }}" class="article-page__main-img" alt="{{ $citizenship->alt_bg_img }}">
</section>

@if($citizenship->give->count() != 0)
<section class="benefit">
    <div class="container">
        <h2 class="title">Что дает гражданство?</h2>
        <div class="benefit__items">
            
            @foreach($citizenship->give as $give)
	            <div class="benefit__item">
	                <h3>{{ $give->title }}</h3>
	                {!! $give->content !!}
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
                        {!! $citizenship->who !!}
                    </div>
                    @if($citizenship->document->count() != 0)
                        @foreach($citizenship->document as $document)
    	                    <div class="block__down" :class="{'block__down-active' :  valueBlock == {{ $document->id }}}">
    	                        <button @click="toggleBlock({{ $document->id }})">{{ $document->title }}  <i class="bi bi-caret-down-fill"></i></button>
    	                        <div class="editors">
    	                            {!! $document->content !!}
    	                        </div>
    	                    </div>
                        @endforeach
                    @endif
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->second_img) }}" alt="{{ $citizenship->alt_second_img }}">
                </div>
            </div>

            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Необходимые документы:</h2>
                    <div class="editors">
                        {!! $citizenship->third_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->third_img) }}" alt="{{ $citizenship->alt_third_img }}">
                </div>
            </div>
            
        </div>
    </div>
</section>


<section class="block block-new">
    <div class="container">
        <div class="block__items">
            @if($citizenship->fourth_content)
            <div class="block__item">
                <h2 class="title">Этап резидентства</h2>
                <div class="block__info">
                    <div class="editors">
                        {!! $citizenship->fourth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->fourth_img) }}" alt="{{ $citizenship->alt_fourth_img }}">
                </div>
            </div>
            @endif
            @if($citizenship->fifth_content)
            <div class="block__item">
                <h2 class="title">Этап правомочности</h2>
                <div class="block__info">
                    <div class="editors">
                        {!! $citizenship->fifth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->fifth_img) }}" alt="{{ $citizenship->alt_fifth_img }}">
                </div>
            </div>
            @endif
            @if($citizenship->sixth_content)
            <div class="block__item">
                <h2 class="title">Этап гражданства</h2>
                <div class="block__info">
                    <div class="editors">
                        {!! $citizenship->sixth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->sixth_img) }}" alt="{{ $citizenship->alt_sixth_img }}">
                    <img src="{{ Voyager::image($citizenship->sixth_o_img) }}" alt="{{ $citizenship->alt_sixth_o_img }}">
                </div>
            </div>
            @endif
            @if($citizenship->seventh_content)
            <div class="block__item">
                <h2 class="title">Присяга</h2>
                <div class="block__info">
                    <div class="editors">
                        {!! $citizenship->seventh_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($citizenship->seventh_img) }}" alt="{{ $citizenship->alt_seventh_img }}">
                </div>
            </div>
            @endif
        </div>
    </div>
</section>

<section class="consultation">
    <div class="consultation__wrapper">
    </div>
    <div class="container">
        <div class="consultation__info">
            <h2>Хотите получить {{ $citizenship->help }}?</h2>
            <p>{{ $consultation->subtitle }}</p>
        </div>
        <div class="consultation__info">
            <button @click="toggleModalLeaveFeedback('{{ $citizenship->help }}')">Заказать консультацию</button>
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
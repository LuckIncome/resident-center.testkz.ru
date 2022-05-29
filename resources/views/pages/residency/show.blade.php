@extends('partials.layout')
@section('page_title',(strlen($residency->title) > 1 ? $residency->title : ''))
@section('seo_title', (strlen($residency->seo_title) > 1 ? $residency->seo_title : ''))
@section('meta_keywords',(strlen($residency->meta_keywords) > 1 ? $residency->meta_keywords : ''))
@section('meta_description', (strlen($residency->meta_description) > 1 ? $residency->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="navigation">
    <div class="container">
        @include('partials.breadcrumbs', [
            'linktitle' => '/residency',
            'title' => 'Резидентство',
            'subtitle' => $residency->nav_title
        ])
    </div>
</section>

<section class="article-page">
    <div class="container">
        <div class="article-page__head">
            <div>
                <h1>{{ $residency->title }}</h1>
                <div class="description">{{ $residency->description }}</div>
            </div>
            <img src="{{ Voyager::image($residency->flag_img) }}" alt="{{ $residency->title }}">
        </div>
        <div class="editors">
            {!! $residency->first_content !!}
        </div>
    </div>
    <img src="{{ Voyager::image($residency->bg_img) }}" class="article-page__main-img" alt="{{ $residency->alt_bg_img }}">
</section>


<section class="block">
    <div class="container">
        <div class="block__items">
            @if($residency->first_var_content OR $residency->second_var_content OR $residency->third_var_content)
            <div class="block__item">
                <div class="block__info">
                    
                    <h2 class="title">Есть три варианта получения ПМЖ:</h2>
                   
                    @if($residency->first_var_content)
                    <div class="block__var">
                        <h3>1 ВАРИАНТ:</h3>
                        {!! $residency->first_var_content !!}
                    </div>
                    @endif
                    @if($residency->second_var_content)
                    <div class="block__var">
                        <h3>2 ВАРИАНТ:</h3>
                        {!! $residency->second_var_content !!}
                    </div>
                    @endif
                    @if($residency->third_var_content)
                    <div class="block__var">
                        <h3>3 ВАРИАНТ:</h3>
                        {!! $residency->third_var_content !!}
                    </div>
                    @endif
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($residency->var_img) }}" alt="{{ $residency->alt_var_img }}">
                </div>
            </div>
             @endif
            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Преимущества:</h2>
                    <div class="editors">
                        {!! $residency->second_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($residency->second_img) }}" alt="{{ $residency->alt_second_img }}">
                    @if($residency->first_second_img)
                      <img src="{{ Voyager::image($residency->first_second_img) }}" alt="{{ $residency->alt_first_second_img }}">
                    @endif
                </div>
            </div>
            

            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Кто может учавствовать в программе?</h2>
                    <div class="editors">
                        {!! $residency->third_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($residency->third_img) }}" alt="{{ $residency->alt_third_img }}">
                    @if($residency->first_third_img)
                      <img src="{{ Voyager::image($residency->first_third_img) }}" alt="{{ $residency->alt_first_third_img }}">
                    @endif
                </div>
            </div>

            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Необходимые документы:</h2>
                    <div class="editors">
                        {!! $residency->fourth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($residency->fourth_img) }}" alt="{{ $residency->alt_fourth_img }}">
                    @if($residency->first_fourth_img)
                      <img src="{{ Voyager::image($residency->first_fourth_img) }}" alt="{{ $residency->alt_first_fourth_img }}">
                    @endif
                </div>
            </div>
            
            <div class="block__item">
                <div class="block__info">
                    <h2 class="title">Процесс подачи:</h2>
                    <div class="editors">
                        {!! $residency->fifth_content !!}
                    </div>
                </div>
                <div class="block__images">
                    <img src="{{ Voyager::image($residency->fifth_img) }}" alt="{{ $residency->alt_fifth_img }}">
                    @if($residency->first_fifth_img)
                      <img src="{{ Voyager::image($residency->first_fifth_img) }}" alt="{{ $residency->alt_first_fivth_img }}">
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
            <h2>Хотите получить {{ $residency->help }}?</h2>
            <p>{{ $consultation->subtitle }}</p>
        </div>
        <div class="consultation__info">
            <button @click="toggleModalLeaveFeedback('{{ $residency->help }}')">Заказать консультацию</button>
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
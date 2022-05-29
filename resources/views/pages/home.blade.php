@extends('partials.layout')
@section('page_title',(strlen($page->title) > 1 ? $page->title : ''))
@section('seo_title', (strlen($page->seo_title) > 1 ? $page->seo_title : ''))
@section('meta_keywords',(strlen($page->meta_keywords) > 1 ? $page->meta_keywords : ''))
@section('meta_description', (strlen($page->meta_description) > 1 ? $page->meta_description : ''))
@section('image','')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="banner">
    <div class="banner__slider">
        
        @foreach($sliders as $slider)
            <div class="banner__item">
                <img src="{{ Voyager::image($slider->image) }}" alt="{!! $slider->title !!}">
                <div class="container">
                    <h2>{!! $slider->title !!}</h2>
                    {!! $slider->subtitle !!}
                    <a href="{{ $slider->link }}">Узнать подробнее</a>
                </div>
            </div>
        @endforeach

    </div>
    <div class="banner__buttons">
        <button @mouseover="mouseScriptLeft" class="banner__arrow banner__arrow-left">
            <bannerarrowleft></bannerarrowleft>
        </button>
        <div class="banner__dots"></div>
        <button @mouseover="mouseScriptRight" class="banner__arrow banner__arrow-right">
            <bannerarrowright></bannerarrowright>
        </button>
    </div>
</section>

<section class="advantage">
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
</section>

<section class="about">
    <div class="container">
        <div class="about__info">
            <h1 class="title">{{ $about->title }}</h1>
            <p>{{ $about->excerpt }}</p>
            <a href="/about">Подробнее <i class="bi bi-arrow-right"></i></a>
        </div>
        <div class="about__image">
            <img src="{{ Voyager::image($about->image) }}" alt="{{ $about->title }}">
        </div>
        <div class="about__logo">
            <img src="{{ asset('assets/images/icons/logo-text.svg') }}" alt="logo">
        </div>
    </div>
</section>

<section class="articles">
    <div class="container">
        <h2 class="title">Гражданство</h2>
        <div class="articles__items">
            @foreach($citizenship as $c)
                <a href="{{ route('citizenship.show', ['article' => $c->slug]) }}" class="country">
                    <img src="{{ Voyager::image($c->bg_img) }}" alt="{{ $c->alt_bg_img }}">
                    <span>{{ $c->nav_title }}</span>
                </a>
            @endforeach
        </div>
        <a href="/citizenship" class="articles__link">Смотреть все страны <i class="bi bi-arrow-right"></i></a>
    </div>
</section>

<section class="reviews">
    <div class="container">
        <h2 class="title">Отзывы наших клиентов</h2>
        <div class="reviews__slider">

            @forelse($reviews as $review)
                <div class="review">
                    <div class="review__head">
                        @if($review->image)
                            <img src="{{ Voyager::image($review->image) }}" alt="{{ $review->name }}">
                        @else
                            <img src="{{ asset('assets/images/icons/people.svg') }}" alt="{{ $review->name }}">
                        @endif
                        <div>
                            <h4>{{ $review->name }}</h4>
                            <p>{{ date('d.m.Y', strtotime($review->created_at)) }}</p>
                        </div>
                    </div>
                    <div class="review__body">
                        {!! $review->content !!}
                    </div>
                </div>
            @empty
                <div class="review">
                    <div class="review__body">
                        Пока нет ни одного отзыва!
                    </div>
                </div>
            @endforelse

        </div>

        <button class="reviews__arrow reviews__arrow-left">
            <arrowleft2></arrowleft2>
        </button>
        <button class="reviews__arrow reviews__arrow-right">
            <arrowright2></arrowright2>
        </button>

        <a href="/reviews" class="reviews__link">Читать все отзывы <i class="bi bi-arrow-right"></i></a>
    </div>
</section>

<section class="questions" id="questions">
    <div class="container">
        <h2 class="title">Частые вопросы</h2>
        <div class="questions__info">
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
            <div class="questions__consultation">
                <div>
                    <h2>{{ $consultation->title }}</h2>
                    <p>{{ $consultation->subtitle }}</p>
                </div>
                <div>
                    <button @click="toggleModalLeaveFeedback('{{ setting('site.main_form') }}')">Заказать консультацию</button>
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
        </div>
    </div>
</section>     

@endsection
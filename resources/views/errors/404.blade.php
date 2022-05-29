@extends('partials.layout')
@section('page_title', __('Страница не найдена'))
@section('seo_title',  __('Страница не найдена'))
@section('meta_keywords', __('Страница не найдена'))
@section('meta_description',  __('Страница не найдена'))
@section('image',env('APP_URL').'/images/og.jpg')
@section('url',url()->current())
@section('page_class','page')
@section('content')

<section class="error">
    <div class="container">
        <img src="{{ asset('assets/images/icons/error.svg') }}" alt="img">
        <h3>К сожалению страница не найдена. </h3>
        <a href="/">Перейти на главную</a>
    </div>
</section>

@include('partials.consultation')

@endsection
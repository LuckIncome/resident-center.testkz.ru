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

<section class="reviews-page">
    <div class="container">
        <button @click="toggleModalReviews">Оставить отзыв <pencil /></button>

        <div class="reviews-page__items">
            
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
    </div>
</section>

@if($reviews)
<section class="pagination">
    {{ $reviews->links('partials.paginate') }}
</section>
@endif

@include('partials.consultation') 

@endsection

@section('scripts')

<script type="text/javascript">
    $(document).ready(function() {
        $("#review_id").on('submit', function(event) {
            event.preventDefault();
            let form = $(this);
            let action = form.attr("action");
            let type = form.attr("method");
            let _token = $('input[name="_token"]').val();
            let fd = new FormData(form[0]);
            let $inputs = form.find("input, select, button, textarea");
            axios.post(action, fd, {
                  headers: {
                      'X-CSRF-TOKEN': _token,
                  },
                }).then(res => {
                if (res.status === 200) {
                  vue.toggleWrapper();
                  vue.toggleModalSuccessReviews();
                } 
                $inputs.prop("disabled", false);
                $inputs.val("");
                $inputs.prop("checked",false);
              }).catch((error) => {
				$('#error_rev').text('Ошибка:поля должны быть заполненными!');
				//console.log(error.response.data)
			  });  
        });
    });     
</script>

@endsection
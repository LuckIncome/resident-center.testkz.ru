<section class="consultation">
    <div class="consultation__wrapper">
    </div>
    <div class="container">
        <div class="consultation__info">
            <h2>{{ $consultation->title }}</h2>
            <p>{{ $consultation->subtitle }}</p>
        </div>
        <div class="consultation__info">
            <button @click="toggleModalLeaveFeedback('{{ setting('site.other_form') }}')">Заказать консультацию</button>
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
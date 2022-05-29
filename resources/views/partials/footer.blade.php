<footer class="footer">
    <div class="container">
        <div class="footer__top">
            <div class="footer__info">
                <a href="/" class="footer__logo">
                    <img src="{{ Voyager::image(setting('site.header_logo')) }}" alt="logo">
                </a>
                <p>Иммиграция в страны дальнего зарубежья</p>
            </div>

            {{ menu('header_menu','vendor.voyager.menu.footer_menu') }}

            {{ menu('top_header_menu','vendor.voyager.menu.footer_menu') }}

            <div class="footer__contact">
                <div class="item">
                    <div><img src="{{ asset('assets/images/icons/call-2.svg') }}" alt="icon"></div>
                    <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
                </div>
                <div class="item">
                    <div><img src="{{ asset('assets/images/icons/geo.svg') }}" alt="icon"></div>
                    <a>
                        {{ $address->value }}
                    </a>
                </div>
                <div class="item">
                    <div><img src="{{ asset('assets/images/icons/email-2.svg') }}" alt="icon"></div>
                    <a href="mailto:{{ $email->link }}">{{ $email->value }}</a>
                </div>
                <div class="networck">
                    @foreach($socials as $social)
                        <a href="{{ $social->link }}"><{{ $social->value }}></{{ $social->value }}></a>
                    @endforeach
                </div>
            </div>
        </div>
        <div class="footer__bottom">
            <p>© {{ date('Y') }} Иммиграционный Центр «RESIDENT».</p>
            <p>Все права защищены.</p>
            <a href="/policy">Политика конфиденциальности</a>
            <p>Разработано <a href="https://i-marketing.kz/"><img src="{{ asset('assets/images/icons/logo-im.svg') }}" alt="i-marketing"></a></p>
        </div>
    </div>
</footer>
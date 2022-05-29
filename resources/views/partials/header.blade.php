<header class="header">
    <div class="header__top">
        <div class="container">
            <button class="header__toggle" @click="toggleSidebar">
                <i class="bi bi-list"></i>
            </button>
            
            <a href="/" class="header__logo">
                <img src="{{ Voyager::image(setting('site.header_logo')) }}" alt="logo">
            </a>
            
            {{ menu('top_header_menu','vendor.voyager.menu.top_header_menu') }}
            
            <div class="header__feedback">
                <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">
                    <img src="{{ asset('assets/images/icons/call-2.svg') }}" alt="img">
                    {{ $phone->value }}
                </a>
                <button @click="toggleModalLeaveFeedback('Форма заявки из меню')">Получить консультацию</button>
            </div>
            
            <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}" class="header__call">
                <img src="{{ asset('assets/images/icons/call-2.svg') }}" alt="icon">
            </a>
        </div>
    </div>
    <div class="header__bottom">
        <div class="container">

            {{ menu('header_menu','vendor.voyager.menu.header_menu') }}

        </div>
    </div>
</header>
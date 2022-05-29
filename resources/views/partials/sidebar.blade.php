<!-- Сайд-бар -->
<div class="sidebar" :class="{'sidebar-show': isSidebar}" v-touch:swipe.left="toggleWrapper">
    <div class="sidebar__head">
        <a href="/" class="sidebar__logo">
            <img src="{{ Voyager::image(setting('site.favicon')) }}" alt="resident logo">
        </a>
        <button class="sidebar__toggle" @click="toggleWrapper">
            <i class="bi bi-x"></i>
        </button>
    </div>

    {{ menu('top_header_menu','vendor.voyager.menu.sidebar_menu') }}
    
    {{ menu('header_menu','vendor.voyager.menu.bottom_sidebar_menu') }}
    
    {{--<ul class="sidebar__menu">
        <li><a href="work.html">Работа</a></li>
        <li><a href="education.html">Образование</a></li>
        <li><a href="services.html">Доп услуги</a></li>
        <li><a href="articles.html">Гражданство</a></li>
        <li><a href="articles.html">Резидентство</a></li>
        <li><a href="articles.html">Налоговые статусы</a></li>
        <!-- <li :class="{'sidebar__menu-show' : valueSidebar == 1}">
            <span @click="toggleSidebarDrop(1)">Гражданство <i class="bi bi-caret-down-fill"></i></span>
            <transition name="fade">
                <ul v-if="valueSidebar == 1">
                    <li><a href="citizenship.html">Гражданство Мальты</a></li>
                    <li><a href="citizenship.html">Гражданство Мальты</a></li>
                </ul>
            </transition>
        </li> -->
    </ul>--}}

    <div class="sidebar__feedback">
        <a href="tel:+{{ preg_replace("/[^,.0-9]/", '', $phone->link) }}">{{ $phone->value }}</a>
        <button @click="toggleModalLeaveFeedback('Форма заявки из мобильной меню')">Получить консультацию</button>
    </div>
</div>
<!-- /Сайд-бар -->
<div class="navigation__menu">
    @if(isset($subtitle))
        <a href="/">Главная <i class="bi bi-chevron-right"></i></a>
        <a href="{{ $linktitle }}">{{ $title }} <i class="bi bi-chevron-right"></i></a>
        <span>{{ $subtitle }}</span>
    @else
        <a href="/">Главная <i class="bi bi-chevron-right"></i></a>
        <span>{{ $title }}</span>
    @endif   
</div>
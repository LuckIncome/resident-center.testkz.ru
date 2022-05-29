@if ($paginator->hasPages())
<ul class="container">
	@if (!$paginator->onFirstPage())
        <li>
            <a href="{{ $paginator->previousPageUrl() }}"><arrowleft2></arrowleft2></a>
        </li>
    @endif
	@foreach ($elements as $element) 
		@if (is_array($element))
			@foreach ($element as $page => $url)
			@if ($paginator->currentPage() > 4 && $page === 2)
				<li><a>...</a></li>
			@endif
			@if ($page == $paginator->currentPage()) 
				<li><a href="{{ $url }}" class="active">{{ $page }}</a></li>
			@elseif ($page === $paginator->currentPage() + 1 || $page === $paginator->currentPage() + 2 || $page === $paginator->currentPage() - 1 || $page === $paginator->currentPage() - 2 || $page === $paginator->lastPage() || $page === 1)
				 <li><a href="{{ $url }}">{{ $page }}</a></li>
			@endif
			@if ($paginator->currentPage() < $paginator->lastPage() - 3 && $page === $paginator->lastPage() - 1)
				<li><a>...</a></li>
			@endif
			@endforeach
		@endif
	@endforeach
	@if ($paginator->hasMorePages())
        <li>
            <a href="{{ $paginator->nextPageUrl() }}"><arrowright2></arrowright2></a>
        </li>
    @endif
</ul>
@endif
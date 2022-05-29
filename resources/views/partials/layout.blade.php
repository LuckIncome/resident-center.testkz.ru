<!DOCTYPE html>
<html lang="ru">
  @include('partials.head')
<body>
	
	<!-- Google Tag Manager (noscript) -->
<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-W849PRS"
height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
<!-- End Google Tag Manager (noscript) -->

	
  <vue id="app">       
    @include('partials.header')
    <main class="main"> 
      @yield('content')
    </main>
    @include('partials.footer')
    @include('partials.sidebar')
    @include('partials.modals')
    <!-- Затемнение сайта -->
      <div class="wrapper" :class="{'wrapper-show': isWrapper}" @click="toggleWrapper">
      </div>
    <!-- /Затемнение сайта -->
  </vue>
  @include('partials.scripts')
  @yield('scripts')
</body>
</html>
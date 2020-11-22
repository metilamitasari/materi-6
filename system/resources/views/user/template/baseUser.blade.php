<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Fifteen Makanan</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    @include('user.template.section.link')
  </head>
  <body class="goto-here">
    @include('user.template.section.label')
    @include('user.template.section.navigation')
    <!-- END nav -->
    @include('user.template.section.backgroundHeader')


    <section class="ftco-section">
      <div class="container">
        @include('user.template.section.menuProduk')
          @yield('content')
        @include('user.template.section.pageNumbering')
      </div>
    </section>


    @include('user.template.section.footer2')  
    @include('user.template.section.footer')  

  <!-- loader -->
  <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
    @include('user.template.section.script')
  </body>
</html>
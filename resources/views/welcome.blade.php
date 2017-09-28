<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="stylesheet" href="/css/app.css">
        <!-- Styles -->

    </head>
    <body>

         <div class="content">
                <router-view></router-view>
        </div>
    <srcipt src="/js/app.js"></srcipt>
    </body>
</html>

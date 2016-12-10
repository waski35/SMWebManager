<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Starmade Web Manager</title>
        {{ stylesheet_link('js/vendor/bootstrap/dist/css/bootstrap.css') }}
        {{ stylesheet_link('js/vendor/metismenu/dist/metismenu.css') }}
        {{ stylesheet_link('js/vendor/startbootstrap-sb-admin-2/dist/css/sb-admin-2.css') }}
        {{ stylesheet_link('js/vendor/morrisjs/morris.css') }}
        {{ stylesheet_link('js/vendor/font-awesome/css/font-awesome.css') }}
    </head>
    <body>
        <div class="container">
            {% block content %}{% endblock %}
        </div>
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        {{ javascript_include('js/vendor/jquery/dist/jquery.js') }}
        {{ javascript_include('js/vendor/bootstrap/dist/js/bootstrap.js') }}
        {{ javascript_include('js/vendor/metismenu/dist/metismenu.js') }}
        {{ javascript_include('js/vendor/startbootstrap-sb-admin-2/dist/js/sb-admin-2.js') }}
        {{ javascript_include('js/vendor/raphael/raphael.js') }}
        {{ javascript_include('js/vendor/morrisjs/morris.js') }}
    </body>
</html>

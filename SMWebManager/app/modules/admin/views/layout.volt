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
        {{ stylesheet_link('js/vendor/datatables/media/css/jquery.dataTables.css') }}
        {#{{ stylesheet_link('js/vendor/datatables/media/css/dataTables.bootstrap.css') }} #}
        
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        {{ javascript_include('js/vendor/jquery/dist/jquery.js') }}
        {{ javascript_include('js/vendor/bootstrap/dist/js/bootstrap.js') }}
        {{ javascript_include('js/vendor/metismenu/dist/metismenu.js') }}
        {{ javascript_include('js/vendor/startbootstrap-sb-admin-2/dist/js/sb-admin-2.js') }}
        {{ javascript_include('js/vendor/raphael/raphael.js') }}
        {{ javascript_include('js/vendor/morrisjs/morris.js') }}
        {{ javascript_include('js/vendor/datatables/media/js/jquery.dataTables.js')}}
        {#{{ javascript_include('js/vendor/datatables/media/js/dataTables.bootstrap.js')}} #}
        
        
    </head>
    <body>
        <div class="container">
            {% block content %} {% endblock %}
        </div>
    <script>
            $(document).ready(function() {
                $('#connLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/connectionsAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'IP'},
                        {data: 'NAME'},
                        {data: 'STATUS', searchable: false},
                        {data: 'TIME'},
                        {
                            targets: 5,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/connections/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
            
            $(document).ready(function() {
                $('#destroyLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/destroylogAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'TYPE'},
                        {data: 'NAME'},
                        {data: 'DESTROYTIME', searchable: false}
                        
                        
                    ]
                });});
            
            $(document).ready(function() {
                $('#logsLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/logsAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'LOGDATE'},
                        {data: 'LOGSTRING'}

                    ]
                });});
            
            $(document).ready(function() {
                $('#sectorsLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/sectorsAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'LASTUPDATE'},
                        {data: 'NAME'},
                        {data: 'PEACE'},
                        {data: 'PROTECTED'},
                        {data: 'TYPE'}
                        

                    ]
                });});
            $(document).ready(function() {
                $('#serverstatusLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/serverstatusAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'STATUS'},
                        {data: 'TIME'}
                        
                        

                    ]
                });});
            
            $(document).ready(function() {
                $('#smranksLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/smranksAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'COMMANDSALLOWED'},
                        {data: 'NAME'}
                        
                        

                    ]
                });});
            
            $(document).ready(function() {
                $('#adminlogsLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/adminlogsAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'COMMAND'},
                        {data: 'NAME'},
                        {data: 'TIME'}
                        
                        

                    ]
                });});
            
            $(document).ready(function() {
                $('#bountiesLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/bountiesAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'BOUNTY'},
                        {data: 'DEATHS'},
                        {data: 'KILLEDBY'},
                        {data: 'KILLS'},
                        {data: 'LASTKILL'},
                        {data: 'NAME'}

                    ]
                });});
            
            
            $(document).ready(function() {
                $('#killsLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/killsAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'KILLER'},
                        {data: 'KILLTIME'},
                        {data: 'VICTIM'}

                    ]
                });});
            
            $(document).ready(function() {
                $('#votesLog').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/votesAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'INFO'},
                        {data: 'NAME'},
                        {data: 'TIME'}

                    ]
                });});
        </script>    
    </body>
</html>

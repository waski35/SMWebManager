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

        <div id="wrapper">
                <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                {{ link_to(['for' : 'admin-index'],'Star Made Web Manager', 'class' : 'navbar-brand')}}
            </div>
            <!-- /.navbar-header -->

            <ul class="nav navbar-top-links navbar-right">
                
                
                <!-- /.dropdown -->
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        
                        <li class="divider"></li>
                        <li><a href="{{url(['for': 'admin-logout'])}}"><i class="fa fa-sign-out fa-fw"></i> Log Out</a> 
                        </li>
                    </ul>
                    <!-- /.dropdown-user -->
                </li>
                <!-- /.dropdown -->
            </ul>
            <!-- /.navbar-top-links -->

            <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav in" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input class="form-control" placeholder="Search..." type="text">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            <!-- /input-group -->
                        </li>
                        <li>
                            <a href="{{url(['for': 'admin-index'])}}"><i class="active fa fa-dashboard fa-fw"></i>Home</a>
                        </li>
                        <li class="">
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Manage Server World<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse"  >
                                <li>
                                    <a href="{{url(['for': 'admin-stations'])}}"><i class="fa fa-dashboard fa-fw"></i>Stations</a>
                            
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-shops'])}}"><i class="fa fa-dashboard fa-fw"></i>Shops</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-ships'])}}"><i class="fa fa-dashboard fa-fw"></i>Ships</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-players'])}}"><i class="fa fa-dashboard fa-fw"></i>Players</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-asteroids'])}}"><i class="fa fa-dashboard fa-fw"></i>Asteroids</a>
                                </li>
                            </ul>
                            <!-- /.nav-second-level -->
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>Manage Server Instance<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse"  >
                                <li>
                                    <a href="{{url('/admin/servermanage/show')}}"><i class="fa fa-dashboard fa-fw"></i>Server Management</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-server-settings'])}}"><i class="fa fa-dashboard fa-fw"></i>Server Settings</a>
                                </li>
                            </ul>
                        <!-- logs -->
                        <li>
                            <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>View Server Logs in Tables<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level collapse"  >
                                <li>
                                    <a href="{{url(['for': 'admin-adminlogs'])}}"><i class="fa fa-dashboard fa-fw"></i>Admins Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-bounties'])}}"><i class="fa fa-dashboard fa-fw"></i>Bounty Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-connections'])}}"><i class="fa fa-dashboard fa-fw"></i>Connections Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-destroylog'])}}"><i class="fa fa-dashboard fa-fw"></i>Destroy Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-kills'])}}"><i class="fa fa-dashboard fa-fw"></i>Kills Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-logs'])}}"><i class="fa fa-dashboard fa-fw"></i>Server Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-sectors'])}}"><i class="fa fa-dashboard fa-fw"></i>Sector Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-serverstatus'])}}"><i class="fa fa-dashboard fa-fw"></i>Server Status Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-votes'])}}"><i class="fa fa-dashboard fa-fw"></i>Vote Logs</a>
                                </li>
                                <li>
                                    <a href="{{url(['for': 'admin-smranks'])}}"><i class="fa fa-dashboard fa-fw"></i>Ranks Logs</a>
                                </li>
                            </ul>
                        <li>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>

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
            
            
            
            $(document).ready(function() {
                $('#asteroidList').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/asteroid/listAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'CURRENTSECTOR'},
                        {data: 'LASTPOSITION'},
                        {data: 'NAME', searchable: false},
                        {
                            targets: 5,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/asteroid/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
            
            $(document).ready(function() {
                $('#playerList').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/player/listAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'BANKCREDITS'},
                        {data: 'CONTROLLING'},
                        {data: 'CONTROLTYPE'},
                        {data: 'CREDITS'},
                        {data: 'CURRENTIP'},
                        {data: 'CURRENTSECTOR'},
                        {data: 'FACTION'},
                        {data: 'LASTCORE'},
                        {data: 'LASTPOSITION'},
                        {data: 'LASTUPDATE'},
                        {data: 'NAME'},
                        {data: 'ONLINE'},
                        {data: 'RANK'},
                        {
                            targets: 5,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/player/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
            
            $(document).ready(function() {
                $('#shipList').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/ship/listAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'ATTACHED'},
                        {data: 'BLOCK'},
                        {data: 'CREATOR'},
                        {data: 'CURRENTSECTOR'},
                        {data: 'DOCKED'},
                        {data: 'ENTITYTYPE'},
                        {data: 'FACTION'},
                        {data: 'LASTCONTROLLER'},
                        {data: 'LASTPOSITION'},
                        {data: 'LASTUPDATE'},
                        {data: 'MASS'},
                        {data: 'NAME'},
                        {
                            targets: 5,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/ship/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
            
            
            $(document).ready(function() {
                $('#shopList').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/shop/listAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'CURRENTSECTOR'},
                        {data: 'NAME'},
                        {
                            targets: 5,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/shop/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
            
            
            $(document).ready(function() {
                $('#stationList').DataTable({
                    serverSide: true,
                    ajax: {
                        url: '/admin/station/listAjax',
                        method: 'POST'
                    },
                    columns: [
                        {data: 'line', searchable: false},
                        {data: 'ATTACHED'},
                        {data: 'BLOCK'},
                        {data: 'CREATOR'},
                        {data: 'CURRENTSECTOR'},
                        {data: 'DOCKED'},
                        {data: 'ENTITYTYPE'},
                        {data: 'FACTION'},
                        {data: 'LASTCONTROLLER'},
                        {data: 'LASTPOSITION'},
                        {data: 'MASS'},
                        {data: 'NAME'},
                        {
                            targets: 13,
                            data: 'line',
                            render: function ( data, type, full, meta ) {
                                    return "<a href='/admin/station/details/"+data+"'>Details</a>";
                                        }
                        }
                    ]
                });});
        </script>    
    </body>
</html>

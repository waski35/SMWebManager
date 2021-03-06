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
                                <li>
                                    <a href="{{url(['for': 'admin-chatlogs'])}}"><i class="fa fa-dashboard fa-fw"></i>Chat Logs</a>
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

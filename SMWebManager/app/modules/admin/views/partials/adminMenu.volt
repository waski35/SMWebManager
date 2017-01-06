

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
                        <li>
                            <a href="{{url(['for': 'admin-server-management'])}}"><i class="fa fa-dashboard fa-fw"></i>Server Management</a>
                        </li>
                        
                        <li>
                            
                            <!-- /.nav-second-level -->
                        </li>
                        
                    </ul>
                </div>
                <!-- /.sidebar-collapse -->
            </div>
            <!-- /.navbar-static-side -->
        </nav>


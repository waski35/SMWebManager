

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
                        <li>{{link_to(['for': 'admin-logout'], 'Logout', 'class' : 'fa fa-sign-out fa-fw') }}
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
                            {{link_to(['for': 'admin-index'], 'Home', 'class' : 'active fa fa-dashboard fa-fw') }}
                            
                        </li>
                        <li>
                            {{link_to(['for': 'admin-stations'], 'Stations', 'class' : ' fa fa-dashboard fa-fw') }}
                        </li>
                        <li>
                            {{link_to(['for': 'admin-shops'], 'Shops', 'class' : ' fa fa-dashboard fa-fw') }}
                        </li>
                        <li>
                            {{link_to(['for': 'admin-ships'], 'Ships', 'class' : ' fa fa-dashboard fa-fw') }}
                        </li>
                        <li>
                            {{link_to(['for': 'admin-players'], 'Players', 'class' : ' fa fa-dashboard fa-fw') }}
                        </li>
                        <li>
                            {{link_to(['for': 'admin-asteroids'], 'Asteroids', 'class' : ' fa fa-dashboard fa-fw') }}
                        </li>
                        <li>
                            {{link_to(['for': 'admin-server-management'], 'Server Management', 'class' : ' fa fa-dashboard fa-fw') }}
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


{% extends 'layout.volt' %}
    
{% block content %}
    <div id="wrapper">

        <!-- Navigation -->
        {% include 'partials/adminMenu.volt' %}

        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Dashboard</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-comments fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">26</div>
                                    <div>New Comments!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-tasks fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">12</div>
                                    <div>New Tasks!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-shopping-cart fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">124</div>
                                    <div>New Orders!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-support fa-5x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">13</div>
                                    <div>Support Tickets!</div>
                                </div>
                            </div>
                        </div>
                        <a href="#">
                            <div class="panel-footer">
                                <span class="pull-left">View Details</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Area Chart Example
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div id="morris-area-chart" style="position: relative;"><svg height="342" version="1.1" width="1019" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; top: -0.75px;"><desc>Created with Raphaël 2.2.0</desc><defs></defs><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="53.5" y="307" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">0</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M66,307H994.3333129882812" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="53.5" y="236.5" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">7,500</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M66,236.5H994.3333129882812" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="53.5" y="166" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">15,000</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M66,166H994.3333129882812" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="53.5" y="95.5" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">22,500</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M66,95.5H994.3333129882812" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="53.5" y="25" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">30,000</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M66,25H994.3333129882812" stroke-width="0.5"></path><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="959.363945115096" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2012-05</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="857.8869757089041" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2012-02</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="754.1069162142899" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2011-11</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="650.2798548811364" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2011-08</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="546.4997953865222" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2011-05</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="446.15087010527157" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2011-02</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="342.3708106106574" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2010-11</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="238.54374927750396" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2010-08</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="134.76368978288974" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2010-05</tspan></text><path style="fill-opacity: 1;" fill="#7cb57c" stroke="none" d="M66,257.0578C91.93326441401874,251.88779999999997,143.79979324205624,241.1577920838052,169.73305765607498,236.37779999999998C195.67807252972852,231.5956420838052,247.5681022770356,225.35278115183243,273.51311715068914,218.80919999999998C299.1878714527421,212.33378115183243,350.5373800568482,186.23397865362486,376.21213435890115,184.30180000000001C401.59312717008396,182.39172865362488,452.35511279244963,202.03491399129837,477.73610560363244,203.4402C503.6693700176512,204.87606399129837,555.5358988456887,194.7101666364666,581.4691632597074,195.6664C607.414178133361,196.6230666364666,659.3042078806681,228.06613298429318,685.2492227543216,211.09179999999998C710.9239770563746,194.29428298429318,762.2734856604806,68.77297505149917,787.9482399625335,60.57899999999998C813.6112438049518,52.38877505149918,864.9372514897881,133.540438487816,890.6002553322063,145.555C916.533519746225,157.69608848781598,968.4000485742627,154.28994999999998,994.3333129882814,157.20159999999998L994.3333129882814,307L66,307Z" fill-opacity="1"></path><path style="" fill="none" stroke="#4da74d" d="M66,257.0578C91.93326441401874,251.88779999999997,143.79979324205624,241.1577920838052,169.73305765607498,236.37779999999998C195.67807252972852,231.5956420838052,247.5681022770356,225.35278115183243,273.51311715068914,218.80919999999998C299.1878714527421,212.33378115183243,350.5373800568482,186.23397865362486,376.21213435890115,184.30180000000001C401.59312717008396,182.39172865362488,452.35511279244963,202.03491399129837,477.73610560363244,203.4402C503.6693700176512,204.87606399129837,555.5358988456887,194.7101666364666,581.4691632597074,195.6664C607.414178133361,196.6230666364666,659.3042078806681,228.06613298429318,685.2492227543216,211.09179999999998C710.9239770563746,194.29428298429318,762.2734856604806,68.77297505149917,787.9482399625335,60.57899999999998C813.6112438049518,52.38877505149918,864.9372514897881,133.540438487816,890.6002553322063,145.555C916.533519746225,157.69608848781598,968.4000485742627,154.28994999999998,994.3333129882814,157.20159999999998" stroke-width="3"></path><circle cx="66" cy="257.0578" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="169.73305765607498" cy="236.37779999999998" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="273.51311715068914" cy="218.80919999999998" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="376.21213435890115" cy="184.30180000000001" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="477.73610560363244" cy="203.4402" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="581.4691632597074" cy="195.6664" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="685.2492227543216" cy="211.09179999999998" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="787.9482399625335" cy="60.57899999999998" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="890.6002553322063" cy="145.555" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="994.3333129882814" cy="157.20159999999998" r="2" fill="#4da74d" stroke="#ffffff" style="" stroke-width="1"></circle><path style="fill-opacity: 1;" fill="#a8b4bd" stroke="none" d="M66,281.9396C91.93326441401874,276.28549999999996,143.79979324205624,264.27470322763304,169.73305765607498,259.3232C195.67807252972852,254.36945322763304,247.5681022770356,245.0258,273.51311715068914,242.3186C299.1878714527421,239.6396,350.5373800568482,239.95638486766396,376.21213435890115,237.77839999999998C401.59312717008396,235.62533486766395,452.35511279244963,228.0153580948019,477.73610560363244,224.99439999999998C503.6693700176512,221.9077080948019,555.5358988456887,213.21975400906004,581.4691632597074,213.3478C607.414178133361,213.47590400906003,659.3042078806681,239.10261884816754,685.2492227543216,226.019C710.9239770563746,213.07166884816755,762.2734856604806,116.90085671778438,787.9482399625335,109.22399999999999C813.6112438049518,101.55065671778438,864.9372514897881,156.55901120473698,890.6002553322063,164.6182C916.533519746225,172.76226120473697,968.4000485742627,171.6823,994.3333129882814,174.037L994.3333129882814,307L66,307Z" fill-opacity="1"></path><path style="" fill="none" stroke="#7a92a3" d="M66,281.9396C91.93326441401874,276.28549999999996,143.79979324205624,264.27470322763304,169.73305765607498,259.3232C195.67807252972852,254.36945322763304,247.5681022770356,245.0258,273.51311715068914,242.3186C299.1878714527421,239.6396,350.5373800568482,239.95638486766396,376.21213435890115,237.77839999999998C401.59312717008396,235.62533486766395,452.35511279244963,228.0153580948019,477.73610560363244,224.99439999999998C503.6693700176512,221.9077080948019,555.5358988456887,213.21975400906004,581.4691632597074,213.3478C607.414178133361,213.47590400906003,659.3042078806681,239.10261884816754,685.2492227543216,226.019C710.9239770563746,213.07166884816755,762.2734856604806,116.90085671778438,787.9482399625335,109.22399999999999C813.6112438049518,101.55065671778438,864.9372514897881,156.55901120473698,890.6002553322063,164.6182C916.533519746225,172.76226120473697,968.4000485742627,171.6823,994.3333129882814,174.037" stroke-width="3"></path><circle cx="66" cy="281.9396" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="169.73305765607498" cy="259.3232" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="273.51311715068914" cy="242.3186" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="376.21213435890115" cy="237.77839999999998" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="477.73610560363244" cy="224.99439999999998" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="581.4691632597074" cy="213.3478" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="685.2492227543216" cy="226.019" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="787.9482399625335" cy="109.22399999999999" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="890.6002553322063" cy="164.6182" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="994.3333129882814" cy="174.037" r="2" fill="#7a92a3" stroke="#ffffff" style="" stroke-width="1"></circle><path style="fill-opacity: 1;" fill="#2677b5" stroke="none" d="M66,281.9396C91.93326441401874,281.6764,143.79979324205624,283.5252522536806,169.73305765607498,280.8868C195.67807252972852,278.2471522536806,247.5681022770356,261.99535916230366,273.51311715068914,260.8272C299.1878714527421,259.6712091623037,350.5373800568482,273.833181703107,376.21213435890115,271.5902C401.59312717008396,269.372881703107,452.35511279244963,245.19795969773298,477.73610560363244,242.986C503.6693700176512,240.725909697733,555.5358988456887,251.36427961494903,581.4691632597074,253.702C607.414178133361,256.04077961494903,659.3042078806681,272.7983706806283,685.2492227543216,261.692C710.9239770563746,250.70132068062827,762.2734856604806,172.20910287251087,787.9482399625335,165.3138C813.6112438049518,158.42165287251086,864.9372514897881,198.77989792757913,890.6002553322063,206.54219999999998C916.533519746225,214.38624792757912,968.4000485742627,222.43994999999998,994.3333129882814,227.73919999999998L994.3333129882814,307L66,307Z" fill-opacity="1"></path><path style="" fill="none" stroke="#0b62a4" d="M66,281.9396C91.93326441401874,281.6764,143.79979324205624,283.5252522536806,169.73305765607498,280.8868C195.67807252972852,278.2471522536806,247.5681022770356,261.99535916230366,273.51311715068914,260.8272C299.1878714527421,259.6712091623037,350.5373800568482,273.833181703107,376.21213435890115,271.5902C401.59312717008396,269.372881703107,452.35511279244963,245.19795969773298,477.73610560363244,242.986C503.6693700176512,240.725909697733,555.5358988456887,251.36427961494903,581.4691632597074,253.702C607.414178133361,256.04077961494903,659.3042078806681,272.7983706806283,685.2492227543216,261.692C710.9239770563746,250.70132068062827,762.2734856604806,172.20910287251087,787.9482399625335,165.3138C813.6112438049518,158.42165287251086,864.9372514897881,198.77989792757913,890.6002553322063,206.54219999999998C916.533519746225,214.38624792757912,968.4000485742627,222.43994999999998,994.3333129882814,227.73919999999998" stroke-width="3"></path><circle cx="66" cy="281.9396" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="169.73305765607498" cy="280.8868" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="273.51311715068914" cy="260.8272" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="376.21213435890115" cy="271.5902" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="477.73610560363244" cy="242.986" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="581.4691632597074" cy="253.702" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="685.2492227543216" cy="261.692" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="787.9482399625335" cy="165.3138" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="890.6002553322063" cy="206.54219999999998" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle><circle cx="994.3333129882814" cy="227.73919999999998" r="2" fill="#0b62a4" stroke="#ffffff" style="" stroke-width="1"></circle></svg><div class="morris-hover morris-default-style" style="left: 420.736px; top: 138px; display: none;"><div class="morris-hover-row-label">2011 Q1</div><div class="morris-hover-point" style="color: #0b62a4">
  iPhone:
  6,810
</div><div class="morris-hover-point" style="color: #7A92A3">
  iPad:
  1,914
</div><div class="morris-hover-point" style="color: #4da74d">
  iPod Touch:
  2,293
</div></div></div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bar-chart-o fa-fw"></i> Bar Chart Example
                            <div class="pull-right">
                                <div class="btn-group">
                                    <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                        Actions
                                        <span class="caret"></span>
                                    </button>
                                    <ul class="dropdown-menu pull-right" role="menu">
                                        <li><a href="#">Action</a>
                                        </li>
                                        <li><a href="#">Another action</a>
                                        </li>
                                        <li><a href="#">Something else here</a>
                                        </li>
                                        <li class="divider"></li>
                                        <li><a href="#">Separated link</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>Date</th>
                                                    <th>Time</th>
                                                    <th>Amount</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>3326</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:29 PM</td>
                                                    <td>$321.33</td>
                                                </tr>
                                                <tr>
                                                    <td>3325</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:20 PM</td>
                                                    <td>$234.34</td>
                                                </tr>
                                                <tr>
                                                    <td>3324</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:03 PM</td>
                                                    <td>$724.17</td>
                                                </tr>
                                                <tr>
                                                    <td>3323</td>
                                                    <td>10/21/2013</td>
                                                    <td>3:00 PM</td>
                                                    <td>$23.71</td>
                                                </tr>
                                                <tr>
                                                    <td>3322</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:49 PM</td>
                                                    <td>$8345.23</td>
                                                </tr>
                                                <tr>
                                                    <td>3321</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:23 PM</td>
                                                    <td>$245.12</td>
                                                </tr>
                                                <tr>
                                                    <td>3320</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:15 PM</td>
                                                    <td>$5663.54</td>
                                                </tr>
                                                <tr>
                                                    <td>3319</td>
                                                    <td>10/21/2013</td>
                                                    <td>2:13 PM</td>
                                                    <td>$943.45</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.col-lg-4 (nested) -->
                                <div class="col-lg-8">
                                    <div id="morris-bar-chart" style="position: relative;"><svg height="342" version="1.1" width="670" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" style="overflow: hidden; position: relative; left: -0.766663px; top: -0.75px;"><desc>Created with Raphaël 2.2.0</desc><defs></defs><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="36.5" y="307" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">0</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M49,307H644.5499877929688" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="36.5" y="236.5" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">25</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M49,236.5H644.5499877929688" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="36.5" y="166" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">50</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M49,166H644.5499877929688" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="36.5" y="95.5" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">75</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M49,95.5H644.5499877929688" stroke-width="0.5"></path><text style="text-anchor: end; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="36.5" y="25" text-anchor="end" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal"><tspan dy="4.5">100</tspan></text><path style="" fill="none" stroke="#aaaaaa" d="M49,25H644.5499877929688" stroke-width="0.5"></path><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="602.0107029506138" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2012</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="516.932133265904" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2011</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="431.8535635811942" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2010</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="346.7749938964844" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2009</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="261.69642421177457" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2008</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="176.61785452706474" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2007</tspan></text><text style="text-anchor: middle; font-family: sans-serif; font-size: 12px; font-weight: normal;" x="91.5392848423549" y="319.5" text-anchor="middle" font-family="sans-serif" font-size="12px" stroke="none" fill="#888888" font-weight="normal" transform="matrix(1,0,0,1,0,7.5)"><tspan dy="4.5">2006</tspan></text><rect x="59.634821210588726" y="25" width="30.404463631766184" height="282" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="93.0392848423549" y="53.20000000000002" width="30.404463631766184" height="253.79999999999998" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="144.71339089529852" y="95.5" width="30.404463631766184" height="211.5" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="178.1178545270647" y="123.70000000000002" width="30.404463631766184" height="183.29999999999998" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="229.79196058000838" y="166" width="30.404463631766184" height="141" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="263.19642421177457" y="194.2" width="30.404463631766184" height="112.80000000000001" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="314.8705302647182" y="95.5" width="30.404463631766184" height="211.5" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="348.2749938964844" y="123.70000000000002" width="30.404463631766184" height="183.29999999999998" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="399.949099949428" y="166" width="30.404463631766184" height="141" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="433.3535635811942" y="194.2" width="30.404463631766184" height="112.80000000000001" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="485.0276696341378" y="95.5" width="30.404463631766184" height="211.5" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="518.432133265904" y="123.70000000000002" width="30.404463631766184" height="183.29999999999998" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="570.1062393188477" y="25" width="30.404463631766184" height="282" rx="0" ry="0" fill="#0b62a4" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect><rect x="603.5107029506138" y="53.20000000000002" width="30.404463631766184" height="253.79999999999998" rx="0" ry="0" fill="#7a92a3" stroke="none" style="fill-opacity: 1;" fill-opacity="1"></rect></svg><div class="morris-hover morris-default-style" style="display: none;"></div></div>
                                </div>
                                <!-- /.col-lg-8 (nested) -->
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-clock-o fa-fw"></i> Responsive Timeline
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="timeline">
                                <li>
                                    <div class="timeline-badge"><i class="fa fa-check"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                            <p><small class="text-muted"><i class="fa fa-clock-o"></i> 11 hours ago via Twitter</small>
                                            </p>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Libero laboriosam dolor perspiciatis omnis exercitationem. Beatae, officia pariatur? Est cum veniam excepturi. Maiores praesentium, porro voluptas suscipit facere rem dicta, debitis.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge warning"><i class="fa fa-credit-card"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem dolorem quibusdam, tenetur commodi provident cumque magni voluptatem libero, quis rerum. Fugiat esse debitis optio, tempore. Animi officiis alias, officia repellendus.</p>
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium maiores odit qui est tempora eos, nostrum provident explicabo dignissimos debitis vel! Adipisci eius voluptates, ad aut recusandae minus eaque facere.</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge danger"><i class="fa fa-bomb"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus numquam facilis enim eaque, tenetur nam id qui vel velit similique nihil iure molestias aliquam, voluptatem totam quaerat, magni commodi quisquam.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptates est quaerat asperiores sapiente, eligendi, nihil. Itaque quos, alias sapiente rerum quas odit! Aperiam officiis quidem delectus libero, omnis ut debitis!</p>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-badge info"><i class="fa fa-save"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nobis minus modi quam ipsum alias at est molestiae excepturi delectus nesciunt, quibusdam debitis amet, beatae consequuntur impedit nulla qui! Laborum, atque.</p>
                                            <hr>
                                            <div class="btn-group">
                                                <button type="button" class="btn btn-primary btn-sm dropdown-toggle" data-toggle="dropdown">
                                                    <i class="fa fa-gear"></i> <span class="caret"></span>
                                                </button>
                                                <ul class="dropdown-menu" role="menu">
                                                    <li><a href="#">Action</a>
                                                    </li>
                                                    <li><a href="#">Another action</a>
                                                    </li>
                                                    <li><a href="#">Something else here</a>
                                                    </li>
                                                    <li class="divider"></li>
                                                    <li><a href="#">Separated link</a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                                <li>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sequi fuga odio quibusdam. Iure expedita, incidunt unde quis nam! Quod, quisquam. Officia quam qui adipisci quas consequuntur nostrum sequi. Consequuntur, commodi.</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="timeline-inverted">
                                    <div class="timeline-badge success"><i class="fa fa-graduation-cap"></i>
                                    </div>
                                    <div class="timeline-panel">
                                        <div class="timeline-heading">
                                            <h4 class="timeline-title">Lorem ipsum dolor</h4>
                                        </div>
                                        <div class="timeline-body">
                                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deserunt obcaecati, quaerat tempore officia voluptas debitis consectetur culpa amet, accusamus dolorum fugiat, animi dicta aperiam, enim incidunt quisquam maxime neque eaque.</p>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-8 -->
                <div class="col-lg-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-bell fa-fw"></i> Notifications Panel
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="list-group">
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-comment fa-fw"></i> New Comment
                                    <span class="pull-right text-muted small"><em>4 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                    <span class="pull-right text-muted small"><em>12 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-envelope fa-fw"></i> Message Sent
                                    <span class="pull-right text-muted small"><em>27 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-tasks fa-fw"></i> New Task
                                    <span class="pull-right text-muted small"><em>43 minutes ago</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                    <span class="pull-right text-muted small"><em>11:32 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-bolt fa-fw"></i> Server Crashed!
                                    <span class="pull-right text-muted small"><em>11:13 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-warning fa-fw"></i> Server Not Responding
                                    <span class="pull-right text-muted small"><em>10:57 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-shopping-cart fa-fw"></i> New Order Placed
                                    <span class="pull-right text-muted small"><em>9:49 AM</em>
                                    </span>
                                </a>
                                <a href="#" class="list-group-item">
                                    <i class="fa fa-money fa-fw"></i> Payment Received
                                    <span class="pull-right text-muted small"><em>Yesterday</em>
                                    </span>
                                </a>
                            </div>
                            <!-- /.list-group -->
                            <a href="#" class="btn btn-default btn-block">View All Alerts</a>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                    
                    <!-- /.panel -->
                    <div class="chat-panel panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-comments fa-fw"></i> Chat
                            <div class="btn-group pull-right">
                                <button type="button" class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown">
                                    <i class="fa fa-chevron-down"></i>
                                </button>
                                <ul class="dropdown-menu slidedown">
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-refresh fa-fw"></i> Refresh
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-check-circle fa-fw"></i> Available
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-times fa-fw"></i> Busy
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-clock-o fa-fw"></i> Away
                                        </a>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <a href="#">
                                            <i class="fa fa-sign-out fa-fw"></i> Sign Out
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <ul class="chat">
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font">Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> 12 mins ago
                                            </small>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                        <img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> 13 mins ago</small>
                                            <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="left clearfix">
                                    <span class="chat-img pull-left">
                                        <img src="http://placehold.it/50/55C1E7/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <strong class="primary-font">Jack Sparrow</strong>
                                            <small class="pull-right text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> 14 mins ago</small>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                                <li class="right clearfix">
                                    <span class="chat-img pull-right">
                                        <img src="http://placehold.it/50/FA6F57/fff" alt="User Avatar" class="img-circle">
                                    </span>
                                    <div class="chat-body clearfix">
                                        <div class="header">
                                            <small class=" text-muted">
                                                <i class="fa fa-clock-o fa-fw"></i> 15 mins ago</small>
                                            <strong class="pull-right primary-font">Bhaumik Patel</strong>
                                        </div>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.
                                        </p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- /.panel-body -->
                        <div class="panel-footer">
                            <div class="input-group">
                                <input id="btn-input" class="form-control input-sm" placeholder="Type your message here..." type="text">
                                <span class="input-group-btn">
                                    <button class="btn btn-warning btn-sm" id="btn-chat">
                                        Send
                                    </button>
                                </span>
                            </div>
                        </div>
                        <!-- /.panel-footer -->
                    </div>
                    <!-- /.panel .chat-panel -->
                </div>
                <!-- /.col-lg-4 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->


    
    
 {% endblock %}

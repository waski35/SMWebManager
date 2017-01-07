{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <div id="page-wrapper" style="min-height: 650px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Stations</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            <!-- /.row -->
            <div class="row">
            <table class="table" id="stationList">
               <thead>
                   
                    <th>line</th>
                    <th>attached</th>
                    <th>block</th>
                    <th>creator</th>
                    <th>currentsector</th>
                    <th>docked</th>
                    <th>entitytype</th>
                    <th>faction</th>
                    <th>lastcontroller</th>
                    <th>lastposition</th>
                    <th>mass</th>
                    <th>name</th>
                    <th>action</th>
               </thead>
               <tbody>
                   
               </tbody>
               
           </table>
            </div>
            </div>
     </div>        


{% endblock %}      


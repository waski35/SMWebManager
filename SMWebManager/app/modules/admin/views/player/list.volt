{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <div id="page-wrapper" style="min-height: 650px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Players</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            <!-- /.row -->
            <div class="row">
            <table class="table" id="playerList">
               <thead>
                   
                    <th>line</th>
                    <th>bankcredits</th>
                    <th>controlling</th>
                    <th>controltype</th>
                    <th>credits</th>
                    <th>currentip</th>
                    <th>currentsector</th>
                    <th>faction</th>
                    <th>lastcore</th>
                    <th>lastposition</th>
                    <th>lastupdate</th>
                    <th>name</th>
                    <th>online</th>
                    <th>rank</th>
                    <th>action</th>
               </thead>
               <tbody>
                   
               </tbody>
               
           </table>
            </div>
            </div>
     </div>        


{% endblock %}       

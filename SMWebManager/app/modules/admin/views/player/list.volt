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
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>bank credits</th>
                    <th>controlling</th>
                    <th>control type</th>
                    <th>credits</th>
                    <th>current ip</th>
                    <th>current sector</th>
                    <th>faction id</th>
                    <th>last core</th>
                    <th>last position</th>
                    <th>last update</th>
                    <th>name</th>
                    <th>online</th>
                    <th>rank</th>
                    <th>action</th>
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getBankCredits()}}</td>
                       <td>{{log.getControlling()}}</td>
                       <td>{{log.getControlType()}}</td>
                       <td>{{log.getCredits()}}</td>
                       <td>{{log.getCurrentIp()}}</td>
                       <td>{{log.getCurrentSector()}}</td>
                       <td>{{log.getFaction()}}</td>
                       <td>{{log.getLastCore()}}</td>
                       <td>{{log.getLastPosition()}}</td>
                       <td>{{log.getLastUpdate()}}</td>
                       <td>{{log.getName()}}</td>
                       <td>{{log.getOnLine()}}</td>
                       <td>{{log.getRank()}}</td>
                       <td>{{ link_to(["for": "admin-player-details", "line": log.getLine()], "Details") }}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
            </div>
            </div>
     </div>        


{% endblock %}       

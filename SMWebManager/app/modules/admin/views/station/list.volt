{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>attached</th>
                    <th>block</th>
                    <th>creator</th>
                    <th>current sector</th>
                    <th>docked</th>
                    <th>entity type</th>
                    <th>faction id</th>
                    <th>last controller</th>
                    <th>last position</th>
                    <th>mass</th>
                    <th>name</th>
                    <th>action</th>
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getAttached()}}</td>
                       <td>{{log.getBlock()}}</td>
                       <td>{{log.getCreator()}}</td>
                       <td>{{log.getCurrentSector()}}</td>
                       <td>{{log.getDocked()}}</td>
                       <td>{{log.getEntityType()}}</td>
                       <td>{{log.getFaction()}}</td>
                       <td>{{log.getLastController()}}</td>
                       <td>{{log.getLastPosition()}}</td>
                       <td>{{log.getMass()}}</td>
                       <td>{{log.getName()}}</td>
                       <td>{{ link_to(["for": "admin-station-details", "line": log.getLine()], "Details") }}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
     </div>        


{% endblock %}      


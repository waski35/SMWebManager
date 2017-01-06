{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>bounty</th>
                    <th>deaths</th>
                    <th>killedby</th>
                    <th>kills</th>
                    <th>lastkill</th>
                    <th>name</th>
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getBounty()}}</td>
                       <td>{{log.getDeaths()}}</td>
                       <td>{{log.getKilledBy()}}</td>
                       <td>{{log.getKills()}}</td>
                       <td>{{log.getLastKill()}}</td>
                       <td>{{log.getName()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
     </div>        


{% endblock %}    


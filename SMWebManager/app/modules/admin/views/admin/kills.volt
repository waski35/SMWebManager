{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>killer</th>
                    <th>killtime</th>
                    <th>victim</th>
                </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getKiller()}}</td>
                       <td>{{log.getKillTime()}}</td>
                       <td>{{log.getVictim()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>   
     </div>        


{% endblock %}    



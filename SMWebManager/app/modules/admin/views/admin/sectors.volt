{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>last update</th>
                    <th>name</th>
                    <th>peace</th>
                    <th>protected</th>
                    <th>type</th>
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getLastUpdate()}}</td>
                       <td>{{log.getName()}}</td>
                       <td>{{log.getPeace()}}</td>
                       <td>{{log.getProtected()}}</td>
                       <td>{{log.getType()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
     </div>        


{% endblock %}      


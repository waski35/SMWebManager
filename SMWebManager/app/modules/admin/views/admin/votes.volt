{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                    
                    <th>line</th>
                    <th>info</th>
                    <th>name</th>
                    <th>time</th>
                    
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getInfo()}}</td>
                       <td>{{log.getName()}}</td>
                       <td>{{log.getTime()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
     </div>        


{% endblock %}    


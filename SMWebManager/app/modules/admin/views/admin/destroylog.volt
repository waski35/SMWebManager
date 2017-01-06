{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
           <table class="table">
               <thead>
                
                    <th>line</th>
                    <th>type</th>
                    <th>name</th>
                    <th>destroy time</th>
                </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getType()}}</td>
                       <td>{{log.getDestroyTime()}}</td>
                       <td>{{log.getName()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>   
     </div>        


{% endblock %}   
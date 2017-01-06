{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
        <table class="table">
               <thead>
                
                    <th>line</th>
                    <th>ip</th>
                    <th>name</th>
                    <th>status</th>
                    <th>time</th>
                </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getIP()}}</td>
                       <td>{{log.getStatus()}}</td>
                       <td>{{log.getTime()}}</td>
                       <td>{{log.getName()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>    
     </div>        


{% endblock %}    


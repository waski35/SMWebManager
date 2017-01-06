{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
           <table class="table">
               <thead>
                    <th>line</th>
                    <th>command</th>
                    <th>name</th>
                    <th>time</th>
               </thead>
               <tbody>
                   {% for adminlog in adminlogs %}
                   <tr>
                       <td>{{adminlog.getLine()}}</td>
                       <td>{{adminlog.getCommand()}}</td>
                       <td>{{adminlog.getName()}}</td>
                       <td>{{adminlog.getTime()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
                  
            
            
            
     </div>        


{% endblock %}    


{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                    
                    <th>line</th>
                    <th>commands allowed</th>
                    <th>name</th>
                    
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getCommadsAllowed()}}</td>
                       <td>{{log.getName()}}</td>

                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
     </div>        


{% endblock %}      

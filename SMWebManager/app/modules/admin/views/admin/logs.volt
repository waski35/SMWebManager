{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                    
                    <th>line</th>
                    <th>log date</th>
                    <th>log string</th>

                </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getLogDate()}}</td>
                       <td>{{log.getLogString()}}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>  
     </div>        


{% endblock %}      


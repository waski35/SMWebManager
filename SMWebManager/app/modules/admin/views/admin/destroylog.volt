{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Destroy Log</h1>
                </div>
                    <!-- /.col-lg-12 -->
            </div>
         <!-- /.row -->
        <div class="row">
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
        </div>
     </div>        


{% endblock %}   
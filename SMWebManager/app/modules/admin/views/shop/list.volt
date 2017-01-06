{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <div id="page-wrapper" style="min-height: 650px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Shops</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            <!-- /.row -->
            <div class="row">
            <table class="table">
               <thead>
                   
                    <th>line</th>
                    <th>current sector</th>
                    <th>name</th>
                    <th>action</th>
               </thead>
               <tbody>
                   {% for log in logs %}
                   <tr>
                       <td>{{log.getLine()}}</td>
                       <td>{{log.getCurrentSector()}}</td>
                       <td>{{log.getName()}}</td>
                       <td>{{ link_to(["for": "admin-shop-details", "line": log.getLine()], "Details") }}</td>
                   </tr>
                   {% endfor %}
               </tbody>
               
           </table>
            </div>
            </div>
     </div>        


{% endblock %}     


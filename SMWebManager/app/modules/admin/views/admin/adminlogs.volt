{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Admin Logs</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
            <!-- /.row -->
            <div class="row">
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
        </div>
     </div>        


{% endblock %}    


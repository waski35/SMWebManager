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
                <table class="table" id="adminlogsLog">
                    <thead>
                        <th>line</th>
                        <th>command</th>
                        <th>name</th>
                        <th>time</th>
                    </thead>
                    <tbody>
                        
                    </tbody>
               
                </table>
                  
            
            
            </div>
        </div>
     </div>        


{% endblock %}    


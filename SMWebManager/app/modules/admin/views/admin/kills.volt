{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Kills Logs</h1>
                </div>
                    <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
            <table class="table" id="killsLog">
               <thead>
                   
                    <th>line</th>
                    <th>killer</th>
                    <th>killtime</th>
                    <th>victim</th>
                </thead>
               <tbody>
                   
               </tbody>
               
           </table>   
            </div>
        </div>
     </div>        


{% endblock %}    



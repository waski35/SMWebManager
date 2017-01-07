{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Server Manager</h1>
                </div>
                    <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
            <table class="table">
               <thead>
                    <th>Description</th>
                    <th>Value / Action</th>

               </thead>
               <tbody>
                   <tr><td>Current Server Status</td><td>{{serverstatus.getStatus()}} - ({{serverstatus.getTime()}})</td></tr>
                   <tr><td>Start Server</td><td>{{ link_to(["for": "admin-server-management", "do_action":"start"], "Start Server Now !", 'class' : 'btn btn-md btn-success') }}</td></tr>
                   <tr><td>Stop Server</td><td>{{ link_to(["for": "admin-server-management", "do_action":"stop"], "Stop Server Now !", 'class' : 'btn btn-md btn-danger') }}</td></tr>
                   <tr><td>Restart Server</td><td>{{ link_to(["for": "admin-server-management", "do_action":"restart"], "Restart Server Now !", 'class' : 'btn btn-md btn-warning') }}</td></tr>
                   <tr><td>Backup Server Universe</td><td>{{ link_to(["for": "admin-server-management", "do_action":"backupuni"], "Backup Server Universe Now !", 'class' : 'btn btn-md btn-info') }}</td></tr>
                   <tr><td>Update Server Binaries</td><td>{{ link_to(["for": "admin-server-management", "do_action":"updatesrv"], "Update Server Now !", 'class' : 'btn btn-md btn-info') }}</td></tr>
                   <tr><td>Update Doomsiders Shadow</td><td>{{ link_to(["for": "admin-server-management", "do_action":"updateshdw"], "Update Shadow Now !", 'class' : 'btn btn-md btn-info') }}</td></tr>
                       
                      
               </tbody>
               
           </table>
            </div>
        </div>
     </div>        


{% endblock %}      


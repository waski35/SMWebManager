{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
            {{ partial('partials/adminMenu')}}
            <table class="table">
               <thead>
                    <th>Description</th>
                    <th>Value / Action</th>

               </thead>
               <tbody>
                   <tr><td>Current Server Status</td><td>{{serverstatus}}</td></tr>
                   <tr><td>Start Server</td><td>{{ link_to(["for": "admin-server-management", "action":"start"], "Start Server Now !" 'class' : 'btn btn-md btn-success') }}</td></tr>
                   <tr><td>Stop Server</td><td>{{ link_to(["for": "admin-server-management", "action":"stop"], "Stop Server Now !" 'class' : 'btn btn-md btn-danger') }}</td></tr>
                   <tr><td>Restart Server</td><td>{{ link_to(["for": "admin-server-management", "action":"restart"], "Restart Server Now !" 'class' : 'btn btn-md btn-warning') }}</td></tr>
                   <tr><td>Backup Server Universe</td><td>{{ link_to(["for": "admin-server-management", "action":"backupuni"], "Backup Server Universe Now !" 'class' : 'btn btn-md btn-info') }}</td></tr>
                   <tr><td>Update Server Binaries</td><td>{{ link_to(["for": "admin-server-management", "action":"updatesrv"], "Update Server Now !" 'class' : 'btn btn-md btn-info') }}</td></tr>
                   <tr><td>Update Doomsiders Shadow</td><td>{{ link_to(["for": "admin-server-management", "action":"updateshdw"], "Update Shadow Now !" 'class' : 'btn btn-md btn-info') }}</td></tr>
                       
                      
               </tbody>
               
           </table>
     </div>        


{% endblock %}      


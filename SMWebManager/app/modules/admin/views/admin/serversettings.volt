{% extends "layout.volt" %}

{% block content %}
    
    {{ partial('partials/adminMenu') }}

        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Server Settings - read only - WIP</h1>
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
                   {#{{ form( '', 'method': 'post')}} #}
                   <tr><td>Path to Doomsider Shadow</td><td>{{shadow}}</td></tr>
                   <tr><td>Host Name</td><td>{{ instance_name }}</td></tr>
                   <tr><td>Server Port</td><td>{{ instance_port }}</td></tr>
                   <tr><td>Server Host</td><td>{{ instance_host }} </td></tr>
                   {#<tr><td>Despawn Action</td><td><input type="submit" name="do_action" value="Despawn" class="btn btn-md btn-info"></td></tr>
                   {{ end_form ()}}    #}
               </tbody>
               
           </table>
            </div>
        </div>


{% endblock %}   

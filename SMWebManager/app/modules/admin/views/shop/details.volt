{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Shop - Details</h1>
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
                   {{ form( '', 'method': 'post')}}
                   <tr><td>Name</td><td>{{ logs.getName() }}</td></tr>
                   <tr><td>Current Sector</td><td>{{ logs.getCurrentSector() }}</td></tr>
                   <tr><td>Despawn Shop Action</td><td><input type="submit" name="do_action" value="Despawn" class="btn btn-md btn-warning"></td></tr>
                   
                   {{ end_form ()}}    
               </tbody>
               
           </table>
            </div>
        </div>
     </div>        


{% endblock %}   

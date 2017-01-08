{% extends "layout.volt" %}

{% block content %}

    {{ partial('partials/adminMenu') }}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Station - Details</h1>
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
                   <tr><td>Mass</td><td>{{ logs.getMass() }}</td></tr>
                   <tr><td>Faction</td><td>{{ logs.getFaction() }}</td></tr>
                   <tr><td>Block</td><td>{{ logs.getBlock() }}</td></tr>
                   <tr><td>Creator</td><td>{{ logs.getCreator() }}</td></tr>
                   <tr><td>Despawn Station Action</td><td><input type="submit" name="do_action" value="Despawn" class="btn btn-md btn-warning"></td></tr>
                   <tr><td>Set Decayed Station Action</td><td><input type="submit" name="do_action" value="Set Decayed" class="btn btn-md btn-warning"></td></tr>
                   <tr><td>Set Undecayed Station Action</td><td><input type="submit" name="do_action" value="Set Undecayed" class="btn btn-md btn-warning"></td></tr>
                   {{ end_form ()}}    
               </tbody>
               
           </table>
            </div>
        </div>
       


{% endblock %}   

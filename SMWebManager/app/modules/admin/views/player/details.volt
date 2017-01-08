{% extends "layout.volt" %}

{% block content %}
     <div id="wrapper">

        <!-- Navigation -->
        {{ partial('partials/adminMenu')}}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Player - Details</h1>
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
                   <tr><td>Rank</td><td>{{ logs.getRank() }}</td></tr>
                   <tr><td>Bank Credits</td><td>{{logs.getBankCredits()}}</td></tr>
                   <tr><td>Last Position</td><td>{{ logs.getLastPosition() }}</td></tr>
                   <tr><td>Controll Type</td><td>{{ logs.getName() }}</td></tr>
                   <tr><td>Credits</td><td>{{ logs.getCredits() }}</td></tr>
                   <tr><td>Current IP</td><td>{{ logs.getCurrentIp() }}</td></tr>
                   <tr><td>Current Sector</td><td>{{ logs.getCurrentSector() }}</td></tr>
                   <tr><td>Faction</td><td>{{ logs.getFaction() }}</td></tr>
                   <tr><td>Last Update</td><td>{{ logs.getLastUpdate() }}</td></tr>
                   <tr><td>Kill Player Action</td><td><input type="submit" name="do_action" value="Kill" class="btn btn-md btn-warning"></td></tr>
                   <tr><td>Ban Player Action</td><td><input type="submit" name="do_action" value="Ban" class="btn btn-md btn-danger"></td></tr>
                   <tr><td>Kick Player Action</td><td><input type="submit" name="do_action" value="Kick" class="btn btn-md btn-warning"></td></tr>
                   <tr><td>Give 1 mil Credits to Player Action</td><td><input type="submit" name="do_action" value="Give Credits" class="btn btn-md btn-info"></td></tr>
                   <tr><td>Rank Up Player Action</td><td><input type="submit" name="do_action" value="Rank Up" class="btn btn-md btn-success"></td></tr>
                   <tr><td>Rank Down Player Action</td><td><input type="submit" name="do_action" value="Rank Down" class="btn btn-md btn-warning"></td></tr>
                   {{ end_form ()}}    
               </tbody>
               
           </table>
            </div>
        </div>
     </div>        


{% endblock %}   

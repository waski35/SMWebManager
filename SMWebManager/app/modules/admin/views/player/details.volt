{% extends "layout.volt" %}

{% block content %}

    {{ partial('partials/adminMenu') }}
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
                   <tr><td>Rank</td>
                       <td><select name="rank">
                            {% for rank in ranks %}
                                {% if rank == logs.getRank() %}
                                    <option value="{{rank}}" selected>{{rank}}</option>
                                {% endif %}
                                    <option value="{{rank}}">{{rank}}</option>
                                    
                            {% endfor %}
                           </select>
                       </td>
                   </tr>
                   <tr><td>Bank Credits</td><td>{{logs.getBankCredits()}}</td></tr>
                   <tr><td>Last Position</td><td>{{ logs.getLastPosition() }}</td></tr>
                   <tr><td>Controll Type</td><td>{{ logs.getName() }}</td></tr>
                   <tr><td>Credits</td><td>{{ logs.getCredits() }}</td></tr>
                   <tr><td>Current IP</td><td>{{ logs.getCurrentIp() }}</td></tr>
                   <tr><td>Current Sector</td><td>{{ logs.getCurrentSector() }}</td></tr>
                   <tr><td>Faction</td><td>{{ logs.getFaction() }}</td></tr>
                   <tr><td>Last Update</td><td>{{ logs.getLastUpdate() }}</td></tr>
                   <tr><td>Actions (immediate)</td><td><input type="submit" name="do_action" value="Kill" class="btn btn-md btn-warning"><input type="submit" name="do_action" value="Ban" class="btn btn-md btn-danger"><input type="submit" name="do_action" value="Unban" class="btn btn-md btn-success"><input type="submit" name="do_action" value="Kick" class="btn btn-md btn-warning"><input type="submit" name="do_action" value="Give Credits" class="btn btn-md btn-info"><input type="submit" name="do_action" value="Set Invincible" class="btn btn-md btn-info"><input type="submit" name="do_action" value="UnSet Invincible" class="btn btn-md btn-info"><input type="submit" name="do_action" value="Whitelist" class="btn btn-md btn-warning"></td></tr>
                   <tr><td>Save Player Record</td><td><input type="submit" name="do_action" value="Save" class="btn btn-md btn-success"></td></tr>
                   {{ end_form ()}}    
               </tbody>
               
           </table>
            </div>
        </div>
       


{% endblock %}   

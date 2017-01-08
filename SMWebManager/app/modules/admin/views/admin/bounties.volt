{% extends "layout.volt" %}

{% block content %}

    {{ partial('partials/adminMenu') }}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Bounties</h1>
                </div>
                    <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <table class="table" id="bountiesLog">
                    <thead>
                   
                        <th>line</th>
                        <th>bounty</th>
                        <th>deaths</th>
                        <th>killedby</th>
                        <th>kills</th>
                        <th>lastkill</th>
                        <th>name</th>
                    </thead>
                    <tbody>
                    
                    </tbody>
               
                </table>
            </div>
        </div>


{% endblock %}    


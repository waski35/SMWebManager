{% extends "layout.volt" %}

{% block content %}

    {{ partial('partials/adminMenu') }}
        <div id="page-wrapper" style="min-height: 650px;">
            <div class="row">
                <div class="col-lg-12">
                        <h1 class="page-header">Destroy Log</h1>
                </div>
                    <!-- /.col-lg-12 -->
            </div>
         <!-- /.row -->
        <div class="row">
           <table class="table" id="destroyLog">
               <thead>
                
                    <th>line</th>
                    <th>type</th>
                    <th>name</th>
                    <th>destroytime</th>
                </thead>
               <tbody>
                   
               </tbody>
               
           </table>   
        </div>
        </div>
        


{% endblock %}   
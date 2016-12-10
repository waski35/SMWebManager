{% extends "../layout.volt" %}

{% block content %}
    
        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="login-panel panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Please Sign In</h3>
                    </div>
                    <div class="panel-body">
                        {{ form( for: 'admin-login', 'method': 'post')}}
                            <fieldset>
                                <div class="form-group">
                                    <input class="form-control" placeholder="login" name="login" autofocus="" type="text">
                                </div>
                                <div class="form-group">
                                    <input class="form-control" placeholder="Password" name="password" value="" type="password">
                                </div>
                                
                                <!-- Change this to a button or input when using this as a form -->
                                {{ submit_button('Log In', 'class':'btn btn-lg btn-success btn-block')}}
                            </fieldset>
                        {{ end_form() }}
                    </div>
                </div>
            </div>
        </div>
   

    
    
    
{% endblock %}
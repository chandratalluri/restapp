<!DOCTYPE html>
<html>
<head>
    <title>Prempoint REST API!</title>
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">
    <link rel="stylesheet"
          href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap-theme.min.css">
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
</head>
<body role="document" style="padding-top: 70px;">


<div class="container theme-showcase" role="main">
    <!--
      Output from REST API call.
    -->
    <div class="alert alert-success" class="hidden" id="outputAlert"></div>

    <!--
      A form that takes a text value and submits it to REST Endpoint,
    -->
    <div class="jumbotron">
        <div class="row">
            <div class="col-lg-12">
                <h1>Welcome to Prempoint REST API!</h1>
                <p>Enter your name and press the button below to call Hello Rest
                    API.</p>
               <form method="post" onsubmit="submitForm(event)">
                    <div class="input-group">
                        <input type="text" class="form-control input-lg" placeholder="Name"
                               id="name"/>
                        <span class="input-group-btn">
                             <button class="btn btn-default btn-primary btn-group btn-lg"
                                     type="submit" id="submitButton">Submit</button>
                          </span>
                    </div>
                </form>
                <br/>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

    function submitForm(event){
    	event.preventDefault();

        $.post( "/api/hello", { name: $('#name').val() }, function( data ) {
                       $('#outputAlert').show();
                       $('#outputAlert').addClass('alert alert-success');
                       $('#outputAlert').html(' <h2> Hello ' + data.name+ '</h2> ');
         })
        .fail(function(xhr, status, error) {
               $('#outputAlert').show();
               $('#outputAlert').addClass('alert alert-danger');
                $('#outputAlert').html('<b>Error Code: </b>' + error);
        });


    }

</script>

</body>
</html>



<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Simple RESTful API</title>
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" />

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.7.2/css/all.min.css" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/simple-line-icons/2.4.1/css/simple-line-icons.css" />
  <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">


</head>
<body class="bg-light">
  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-info static-top header-bg-dark" style="background: ##FFFFFF!;">
  <div class="container">
    <a class="navbar-brand font-weight-bold text-white" ><h1>Simple RESTful API </h1></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link font-weight-bold" >Group No: 3
                    <span class="sr-only">(current)</span>
                  </a>
            </li>

          </ul>
    </div>
  </div>
</nav>
<br>
<br>
<?php
require_once("class.main.php");
$o = new main;

//print_r($_SERVER['REQUEST_URI']);


if(isset($_SERVER['REQUEST_URI'])){
    $array = explode('/', $_SERVER['REQUEST_URI']);
    if(isset($array[0])){ $x = $array[0]; }
    if(isset($array[1])){ $o->api = $array[1]; }
    if(isset($array[2])){ $o->api = $array[2]; }
    if(isset($array[3])){ $o->id = $array[3]; }
    if(isset($array[4])){ $o->action = $array[4]; }


    if($o->api != 'api' || !$o->id) {
        $arr = array("error" => "Wrong Query.");
        print_r(JSON_ENCODE($arr));
    }

    print_r($o->takecall());
}
else{
    $arr = array("error" => "Something went wrong.");
    print_r(JSON_ENCODE($arr));
}
?>
</body>
</html>

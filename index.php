
<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8" >

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link type="image/x-icon" href="img/favicon.ico" rel="shortcut icon">

<link rel="stylesheet" type="text/css" href="css/styles.css">

<script src="js/jquery-3.6.0.js"></script>
<title>Wheel of time online map</title>
</head>
<body>
<?php
include("events.php");
?>
<div class="main_on_page">
	<h1>Welcome to Wheels of time online map!</h1>
	<br>
	<p>Leave marks on the map and get to know this fantasy world better!<br>The mark on the map will appear after a little moderation.<br></p>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<?php
         		if (isset($_SESSION['message']) && $_SESSION['message']) {
         			printf('<b>%s</b>', $_SESSION['message']);
         			unset($_SESSION['message']);
         		}
         		?>
         		<form class="cross_info alert alert-info alert-dismissible prov" id="form_event" method="post" action="add_event.php"  enctype="multipart/form-data">
         			<p>Add mark:</p>
         			<br>
         			<input id="name-event" name="name-event" class="form-control-plaintext name-event" readonly>
         			<input type="file" id="img-event" name="img-event" class="form-control-plaintext img-event" accept=".jpg,.jpeg,.png" disabled>
         			<textarea id="info_text" class="info_text form-control" name="textarea" readonly></textarea>    
         			<input id="button" class="btn btn-warning btn-sm" id="button" type="submit" value="ADD" disabled onclick="isSend()">
         			<p>Coordinates:</p>
         			<input class="coords" id="cx" name="xclick" value="X" readonly>
         			<input class="coords" id="cy" name="yclick" value="Y" readonly>
         		</form>
         </div>
         <div class="col-12" id="image-map-wrapper">
               <div id="image-map-container">
                  <div id="image_map" class="image-mapper">
                     <img class="image-mapper-img" id="image-mapper-img" src="img/wot.jpeg">
                     <svg class="image-mapper-svg" id="mainmap"viewBox="0 0 1100 850" preserveAspectRatio="xMaxYMax meet">
                     	<?php
                        $event = new Event();
                     	$event->events_coord();
                     	?>
                     </svg>
                  </div>
               </div>
           </div>
           <div class="col-12">
            	<div class="view_info" id="view_info">
            		<?php
            		if($_GET['number']){
            		$event->events_info($_GET['number']);
            	}
            		?>
         		</div>
         	</div>
         </div>
         <br>
         <p>VityaEndless(c)2022</p>
     </div>
 </div>
 <div id="swordTop" hidden>
 	<img src="img/sword.png">
 </div>
<script type="text/javascript" src="js/main_script.js" ></script>	
</body>
</html>
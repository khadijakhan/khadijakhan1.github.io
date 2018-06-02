<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CCER | Goal Analysis</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png">

<!-- Bootstrap -->
<link rel="stylesheet" type="text/css"  href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css">

<!-- Stylesheet
    ================================================== -->
<link rel="stylesheet" type="text/css"  href="css/style3.css">
<link rel="stylesheet" type="text/css" href="css/prettyPhoto.css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,700,800,600,300" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/modernizr.custom.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
<!-- Navigation -->
<nav id="menu" class="navbar navbar-default navbar-fixed-top">
  <div class="container"> 
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
      <a class="navbar-brand page-scroll" href="#page-top"><i class="fa fa-cloud"></i> CCER</a> </div>
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
         <li><a href="index.php">Home</a></li>
		 <li><a href="auto_resolve.php" style="color:#ffff00;">Goal Analysis</a></li>
		 <li><a href="dataset.php" >Dataset</a></li>
		 <li><a href="publication.php" >Publications</a></li>
		 <li><a href="contact_us.php" >Contact Us</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>


<!-- AutoResolve Section -->
<div id="services" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
      <h2>Goal Analysis</h2>
      <p>This feature helps you to automatically find out all the potentional risks associated to your desired quality goals. And helps you find best tactics to resolve those risks.</p>
    </div>
    <div class="row">
	
	  <div class="col-xs-6 col-md-3"> <i class="fa"><strong> 1 </strong></i>
		<h4>Choose the Quality Goals</h4>
		<p>Firstly, identify the goals that you would like your legacy system to achieve while adopting cloud</p>
	  </div>
	  
      <div class="col-xs-6 col-md-3"> <i class="fa"><strong> 2 </strong></i>
        <h4>Select Obstales to Resolve</h4>
        <p>Then, from the list of obstacles associated to each goal, select the ones you would like to resolve</p>
      </div>
      <div class="col-xs-6 col-md-3"> <i class="fa"><strong> 3 </strong></i>
        <h4>Choose the Resolution Tactics</h4>
        <p>Possible tactics to resolve those obstacles, would then be dispalyed. Choose the ones you want to adopt</p>
      </div>
      <div class="col-xs-6 col-md-3"> <i class="fa"><strong> 4 </strong></i>
        <h4>View your Final Report</h4>
        <p>In the end, a report will be generated to summerize your complete migration scenario</p>
      </div>
    </div>
  </div>
</div>

<!-- Goal Section -->
<div id="portfolio">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title text-center">
	  <h2>Choose your Goals</h2>
      <p>Select the quality goals and click Next</p>
	</div>
    <div class="categories">
      <div class="clearfix"></div>
    </div>
	
    <div class="row">
      <div class="portfolio-items">
	  
	    <form name="goal_form" action="resolve_obstacle.php" method=post>	
		
		<?php
		   define ('servername' , 'localhost');
		   define ('username' , 'clouduser');
		   define ('password' , 'clouduser2018');
		   define ('database' , 'repository');

		   $the_goal = "";
		   //Connecting to Database
		   $conn = new mysqli(servername, username, password, database);
		   //Checking for errors
		   if ($conn->connect_error) 
		   {
			 die("Connection failed: " . $conn->connect_error());
		   }
		   //Displaying Goal Name
		   $query = "SELECT gID, gName, gDetail, gImg
					 FROM goal; " ;

		   $result = $conn->query($query);

		   if ($result->num_rows > 0) 
		   {    			
			while($row = $result->fetch_assoc()) 
			{  ?> 
		
				<div class="col-sm-6 col-md-3 col-lg-3 web">
				  <div class="portfolio-item">
					<div class="title">
						<h4><?php echo $row["gName"]; ?></h4>
					</div>
					<div class="hover-bg">
					  <div class="hover-text">
						<small><?php echo $row["gDetail"]; ?></small> 
					  </div>
					  <img src="<?php echo "img/cloudIcons/".$row["gImg"].".jpg";?>" class="img-responsive" alt="Availability"> 
					  <label class="checkbox"><input type="checkbox" id="goal<?php echo $row["gID"];?>" name="goal[]" value="<?php echo $row["gID"];?>"  /></label>			  
					</div>
				  </div>
				</div>
				
		   <?php }} $conn->close(); ?>		
      </div>
	  
	  <br/>
	  <center><button class="btn btn-default btn-lg page-scroll" type="submit">Next</button></center>
	  </form>	
	  
    </div>
  </div>		
</div>




<div id="footer">
  <div class="container text-center">
    <div class="fnav">
      <p>Copyrights© Cloud Computing Experience Repository. All rights reserved.</p>
    </div>
  </div>
</div>
<script type="text/javascript" src="js/jquery.1.11.1.js"></script> 
<script type="text/javascript" src="js/bootstrap.js"></script> 
<script type="text/javascript" src="js/SmoothScroll.js"></script> 
<script type="text/javascript" src="js/jquery.prettyPhoto.js"></script> 
<script type="text/javascript" src="js/jquery.isotope.js"></script> 
<script type="text/javascript" src="js/jqBootstrapValidation.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
<?php session_start(); ?>
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
<link rel="stylesheet" type="text/css"  href="css/style5.css">
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


<!-- Obstacles Section -->
<div id="portfolio">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title text-center">
      <h2>Select the Obstacles</h2>
      <p>Choose the obstacles to resolve and click Next</p>
    </div>
	<div class="row">
	 <div class="col-md-12 col-md-offset-0">
	  <?php
	
	   define ('servername' , 'localhost');
	   define ('username' , 'clouduser');
	   define ('password' , 'clouduser2018');
	   define ('database' , 'repository');

	   $the_goal = "";
	   $x=0;
	   $_SESSION['no-of-goal']=0;
	   //Activated when submitted
	   if ($_SERVER["REQUEST_METHOD"] == "POST") 
	   {  
	    if(!empty($_POST['goal']))
	    {
		  //Connecting to Database
		  $conn = new mysqli(servername, username, password, database);
		  //Checking for errors
		  if ($conn->connect_error) 
		  {
		    die("Connection failed: " . $conn->connect_error());
		  }
		
		  //Listing Ostacles
		  echo "<form name=\"obs_form \" method=post  action=\"resolve_tactic.php\" > ";

		  foreach($_POST['goal'] as $the_goal)
		  {
			$x++;
		    $the_goal=test_input($the_goal);
			$_SESSION['goal'.$x.'']=$the_goal;
			
		    //Displaying Goal Name
		    $query = "SELECT gName, gImg
				      FROM goal	WHERE gID=".$the_goal."; " ;

		    $result = $conn->query($query);

		    if ($result->num_rows > 0) 
		    {    			
    			while($row = $result->fetch_assoc()) 
    			{ ?>
        			<div class="goal">	  
						<div class="goal-head">
						  <div class="goal-name"><h2><?php echo $row["gName"]; ?></h2>
						  <div class="goal-img"><img src="img/cloudIcons/<?php echo $row["gImg"]; ?>-small.jpg" class="img" alt="Icon" ></div>
						  </div>
						</div>	
						<br/><br/>
						<div class="goal-obs">
    		<?php	
				}
		    } 

		    //Displaying Obtacles for each goal		    
		    $query =  " SELECT obstical.obsID, obstical.obsName, obstical.obsDetail 
				FROM gor, obstical 
				WHERE gor.gID=".$the_goal." 
				AND gor.obsID=obstical.obsID; " ;

		    $result = $conn->query($query);

		    if ($result->num_rows > 0) 
		    {
    			// output data of each row
    			while($row = $result->fetch_assoc()) 
    			{ ?>
			
					<div class="obs">
						<div class="obs-name">
						  <label class="checkbox">
						     <input type="checkbox" name= "goal<?php echo $the_goal;?>obs[]" value= "<?php echo $row["obsID"]; ?>" />
							 <?php echo $row["obsName"]; ?>
						  </label>
						  <div class="obs-detail">
							<p class="speech-bubble"><?php echo $row["obsDetail"]; ?></p>
						  </div>
						</div>
					</div>
			
        	<?php
			
    			}
		    }
		    else 
		    {
    			
		    } ?>
			
			</div>		
		    </div>
			
		<?php	}	$_SESSION['no-of-goal']=$x; ?>
		
		
		<br/> 
		<center><button class="btn btn-default btn-lg page-scroll" type="submit">Next</button> </center>
		
		</form>
		
		
		<?php 
		
			$conn->close();
			  }  	
			}
			
			else
			{
				header('location: auto_resolve.php');
				exit(0);
			}

			function test_input($data) 
			{
			   $data = trim($data);
			   $data = stripslashes($data);
			   $data = htmlspecialchars($data);
			   return $data;
			}
		?>
	 	  
	  
	  	  
	 </div>
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
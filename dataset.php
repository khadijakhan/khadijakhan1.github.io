<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CCER | Dataset</title>
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
<link rel="stylesheet" type="text/css"  href="css/style2.css">
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
		 <li><a href="auto_resolve.php" >Goal Analysis</a></li>
		 <li><a href="dataset.php" style="color:#ffff00;" >Dataset</a></li>
		 <li><a href="publication.php" >Publications</a></li>
		 <li><a href="contact_us.php" >Contact Us</a></li>
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>
<!--Second Navigation -->
<nav id="menu" class="navbar navbar-default navbar-fixed-top" style="top: 50px;" >
  <div class="container">
    
    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#services2" class="page-scroll" style="font-size:26px" ><i class="fa fa-desktop"></i></a></li>
		<li><a href="#about" class="page-scroll" style="font-size:26px" ><i class="fa fa-exclamation-triangle"></i></a></li>
        <li><a href="#portfolio" class="page-scroll" style="font-size:26px" ><i class="fa fa-gears"></i></a></li>
        <li><a href="#team" class="page-scroll"style="font-size:26px" ><i class="fa fa-line-chart"></i></a></li>    
      </ul>
    </div>
    <!-- /.navbar-collapse --> 
  </div>
  <!-- /.container-fluid --> 
</nav>

<!-- Tables Section -->
<div id="services" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
      <h2 style="font-size: 40px;" >Dataset</h2>
      <p>This website acts as a virtual repository for users to select goal, find risk and their resolution tactics. Related research and tables are provided below.</p>
    </div>
    <div class="row">
	    <div class="col-xs-6 col-md-3"> <a href="#services2" class="page-scroll"><i class="fa fa-desktop"></i></a>
        <a href="#services2" class="page-scroll"><h4>Cloud Goals</h4></a>
        <p>These are the functional and non-functional requirements coming from different stakeholders specific to cloud adoption.</p>
      </div>
      <div class="col-xs-6 col-md-3"> <a href="#about" class="page-scroll"><i class="fa fa-exclamation-triangle"></i></a>
        <a href="#about" class="page-scroll"><h4>Cloud Risks</h4></a>
        <p>We likened the risks to obtacles encountered while realizing cloud user goals.</p>
      </div>
      <div class="col-xs-6 col-md-3"> <a href="#portfolio" class="page-scroll"><i class="fa fa-gears"></i></a>
        <a href="#portfolio" class="page-scroll"><h4>Resolution Tactics</h4></a>
        <p>These are cloud-specific obstacle resolution tactics for mitigating identified risks.</p>
      </div>
      <div class="col-xs-6 col-md-3"> <a href="#team" class="page-scroll"><i class="fa fa-line-chart"></i></a>
        <a href="#team" class="page-scroll"><h4>Bibliography</h4></a>
        <p>It represents the list of all empirical studies that have been reviewed so far.</p>
      </div>
    </div>
  </div>
</div>

<!-- Cloud Goals Section -->
<div id="services2" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
      <h2>Cloud Goals</h2>
    </div>
    <div class="row">
	 <div class="col-md-12 col-md-offset-0">
	  <table id = "goalTable" class="goal-table">
	   <?php 
		define ('servername' , 'localhost');
	   	define ('username' , 'clouduser');
	   	define ('password' , 'clouduser2018');
	   	define ('database' , 'repository');

	   	// Create connection
	   	$conn = new mysqli(servername, username, password, database);
	   	// Check connection
	   	if ($conn->connect_error) 
	   	{
	       	   die("Connection failed: " . $conn->connect_error);
	   	} 

		$sql = "SELECT COUNT(*) AS 'C' FROM repository.goal;";
	   	$result = $conn->query($sql);

		if ($result->num_rows > 0) 
	   	{    // output data of each row
	             while($row = $result->fetch_assoc())
		     {	$max= $row["C"];   }
		}
	   ?>

	   <tr><th class="ca">Goal ID</th><th class="ca">Quality Goal</th><th class="ca">Explaination (from cloud service consumer perspective)</th><th class="ca">Study</th></tr></tr>

	   <?php for($x=1; $x <= $max; $x++) { ?>
	     <tr id = "goal<?php echo $x; ?>" class="goalscroll" >

		 <td id="goalID" class="ca">
		     <?php  echo "G". $x ; ?> 
		</td>

		<td id="goalName" class="la Caps">
		     <?php

			$sql = "SELECT gName FROM repository.goal WHERE gID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["gName"];   }
			}
 
		     ?>
		</td>

		<td id="goalDetail" class="la">

		     <?php

			$sql = "SELECT gDetail FROM repository.goal WHERE gID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["gDetail"];   }
			}

		     ?>

		</td>

		<td id="goalSource" class="la">

		     <?php

			$sql = "SELECT sID FROM ( repository.goal LEFT JOIN repository.sgr ON goal.gID = sgr.gID ) WHERE goal.gID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	if($row["sID"] != NULL ) {  echo "<a class=\"links\" target=\"_blank\" href=\"#source" .$row["sID"]. " \" > S". $row["sID"] ."</a> , ";   } }
			}

		     ?>
		</td>
	   </tr>
	   <?php  } $conn->close(); ?>
	  </table>
	 </div>
    </div>
   </div>
</div>
<!-- Cloud Risks Section -->
<div id="about">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title text-center">
      <h2>Cloud Risks</h2>
    </div>
    <div class="row">
	 <div class="col-md-12 col-md-offset-0">
      <table id="obsTable">

	   <?php 
	   	// Create connection
	   	$conn = new mysqli(servername, username, password, database);
	   	// Check connection
	   	if ($conn->connect_error) 
	   	{
	       	   die("Connection failed: " . $conn->connect_error);
	   	} 

		$sql = "SELECT COUNT(*) AS 'C' FROM repository.obstical;";
	   	$result = $conn->query($sql);

		if ($result->num_rows > 0) 
	   	{    // output data of each row
	             while($row = $result->fetch_assoc())
		     {	$max= $row["C"];   }
		}
	   ?>

	   <tr><th class="ca">#</th><th class="ca">Obstacle</th><th class="ca">Definition </th><th class="ca">Quality Goals</th><th class="ca">Migration Type</th><th class="ca">Study</th></tr>

	   <?php for($x=1; $x <= $max; $x++) { ?>
	    <tr id = "obstacle<?php echo $x; ?>" class="source" >

		<td id="obsID" class="ca"> 

		     <?php  echo "O". $x ; ?> 

		</td>

		<td id="obsName" class="la Caps">
		     <?php

			$sql = "SELECT obsName FROM repository.obstical WHERE obsID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["obsName"];   }
			}
 
		     ?>
		</td>

		<td id="obsDetail" class="la">
		     <?php

			$sql = "SELECT obsDetail FROM repository.obstical WHERE obsID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["obsDetail"];   }
			}

		     ?>

		</td>

		<td id="goalName-for-obs" class="la Caps">

		     <?php
			
			$sql = "SELECT gName, goal.gID 
				FROM (( repository.obstical 
				LEFT JOIN repository.gor ON obstical.obsID = gor.obsID ) 
				LEFT JOIN repository.goal ON gor.gID = goal.gID)
				WHERE obstical.obsID = ". $x .";";

	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo "<a class=\"links\" target=\"_blank\" href=\"#goal" .$row["gID"]. " \" > ".$row["gName"] ."</a>, ";   }
			}
		     ?>

		</td>

		<td id="migrationType-for-obs" class="la">

		     <?php

			$sql = "SELECT migration.mID, mName 
				FROM (( repository.obstical 
				LEFT JOIN repository.mor ON obstical.obsID = mor.obsID ) 
				LEFT JOIN repository.migration ON mor.mID = migration.mID)
				WHERE obstical.obsID = ". $x .";";

	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo "<a class=\"links\" target=\"_blank\" href=\"#mType". $row["mID"]. " \" > ". $row["mName"] ."</a> , ";   }
			}

		     ?>

		</td>

		<td id="sourceID-for-obs" class="la">

		     <?php

			$sql = "SELECT sID FROM ( repository.obstical LEFT JOIN repository.sor ON obstical.obsID = sor.obsID ) WHERE obstical.obsID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	if($row["sID"] != NULL ) {  echo "<a class=\"links\" target=\"_blank\" href=\"#source" .$row["sID"]. " \" > S". $row["sID"] ."</a> , ";  } }
			}

		     ?>

		</td>

	   </tr>
	   <?php } $conn->close(); ?>
	</table>
   </div>
  </div>
 </div>
</div>
<!-- Cloud Tactics Section -->
<div id="portfolio">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title text-center">     
       <h2>Cloud Tactics</h2>
       <p></p>
    </div>
    <div id="row">
	 <div class="col-md-12 col-md-offset-0">
      <table id="tacticTable" style="border-color: white;">

	   <?php 
	   	// Create connection
	   	$conn = new mysqli(servername, username, password, database);
	   	// Check connection
	   	if ($conn->connect_error) 
	   	{
	       	   die("Connection failed: " . $conn->connect_error);
	   	} 

		$sql = "SELECT COUNT(*) AS 'C' FROM repository.tactic;";
	   	$result = $conn->query($sql);

		if ($result->num_rows > 0) 
	   	{    // output data of each row
	             while($row = $result->fetch_assoc())
		     {	$max= $row["C"];   }
		}
	   ?>

	   <tr><th class="ca">#</th><th class="ca">Resolution Tactic</th><th class="ca">Definition </th><th class="ca">Relation to obstacle</th><th class="ca">Source</th><th class="ca">Category</th></tr>

	   <?php for($x=1; $x <= $max; $x++) { ?>
	    <tr id = "tactic<?php echo $x; ?>" class="goalscroll">

		<td id="tacticID" class="ca"> 

		     <?php  echo "T". $x ; ?> 

		</td>

		<td id="tacticName" class="la">
		    <?php

			$sql = "SELECT tName FROM repository.tactic WHERE tID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["tName"];   }
			}
 
		    ?>
		</td>

		<td id="tacticDetail" class="la">

		    <?php

			$sql = "SELECT tDetail FROM repository.tactic WHERE tID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["tDetail"];   }
			}

		    ?>

		</td>

		<td id="obsID-for-tactic" class="la">

		     <?php
			
			$sql = "SELECT obsID FROM ( repository.tactic LEFT JOIN repository.tor ON tactic.tID=tor.tID ) WHERE tactic.tID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo "<a class=\"links\" target=\"_blank\" href=\"#obstacle" .$row["obsID"]. " \" > O". $row["obsID"] ."</a>, ";   }
			}

		     ?>

		</td>

		<td id="sourceID-for-tactic" class="la">

		     <?php

			$sql = "SELECT sID FROM ( repository.tactic LEFT JOIN repository.str ON tactic.tID=str.tID ) WHERE tactic.tID = ". $x .";";
	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	if($row["sID"] != NULL ) {  echo "<a class=\"links\" target=\"_blank\" href=\"#source" .$row["sID"]. " \" > S". $row["sID"] ."</a> , ";  } }
			}

		     ?>

		</td>

		<td id="cName" class="la">

		     <?php

			$sql = "SELECT cName 
				FROM (( repository.tactic 
				LEFT JOIN repository.tcr ON tactic.tID = tcr.tID ) 
				LEFT JOIN repository. category ON tcr.cID = category. cID) 
				WHERE tactic.tID = ". $x .";";

	   		$result = $conn->query($sql);

			if ($result->num_rows > 0) 
	   		{    // output data of each row
	             	     while($row = $result->fetch_assoc())
		             {	echo $row["cName"] .", ";    }
			}


		     ?>

		</td>

	     </tr>
	   <?php } $conn->close(); ?>

	 </table>
	</div>
   </div>
  </div>
</div>

<!-- Bibliography Section -->
<div id="team" class="text-center">
  <div class="container">
    <div class="col-md-8 col-md-offset-2 section-title">
     <h2>Bibliography</h2>
    </div>
      <div class="row">
	    <div class="col-md-12 col-md-offset-0">
		  <h3>Migration type</h3>
          <?php	   
			// Create connection
			$conn = new mysqli(servername, username, password, database);
			// Check connection
		 	if ($conn->connect_error) 
			{
			  die("Connection failed: " . $conn->connect_error);
			} 
			$sql = "SELECT mID, mName, mDetail FROM migration";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) 
			{
			  echo "<table id=\"migrationTable\" ><tr><th class=\"ca\">Migration Type</th><th class=\"ca\">Definitions</th></tr>";		
			  // output data of each row
	          while($row = $result->fetch_assoc())
                {   echo "<tr id=\"mType". $row["mID"] ."\"  class=\"mType\" ><td class=\"ca\">" . $row["mName"]. "</td><td class=\"la\">" .$row["mDetail"]. "</td> </tr>" ;  }
	 
		      echo "</table>";
			}
			else 
			{  echo "0 results";	}
			$conn->close();		   
		?>
	    <h3> Evidence </h3>
		<?php
			// Create connection
			$conn = new mysqli(servername, username, password, database);
			// Check connection
			if ($conn->connect_error) 
			{
			  die("Connection failed: " . $conn->connect_error);
			} 
			$sql = "SELECT sID, sDetail, year FROM study";
			$result = $conn->query($sql);
			if ($result->num_rows > 0) 
			{
			  echo "<table id=\"evidenceTable\"><tr><th class=\"ca\">Identifier</th><th class=\"ca\">Study</th><th class=\"ca\">Year</th></tr>";		
			  // output data of each row
	          while($row = $result->fetch_assoc())
			  {   echo "<tr id=\"source". $row["sID"] ."\"  class=\"source\" ><td class=\"ca\"> S" . $row["sID"]. "</td><td class=\"la\">" .$row["sDetail"]. "</td><td class=\"ca\">" .$row["year"]. "</td> </tr>" ;}
	 
			  echo "</table>";
			}

			else 
			{  echo "0 results";  }

			$conn->close();	
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
<script type="text/javascript" src="js/contact_me.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
</body>
</html>
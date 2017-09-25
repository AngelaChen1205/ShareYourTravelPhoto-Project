
<?php
//including database content code  
include 'dbContent.php' ?>

<!DOCTYPE html>
<html lang="en">
<head>
   <title>Travel Template</title>
   <?php include 'includes/travel-head.inc.php'; ?>
</head>
<body>

<?php 
include 'includes/travel-header.inc.php'; ?>
   
<div class="container">  <!-- start main content container -->
   <div class="row">  <!-- start main content row -->
      <div class="col-md-3">  <!-- start left navigation rail column -->
         <?php include 'includes/travel-left-rail.inc.php'; ?>
      </div>  <!-- end left navigation rail --> 
      
      <div class="col-md-9">  <!-- start main content column -->
         <ol class="breadcrumb">
           <li><a href="#">Home</a></li>
           <li><a href="#">Browse</a></li>
           <li class="active">Images</li>
         </ol>          
    
         <div class="well well-sm">
            <form class="form-inline" role="form" method="get" action="<?php echo $_SERVER['PHP_SELF']; ?>">
              <div class="form-group">
                <select class="form-control" name="city">
                  <option value="0">Filter by City</option>
                  <?php while ($row = mysqli_fetch_assoc($cities_table)) { ?>
                  	<option value="<?php echo $row['CityCode']; ?>"><?php echo $row['Cities']; ?></option>
                  <?php } ?>
    
                </select>
              </div>
              <div class="form-group">
                <select class="form-control" name="country">
                  <option value="0">Filter by Country</option>
                  <?php while ($row = mysqli_fetch_assoc($countries_table)) { ?>
                  	<option value="<?php echo $row['CountryCodeISO']; ?>"><?php echo $row['Countries']; ?></option>
                  <?php } ?>
                </select>
              </div>  
              <button type="submit" class="btn btn-primary">Filter</button>
            </form>         
         </div>      <!-- end filter well -->
         
         <div class="well">
            <div class="row">

                <!-- display image thumbnails code here -->
                <?php
                
                //displaying images for selected country hyperlinks on left rail 
                if(isset($_GET['countries'])){
                   $countryid = $_GET['countries'];
                    $sqlquery = "SELECT travelimage.Path  
                                FROM travelimage
                                INNER JOIN travelimagedetails
                                ON travelimagedetails.ImageID = travelimage.ImageID
                                WHERE travelimagedetails.CountryCodeISO = '$countryid'";
                    $filter_country_images = mysqli_query($conn, $sqlquery);
                    while ($row = mysqli_fetch_assoc($filter_country_images)) { ?>
                    <img src="<?php echo $row['Path']; ?>">
                <?php }
                }

                //filter city images 
                if(isset($_GET['city']) && empty($_GET['country'])){
                  $cityid = $_GET['city'];
                  $sqlquery = "SELECT travelimage.Path  
                              FROM travelimage
                              INNER JOIN travelimagedetails
                              ON travelimagedetails.ImageID = travelimage.ImageID
                              WHERE travelimagedetails.CityCode = '$cityid'";

                  $filter_city_images = mysqli_query($conn, $sqlquery); 
                  while ($row = mysqli_fetch_assoc($filter_city_images)) { ?>
                    <img src="<?php echo $row['Path']; ?>">
                  <?php 
                  }} 

                  //filter country images
                  else if(isset($_GET['country']) && empty($_GET['city'])){
                    $countryid = $_GET['country'];
                    $sqlquery = "SELECT travelimage.Path  
                                FROM travelimage
                                INNER JOIN travelimagedetails
                                ON travelimagedetails.ImageID = travelimage.ImageID
                                WHERE travelimagedetails.CountryCodeISO = '$countryid'";
                    $filter_country_images = mysqli_query($conn, $sqlquery);
                    while ($row = mysqli_fetch_assoc($filter_country_images)) { ?>
                    <img src="<?php echo $row['Path']; ?>">
                    <?php }} 

                  //filtering city and country, displaying results with respect to country  
                  else if(isset($_GET['city']) && isset($_GET['country'])) {
                    $countryid = $_GET['country'];
                  $sqlquery = "SELECT travelimage.Path  
                                FROM travelimage
                                INNER JOIN travelimagedetails
                                ON travelimagedetails.ImageID = travelimage.ImageID
                                WHERE travelimagedetails.CountryCodeISO = '$countryid'";

                  $filter_country_images = mysqli_query($conn, $sqlquery); 
                  while ($row = mysqli_fetch_assoc($filter_country_images)) { ?>
                    <img src="<?php echo $row['Path']; ?>">
                  <?php }} ?>

         </div>   <!-- end images well -->

      </div>  <!-- end main content column -->
   </div>  <!-- end main content row -->
</div>   <!-- end main content container -->
   
<?php include 'includes/travel-footer.inc.php'; ?>   

   
   
 <!-- Bootstrap core JavaScript
 ================================================== -->
 <!-- Placed at the end of the document so the pages load faster -->
 <script src="bootstrap3_travelTheme/assets/js/jquery.js"></script>
 <script src="bootstrap3_travelTheme/dist/js/bootstrap.min.js"></script>
 <script src="bootstrap3_travelTheme/assets/js/holder.js"></script>
</body>
</html>
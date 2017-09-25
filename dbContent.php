<?php 
//connecting to the database	
$hostname = "localhost";
$username = "root";
$password = "";
$database = "traveller";
$conn = mysqli_connect($hostname, $username, $password, $database);
if(mysqli_connect_errno()){
	die(mysqli_connect_errno());
}
//Query for populating 'countries' drop down 
$sqlquery = "SELECT DISTINCT travelimagedetails.CountryCodeISO, geocountries.Countries 
FROM geocountries 
INNER JOIN travelimagedetails 
ON geocountries.ISO = travelimagedetails.CountryCodeISO 
ORDER BY geocountries.Countries ASC";
$countries_table = mysqli_query($conn, $sqlquery);

//Query for populating 'cities' drop down 
$sqlquery_1 = "SELECT DISTINCT travelimagedetails.CityCode, geocities.Cities
FROM geocities 
INNER JOIN travelimagedetails 
ON geocities.GeoNameID = travelimagedetails.CityCode 
ORDER BY geocities.Cities ASC";
$cities_table = mysqli_query($conn, $sqlquery_1);

//Query for populating 'Continents' on left rail 
$sqlquery_2 = "SELECT * FROM geocontinents ORDER BY ContinentName ASC";
$continents_table = mysqli_query($conn, $sqlquery_2);

//Query for populating 'Popular Countries' on left 
$sqlquery_3 = "SELECT geocountries.ISO, geocountries.Countries, travelimagedetails.CountryCodeISO 
FROM geocountries
INNER JOIN travelimagedetails
ON geocountries.ISO = travelimagedetails.CountryCodeISO
GROUP BY geocountries.ISO, geocountries.Countries
ORDER BY geocountries.Countries ASC";
$popularcountries_table = mysqli_query($conn, $sqlquery_3);
?>
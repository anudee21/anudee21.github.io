<?php
   define('DB_SERVER', 'localhost');
   define('DB_USERNAME', 'username');
   define('DB_PASSWORD', 'project');
   define('DB_DATABASE', 'mydb');
   $conn = mysqli_connect(DB_SERVER,DB_USERNAME,DB_PASSWORD,DB_DATABASE);
//check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
?>
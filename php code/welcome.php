

<?php
include("config3.php");
session_start();
 $myusername=$_POST['username'];
 $mypassword=$_POST['password'];
 if($myusername=='Anurag' AND $mypassword=='admin'){
         $sql1="SELECT * FROM rfid_master";
         $result=mysqli_query($conn,$sql1);

         $sql2 = "SELECT * FROM rfid_entry ent INNER JOIN rfid_master rm ON rm.rfid_code=ent.ent_rfid";
         $result2=mysqli_query($conn,$sql2);
         $count = mysqli_num_rows($result);
      }
      elseif($mypassword=='12345'){
         $sql3="SELECT * FROM rfid_master WHERE rollno='$myusername'";
         $result=mysqli_query($conn,$sql3);
         $count = mysqli_num_rows($result);
         if($count!=1){
            echo"INVALID USERNAME";
         }
         $sql4 = "SELECT * FROM rfid_entry ent INNER JOIN rfid_master rm ON rm.rfid_code=ent.ent_rfid WHERE rollno='$myusername' ";
         $result2=mysqli_query($conn,$sql4);
         
      }
      else{
         echo"INVALID USER";
      }
      

?>
<!DOCTYPE html>
<html>
 
   <head>
      <title>STUDENT DATA</title>
      
      <style type = "text/css">
         body {
            background-color:#D3D3D3;
         }
        table, td, th {
    border: 1px #A9A9A9;
}

table {
    border-collapse: collapse;
    width: 100%;
}

th {
    text-align: left;
}

</style>
      </style>
      
   </head>
   <body>


   <hr>
      <h3>INFORMATION</h3>
      <table>
		<tr>
			<td>S.no.</td>
			<td>NAME</td>
			<td>RFID No</td>
                        <td>Roll No</td>
			<td>Mobile</td>
            <td>Father no</td>
             <td>Teacher no</td>
             <td>Days Present</td>
		</tr>
		<?php $s=0; foreach ($result as $row) { $s++; ?>
			<tr>
				<td><center><?php echo $s; ?></center></td>
				<td><?php echo ucwords($row['rfid_name']); ?></td>
				<td><?php echo $row['rfid_code']; ?></td>
                                <td><?php echo $row['rollno']; ?></td>
				<td><?php echo $row['st_mobile']; ?></td>
                                <td><?php echo $row['Father__no']; ?></td>
                                <td><?php echo $row['Teacher_no']; ?></td>
                                 <td><?php echo $row['DaysPresent']; ?></td>
                                
			</tr>
		<?php	} ?>
	</table>
	<hr>
	<h3>ATTENDANCE DATA:PRESENT</h3>
	<table>
		<tr>
			<td>S.no.</td>
			<td>Name</td>
			<td>Roll No</td>
                        <td>Contact No</td>
			<td>Date</td>
		</tr>
		<?php $s=0; foreach ($result2 as $row) { $s++; ?>
			<tr>
				<td><center><?php echo $s; ?></center></td>
				<td><?php echo ucwords($row['rfid_name']); ?></td>
				<td><?php echo $row['rollno']; ?></td>
     				<td><?php echo $row['st_mobile']; ?></td>
				<td><?php echo $row['ent_date']; ?></td>
			</tr>
		<?php	} ?>
	</table>
        <hr>
       <h2><a href = "logout.php">Sign Out</a></h2>
	
</body>


</html>
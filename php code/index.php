  
  

     
<!DOCTYPE html>     
<html>
   
   <head>
      <title>Login Page</title>
      
      <style type = "text/css">
         body {
            background-image: url("atten.png");
         }
         label {
            font-weight:bold;
            width:100px;
            font-size:14px;
         
         }
         div.absolute {
    position: absolute;
    top: 40px;
    right: 80px;
    width: 200px;
    height: 200px;
    border: 3px solid #C0C0C0;
 }
         
      </style>
      
   </head>
   
   <body bgcolor = "#FFFFFF">
	
      <div align = "center">
         <div style = "width:300px; border: solid 1px #333333; " align = "left">
            <div style = "background-color:#333333; color:#FFFFFF; padding:3px;"><b>Login</b></div>
				
            <div style = "margin:30px">
               
               <form action = "welcome.php" method = "post">
                  <label>UserName  :</label><input type = "text" name = "username" class="box"/><br /><br />
                  <label>Password  :</label><input type = "password" name = "password" class="box" /><br/><br />
                  <input type = "submit" value = " Submit "/><br />
               </form>
               
              
					
            </div>
				
         </div>
			
      </div>

   </body>
</html>


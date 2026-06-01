<?php


if(isset($message)){
   foreach($message as $message){
      echo '
      <div class="message">
         <span>'.$message.'</span>
         <i class="fas fa-times" onclick="this.parentElement.remove();"></i>
      </div>
      ';
   }
}
?>

<style>
:root {
  --orange: #ff7a00ff;
  --dark: #0F172A;
}

.logo {
  display: flex;
  align-items: center;
  font-weight: 800;
  color: var(--dark);
  font-size: 20px;
  text-decoration: none;
}

.logo .dot {
  display: inline-grid;
  place-items: center;
  width: 70px;
  height: 70px;
  border-radius: 50%;
  background: #ff7a00ff;
  color: #000;
  margin-right: 10px;
  font-weight: 800;
}


.white-btn,
.btn{
   background-color: #ff7a00ff;
}
.logo .brand-text { color: #000; }
/* make top-bar login/register links black and override other styles */
.header-1 .flex p a { color: #000 !important; text-decoration: none; }
.header-1 .flex p a:hover { color: #222 !important; }




</style>


<header class="header">

   

   <div class="header-2">
      <div class="flex">
      
            <a class="logo" href="home.php">
             <span class="dot">Bic</span><span class="brand-text">Orange</span>
            </a>




         <nav class="navbar">
            <a href="home.php">home</a>
            <a href="about.php">about</a>
            <a href="shop.php">shop</a>
            <a href="contact.php">contact</a>
            <a href="orders.php">orders</a>
         </nav>

         <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <a href="search_page.php" class="fas fa-search"></a>
            <div id="user-btn" class="fas fa-user"></div>
            <?php
               $select_cart_number = mysqli_query($conn, "SELECT * FROM `cart` WHERE user_id = '$user_id'") or die('query failed');
               $cart_rows_number = mysqli_num_rows($select_cart_number); 
            ?>
            <a href="cart.php"> <i class="fas fa-shopping-cart"></i> <span>(<?php echo $cart_rows_number; ?>)</span> </a>
         </div>

         <div class="user-box">
            <p>username : <span><?php echo $_SESSION['user_name']; ?></span></p>
            <p>email : <span><?php echo $_SESSION['user_email']; ?></span></p>
            <a href="logout.php" class="delete-btn">logout</a>
         </div>
      </div>
   </div>

</header>
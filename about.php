<?php

include 'config.php';

session_start();

$user_id = $_SESSION['user_id'];

if(!isset($user_id)){
   header('location:login.php');
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">


   <style>

      .heading{
   min-height: 30vh;
   display: flex;
   flex-flow: column;
   align-items: center;
   justify-content: center;
   gap:1rem;
   text-align: center;
   background: url(images/about-heading-bg.jpg);
  
}


   </style>

</head>  
<body>
   
<?php include 'header.php'; ?>

<div class="heading">
   <h3>about us</h3>
   <p> <a href="home.php">home</a> / about </p>
</div>

<section class="about">

   <div class="flex">

      <div class="image">
         <img src="images/about-img.jpg">
      </div>

      <div class="content">
         <h3>Why Choose BicOrange?</h3>
         <p>At BicOrange, we don’t just sell phone cases – we bring your style to life! 💖 From trendy girly designs to glow-in-the-dark magic, every case is crafted to protect your phone while making it stand out. ✨ With premium quality, unique designs, and lightning-fast delivery, we make sure your phone is always as stylish as you are. 🌟
         <p>Discover cases that blend beauty, durability, and charm. 🌙 Every BicOrange design is carefully made to match your personality, giving you confidence protecting phone with style, glow, and uniqueness. ✨</p><br>
         
         <a href="contact.php" class="btn">contact us</a>
      </div>

   </div>

</section>

<section class="reviews">

   <h1 class="title">Happy Customers at BicOrange 🌟</h1>

   <div class="box-container">

      <div class="box">
         <img src="images/review1.jpg" alt=" pic is loading">
         <p>Absolutely love my glow-in-the-dark case! It looks amazing at night and fits my phone perfectly. Highly recommend BicOrange!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Sumaiya Islam</h3>
      </div>

      <div class="box">
      <img src="images/review2.jpg" alt=" pic is loading">
      
         <p>Cute, stylish, and high quality. I get compliments on my iPhone case everywhere I go. BicOrange never disappoints!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Shehtaj Mehajabeen</h3>
      </div>

      <div class="box">
         <img src="images/review3.jpg" alt="">
         <p>Fast delivery and the packaging was so pretty! The case feels durable and looks super trendy. Will buy again.</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Razia Akter</h3>
      </div>

      <div class="box">
         <img src="images/review4.jpg" alt="">
         <p>I’m obsessed with my new phone case! The glow feature is magical and it protects my phone really well. Thank you, BicOrange!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Robin Ahmed</h3>
      </div>

      <div class="box">
         <img src="images/review5.jpg" alt="">
         <p>Amazing designs and excellent quality. The girly vibes are perfect for my style. Definitely my go-to for phone cases!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Farhana Sazman</h3>
      </div>

      <div class="box">
         <img src="images/review6.jpg" alt="">
         <p>Customer service is top-notch! Quick replies and they helped me choose the perfect case. Love my purchase!</p>
         <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
         </div>
         <h3>Esha</h3>
      </div>

   </div>

</section>









<?php include 'footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>
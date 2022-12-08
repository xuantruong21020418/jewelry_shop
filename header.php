<?php 
include 'connect.php';
$sql = "SELECT COUNT(*) AS `cartquentity` FROM `cartdetail`";
$result = mysqli_query($conn,$sql);

foreach($result as $value)
{
    $cart = $value['cartquentity'];
}
?>
<div class="container bg-dark ">
        <div class="row menu">

            <div class="col-md-3 col-sm-3 menu-icon"><img src="images/logo.png" alt="" srcset="" style="width:35%;height:auto;"></div>
            <div id="button" class="col-md-3 col-sm-3 menu-button"><i class="fa fa-bars"></i></div>
            <div id="nav2" class="col-md-7">
                <ul>

                    <li><a href="index.php">Home</a></li>
                    <li>
                        <h5>|</h5>
                    </li>
                    <li><a href="Aboutus.php">About Us</a></li>
                    <li>
                        <h5>|</h5>
                    </li>
                    <li><a href="shopMenu.php">Shop</a></li>
                    <li>
                        <h5>|</h5>
                    </li>
                    <li><a href="Contactus.php">Contact Us</a></li>
                </ul>
            </div>
            <div id="nav3" class="col-md-2">
                <div class="nav3">
                    <div><img src="images/user.png" alt="" srcset="" onclick="window.location='signup.php'"></div>
                    <div><img src="images/cart.png" alt="" srcset="" onclick="window.location='cart.php'">
                    <span id="quentity" class="cart-quentity">
                        <?php
                        if($cart > 0) 
                        {
                        echo $cart; 
                        }
                        else
                        {
                            echo "
                            <script>
                               document.getElementById('quentity').style.display = 'none';
                            </script>
                            ";
                        }
                        ?>
                    
                    </span>
                </div>
                </div>
            </div>
        </div>
    </div>
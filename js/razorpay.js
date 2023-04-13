function pay_now(){
  var user_id = parseInt(<?php echo "",$user_id."" ?>);
  var name = <?php echo '$name' ?>;
  var number = parseInt(<?php echo '$number' ?>);
  var email = <?php echo '$email' ?>;
  var address = <?php echo '$address' ?>;
  var total_products = parseInt(<?php echo '$total_products' ?>);
  var amt= parseInt(<?php echo '$cart_total' ?>);
  
   jQuery.ajax({
         type:'post',
         url:'payment_process.php',
         data:"amt="+amt+"user_id="+user_id+"&name="+name+"&number="+number+"&email="+email+"&address="+address+"&total_products="+total_products,
         success:function(result){
             var options = {
                  "key": "rzp_test_lXeKoyUgOJgDfv", 
                  "amount": amt*100, 
                  "currency": "INR",
                  "name": "GroceryMart",
                  "description": "Online Grocery Store for Fresh Groceries",
                  "image": "images\logo.png",
                  "handler": function (response){
                     jQuery.ajax({
                         type:'post',
                         url:'payment_process.php',
                         data:"payment_id="+response.razorpay_payment_id,
                         success:function(result){
                             window.location.href="thank_you.php";
                         }
                     });
                  }
              };
              var rzp1 = new Razorpay(options);
              rzp1.open();
         }
     });
  
}
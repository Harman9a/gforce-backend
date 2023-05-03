<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include('./vendor/autoload.php');

$stripe = new \Stripe\StripeClient("sk_test_51MzEq1SIJfK1r3R9xQ3gAwYtFHR9XEVcqCMtsjhZDw9TBUiGcxHaeiYdgG2zMhHSlRRbQ11ucD4LRlvcHzP1uBmv00Ql5r6uu7");

if(isset($_POST['cno'])){
    $token = $stripe->tokens->create([
        'card' => [
          'number' => $_POST['cno'],
          'exp_month' => $_POST['emonth'],
          'exp_year' => $_POST['eyear'],
          'cvc' => $_POST['cvv'],
        ],
      ]);
    
    $res = $stripe->paymentIntents->create([
        'amount' =>$_POST['boat'] * 100,
        'currency' => 'inr',
        'payment_method_types' => ['card'],
    ]);
    
    
    $re_con = $stripe->paymentIntents->confirm(
        $res->id,
        [
        'payment_method_data' => [
            'type' => 'card',
            'card' => [
                'token' => $token
                ]
            ],
        'return_url' => 'https://gforce.techiespreview.website/paymentSuccess'
        ],
    );
    echo json_encode($re_con);
}

?>
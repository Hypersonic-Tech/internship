<?php 
// for using php mailer
use PHPMailer\PHPMailer\PHPMailer;
        use PHPMailer\PHPMailer\Exception;

        if(isset($_POST['send'])){

                $msg="";
    $msg.="<b>Name: </b>" . $_POST['your-name']."<br>";
    $msg.="<b>Email: </b>" . $_POST['your-email']."<br>";
    // $msg.="<b>Subject: </b>" . $_POST['your-subject']."<br>";
    $msg.="<b>Subject: </b>" . "Demo Mail"."<br>";
    $msg.="<b>Message: </b>" . $_POST['your-message']."<br>";
    //$from = $_POST['your-email'];
    //$from = "nikitasachdeva555@gmail.com";
    $to = "nikitasachdeva555@gmail.com";
    //$to = "bhupendra.sslogistics@gmail.com";
    $subject = "Lead From Home Page";
    $message = $msg;
   require 'vendor/autoload.php';


 $mail = new PHPMailer(true);
  
 try {
     $mail->SMTPDebug = 0;  
     // $mail->SMTPOptions = array(
     //                 'ssl' => array(
     //                     'verify_peer' => false,
     //                     'verify_peer_name' => false,
     //                     'allow_self_signed' => true
     //                 )
     //             );                                     
     $mail->isSMTP();                                            
            
    
$mail->Host       = 'email.jcbl.com';    //host name                
     $mail->SMTPAuth   = true;                             
     
     $mail->SMTPSecure = 'tls';                              
     $mail->Port       = 587 ;  

     $mail->Username   = 'it_trainee4@jcbl.com';  //Your Username               
     $mail->Password   = '';            //Your Password            
  
     $mail->setFrom('it_trainee4@jcbl.com','Test Mail');           

       $mail->addAddress($to); 
     $mail->isHTML(true);                                  
     $mail->Subject = $subject;
     $mail->Body    = $msg;

//     $mail->AltBody = '';
//     // $path='C:\Users\Administrator\downloads\Employees_LIST.xlsx';
//     // $mail->AddAttachment($path);
     $mail->send();
    echo "<center><h2>Thank You for your query! We will get back to you soon. <a href='http://sslw.in'>Go To Home Page</a></h2></center>";
 } catch (Exception $e) {
     echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
 }

?>

<!--?php require("class.phpmailer.php"); $mailer = new PHPMailer(); $mailer-&gt;IsSMTP();
$mailer-&gt;Host = 'ssl://smtp.gmail.com';
$mailer-&gt;Port = 465; //can be 587
$mailer-&gt;SMTPAuth = TRUE;
// Change this to your gmail address
$mailer-&gt;Username = 'yourusername@gmail.com';  
// Change this to your gmail password
$mailer-&gt;Password = 'yourpassword';  
// Change this to your gmail address
$mailer-&gt;From = 'yourusername@gmail.com';  
// This will reflect as from name in the email to be sent
$mailer-&gt;FromName = 'Your Name'; 
$mailer-&gt;Body = 'This is the body of your email.';
$mailer-&gt;Subject = 'This is your subject.';
// This is where you want your email to be sent
$mailer-&gt;AddAddress('samplemail@yahoo.com');  
if(!$mailer-&gt;Send())
{
    echo "Message was not sent&lt;br/ &gt;";
    echo "Mailer Error: " . $mailer-&gt;ErrorInfo;
}
else
{
    echo "Message has been sent";
}
?-->
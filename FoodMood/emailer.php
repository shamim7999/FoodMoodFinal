<?php
$a1 = "mdshamimmansoori7999@gmailcom";
$to_email = $a1;
$subject = "Simple Email Test via PHP";
$body = "kire mama...";
$headers = "From: 10shamimsarker01@gmail.com";

if (mail($to_email, $subject, $body, $headers)) {
    echo "Email successfully sent to $to_email...";
} else {
    echo "Email sending failed...";
}
?>
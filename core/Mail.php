<?php

namespace Geevic;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;


class Mail
{

    public static function send($to, $subject, $content)
    {
        // Instantiation and passing `true` enables exceptions
        $mail = new PHPMailer(true);

        try {
            $mail->SMTPDebug = 0;
            $mail->isSMTP();
            $mail->Host   = 'SMTP.titan.email';
            $mail->SMTPAuth = true;
            $mail->Username = 'admin@justhavit.com.ng';
            $mail->Password = 'Clinboy7#';
            $mail->SMTPSecure = 'tls';
            $mail->Port   = 587;

            $mail->setFrom('admin@justhavit.com.ng', 'Havit.NG');
            $mail->addAddress($to);

            $mail->isHTML(true);
            $mail->Subject = $subject;
            $mail->Body = $content;

            $mail->send();
            $_SESSION['successmessage'] = "Mail has been sent successfully!";
        } catch (Exception $e) {
            $_SESSION['logMessage'] = "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
        }
    }
}

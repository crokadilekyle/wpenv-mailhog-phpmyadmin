<?php

/**
 * Configure wordpress mailer to use MailHog locally
 *
 * @return array
 */
function prefixConfigMailhog($phpmailer)
{
    $phpmailer->isSMTP();
    $phpmailer->SMTPAuth    = false;
    $phpmailer->SMTPSecure  = '';
    $phpmailer->SMTPAutoTLS = false;
    $phpmailer->Host        = 'project-name-mailhog'; // replace with your container name
    $phpmailer->Port        = '1025';
    $phpmailer->Username    = null;
    $phpmailer->Password    = null;
}

if ($is_dev_environment) { // use whatever environment logic you typically use
    add_action('phpmailer_init', 'prefixConfigMailhog', 10, 1);
}

/**
 * Helpful email debugging function - uncomment to use
 */
function prefixDumpAndDieWPMailErrors($wp_error)
{
    var_dump($wp_error);
    die();
}
// add_action('wp_mail_failed', 'prefixDumpAndDieWPMailErrors', 10, 1);

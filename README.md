# WP ENV with Mailhog and PhpMyAdmin

If you develop WordPress sites, themes or plugins locally and use WP ENV to manage your docker containers, this repo contains some bash scripts you can use to easily add MailHog and PHPMyAdmin containers to the Docker network that is spun up by WP ENV.  If you want more details about how this works you can [check out my blog post here](https://twinwebdev.com/wp-env-with-mailhog-and-phpmyadmin/).

*Note, these scripts assume that you will only have one Docker network running at a time.  If you tend to have more than one running, you will need to edit the `docker-up.sh` script to fit your needs.

## Understanding the files

The two files `phpmyadmin.sh` and `mailhog.sh` contain the Docker script needed to bring up the containers.  

`docker-up.sh` will handle bringing up the entire Docker environment.  Be sure to have WP-ENV installed first though.  [You can follow the instructions here in order to get that installed.](https://developer.wordpress.org/block-editor/reference-guides/packages/packages-env/)  There's several ways to do it so I'd rather just point you to the documentation than tell you how to do it here.  I've also included an example .wp-env.json file.  Be sure to modify that to fit your needs before running the `docker-up.sh` script as well.

## MailHog

After MailHog is spun up you still need to tell WordPress how to use it. I've included a `mailhog.php` file.  You can copy that code into `functions.php`.  Be sure to replace `$phpmailer->Host` with the name of your MailHog container and you should be good to do.  I've also included a helpful email debugging function that you can uncomment if you run into issues.

You can find the MailHog UI at localhost:8025.

## PhpMyAdmin

PhpMyAdmin will be running at localhost:8080 and the username and password should be root and password.  The database is named Wordpress.


# Change Log

- 2024/12/11
  - update scripts to dynamically set container names based on current directory
  - update instuctions - remove bit about changing container names manually
  
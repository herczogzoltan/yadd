# Yet Another Dockerized Drupal

## Requirements

- docker-sync
- docker-compose

### How to install


1. `cp .env.example .env` file (you may want to change PHP version according to your OS)
1. `cp docroot/sites/default/example.local.settings.php docroot/sites/default/local.settings.php`
1. Initialize the stack:
    1. On Linux use `make up`
    1. On OS X:
        1. Start your docker-sync daemon `docker-sync start`
        1. Then `make up` (you may have to wait for the sync to synchronize the files into the volume)
1. `make composer install`
1. `make drush "site:install yadd --existing-config"`
1. `make drush "config-split:import local"`

You may want to add the `PROJECT_BASE_URL` configured in the .env file to your `/etc/hosts` file

After that you can visit your site at `PROJECT_BASE_URL`:`TRAEFIK_PORT` - for example `http://yadd.local:8000`.

## Make commands

To get information about what can you do with make please run:
`make help`

## Documentation

This project uses wodby's docker4drupal.

Full documentation is available at https://wodby.com/docs/stacks/drupal/local.

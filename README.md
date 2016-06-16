# Ansible playbooks used @PlatiniumGroup

## CI

### Jenkins

The following roles are enabled for CI server(s):

* [`git`](#role-git)
* [`mysql`](#role-mysql)
* [`php`](#role-php)
* [`node`](#role-node)
* [`nginx`](#role-nginx)
* [`jenkins`](#role-jenkins)

## Roles

### <a name="role-git"></a> `git`

Installs [git](https://git-scm.com/).

### <a name="role-mysql"></a> `mysql`

Installs [MySQL](http://www.mysql.com/) client and server, with root passord set to "root".

### <a name="role-php"></a> `php`

Installs [memcached](https://memcached.org/) and [PHP](http://php.net/) with required configuration file for GooTickets as well as the following PHP extensions:

* `php-curl`
* `php-mbstring`
* `php-memcached`
* `php-mysql`
* `php-xml`
* `php-zip`

### <a name="role-node"></a> `node`

Installs [NodeJS](https://nodejs.org/en/) and [NPM](https://www.npmjs.com/) with the following node packages installed globally:

* `bower`
* `grunt-cli`

### <a name="role-nginx"></a> `nginx`

Installs [nginx](https://nginx.org/) and [Let's Encrypt](https://letsencrypt.org/), and setup a cron job for automated SSL certificates renewal.

### <a name="role-jenkins"></a> `jenkins`

Installs [Jenkins](https://jenkins.io/), generate a SSL certificate for `jenkins.gootickets.com` and intall the following Jenkins plugins:

* [`ansicolor`](https://wiki.jenkins-ci.org/display/JENKINS/AnsiColor+Plugin)
* [`embeddable-build-status`](https://wiki.jenkins-ci.org/display/JENKINS/Embeddable+Build+Status+Plugin)
* [`git`](https://wiki.jenkins-ci.org/display/JENKINS/Git+Plugin)
* [`git-client`](https://wiki.jenkins-ci.org/display/JENKINS/Git+Client+Plugin)
* [`github`](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+Plugin)
* [`github-api`](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+API+Plugin)
* [`ghprb`](https://wiki.jenkins-ci.org/display/JENKINS/GitHub+pull+request+builder+plugin)
* [`greenballs`](https://wiki.jenkins-ci.org/display/JENKINS/Green+Balls)
* [`slack`](https://wiki.jenkins-ci.org/display/JENKINS/Slack+Plugin)
* [`throttle-concurrents`](https://wiki.jenkins-ci.org/display/JENKINS/Throttle+Concurrent+Builds+Plugin)

Jenkins configuration regarding security must be done afterward through the Jenkins web interface.

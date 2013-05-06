# Vagrant and Shopware

*vagrant-shopware* is a packaged development environment that brings everything you need to set up a [Shopware 4](http://www.shopware.de/) instance for evaluation and development. It provides you a lightweight virtual machine running Ubuntu and the latest version of Shopware using [Puppet](http://puppetlabs.com/) as a provisioner.

## Requirements

To be able to run the virtual machine you need to have installed the following:

1. [Oracle VirtualBox](https://www.virtualbox.org/)
2. [Vagrant](http://www.vagrantup.com/)

## Getting started

This is a fairly simple project to get up and running. The procedure for creating and starting up the virtual machine is as follows:

1. Clone this project
2. Run the command `vagrant up`
3. Open your browser to [http://localhost:4000/install](http://localhost:4000/install)

Now you can start setting up your shop. The database for shopware is already created, so just enter `shopware` for database name, user and password.

## Note

Please notice that this installation is only meant for evaluation and development purposes. There is no focus an making the environment secure for production.

This project is mainly based on [VagrantPress](http://vagrantpress.org/), a WordPress development environment project by [Chad Thompson](http://chadthompson.me/).

## Getting Help

Feel free to file an issue or contact me at [my website](http://www.eriksixt.com/).




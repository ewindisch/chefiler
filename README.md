chefiler - chef-based storage management
========
License: APL v2.0

Requirements
------------

* Chef server (hosted, or local)
* Chef client (locally)
* Debian or Ubuntu on installation target.

This software has been tested and deployed successfully on the RaspberryPi.

Installing
----------

The easiest way to install Chefiler to a server is via 'knife' and a
Chef server. You may use the free hosted chef server from Opscode, Inc. for up
to 5 nodes. Alternatively, you may run your own chef server for
unlimited nodes. Chef is licensed under the APL v2.0

You can get 'knife' by installing the Chef client on your local system.

1. Install the chef client:
   http://wiki.opscode.com/display/chef/Installing+Chef+Client+and+Chef+Solo

2. Get a client key from your chef server, i.e. validation.pem

3. Create a knife configuration, inserting the chef server url and the
   location of your validation key.

4. Edit databags as required. These define your samba mountpoints, etc.

5. Load the configuration onto the chef server:
   $ rake install

6. Bootstrap your target system(s) using knife bootstrap.

Example for RaspberryPi:
 knife bootstrap -t debian6-gems.erb -x pi --sudo $IP-ADDRESS

7. Your system should now be online.

Special Instructions for RaspberryPi
------------------------------------

Several items of note are important for users of the RaspberryPi:

* OpenSSH server must be running. Dropbear will NOT work.
* Chef must bootstrap with debian6-gems.erb, download at:
  https://github.com/webtatic/configuration/blob/master/chef/bootstrap/debian6-gems.erb

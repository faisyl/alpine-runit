# This is a somewhat minimal image to use for your containers.

This is basically gliderlabs/alpine's Alpine Linux base image with some modification. I've loved using phusion/baseimage for my containers, but wanted something smaller to build upon instead of ubuntu14.04, so this is my take on the solution. This adds runit + similar modifications as baseimage.There is a simpler startup mechanism than my_init. It relies on s simple shell script to dump the environment in /etc/envvars. All runit services you add need to source this file to gain access to the container environment. Similarly, instead of /etc/my_init.d for pre-service scripts to run, the startup shell script sequentially runs scripts found in /etc/runit_init.d.

Please feel free to use it or build upon it as needed. 

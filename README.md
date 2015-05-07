# This is a somewhat minimal image to use for your containers.

This is basically gliderlabs/alpine's Alpine Linux base image with some modification. I've loved using phusion/baseimage for my containers, but wanted something smaller to build upon instead of ubuntu14.04, so this is my take on the solution. This adds baseimage's runit + my_init modification to alpine image. 

Please feel free to use it or build upon it as needed. Since my_init needs python3, I need to pull in edge. If someone replaces my_init with say a native go implementation, that would be awesome. 


blogokick
=========

blogofile + kickstrap integration

Welcome to blogokick, this is both my personal website/blog and also a live example of how to integrate [kickstrap](www.getkickstrap.com) and [blogofile](www.blogofile.com).  

## Caveat Emptor
If you use this be aware that there is an issue that I am still investigating in which the Kickstrap directory and the themes.less and kickstrap.less files will be deleted from the _site directory any time
    blogofile build
is called.

Please ensure that you keep copies of these files and directories so that you can recover.

## Basic usage
On a high level, this software should be pretty easy, please refer to the kickstrap and blogofile documentation if you intend on doing anything in depth. My personal configuration was as follows:

* Create a virtualenv sandbox 
* run 
    pip -r requirements.txt
  in order to get blogofile, lxml, and blogofile-blog
** _NOTE_ pip seems to occasionally have trouble when you try and install blogofile and blogofile-blog all at once, I have had to manually install blogofile first 
   (which pulls in all of the dependencies) and then blogofile-blog second, your mileage may vary.
* run 
    blogofile build
  in order to build all of the templates into HTML files and convert all Markdown into HTML in the Blog.
* run 
    blogofile serve
  in order to test the installation.
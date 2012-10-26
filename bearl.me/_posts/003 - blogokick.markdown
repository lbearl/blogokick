---
categories: General
date: 2012/10/26 11:05:00
title: Blogokick
draft: False
---
# Blogokick
As mentioned in the update to my initial blog post, I have migrated everything to [blogofile](www.blogofile.com, Blogofile), and integrated a theme built with [kickstrap](www.getkickstrap.com, Kickstrap). This was a rather interesting challenge, as historically I am not a huge fan of front end development, and there was plenty of HTML an Javascript and CSS going on (but for better or worse, I wasn't really writing any javascript or CSS).  

For those who would like to see how I did it, feel free to head over to the [repository](www.github.com/lbearl/blogokick) and take a peak.  If you have any helpful suggestions, I would always love to hear them (as I mentioned, I am hardly a front end developer).  

## Why Blogofile/Kickstrap
Now, after hearing me complain about front end development so much in this post, you might be asking why I threw away a perfectly good wordpress install with a decent looking theme?  Well, the answer is pretty simple actually: I wanted to challenge myself with something that I think I'm not very good at, and I also wanted to have a solution which was light weight.  I almost rolled my own blogging platform until I realized that blogofile had all of the features I was thinking about implementing plus more (i.e. disqus and google analytics out of the box).  

There is still a lot of work to be done, and I think I may end up contributing some code back to the blogofile project (I am only on version 0.8b1), so there are some things broken.  That does raise the one big caveat I found while developing this: when you call
    blogofile build
any assets copied into the _sites directory will be deleted (this was especially annoying since my Kickstrap directory and kickstrap.less and theme.less files all were being deleted everytime I had to build, which is everytime I changed a Mako template.) I need to look into this more and see if I misunderstood part of how blogofile works, or if this is a genuine bug.

## Other Features
After coming from wordpress there are a few things that were really convienient which I would like to make happen on blogofile, mostly this will be things like having an automatically generated XML sitemap, cleaning up the interface a bit, possibly adding some dropbox integration (i.e. Markdown file goes to Dropbox, gets picked up by server and blogofile build is called).  

Currently I am using the git post recieve hook that is documented on the project site, for rebuilding the blog, but I have intentions of extending the functionality of that to include logging and better error handling.
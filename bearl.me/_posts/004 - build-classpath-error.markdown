---
categories: Java, Troubleshooting, Debugging
date: 2012/11/07 11:05:00
title: /usr/bin/build-classpath error and javac not found
draft: False
---
## The Issue
So, I have been dealing with a really persistent issue with a client at work lately, namely, they can't install a rollout that I did for them!  Obviously, this isn't good.  The issue is further complicated by the fact that the install works perfectly on their pre-production test instances, but when they go to install in production, it isn't working (which is doubly bad). The rollout install log showed one very obvious issue: javac was not able to be found, and one much more subtle issue: /usr/bin/build-classpath was unable to find xml-commons-apis.  

## The Cause
The cause of this was found to be, due to the fact that the JAVA_HOME environment variable was pointing to the JRE instead of the JDK.  What I believe happened here is that the JDK provides a number of libraries in order to allow java files to be compiled to bytecode, while the JRE only needs to provide the foundation to run Java.

## The Solution
The solution in this case was simply for the client to update their .profile so that JAVA_HOME was set to the installed JDK instead of the JRE.  Simply do that, source the updated .profile, and boom! everything works as intended.

---
categories: General, Python, MySQL
date: 2010/07/24 16:20:00
title: MySQLbak
---
#mySQLbak
So I decided to write a little tool which will automatically backup my WordPress install to Dropbox (plus it is a fun chance to play around with the Dropbox Python API).Â  So far tonight I have managed to get to the point where I am passing a directory, and having python zip up all of the files in the directory.Â  In the long run this approach will probably change as it requires all of the data to be both in its production location and in the location for the backup (you can probably see why that is annoying).

Overall, I am pretty impressed by how easy this entire process has been, the only major hiccup I had was accidentally calling the function which generates the full path + archive name as the name of the archive that Dropbox is supposed to store (for some reason Dropbox blew up a little bit when I wanted it to create /Users/lbearl/.../projects/mysqlbak without requesting any directories be created).

After I finish up the code (and clean it up a lot), and do some basic refactoring (like removing the app secret), I will probably publish the code to Github. After that happens I will write part two of this entry, and probably include a bit more technical discussion about my approach.
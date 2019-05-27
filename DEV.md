# create and develop package in 2 Minutes
if you are user of jetbrains software and your projects are in user folder c:\user\[username]

    cd ~\WebstormProjects

    git clone https://github.com/apicra/npm-github-win.git .apicra


## Start new package project

    -create.bat "projectname"

Script is doing steps:
+ download .apicra to the project folder
+ create folder
+ create package.json
+ create connection with github, checkout new repository
+ create connection with npmjs, package


## Short way to share your changes in code
+ prepare your changes and use:

    ..\-add.bat "name of ticket"

Script is doing steps:
+ Create Ticket+ commit and pull changes to git with ticket message

## Publish new version
publish new on github and npmjs

    -publish.bat

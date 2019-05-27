Create a package.json file§

+ To create a package.json file, on the command line, in the root directory of your Node.js module,

    run npm init:

    + For scoped modules,

    run npm init --scope=@scope-name


    + For unscoped modules,

    run npm init


+ Provide responses for the required fields (name and version), as well as the main field:

    + name: The name of your module.
    + version: The initial module version. We recommend following semantic versioning guidelines and starting with 1.0.0.
    + main: The name of the file that will be loaded when your module is required by another application. The default name is index.js.

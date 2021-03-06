# Oppurtunity Center of El Paso Resource Directory

The easiest way to run demo and/or test is to use PHP Storm's Built In Web Server.
The site is structured using webpack for some files. The project will be structured and minified once it is completed.

## Steps to running demo

1. [Install PHP Storm](https://www.jetbrains.com/phpstorm/)
2. Configure PHP Storm's Built-In Web Server
3. [Install NodeJS](https://nodejs.org/en/)
4. Open the command line to the project directory and run the following command. (This should access the 'package.json' file to install the node dependencies)
```bash
npm install
```
5. [Install Webpack](https://webpack.js.org) if not already installed using the following command.
```bash
npm install webpack
```

## Guidelines to commiting to branches

* Use the '.gitignore' file to ingore files that should not be committed. (i.e. .idea files provided by PHP Storm, 'node_modules' files)
* Only source files and runtime dependencies (i.e. 'package.json', 'package-lock.json') should be included.
* When recompiling webpack files run the following command to update files.
```bash
npm run build-dev
```

## Merging to the 'master' branch
1. All branches must be pull requested before attempting to merge.
2. Code must be reviewed by at least one of the contributors including the repository owner before accepting the request.

****************************
#### Database Host
```
ilinkserver.cs.utep.edu
```
#### Website Host
```
cssrvlab01.utep.edu:21
```
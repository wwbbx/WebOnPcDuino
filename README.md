WebOnPcDuino
============
This is my repository to create node.js web site on pcDuino.

It is also possible to be hosted on any environment has node.js installed.

Requirement:
1. node.js
2. nodemon (npm install -g nodemon) (start it using nodemon index.js after switch to lib directory.)
3. CoffeeScript (source code is using CoffeeScript in src directory. Use 'coffee -o lib/ -cw src/' to keep monitor any source change in src dir and compile them to lib dir.)

4. editor is Sublime Text 3.

Next Step:
1. Figure out how to debug node.js. (using node-inspector, nodemon -debug index.js)
2. Figure out how to use jasmine to create test cases.
3. Figure out how to use javascript to control pcDuino hardware resources.

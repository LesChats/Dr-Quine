# Dr-Quine

A **quine** is a computer program which takes no input and produces a copy of its own source code as its only output. The standard terms for these programs in the computability theory and computer science literature are "self-replicating programs", "self-reproducing programs", and "self-copying programs".

A quine is a fixed point of an execution environment, when the execution environment is viewed as a function transforming programs into their outputs. Quines are possible in any Turing-complete programming language, as a direct consequence of Kleene's recursion theorem.
For amusement, programmers sometimes attempt to develop the shortest possible quine in any given programming language.

## Colleen:
```
• When executed, the program must display on the standard output an output
   identical to the source code of the file used to compile the program.
```


  The source code must contain at least :
  ```
◦ A main function.
◦ Two different comments.
◦ One of the comments must be present in the main function
◦ One of the comments must be present outside of your program.
◦ Another function in addition to the main function (which of course will be called)
```
## Grace:
```
• When executed, the program writes in a file named Grace_kid.c/Grace_kid.s
   the source code of the file used to compile the program.
```
  The source code must contain at least :
  ```
◦ No main declared.
◦ Three defines only.
◦ One comment.
  ```
  • The program will run by calling a macro.
## Sully:
```
• When executed the program writes in a file named Sully_X.c/Sully_X.s.
    The X will be an interger given in the source. Once the file is created, the program compiles this file and then
    runs the new program (which will have the name of its source file).
        
• Stopping the program depends on the file name : the resulting program will be executed only if the integer X
    is greater than 0.

• An integer is therefore present in the source of your program and will have to evolve by decrementing
    every time you create a source file from the execution of the program.
    
• You have no constraints on the source code, apart from the integer that will be set to 5 at first.
```

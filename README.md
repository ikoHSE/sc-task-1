# Task 1

**NOTE: If you just fork this repository it will not be graded. Ask your supervisor for a special GitHub classroom url.**

## Prerequesites

Firs of all you need to install [haskell stack](https://docs.haskellstack.org/en/stable/README/). To do that you can follow the [installation instructions on the website](https://docs.haskellstack.org/en/stable/README/#how-to-install).

Stack will manage installing the compiler and all required libraries when you try to compile a haskell stack project. (The first time it might take a while, but when you will try to run it again, it will used the already installed tools).

Stack is also a sort of meta build system. It is "meta" because stack doesn't actually build anything -- it tells *cabal* how to build your project with the installed compiler and libraries. *Cabal* is to Haskell what the *CMake* is to C++.

## IDE

The easiest way to develop is to use the [IntelliJ plugin for Haskell](https://github.com/rikvdkleij/intellij-haskell).

To install and use it you can follow [the instructions given in the project readme](https://github.com/rikvdkleij/intellij-haskell#getting-started).

**NOTE: You need to choose "Project from Existing Sources..." in IntelliJ**

## Build and test

Unfortuantely, *IntelliJ plugin for Haskell* doesn't currently support building your project directly from the IDE, so you will have to build your project and run tests from the terminal.

All subsequent commands are assumed to be run when the current directory is the root of your project.

After you have installed stack, you can build your project by running `stack build` in the directory of your project. This will build the code of your library.

To run tests on your code you can write `stack test`.

**NOTE: you don't have to write `stack build` if you want to test your project. Running `stack test` will automatically build any necessary modules.**

You can experiment with your functions by running `stack ghci`. This will build your library and launch an interactive shell with all of the functions already loaded. You can then just call your functions directly.

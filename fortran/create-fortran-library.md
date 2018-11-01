# How to create a library in Fortran
You can combine multiple sub-programs into a library,
which is compiled and can be linked into other programs.

Fortran only allows one *program*,
so the code put into a library must consist of *subroutines* and *functions*

## Create object files
Assume you have two files containing subroutines,
[subroutine1.f90](subroutine1.f90) and [sub2.f90](sub2.f90).
The first step is to create object files from them.

```
 gfortran subroutine1.f90 sub2.f90 -c
```

## Create library from object files
Creating the library uses the Unix command `ar`.

```
 ar crs libtest.a subroutine1.o sub2.o
```

## Link libraray from main program
Compile your Fortran program, here contained in [main.f90](main.f90),
linking the library so that you can call functions from it.

```
 gfortran main.f90 -L. -ltest
 ./a.out 
```

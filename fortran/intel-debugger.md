# Intel fortran debugger:
- compile your code using
	- `ifort -g example.f90 -o=example.exe`
	- `source /opt/intel/composer_xe_2015.3.187/bin/debuggervars.sh` (your path may vary slightly depending where you installed the compiler)
- then you get access to gdb, which can be used with [DDD](https://www.gnu.org/software/ddd/) if you want a graphical interface
- You can then run your program using `gdb-ia example.exe`

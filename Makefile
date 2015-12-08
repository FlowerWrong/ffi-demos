c:
	gcc -g -Wall cal.c -o cal

share_lib:
	gcc -fPIC -shared -o libcal.so cal.c
	# export LD_LIBRARY_PATH=/home/yy/dev/ruby/rails/ffi:$LD_LIBRARY_PATH
	# unset LD_LIBRARY_PATH

clean:
	rm libcal.so

main:
	gcc -Wall -o main main.c -I/usr/local/include -L/usr/local/lib -lcal
	# gcc -L/home/yy/dev/ruby/rails/ffi -Wl,-rpath=/home/yy/dev/ruby/rails/ffi -Wall -o main main.c -lcal

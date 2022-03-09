# project3_ic
fcm-shannon

COMPILE

$ g++ findlang.c++ -lstdc++fs ../include/fcm.c++ ../include/lang.c++ -o findlang
---------------------------------------------------------------
EXECUTE

./findlang ./samples/text/"name of the text" k alpha
exemplos:

$ ./findlang ../samples/text/t_PT.txt 3 0.1
	compara um texto em pt, com os vários textos modelos presentes em samples/ref/
...

.SUFFIXES: .erl .beam

.erl.beam:
	erlc -W $<

ERL = erl -noshell

MODS =  main my_double

all: compile
	${ERL} -pa $(shell pwd) -s main start -s init stop 

compile: ${MODS:%=%.beam}

clean:
	rm -rf *.beam erl_crash.dump

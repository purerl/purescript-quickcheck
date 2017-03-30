.PHONY: ps erl all run

all: ps erl

ps:
	rm -rf ouput/*
	psc-package sources | xargs pserlc 'src/**/*.purs' 'test/**/*.purs'

erl:
	mkdir -p ebin
	rm -rf ebin/*
	erlc -o ebin/ output/*/*.erl

test: ps erl
	erl -pa ebin -noshell -eval '(test_main@ps:main@c())()' -eval 'init:stop()'

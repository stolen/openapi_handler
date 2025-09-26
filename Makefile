.PHONY: all ci-test ci-test-pre27 clean
REBAR ?= ./rebar3

all:
	./rebar3 compile

ci-test:
	REBAR_CONFIG=rebar.config_ $(REBAR) as dev ct --logdir test-logs --readable true
ci-test-pre27:
	REBAR_CONFIG=rebar.config.pre27_ $(REBAR) as dev ct --logdir test-logs --readable true

clean:
	rm -rf _build rebar.lock

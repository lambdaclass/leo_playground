.PHONY: init run clean

LOG_PATH = ${PGHOST}/log

init:
	cargo install leo-lang

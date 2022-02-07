.PHONY: init run clean

init:
	cargo install leo-lang

run:
	leo run --path=$(APP)
	cat $(APP)/outputs/$(APP).out

clean:
	leo clean --path=$(APP)

all: EmacsTextEdit.app

EmacsTextEdit.app: src/EmacsTextEdit.applescript src/Info.plist
	osacompile -o $@ $<
	cp src/Info.plist $@/Contents/

install: EmacsTextEdit.app
	cp -ri $< ~/Applications/

.PHONY: clean
clean:
	rm -rf EmacsTextEdit.app

tests:
	nosetests --with-doctest tests/ explainshell/

serve:
	python3 runserver.py

.PHONY: tests

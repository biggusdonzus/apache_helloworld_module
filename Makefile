all:
	apxs -c mod_hello.c

clean:
	rm -rf .libs *.la *.lo *.slo

run:
	apache2 -X -f $(PWD)/apache.conf
	rm -f .httpd.pid

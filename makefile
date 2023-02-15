install:
	bin/composer install

start:
	php -S localhost:8080

test:
	curl -s localhost:8080 | grep -q "<title>PrivateBin</title>"

lint:
	./vendor/bin/phpmd ./lib ansi codesize,unusedcode,naming

lint:
	- find . -type f -name '*.php' -exec php -l {} \;
	- php ./vendor/bin/phpcs --extensions=php ./lib/
	- php vendor/bin/phpmd ./lib ansi codesize,unusedcode,naming

dev:
	php -dxdebug.mode=debug -dxdebug.start_with_request=yes -S localhost:8080

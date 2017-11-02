#!/bin/bash
set -e
php_versions=("7" "7.1" "7.2-rc")

# Build the latest version
docker build . -t jplhomer/php-laravel:latest
docker push jplhomer/php-laravel:latest

# Build the other specific versions
for php in ${php_versions[@]}
do
	tag="jplhomer/php-laravel:$php"
	docker build . --build-arg PHP_VERSION=$php -t $tag
	docker push $tag
done

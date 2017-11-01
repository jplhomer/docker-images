#!/bin/bash
set -e
php_versions=("7" "7.1" "7.2-rc")
for php in ${php_versions[@]}
do
	tag="jplhomer/php-laravel:$php"
	docker build . --build-arg PHP_VERSION=$php -t $tag
	docker push $tag
done

#!/usr/bin/env bash

if [ "$TRAVIS_TAG" != "" ]; then
    ./mvnw versions::set -DnewVersion=${TRAVIS_TAG}
fi

./mvnw deploy -Dmaven.javadoc.skip=true -Dgithub.global.userName=${GITHUB_USER_NAME} -Dgithub.global.password=${GITHUB_API_TOKEN} -B


#!/bin/bash

echo "Starting API Tests..."

## Run automationtests
java -jar -Dmodules="$MODULES" -Denv.user="$ENV_USER" -Denv.endpoint="$ENV_ENDPOINT" -Denv.testLevel="$ENV_TESTLEVEL" apitest-injiverify-*-jar-with-dependencies.jar

EXIT_CODE=$?

echo "Java exited with code: $EXIT_CODE"

exit $EXIT_CODE
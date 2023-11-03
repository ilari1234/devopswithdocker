#!/bin/sh
git clone https://github.com/$1.git test_app
cd test_app
docker build . -t test_app
docker tag test_app $2
docker push $2
echo
echo All done!
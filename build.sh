#!/bin/bash

docker build -t dotnetsdk:7.0-aot .
docker run --rm -ti -v "`pwd`:/app" dotnetsdk:7.0-aot dotnet publish -c Release -r linux-x64
ls -lah ls ./bin/Release/net7.0/linux-x64/publish/
time ./bin/Release/net7.0/linux-x64/publish/NativeAot
time ./bin/Release/net7.0/linux-x64/NativeAot
FROM mcr.microsoft.com/dotnet/sdk:7.0
RUN apt-get update
RUN apt-get install -y zlib1g-dev build-essential
WORKDIR /app/
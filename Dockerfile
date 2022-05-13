
FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
COPY ./publish/ ./
EXPOSE 80
EXPOSE 443

ENTRYPOINT ["dotnet", "DotnetCoreAPI.dll"]

# BUILD the IMAGE & give a name
# docker build -t rov-image -f Dockerfile .

# RUN the image as CONTAINER
# docker run -d -p 8080:80 rov-image

# http://localhost:8080/WeatherForecast

# Check Image
# docker inspect rov-image

# Stop the container
# docker stop imageId

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app

COPY *.csproj ./
RUN dotnet restore
COPY . ./
RUN dotnet publish -c Release -o out
FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "aspnetcoreapp.dll"]
#COPY bin/Release/net5.0/publish/ App/
#WORKDIR /App
#RUN dotnet run
#EXPOSE 5001
#EXPOSE  5000

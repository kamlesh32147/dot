FROM centos
RUN dnf install git -y
RUN dnf install dotnet-sdk-5.0 -y
RUN git clone https://github.com/kamlesh32147/dot.git
Workdir dot
CMD  dotnet restore
CMD dotnet run
EXPOSE 80

~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                      

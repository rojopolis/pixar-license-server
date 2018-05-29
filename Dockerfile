FROM centos:6

ADD PixarLicense-LA-21.0_1634130-linuxRHEL6_gcc44icc150.x86_64.rpm .

RUN rpm -ivh PixarLicense-LA-21.0_1634130-linuxRHEL6_gcc44icc150.x86_64.rpm &&\
    rm -rf PixarLicense-LA-21.0_1634130-linuxRHEL6_gcc44icc150.x86_64.rpm

VOLUME /opt/pixar/pixar.license

EXPOSE 9010

CMD ["/opt/pixar/PixarLicense-LA-21.0/PixarLicenseServer"]
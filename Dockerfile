FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;



FROM centos:centos7

RUN yum install -y nano
RUN yum update -y
RUN yum install -y wget
RUN wget http://epel.mirror.nucleus.be/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
RUN rpm -Uvh epel-release-7*.rpm
RUN rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
RUN rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
RUN yum update -y
RUN yum install -y java-1.8.0-openjdk
RUN yum install -y icedtea-web
RUN yum -y install libreoffice libreoffice-headless
RUN yum install -y ImageMagick giflib giflib-devel giflib-utils





RUN cd /opt; \
wget http://ftp.icm.edu.pl/packages/sox/14.4.2/sox-14.4.2.tar.gz; \
tar xzvf sox-14.4.2.tar.gz;
#RUN cd /opt/sox-14.4.2; \
#./configure; \
#make && make install;

RUN cd /opt; \

yum install -y flash-plugin; 



RUN yum install -y mariadb-server; \
mkdir /opt/red5405; \

cd /opt/red5405; \
wget http://archive.apache.org/dist/openmeetings/4.0.5/bin/apache-openmeetings-4.0.5.zip; \
unzip apache-openmeetings-4.0.5.zip; \
mv apache-openmeetings-4.0.5.zip /opt;

RUN cd /opt ; \
wget http://repo1.maven.org/maven2/mysql/mysql-connector-java/5.1.46/mysql-connector-java5.1.46.jar; \
cp /opt/mysql-connector-java-5.1.46.jar /opt/red5405/webapps/openmeetings/WEB-INF/lib; \
cd /opt; \
wget https://cwiki.apache.org/confluence/download/attachments/27838216/red5-2; \
cp red5-2 /etc/init.d/; \
chmod +x /etc/init.d/red5-2;










RUN cd ~/ffmpeg_sources ;  \

# Download the necessary sources. ;  \
curl -O http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz ;  \
wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.02/nasm-2.13.02.tar.bz2 ;  \
# git clone --depth 1 http://git.videolan.org/git/x264
wget ftp://ftp.videolan.org/pub/videolan/x264/snapshots/x264-snapshot-20180720-2245.tar.bz2;  \
wget https://bitbucket.org/multicoreware/x265/downloads/x265_2.8.tar.gz;  \
# git clone --depth 1 https://github.com/mstorsjo/fdk-aac
wget https://netcologne.dl.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-0.1.6.tar.gz;  \
curl -O -L http://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz ;  \
wget http://www.mirrorservice.org/sites/distfiles.macports.org/libopus/opus-1.2.1.tar.gz ;  \
wget https://ftp.osuosl.org/pub/xiph/releases/ogg/libogg-1.3.3.tar.gz ;  \
wget http://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.6.tar.gz ;  \
curl -O -L https://ftp.osuosl.org/pub/xiph/releases/theora/libtheora-1.1.1.tar.gz ;  \
git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git ;  \
wget http://ffmpeg.org/releases/ffmpeg-4.0.tar.gz ;










RUN cd /opt; \
wget https://cwiki.apache.org/confluence/download/attachments/27838216/ffmpeg_centos7.sh; \
chmod +x ffmpeg_centos7.sh;   
#./ffmpeg_centos7.sh






VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]

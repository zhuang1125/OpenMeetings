FROM centos:centos7

RUN yum update -y && \
yum install -y wget  && \
wget http://epel.mirror.nucleus.be/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm && \
rpm -Uvh epel-release-7*.rpm  && \
rpm -Uvh http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm && \
rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm && \
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux && \
yum update -y && \
yum install -y nano  wget java-1.8.0-openjdk icedtea-web libreoffice libreoffice-headless libjpeg libjpeg-devel ghostscript freetype freetype-devel unzip gcc gcc-c++ ncurses ncurses-devel make zlib zlib-devel libtool bison bison-devel openssl-devel bzip2 bzip2-devel fileroller git autoconf automake pkgconfig tomcat-native nmap vlc  ImageMagick giflib giflib-devel giflib-utils flash-plugin glibc alsa-lib-devel faac faac-devel faad2 faad2-devel gsm gsm-devel imlib2 imlib2-devel lame-devel vorbis-tools theora-tools libvpx-devel vlc autoconf automake cmake freetypedevel gcc gcc-c++ git libtool make mercurial pkgconfig zlib-devel curl mariadb-server  && \




cd /opt  && \
wget http://ftp.icm.edu.pl/packages/sox/14.4.2/sox-14.4.2.tar.gz && \
wget https://cwiki.apache.org/confluence/download/attachments/27838216/ffmpeg_centos7.sh && \
chmod +x ffmpeg_centos7.sh  && \


mkdir ~/ffmpeg_sources && \
cd ~/ffmpeg_sources && \


# Download the necessary sources.
curl -O http://www.tortall.net/projects/yasm/releases/yasm-1.3.0.tar.gz && \
wget http://www.nasm.us/pub/nasm/releasebuilds/2.13.02/nasm-2.13.02.tar.bz2 && \
# git clone --depth 1 http://git.videolan.org/git/x264
wget ftp://ftp.videolan.org/pub/videolan/x264/snapshots/x264-snapshot-20180720-2245.tar.bz2 && \
wget https://bitbucket.org/multicoreware/x265/downloads/x265_2.8.tar.gz && \
# git clone --depth 1 https://github.com/mstorsjo/fdk-aac ; \
wget https://netcologne.dl.sourceforge.net/project/opencore-amr/fdk-aac/fdk-aac-0.1.6.tar.gz && \
curl -O -L http://downloads.sourceforge.net/project/lame/lame/3.100/lame-3.100.tar.gz && \
wget http://www.mirrorservice.org/sites/distfiles.macports.org/libopus/opus-1.2.1.tar.gz && \
wget https://ftp.osuosl.org/pub/xiph/releases/ogg/libogg-1.3.3.tar.gz && \
wget http://ftp.osuosl.org/pub/xiph/releases/vorbis/libvorbis-1.3.6.tar.gz && \
curl -O -L https://ftp.osuosl.org/pub/xiph/releases/theora/libtheora-1.1.1.tar.gz && \
git clone --depth 1 https://chromium.googlesource.com/webm/libvpx.git && \
wget http://ffmpeg.org/releases/ffmpeg-4.0.tar.gz 







## `solr:7-slim`

```console
$ docker pull solr@sha256:ab8a2bcfa927d9b086177158014c1ccc4706751a6f6939e26e254139d7159550
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `solr:7-slim` - linux; amd64

```console
$ docker pull solr@sha256:4594432f0677f94abc8b87e9898279a753bf1a9d7ec05bb8f52f652ff6df6a44
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279062005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b96662f76e7fc6b8a2a257a136c2d863307d45767cee4a769d9115ea5a55b9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 15 Oct 2018 23:23:12 GMT
ADD file:8934168eda55976e44a0e80932dc79e1433f1c2ee5a90ed28ba2b8b55b60b7db in / 
# Mon, 15 Oct 2018 23:23:12 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 05:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:17:31 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:17:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:22:01 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:00 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:31:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 00:17:00 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 00:17:01 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:17:11 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 00:17:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 00:17:19 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 00:17:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 00:17:21 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 00:17:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 00:18:32 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 25 Oct 2018 00:18:33 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 00:18:34 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 25 Oct 2018 00:18:34 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 00:18:34 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 00:18:34 GMT
USER [solr]
# Thu, 25 Oct 2018 00:18:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:18:35 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cca8b8cf2f157d13678401181406e5baf05ab424a04fb8190f9e3816c5db1e29`  
		Last Modified: Mon, 15 Oct 2018 23:32:22 GMT  
		Size: 26.3 MB (26284346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cf705e89452ccf724ae251641ad26bc6e8162141b3a88b688c959d8872f905`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 460.6 KB (460644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66f6961c9eb5dddcc3a449439adc5c4a03e716794daec2a41900f7fda4fb492a`  
		Last Modified: Tue, 16 Oct 2018 05:38:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2912756b153bdfcb7ccda1fdf8e8c02a686e003c30f8180ce70d6163d136f5a1`  
		Last Modified: Tue, 16 Oct 2018 05:46:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b7180f46623c170a061f562ebdf7eff11c7c2b5e0db5993c7d85d501a50ca`  
		Last Modified: Wed, 24 Oct 2018 22:42:32 GMT  
		Size: 78.4 MB (78393489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f17ef18c52c31bb5c2350bd75b2e75fc428f14dae83a4bea3bb1cf0770a4e95`  
		Last Modified: Thu, 25 Oct 2018 00:31:51 GMT  
		Size: 4.8 MB (4786735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6999610e6daf439c03dac423c368feb0e0f9cd124f3f28f2a074e3e123d10f17`  
		Last Modified: Thu, 25 Oct 2018 00:31:49 GMT  
		Size: 4.9 KB (4911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9daeb00db73608222eaea1ae6c9cc59fcf9f6cc820f6617df3268260b361289b`  
		Last Modified: Thu, 25 Oct 2018 00:31:50 GMT  
		Size: 75.4 KB (75446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933a1a0a5c15b0ffab27c39fb9b5fac7152e171c418d02cc8282315d3b8f6e35`  
		Last Modified: Thu, 25 Oct 2018 00:32:02 GMT  
		Size: 169.0 MB (169047583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a04d3ffa983fa35355785a6c4a9beec0ecad3f8b14d3e6a703f59236c68fb74`  
		Last Modified: Thu, 25 Oct 2018 00:31:49 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc877b43ee741b38314bb40b8c77e37b14d4d5dbe37305193a242f83ec80ce71`  
		Last Modified: Thu, 25 Oct 2018 00:31:49 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:51c7d693f7ab7a619deb7e214b07156c02c1115ef6cf8cbbcbc22eac4bfd5114
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.4 MB (261381687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79d53ab9e46d526bdfb3e3a970527b0ab676accfd9fd302f56af63787293dc52`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:37 GMT
ADD file:570ffab8651ae2f95dabaf4118be374c3024032a1baee5b1a2bcc74eb193120a in / 
# Tue, 16 Oct 2018 08:53:40 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:09:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:09:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:09:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:11:27 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:11:27 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:11:28 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 08:52:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 08:55:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 09:31:15 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 09:31:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 09:31:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 09:31:32 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 09:31:32 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 09:31:33 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 09:31:34 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 09:31:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 09:33:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 25 Oct 2018 09:33:02 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 09:33:03 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 25 Oct 2018 09:33:03 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 09:33:04 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 09:33:04 GMT
USER [solr]
# Thu, 25 Oct 2018 09:33:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 09:33:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0dc1d0ed8db290aadec5576efe18a0adcaf918c852134583731d227ddf80a2f0`  
		Last Modified: Tue, 16 Oct 2018 09:02:45 GMT  
		Size: 24.1 MB (24051457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b86907a04515df0ed5fa03ed01f311d9b37aef035b26e4cb22b16fd2c84be0cd`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 452.5 KB (452526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e14a9409761fd777958d0c1a55090920b613d3204c40b30d5f65359bf11dd876`  
		Last Modified: Tue, 16 Oct 2018 09:20:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd585e6fe0ce79f2ff0eaf1ef5ed0e32c445ee587b1e72de0d3bd3ad833bd0f`  
		Last Modified: Tue, 16 Oct 2018 09:22:37 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45da54d3eefcb663c8a4fd6e66eee38c1d73ed1aa1e1a36f2c8b7a41acc29717`  
		Last Modified: Thu, 25 Oct 2018 09:02:18 GMT  
		Size: 63.3 MB (63312066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4753ec2018dbedc3126f8c685fa9ff545106f5a1140a017b7e221ac6e80ccb69`  
		Last Modified: Thu, 25 Oct 2018 09:42:13 GMT  
		Size: 4.4 MB (4438303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46338d8a45178eaf0a23076857ff40291d64eeb393ab2a9fe1c0764398bac31`  
		Last Modified: Thu, 25 Oct 2018 09:42:10 GMT  
		Size: 4.8 KB (4845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d0fc9c7837122a51338fe6be28e1c5fa4ea9431c6b217456422d452c12890c`  
		Last Modified: Thu, 25 Oct 2018 09:42:10 GMT  
		Size: 75.5 KB (75481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37774249628bc944dbf0771963c94a513a30db56dbda5002919bf5cf7b7a6d36`  
		Last Modified: Thu, 25 Oct 2018 09:42:31 GMT  
		Size: 169.0 MB (169038124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647972bf98ae62222e90027729982a33d5399c13981a5cc4d45c3e32b0613ecc`  
		Last Modified: Thu, 25 Oct 2018 09:42:10 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d75b09ada2c86a42b0e11b5c59e0f6e53a0b70eda72bbbf2be682f9e94c5c6`  
		Last Modified: Thu, 25 Oct 2018 09:42:11 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:4f44acd65086954f44778687a8c8c4defa29d0d69d48a5fac4a6d479bf830bcb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260143709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae0494f88316863c639526aafaa2f2e7004c2d6f19fe296b177f6ec2b135a1b4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 12:02:34 GMT
ADD file:d966b641bd0795de9f6442fec893e1b9449c978d22fd9094d193b1535602d0a2 in / 
# Wed, 05 Sep 2018 12:02:35 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 13:10:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:10:13 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:10:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:14:29 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Sep 2018 12:05:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 12:05:47 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 12:08:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 12:53:15 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 29 Sep 2018 12:53:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 29 Sep 2018 12:53:31 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 12:53:38 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 12:53:39 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Sep 2018 12:53:39 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Sep 2018 12:53:50 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 29 Sep 2018 12:54:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 29 Sep 2018 12:55:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 29 Sep 2018 12:55:25 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 29 Sep 2018 12:55:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 29 Sep 2018 12:55:27 GMT
EXPOSE 8983/tcp
# Sat, 29 Sep 2018 12:55:28 GMT
WORKDIR /opt/solr
# Sat, 29 Sep 2018 12:55:28 GMT
USER [solr]
# Sat, 29 Sep 2018 12:55:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Sep 2018 12:55:29 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ba8445defddd24c3f2ac1eee6211fd2c3b937fa4fb76c2b8e6cff179fd515555`  
		Last Modified: Wed, 05 Sep 2018 12:11:44 GMT  
		Size: 22.0 MB (21986557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7054fed937aa9eb213be249c9e83d066ebfc81075a7ac56b5fcc5ea9db7df2bf`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 435.3 KB (435302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22c9fa9b089781c7e685cb03827f255eaddb539c9ca57b5a62119f11f2f48816`  
		Last Modified: Wed, 05 Sep 2018 13:36:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d111e6a305987c8f4221f0f1b980a91e385498b2b08dade9597055697d681b88`  
		Last Modified: Wed, 05 Sep 2018 13:36:34 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d289eff4670ba1e2b6499bf90f03fce4cf2b6413202b9bda1d20b155194b7a82`  
		Last Modified: Sat, 29 Sep 2018 12:32:22 GMT  
		Size: 65.1 MB (65142248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3839a170d271191f69da6a856afffd349e0f5e50c96f38e7e47727a28241ab15`  
		Last Modified: Sat, 29 Sep 2018 13:06:07 GMT  
		Size: 3.5 MB (3467790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9b9a1b4adeb5307ea634fa648366d653ca736f031bdb582c59e22a9b068e6f`  
		Last Modified: Sat, 29 Sep 2018 13:06:05 GMT  
		Size: 4.8 KB (4843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80740fccdacff777922362e801bf7350d141f8ced511c9024aab5bb99f262092`  
		Last Modified: Sat, 29 Sep 2018 13:06:04 GMT  
		Size: 75.5 KB (75481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8e04aebc368db7c9ac3be1cd8c54b8802a91d27e6ce8f511dad2639e230607`  
		Last Modified: Sat, 29 Sep 2018 13:06:25 GMT  
		Size: 169.0 MB (169022619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:777817b334ffeef48dadfc93ae33d6f3a332df331142dfb46c9f34976caa1aa6`  
		Last Modified: Sat, 29 Sep 2018 13:06:05 GMT  
		Size: 4.2 KB (4245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c33d2cd36445581517bc25456c270c85f6cf3e3d407a892ec98dc46f05a49c`  
		Last Modified: Sat, 29 Sep 2018 13:06:05 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:703ff29e247caec1f942e9f652897afbd082952adc8ce886343a7537016522d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266593192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45ce4c2e934e7d17a2d66458e4d4b4d6981632b559f167f6f7d2a69631169f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:46 GMT
ADD file:d0688d9602a1b4a4b7d76b9bef8e7642a9d7c9ec232bc531f7ed22bcf934a194 in / 
# Tue, 16 Oct 2018 08:41:47 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:08:10 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 09:08:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 09:11:46 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 09:11:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 09:11:47 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 09:11:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 09:15:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 23:33:57 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 16 Oct 2018 23:33:58 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 16 Oct 2018 23:34:30 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:34:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 23:34:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 23:34:35 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 16 Oct 2018 23:34:37 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 16 Oct 2018 23:34:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 16 Oct 2018 23:35:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 16 Oct 2018 23:36:00 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 16 Oct 2018 23:36:03 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 16 Oct 2018 23:36:04 GMT
EXPOSE 8983/tcp
# Tue, 16 Oct 2018 23:36:05 GMT
WORKDIR /opt/solr
# Tue, 16 Oct 2018 23:36:06 GMT
USER [solr]
# Tue, 16 Oct 2018 23:36:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 23:36:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:740c5c114e1ef0446d23c842ba1b2ae124f77e56cc972b34e1d7b8054530feae`  
		Last Modified: Tue, 16 Oct 2018 08:47:56 GMT  
		Size: 24.6 MB (24597774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b84f3fc009d97c128e0f09549ee7e5473d477e2dc4338fad214ef475e540233f`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 446.7 KB (446685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bf99f9a7918309f4245a7de721e2f8b352b140fc264eaf04ce2534f43ef572e`  
		Last Modified: Tue, 16 Oct 2018 09:24:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95273e558341ce93d539250d00b93fb68136badfc6d74fa43bed2a9bf5ac743`  
		Last Modified: Tue, 16 Oct 2018 09:27:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086142132c89fee1ef573e227ee47e1a20e1b478f6f25accdb85b8fea59d843b`  
		Last Modified: Tue, 16 Oct 2018 09:30:32 GMT  
		Size: 68.0 MB (67987946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f35f6650fc2f767802a987c08b6439d83a34cd5e68e05a204185a34db72883`  
		Last Modified: Wed, 17 Oct 2018 00:08:01 GMT  
		Size: 4.5 MB (4455926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4193f6e8d21cbdd7ea6ff208f9a5cd215e450fdf8b0ce5bc527c33db59af486`  
		Last Modified: Wed, 17 Oct 2018 00:07:57 GMT  
		Size: 4.9 KB (4945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8393e1c5013ddf5701f5eb5e78f6f2e6bdc87743d0863fa450c6a7cc29cb5d`  
		Last Modified: Wed, 17 Oct 2018 00:07:57 GMT  
		Size: 75.5 KB (75464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:977c9dd66df649d039ae003350d2c97e0e55f61b95390cf08ef8624de5f57e56`  
		Last Modified: Wed, 17 Oct 2018 00:08:21 GMT  
		Size: 169.0 MB (169015600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b428fd6febe811f7bcc28611a9c97a26446d554cb8284b87d5f2d7ba909618c5`  
		Last Modified: Wed, 17 Oct 2018 00:07:57 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20acedd073becf813e413018616a9e15ff839d58f71ba519180ba057471da284`  
		Last Modified: Wed, 17 Oct 2018 00:07:57 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; 386

```console
$ docker pull solr@sha256:01c09751f6e98121472cf0701bc2a5d6dbf492dac9527adb9ac64288014f0c69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284038992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64a8d716cfa089c04ff8d01f3151911fad8ba9943541f1cf794b6aa3e039ed1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:46:11 GMT
ADD file:de1ede4d258303cc898beaef52403a45e336767a5efcfee2e497c8ff2b09bf4f in / 
# Tue, 16 Oct 2018 10:46:11 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:27:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:27:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:27:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:30:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:30:16 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:30:16 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 11:30:16 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 11:32:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 17 Oct 2018 05:04:26 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 17 Oct 2018 05:04:26 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 17 Oct 2018 05:04:42 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 05:04:42 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 17 Oct 2018 05:04:42 GMT
ENV GOSU_VERSION=1.10
# Wed, 17 Oct 2018 05:04:43 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 17 Oct 2018 05:04:43 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 17 Oct 2018 05:04:44 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 17 Oct 2018 05:05:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 17 Oct 2018 05:05:02 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Wed, 17 Oct 2018 05:05:03 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 17 Oct 2018 05:05:03 GMT
EXPOSE 8983/tcp
# Wed, 17 Oct 2018 05:05:03 GMT
WORKDIR /opt/solr
# Wed, 17 Oct 2018 05:05:04 GMT
USER [solr]
# Wed, 17 Oct 2018 05:05:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 17 Oct 2018 05:05:04 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8081280a76deef5332a8b69838e8a401e3bada1d5a8daf36a23f8af2f073d917`  
		Last Modified: Tue, 16 Oct 2018 11:02:27 GMT  
		Size: 26.9 MB (26856248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3ccb230308bbb498c4e46d9efaa4597ceb0bf410784d54013b20430a0321ea`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 469.5 KB (469503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fdfe326205ae151a1b42c81e7531e2261f16a61846bd8fe88d816f2d4972e18`  
		Last Modified: Tue, 16 Oct 2018 11:41:18 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0cf28777567158df0d92be88b7ab501545b9ea257da9b82d63389b7bfc2585`  
		Last Modified: Tue, 16 Oct 2018 11:46:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20761abf95fef08bcf9e1ccce1d5db16c06ff513b83d01a5fe87fb449d3bb523`  
		Last Modified: Tue, 16 Oct 2018 11:50:44 GMT  
		Size: 82.7 MB (82742421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7052dda301d791618e3584e8e1275e6967f8a05e3ea0a1671fec7db789685c84`  
		Last Modified: Wed, 17 Oct 2018 05:15:15 GMT  
		Size: 4.9 MB (4854296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8646e8dc0a384d301930f379835649b5b83a783afd1840413ef9ee28440a16e6`  
		Last Modified: Wed, 17 Oct 2018 05:15:13 GMT  
		Size: 4.8 KB (4841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b6a6f78c5c636ab2584fb0dfe5472cc5970be1ab1031b011affe342c626b27`  
		Last Modified: Wed, 17 Oct 2018 05:15:12 GMT  
		Size: 75.4 KB (75443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4c5151d80273afe6906a7c2c161d79622ee529ad75c8fba00424dc7dc33c549`  
		Last Modified: Wed, 17 Oct 2018 05:15:26 GMT  
		Size: 169.0 MB (169027396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5def08f24510b746f84340b6c71cc7c18556a538c2facda3fd9832b736d164eb`  
		Last Modified: Wed, 17 Oct 2018 05:15:12 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8bfb48f39d02d8f886aa6b43dbe744f4cabca44c7648539737c1cc7ae11ebf`  
		Last Modified: Wed, 17 Oct 2018 05:15:13 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:f1cd6a411cf12eb26cc15f07a54b0a78cc91479ed08281da7b375922349d21cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.1 MB (274112909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3481710eca3263798fd0ea54695083f46811ca971b2fce1bfc1d8f5184b7f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:22 GMT
ADD file:4a1102b2046efdcd1f4cb19c398f25da11638c8c49a1827f1b881ad6867ebbff in / 
# Tue, 16 Oct 2018 08:19:23 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 08:31:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:31:56 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:31:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 08:34:54 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 08:34:57 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 08:34:58 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 08:39:13 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 08:45:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 09:51:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 09:51:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 09:52:26 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 09:52:27 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 09:52:27 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 09:52:28 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 09:52:31 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 09:52:34 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 09:53:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 25 Oct 2018 09:53:59 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 09:54:02 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 25 Oct 2018 09:54:03 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 09:54:03 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 09:54:04 GMT
USER [solr]
# Thu, 25 Oct 2018 09:54:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 09:54:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6dc81b3f9d79f32bf47395e83047b0ed1a4f50dd5b0bd0146639a798ebd8ebec`  
		Last Modified: Tue, 16 Oct 2018 08:28:04 GMT  
		Size: 29.0 MB (28969507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c487affc920bad5b2490584dee0d79473af49a42b6e1b9e2ee30314571db800`  
		Last Modified: Tue, 16 Oct 2018 08:49:17 GMT  
		Size: 458.2 KB (458191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7718a9ec1678427ab65cc2d2d4b98fa730ceab793bea6cd818926d342f5ba6e0`  
		Last Modified: Tue, 16 Oct 2018 08:49:16 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d062b916bc9a924809d604dc29386b1558f3f7814b9540c0d3c35c591f72608e`  
		Last Modified: Tue, 16 Oct 2018 08:55:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a119786d8877cd42b7b218fd597b5ddb41329ac1c7426575dc731558ad0ce`  
		Last Modified: Thu, 25 Oct 2018 08:55:19 GMT  
		Size: 69.9 MB (69941099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77613f4990e4e7c48dc6e5ef85469021179454622c2b07e83018085a3eeedaf3`  
		Last Modified: Thu, 25 Oct 2018 10:08:39 GMT  
		Size: 5.6 MB (5638278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e78e8a14de60b6035f9a2d3cb53097e153f5406843d314b6139bbb90e73ebd`  
		Last Modified: Thu, 25 Oct 2018 10:08:38 GMT  
		Size: 4.9 KB (4918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71b364267ed8bb4099c260e62f58012303156a7141c30610b81b0aac6349be8`  
		Last Modified: Thu, 25 Oct 2018 10:08:36 GMT  
		Size: 75.5 KB (75498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcacc6a716a1121148826485e49d5cbc7fdd3e72dd190ff6ea997a97a515037b`  
		Last Modified: Thu, 25 Oct 2018 10:09:03 GMT  
		Size: 169.0 MB (169016546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49755a30998f5af50dfffc08c611a5ebaf7978da2a68e9b4df386df2fb7e5de1`  
		Last Modified: Thu, 25 Oct 2018 10:08:35 GMT  
		Size: 4.2 KB (4248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f97bf811c92cb7f69be7b5d933724d9abaafd4d9bdfe9e2471818d3a5e1a67a`  
		Last Modified: Thu, 25 Oct 2018 10:08:35 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; s390x

```console
$ docker pull solr@sha256:dc9e29aabfed129e5989717d25c463f2870d483624775ce32acb3328a3b4fc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.6 MB (266572182 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8de7667bd660c45c339d8a462342b112652f1cd1ab750812ff6418596464b07d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:06 GMT
ADD file:62a57ce13803527510a159dec3878e0707d3e939029a993efddd4bee35a7df4d in / 
# Tue, 16 Oct 2018 11:42:06 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:48:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:48:42 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:48:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 11:50:00 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 11:50:00 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 11:50:01 GMT
ENV JAVA_VERSION=10.0.2
# Tue, 16 Oct 2018 11:50:01 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Tue, 16 Oct 2018 11:51:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 15:21:57 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 16 Oct 2018 15:21:57 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 16 Oct 2018 15:22:06 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 15:22:06 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 15:22:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 16 Oct 2018 15:22:07 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 16 Oct 2018 15:22:07 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 16 Oct 2018 15:22:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 16 Oct 2018 15:22:23 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 16 Oct 2018 15:22:23 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 16 Oct 2018 15:22:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 16 Oct 2018 15:22:25 GMT
EXPOSE 8983/tcp
# Tue, 16 Oct 2018 15:22:25 GMT
WORKDIR /opt/solr
# Tue, 16 Oct 2018 15:22:25 GMT
USER [solr]
# Tue, 16 Oct 2018 15:22:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 15:22:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:76f5ebafa73fb12b78ff445aeb469bac1bdc591f1244e3059c3f61e2a5e6362d`  
		Last Modified: Tue, 16 Oct 2018 11:44:54 GMT  
		Size: 24.9 MB (24911339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f17c7826f5495310992281eba0a0d306a002d8aa46b3f244b2d73eacec0df197`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 469.6 KB (469641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013090cc4546c9a956574c0854191efd3a5ac57b96420985df6104a73cde7e35`  
		Last Modified: Tue, 16 Oct 2018 11:52:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3104b9dda4b9046c4192360cab3fd2ae20e56d2daba24be94d787e1167b41d54`  
		Last Modified: Tue, 16 Oct 2018 11:54:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e539d3708a1d33889790cf6f6aee36436b096aa55eca55c38ca3782258af66`  
		Last Modified: Tue, 16 Oct 2018 11:55:59 GMT  
		Size: 67.7 MB (67665431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1cd323421091f761652c71597e01b3e7e3835f33cd8d1bf9e3a456d814d8754`  
		Last Modified: Tue, 16 Oct 2018 15:30:13 GMT  
		Size: 4.4 MB (4403025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448a50ffe9ddfc777ed66cf24031d7937b8a39a8876381555573eeca67a723e7`  
		Last Modified: Tue, 16 Oct 2018 15:30:10 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0011ac80749f655135e2ced223ec30bef6270552bd9775647d99145c55ed18`  
		Last Modified: Tue, 16 Oct 2018 15:30:10 GMT  
		Size: 75.4 KB (75445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cfb30a67c428581164d75c7a25627248efe1acd1c0316aa08d66076d9fb6c28`  
		Last Modified: Tue, 16 Oct 2018 15:30:36 GMT  
		Size: 169.0 MB (169033518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7dcb81088cf07ffa7f3bf77b8aa3f8bec4fda1cb731d49ba2c37f5beebd7f3c`  
		Last Modified: Tue, 16 Oct 2018 15:30:10 GMT  
		Size: 4.2 KB (4220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb8bd15932ddf9e46471ab440ce7e29edd0b6005cb359eee498e4c37c9bf7e3a`  
		Last Modified: Tue, 16 Oct 2018 15:30:10 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

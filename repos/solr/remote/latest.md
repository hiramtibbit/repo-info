## `solr:latest`

```console
$ docker pull solr@sha256:8d4480ccf9d66a1b08f07650c2996eb8e8089515c2a36077e541190ed8fe8874
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:2407ca5066b02f772a659efec70f70aec590e8d4fbab845ea17451f455c6a7c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.0 MB (368006160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9380ec8dc56ca192705dc8b8d3030078a26539bc5e47db43f41ec7989cb3b5f0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 08:27:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:27:03 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 08:27:03 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:27:05 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:27:06 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 08:27:06 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 08:27:49 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Feb 2019 21:45:52 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Feb 2019 21:45:53 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Tue, 12 Feb 2019 21:45:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Feb 2019 21:45:59 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 01 Mar 2019 23:22:29 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 01 Mar 2019 23:22:29 GMT
ENV GOSU_VERSION=1.11
# Fri, 01 Mar 2019 23:22:29 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 01 Mar 2019 23:22:30 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 01 Mar 2019 23:22:32 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 01 Mar 2019 23:22:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 01 Mar 2019 23:22:50 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 01 Mar 2019 23:22:50 GMT
EXPOSE 8983
# Fri, 01 Mar 2019 23:22:50 GMT
WORKDIR /opt/solr
# Fri, 01 Mar 2019 23:22:50 GMT
USER solr
# Fri, 01 Mar 2019 23:22:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 01 Mar 2019 23:22:51 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea0f08c7492aa49cb62b7fc7cf5a3b91e5c83c182cecddaba75903f09a1c67e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 852.9 KB (852911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3ffbbac4c4b6f09d9931243f263ba484fd44e9127d4bb7cf2a137180a61e6ab`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267b2539b9b17b83c81acea78976c319b9216899dd4d75cff5343291861f53e`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6294a94db40c8d1b109d6590cb3d87682aa7c5cdd49f42f78739e3dce78e7bd6`  
		Last Modified: Wed, 06 Feb 2019 08:52:24 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c15f9c04764581e1e4d4d6e2de287411f6953920ec25bb0849da1e9b3afd4d6`  
		Last Modified: Wed, 06 Feb 2019 08:52:50 GMT  
		Size: 131.3 MB (131315282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a48a212f1e41118b73f8e703d8a9b1397e429afbc9fad8afaa7d63f1aa4c952`  
		Last Modified: Tue, 12 Feb 2019 21:57:52 GMT  
		Size: 2.9 MB (2924003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d043dcf06a4862111f01da4643c3d6ed77adf05274f5a0d787c890f629217d`  
		Last Modified: Fri, 01 Mar 2019 23:24:44 GMT  
		Size: 4.3 KB (4297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cf3013130dca7db42b5db076228118bf70a3373ef7ee0f870a11e814d49929`  
		Last Modified: Fri, 01 Mar 2019 23:24:44 GMT  
		Size: 74.3 KB (74277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02254fe5f81e455c06bbc3bfb1238d2b3c83f42f7f9ca6c193aff0e95ad33a5d`  
		Last Modified: Fri, 01 Mar 2019 23:24:58 GMT  
		Size: 172.4 MB (172365122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71c8380903601db8d94a1cadedf96e41c2071a19f5567ed7b10858dabff0e63c`  
		Last Modified: Fri, 01 Mar 2019 23:24:44 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v5

```console
$ docker pull solr@sha256:2e7396a0ed36b5cacef1dc52f2c60fd20569518c7ddd26974b533ed2d8b2bb4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.9 MB (348855527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e396c0f5284a1afb63a24c59bb79202d682d58424ac57c4495415fd693f92bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:45:12 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 12:45:12 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:45:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:45:15 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:45:15 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 07 Feb 2019 10:01:24 GMT
ENV JAVA_VERSION=11.0.2
# Thu, 07 Feb 2019 10:01:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Fri, 15 Feb 2019 09:56:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 15 Feb 2019 10:34:26 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 15 Feb 2019 10:34:27 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 15 Feb 2019 10:34:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 15 Feb 2019 10:34:40 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:50:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 09:50:10 GMT
ENV GOSU_VERSION=1.11
# Sat, 02 Mar 2019 09:50:11 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 02 Mar 2019 09:50:12 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 02 Mar 2019 09:50:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 02 Mar 2019 09:52:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Sat, 02 Mar 2019 09:52:01 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Sat, 02 Mar 2019 09:52:02 GMT
EXPOSE 8983
# Sat, 02 Mar 2019 09:52:02 GMT
WORKDIR /opt/solr
# Sat, 02 Mar 2019 09:52:02 GMT
USER solr
# Sat, 02 Mar 2019 09:52:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 09:52:03 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11f02589fc3d00a36a98d58ff4404167ce69f35a4207db13bcf6ea33799132a1`  
		Last Modified: Wed, 23 Jan 2019 13:07:55 GMT  
		Size: 845.9 KB (845891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69306e793a346e47840417b798dc72551ea325293cf7a4eb2044c7bc773d0fcf`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01df861754d9b1a44c56f9638fc1665d43446d58c868e52a177a0f7044e708fd`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1ee030979705e5c2914ddbed8bbed08221fe0fe4c4e270b4015cb751060d0f`  
		Last Modified: Wed, 23 Jan 2019 13:07:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00ee8a69a41637e69412fbad0a556121f6b70856688a80bff3df35169265e0d6`  
		Last Modified: Fri, 15 Feb 2019 10:03:19 GMT  
		Size: 114.6 MB (114644842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c4f20e7db9fcc8c087066dc06d2c06d6a629c708e363ab72e0345936babce78`  
		Last Modified: Fri, 15 Feb 2019 10:53:18 GMT  
		Size: 2.9 MB (2894772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd8feab0f14d369d7d52cf6fe2fffcc57d0261faac2d0ceda520c602fb318da3`  
		Last Modified: Sat, 02 Mar 2019 09:54:42 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67d9dee938c15001190e57aac4ac570d631bd6e9d7affd9a25c6c06dea06e7ba`  
		Last Modified: Sat, 02 Mar 2019 09:54:43 GMT  
		Size: 74.3 KB (74311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11294d56bac1c625508c26926c548ea54060681b65cf597d4f812a6d3810e9d5`  
		Last Modified: Sat, 02 Mar 2019 09:55:06 GMT  
		Size: 172.3 MB (172325084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5005986714c246bb28d784a4a2aced6feb7a6af2149845dbc7c4f4e47bd2c585`  
		Last Modified: Sat, 02 Mar 2019 09:54:43 GMT  
		Size: 4.3 KB (4260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

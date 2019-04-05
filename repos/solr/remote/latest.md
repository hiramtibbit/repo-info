## `solr:latest`

```console
$ docker pull solr@sha256:cba6d93f515b3483db52727f2005b5f277d8b9a43e21970f7e9660e55d31f659
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

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:25cbefaf6770f3502a7640c526a8388f9b8993c96f8262bbf5988034ca333b83
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.0 MB (368020324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:986551ab186bd78bba66af89a052fb213ac95482e66f394187cb49c8a22f391b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 00:46:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:46:47 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:46:47 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:46:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:46:49 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_VERSION=11.0.3
# Thu, 04 Apr 2019 22:32:25 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Thu, 04 Apr 2019 22:33:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Apr 2019 23:02:52 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 04 Apr 2019 23:02:52 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Thu, 04 Apr 2019 23:02:52 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 04 Apr 2019 23:02:58 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Thu, 04 Apr 2019 23:02:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 04 Apr 2019 23:02:58 GMT
ENV GOSU_VERSION=1.11
# Thu, 04 Apr 2019 23:02:58 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 04 Apr 2019 23:02:59 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 04 Apr 2019 23:03:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 04 Apr 2019 23:03:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Thu, 04 Apr 2019 23:03:16 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Thu, 04 Apr 2019 23:03:16 GMT
EXPOSE 8983
# Thu, 04 Apr 2019 23:03:16 GMT
WORKDIR /opt/solr
# Thu, 04 Apr 2019 23:03:16 GMT
USER solr
# Thu, 04 Apr 2019 23:03:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 04 Apr 2019 23:03:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de423484a9466ec116a34ba24e068e72e45d6c875c82f7eb63375577b4b51236`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 852.9 KB (852864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce08128c662b0d9d0f3d9f86364c56f7b387111dd0602f2116e7fefb7bf3322`  
		Last Modified: Wed, 27 Mar 2019 01:08:34 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53b0cf80b370dc3011ff521f948fb212324f4b709f978ce5108193882a1a5a2f`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52bd533f444d12d7c517d33e97d3ac0d27d31b2fbf6582dba416e47fcde1efc6`  
		Last Modified: Wed, 27 Mar 2019 01:08:33 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f39d9fa4825b3e38ef3d8955df3f71e2f5f591c7e57d82e8a09dbc48dfc890d7`  
		Last Modified: Thu, 04 Apr 2019 22:37:15 GMT  
		Size: 131.3 MB (131330150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae81b02ccc093a407be3c401b1f24969d78caefe48b1d0548a02bf37974bb2f7`  
		Last Modified: Thu, 04 Apr 2019 23:06:27 GMT  
		Size: 2.9 MB (2924068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1abea9f91eb86a06ca54f484969967ebaf6dcac18f839bfb749347938ee562`  
		Last Modified: Thu, 04 Apr 2019 23:06:27 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513ca6572d80c279848e8e518c29de55ddbac0e83fd5d2bda4f9336fcb108ef8`  
		Last Modified: Thu, 04 Apr 2019 23:06:26 GMT  
		Size: 74.3 KB (74251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73610db7851a8d4e5c5cd50d3cf0605a8491dfb9f54e85aef0aa831a208ed16a`  
		Last Modified: Thu, 04 Apr 2019 23:06:40 GMT  
		Size: 172.4 MB (172365209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be26f76be7a241eec8060faabcfb669114e6b5b70f2c13510eb1145fad65421`  
		Last Modified: Thu, 04 Apr 2019 23:06:27 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v5

```console
$ docker pull solr@sha256:69a1330f41290fddb908644735e6819e8897041b20776862ccccc1ca8fc23500
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.6 MB (348581058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a8ee4dadbacbccad9c2a1acc86290fd4da2931f7df2e42769f87e1f407e70b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:37 GMT
ADD file:55757b58d47ad1bd75530ef5bfd90c3354b7da7cbb3519f8bedc170b9e2a5d9c in / 
# Wed, 27 Mar 2019 08:53:38 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:01:04 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:01:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:01:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:01:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:01:07 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:54:30 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:54:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:55:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:24:15 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:24:15 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:24:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 09:24:28 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 09:24:28 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 09:24:28 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 09:24:29 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 09:24:30 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 09:24:33 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 09:25:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 09:25:56 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 09:25:56 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 09:25:57 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 09:25:57 GMT
USER solr
# Fri, 05 Apr 2019 09:25:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 09:25:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f924f7b5a6a0a527f783d52778b09ae800121ce3fdd0812c44366174092a5573`  
		Last Modified: Wed, 27 Mar 2019 08:59:18 GMT  
		Size: 44.0 MB (44029721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9493ad08ec9883c81689003b68a06292c9e69f0d1227c28f63a7ec4ed0c17739`  
		Last Modified: Wed, 27 Mar 2019 10:09:42 GMT  
		Size: 9.9 MB (9851920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63792336dd728e502aed649c428b2e9514dce0e6c6b3f7d19491d103567bbdb1`  
		Last Modified: Wed, 27 Mar 2019 10:09:40 GMT  
		Size: 4.2 MB (4158987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36a7f122df934d8328e113872e47a73005356d1d3c40be62cd8d9a980e065c0`  
		Last Modified: Wed, 27 Mar 2019 12:21:45 GMT  
		Size: 845.9 KB (845888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3a6e82676247b5ce3a5048563a4a5c839d0663b092e964fa8372b144d09f965`  
		Last Modified: Wed, 27 Mar 2019 12:21:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36adc423ecdcad77e9c84383b3f7a70cc502bc8af39e5ee6ce371576b242ad0`  
		Last Modified: Wed, 27 Mar 2019 12:21:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362de53153f38776a3eacc2d4a8e7238c7943e149035661f6ba21f7785a922b6`  
		Last Modified: Wed, 27 Mar 2019 12:21:45 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0cbe364d0f4b1df33d33896295382a3648ad34abfe00ce2be51a7b3280e56b`  
		Last Modified: Fri, 05 Apr 2019 09:02:09 GMT  
		Size: 114.4 MB (114391305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900a9cd50a6fecaef994c813b28c6d485421c05f46f5bf7a37098626341e9a5b`  
		Last Modified: Fri, 05 Apr 2019 09:35:54 GMT  
		Size: 2.9 MB (2894744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e678459941ae7a8dd5f6131228a0cf9467ed20dc8bd4dd954bde5fc3cab9b2c`  
		Last Modified: Fri, 05 Apr 2019 09:35:54 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b690c2a73b408833dd264ef8414530f738e3cba8915dc12f3cae440829b4da77`  
		Last Modified: Fri, 05 Apr 2019 09:35:53 GMT  
		Size: 74.3 KB (74309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbae801003f5b1f52bf51732bcddf099406ad79aac877a9164d156869dd9da6`  
		Last Modified: Fri, 05 Apr 2019 09:36:17 GMT  
		Size: 172.3 MB (172325092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bb9b5cbe00a3ee5ea208cf822f0c83eb330d421dcdb999806fb3c6ee6818d0a`  
		Last Modified: Fri, 05 Apr 2019 09:35:54 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v7

```console
$ docker pull solr@sha256:81dfa0bceb4cf073c56dda9a81f09a515f42943b895ead65736548f5327e7dfa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347627858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:266847bdeed380aff46a5ba4d9186a5f027f9c9116d2d194a82718ba48298868`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 14:39:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:39:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:39:43 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:39:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:39:48 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:39:49 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:39:50 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:40:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 13 Feb 2019 13:08:59 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 13 Feb 2019 13:08:59 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Wed, 13 Feb 2019 13:09:00 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 13 Feb 2019 13:09:13 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:29:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:29:05 GMT
ENV GOSU_VERSION=1.11
# Sat, 02 Mar 2019 13:29:05 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 02 Mar 2019 13:29:07 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 02 Mar 2019 13:29:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 02 Mar 2019 13:30:30 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Sat, 02 Mar 2019 13:30:32 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Sat, 02 Mar 2019 13:30:33 GMT
EXPOSE 8983
# Sat, 02 Mar 2019 13:30:33 GMT
WORKDIR /opt/solr
# Sat, 02 Mar 2019 13:30:33 GMT
USER solr
# Sat, 02 Mar 2019 13:30:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 13:30:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c939e18033f4d9e001f74f0bb3eeb37358e00e43f9d69147f83352446e83f2`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 830.2 KB (830214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ef71f0052540674fe14976375014a3827f5282d8b1d826cb9842077ff263f9`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:316111000338d5611ea666e2d9bbd80154a60d31c00c72de166cd52dbebecdfb`  
		Last Modified: Wed, 23 Jan 2019 15:06:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8689b09b728009f15469fb1da9dd9d3ee588ba28e28deb960405adacde05360`  
		Last Modified: Wed, 23 Jan 2019 15:06:53 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:102065863dd664ce02c555dc3c52dabf9338bfe4700152930519a45c8dded8f5`  
		Last Modified: Wed, 23 Jan 2019 15:07:26 GMT  
		Size: 116.1 MB (116131390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cfc4faa135d12599a709209ace33527ac5462151b67212d99b227899680c4b`  
		Last Modified: Wed, 13 Feb 2019 13:40:09 GMT  
		Size: 2.8 MB (2778922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b276b37c833a38516a63b10705ecc892c72c92b775acf9fb31c73e77e2f722c`  
		Last Modified: Sat, 02 Mar 2019 13:33:24 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25518b3bdd75447d730c03eaaf20b03def7aa55b8df13f82935e7a817d8785d5`  
		Last Modified: Sat, 02 Mar 2019 13:33:24 GMT  
		Size: 74.3 KB (74279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acd2e3fc7fc6017d8d3cafdea0c0b1a6498803b532016c781e6fb1ace14f1bb`  
		Last Modified: Sat, 02 Mar 2019 13:33:47 GMT  
		Size: 172.3 MB (172317349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867e9f66ba092e8515a9264ca4f3094765f9d4660ea8c7ba879a8d8c46583872`  
		Last Modified: Sat, 02 Mar 2019 13:33:24 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:fe35d16e5bee1dbb62289d5f9f836dc5f6e6a30572c68f32d74b1231b1c59fa4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **354.9 MB (354898788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:552ba5a40676a1070e3c146fb8aa9bcf9c77e39ff60d00caec90ae99ef617435`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 19:27:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:27:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 19:27:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:27:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:28:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:28:02 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 09:10:51 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 09:10:52 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 09:15:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:50:34 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:50:34 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:50:35 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 09:50:57 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 09:50:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 09:50:58 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 09:50:59 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 09:51:02 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 09:51:05 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 09:51:47 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 09:51:48 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 09:51:49 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 09:51:50 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 09:51:50 GMT
USER solr
# Fri, 05 Apr 2019 09:51:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 09:51:52 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9a2434e166bc5bb8f8a3bf11f42053e0ab7483f5ba117a8d95cda3949a304`  
		Last Modified: Wed, 27 Mar 2019 19:43:23 GMT  
		Size: 839.2 KB (839168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6483a9937fa825a7bb245dc3741925b11a6bef443d5f8b2b63e229252090722f`  
		Last Modified: Wed, 27 Mar 2019 19:43:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e162053f2eb57a20de87f7152b940862258953007a71c3a346149b57f8f347b5`  
		Last Modified: Wed, 27 Mar 2019 19:43:22 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef5cc4a4cd0627b29403dfb1df25597c397ed7deb96f9d4669ddf0b98db2dc3c`  
		Last Modified: Wed, 27 Mar 2019 19:43:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a23b6e8e9dbf50dd1b1c5b0b2e3cd830115ad9dd28f382ead0a19ee06c0215c`  
		Last Modified: Fri, 05 Apr 2019 09:21:40 GMT  
		Size: 121.9 MB (121903796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0107d1e240ed27261176db935023c2d180372a4c8c07e5e46f31fa39f931d3`  
		Last Modified: Fri, 05 Apr 2019 09:58:30 GMT  
		Size: 2.8 MB (2815723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb9c4bc0c8e5fa4e0e67354193a3ebbef79e89c875eff3b46efab99fb4abdc85`  
		Last Modified: Fri, 05 Apr 2019 09:58:29 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:390fa42c08cc2a2a5198e3eea3b9b7ce408fa7bf20f99001b98b590c2042258f`  
		Last Modified: Fri, 05 Apr 2019 09:58:29 GMT  
		Size: 74.3 KB (74278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d6ddbf9ccb1d4bedb168584f3c483b2d60ac113487047a2aa48c3e600e69a2`  
		Last Modified: Fri, 05 Apr 2019 09:58:54 GMT  
		Size: 172.3 MB (172300125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa4f424c4bd53d2215a4edb4409cde35a897a4a4caacf813516237be13892381`  
		Last Modified: Fri, 05 Apr 2019 09:58:30 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; 386

```console
$ docker pull solr@sha256:9d47895128a27f495e68b095acf0694c9366d766d7b4dfd3371248b399c63c68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.1 MB (374087482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f9f43ac4f7b4301179f8d78fa3538906e7d9ff3954c0b79f8ced737fce2800`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 17:54:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:54:50 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:54:50 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:54:51 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:54:52 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:54:52 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:51:02 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:51:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:51:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 12:17:12 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 12:17:12 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 12:17:12 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 12:17:19 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 12:17:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 12:17:19 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 12:17:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 12:17:20 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 12:17:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 12:17:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 12:17:39 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 12:17:39 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 12:17:39 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 12:17:39 GMT
USER solr
# Fri, 05 Apr 2019 12:17:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 12:17:40 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fd806a1a8b67c8a925a819d66afef1dda430b0bcda241d525cce8e0388dc9a`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 861.7 KB (861731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7db0bc8aa8c788c844942f0b26f25627318779216fad6011f872a1c24dfb89a`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd853c0bd15b5bd6d554ff72bd852ecfcaa3ecd9887abb4785a3e0c1c71224ca`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77354aa9295c46a63bad4fa6bde398eb19f50e67097fb741b207ace70a3d087c`  
		Last Modified: Wed, 27 Mar 2019 18:29:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf80ff42c91ca6141ccbf56e0f2aeaf1229967357d157abf6bfe5aea03cc1649`  
		Last Modified: Fri, 05 Apr 2019 10:55:27 GMT  
		Size: 136.4 MB (136383762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f2354e4acf67b74d818189ed513e1b37df287cd13e643f7a234d7b8a069e1e9`  
		Last Modified: Fri, 05 Apr 2019 12:21:00 GMT  
		Size: 3.0 MB (3000703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356397c5bf75c255de96d34b3789b828d14fc0a98f6085ff91c09e109b342ab0`  
		Last Modified: Fri, 05 Apr 2019 12:21:00 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29da136f395b1354ef0b221a0b8669acc85136a1de05821f2f18f9f450706d9b`  
		Last Modified: Fri, 05 Apr 2019 12:21:00 GMT  
		Size: 74.2 KB (74246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e410760296b3bdaab076887b415ffdd97430f26958901f21023f926cc3897788`  
		Last Modified: Fri, 05 Apr 2019 12:21:14 GMT  
		Size: 172.3 MB (172332177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458ca46bfb7fc91d2d98463f56fb27abf4baac09567f55eaa0db966c10e523a3`  
		Last Modified: Fri, 05 Apr 2019 12:21:00 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:7acbf9441c9f4d4e12f24246ebae8603e6a36ad86d85a8f56005d4bc185497b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.5 MB (355500775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f52f52f62dfcc4736644daf830adcf592a8c48b4b08fee8c39efd4d2cced8d37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:40:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:40:43 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:40:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:40:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:40:51 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:40:53 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:42:26 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:42:28 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:45:32 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:17:37 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:17:39 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:17:43 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 09:18:11 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 09:18:15 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 09:18:18 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 09:18:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 09:18:27 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 09:18:34 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 09:23:34 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 09:23:35 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 09:23:39 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 09:23:42 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 09:23:44 GMT
USER solr
# Fri, 05 Apr 2019 09:23:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 09:23:49 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b8b69d784b5d3f08693229333e0994dd9eb8c79afdfa1ff80a24190714d019`  
		Last Modified: Wed, 27 Mar 2019 12:57:24 GMT  
		Size: 848.4 KB (848351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6514601eba88b9755ff17942c0be61cb64680f20b4a891540bbebb6b4547773`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef2acb3bd7521314a968803be3dfd3751ba1b952e38765798137d11cb6b7b23`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c9feef0d857e479208222dc7f252bdb1acf94c133fe1dd05df462e3fb137a59`  
		Last Modified: Wed, 27 Mar 2019 12:57:23 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a2f8307a19371ee4dc22efad24d13f257a6277e21a826adf74dce7906f7502e`  
		Last Modified: Fri, 05 Apr 2019 08:52:04 GMT  
		Size: 119.5 MB (119450251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1801ba7b04d7d6680b7619af48eeaf0ae7f5ba81b8ce24ea078d9e599c170a1e`  
		Last Modified: Fri, 05 Apr 2019 09:43:02 GMT  
		Size: 2.9 MB (2934492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4bea033f9a50286e234e92d47b85c0e6d801ac173e9e6801868a4648c0cc45b`  
		Last Modified: Fri, 05 Apr 2019 09:42:59 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de70355f4808c3ca8dfaaf656791484308bb3b1c793e75d2f897b72ce59e82e7`  
		Last Modified: Fri, 05 Apr 2019 09:43:00 GMT  
		Size: 74.3 KB (74308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adad71835e3a7bb90bad7e4391940c645d67677d271a557a65ad4992533d86fa`  
		Last Modified: Fri, 05 Apr 2019 09:43:18 GMT  
		Size: 172.3 MB (172288257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa58b85928c1ee292f011807083ccc8b7264c0d658e7b9fa359b88b646755aca`  
		Last Modified: Fri, 05 Apr 2019 09:42:59 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:674479210c565e627fffbb234a450ea6f000ff85bf18bf1fe45f14efff005ae9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.3 MB (355285190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a20d21b54525c0fa6ef9f898d78ce74766e5ee483c66f809122e44f59482e07`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 15:25:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:25:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:25:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:25:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:25:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:25:07 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 11:49:03 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 11:49:04 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 11:50:02 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 12:36:29 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 12:36:29 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 12:36:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 12:36:38 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 12:36:38 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 12:36:39 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 12:36:39 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 12:36:40 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 12:36:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 12:36:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 12:36:58 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 12:36:59 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 12:36:59 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 12:36:59 GMT
USER solr
# Fri, 05 Apr 2019 12:37:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 12:37:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c476f6d7dc309c9fd699a4d839f327a2dcc209be486bd54f1d3e966df43d6f`  
		Last Modified: Wed, 27 Mar 2019 15:31:20 GMT  
		Size: 863.7 KB (863668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f59860ff8fa1c51d29ebb46dcfc44651b5978ce80563bb4906db61d7b543cf1`  
		Last Modified: Wed, 27 Mar 2019 15:31:20 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cb06ca400db356ca477d9759e2ff8ae0b914445fb241c1a2630db76d5dadab`  
		Last Modified: Wed, 27 Mar 2019 15:31:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6afacff175ef862bfa8c4d15df8da885e3cf6619f93f5560177868cdb65ee1e`  
		Last Modified: Wed, 27 Mar 2019 15:31:19 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c3134cb8fcc94a83fa8c6f5fc8a59fb32ae63b888424df62485450b903346fc`  
		Last Modified: Fri, 05 Apr 2019 11:54:04 GMT  
		Size: 119.2 MB (119159319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da8bb708550cf692811ddef43edfd5ae4401a3a65c3fee7bab319b187ba0c6eb`  
		Last Modified: Fri, 05 Apr 2019 12:40:33 GMT  
		Size: 2.9 MB (2938026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0499c9366e24f18be3dec242edb5230e5909d12841ad825c2352e7db9acff4eb`  
		Last Modified: Fri, 05 Apr 2019 12:40:33 GMT  
		Size: 4.3 KB (4331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1ca7c88b77ddbca025aabcca0465ab765437ea8eddaf9bf57c8d692155ad8a7`  
		Last Modified: Fri, 05 Apr 2019 12:40:33 GMT  
		Size: 74.3 KB (74264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f4469722813232733a555535a5dbae6b4f27b4efcbef812ef627aecfb66735`  
		Last Modified: Fri, 05 Apr 2019 12:40:46 GMT  
		Size: 172.4 MB (172354200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93d9d0d068450a6a932052bee881ee3ef5994a7e01373cf487de0fdbfbc33644`  
		Last Modified: Fri, 05 Apr 2019 12:40:33 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

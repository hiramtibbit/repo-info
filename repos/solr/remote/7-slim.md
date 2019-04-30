## `solr:7-slim`

```console
$ docker pull solr@sha256:6d55f4f37a83793e86174c3b9c42facf5500731a216e8ef96a9c72ce9fd07be7
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
$ docker pull solr@sha256:d572105b450c243757346f184a3130aa1da57d08a3e56259cf7afc0176b85997
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275946919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a418a2b1d75dfbf19e92796ea28d2d4abd6e6070ac5ebbde8172de959ba7eca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:45:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:45:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:45:42 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:45:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:45:44 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:45:44 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 04 Apr 2019 22:31:33 GMT
ENV JAVA_VERSION=11.0.3
# Thu, 04 Apr 2019 22:31:33 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Thu, 04 Apr 2019 22:33:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 04 Apr 2019 23:03:22 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 04 Apr 2019 23:03:22 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Thu, 04 Apr 2019 23:03:22 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 29 Apr 2019 17:41:01 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Mon, 29 Apr 2019 17:42:11 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 17:42:12 GMT
ENV GOSU_VERSION=1.11
# Mon, 29 Apr 2019 17:42:12 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 29 Apr 2019 17:42:12 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Mon, 29 Apr 2019 17:42:14 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 29 Apr 2019 17:42:29 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /opt/solr/bin/solr.in.sh &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Mon, 29 Apr 2019 17:42:29 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Mon, 29 Apr 2019 17:42:29 GMT
EXPOSE 8983
# Mon, 29 Apr 2019 17:42:30 GMT
WORKDIR /opt/solr
# Mon, 29 Apr 2019 17:42:30 GMT
USER solr
# Mon, 29 Apr 2019 17:42:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:42:30 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16d944e3d00df7bedd2f9a6aa678132a1fb785f7d56b16fdf24c22d5c7c3b7a1`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 454.9 KB (454886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aaf465b8930951069752df0f86b402bf6dde99a2c174468f748d056689a470b`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0684138f4cb6b633004d5295eaba82edf4f7396b993455bba078af58cbe63acc`  
		Last Modified: Wed, 27 Mar 2019 01:07:47 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c4e741e6889f29b5366d7f6f29f93b736194f08439b9079f013dd584efb03f`  
		Last Modified: Wed, 27 Mar 2019 01:07:46 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ba3d4c90ecc3d02716376088293476e9046b771c2069be6cef0856de3d1a93`  
		Last Modified: Thu, 04 Apr 2019 22:37:33 GMT  
		Size: 77.2 MB (77164380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536cdd25631691d5391dd91a53ee4bdcf569f33e8297701b4a909cfbe0735f83`  
		Last Modified: Mon, 29 Apr 2019 17:50:20 GMT  
		Size: 3.4 MB (3382997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d62c0a5d3b1dc53ca124e0db5d51514eeac0f1d699cfe77734cadb4c7fab4ef7`  
		Last Modified: Mon, 29 Apr 2019 17:51:19 GMT  
		Size: 4.3 KB (4293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ccda6f12f31a4d879d866375e62803d5cfcef2d40a6a4971bf26f19f9ba833`  
		Last Modified: Mon, 29 Apr 2019 17:51:19 GMT  
		Size: 74.3 KB (74253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c01dacd76513a0c30675544cbbb4a479471b8177bf5169baf1ba9001a2314d1`  
		Last Modified: Mon, 29 Apr 2019 17:51:31 GMT  
		Size: 172.4 MB (172365230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9e68a9c8d20a8c5c6cc6ead43ef1b4ec5bdb44ed5da32d177a21df163ee4c0f`  
		Last Modified: Mon, 29 Apr 2019 17:51:19 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:ad5df581bca31ce60054d986560e3e79eab6991aeb7a91cdb4dbc34e58655144
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257995317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fcd5e03b84eabb19a15de2540ec6d5622d4089762dc4a30e00e9630e3fe5991`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:57 GMT
ADD file:7a35d0949b1b3e7394102d060feb38dba6645340f0c24c11c41eab11995474e2 in / 
# Wed, 27 Mar 2019 08:53:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 11:58:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:58:20 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 11:58:20 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:58:21 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 11:58:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 11:58:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:51:45 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:51:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:58:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:26:14 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:26:14 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:26:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Apr 2019 08:54:13 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 08:57:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Apr 2019 08:57:56 GMT
ENV GOSU_VERSION=1.11
# Tue, 30 Apr 2019 08:57:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 30 Apr 2019 08:57:58 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Tue, 30 Apr 2019 08:58:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 30 Apr 2019 09:00:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /opt/solr/bin/solr.in.sh &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Tue, 30 Apr 2019 09:00:43 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Tue, 30 Apr 2019 09:00:43 GMT
EXPOSE 8983
# Tue, 30 Apr 2019 09:00:44 GMT
WORKDIR /opt/solr
# Tue, 30 Apr 2019 09:00:44 GMT
USER solr
# Tue, 30 Apr 2019 09:00:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:00:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2e028234e3987a188a306c264af3c27abc8240fc8e19373e1c5adc01b31e6176`  
		Last Modified: Wed, 27 Mar 2019 08:59:38 GMT  
		Size: 21.2 MB (21160663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f184019a96fee337c84a360b1e91acc9c23da4c079fff811b4063c86f948174`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 447.7 KB (447747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ad67dd88c41393e780d354f9e98cfb90a8ff29ee9c7c125c16d42b12956d51`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db7ab46e6e37590b1ff26cf366fefd71a3d882fe2a05028ebd1ea2b2245686e6`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3790c7567ac31d367acaad5a0cf1233c808c6d4fa01923409ba7482495174093`  
		Last Modified: Wed, 27 Mar 2019 12:20:43 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d527956fb459ab3a8ae7a46c26eb807ece18965afdebc81523b7d61d65890fa`  
		Last Modified: Fri, 05 Apr 2019 09:02:36 GMT  
		Size: 60.7 MB (60748751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd4cb0aec923e81ac996a0adf2fbef75c639a4f9afe39e543ff4b4cac733bac3`  
		Last Modified: Tue, 30 Apr 2019 09:15:31 GMT  
		Size: 3.2 MB (3229682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46d58fd6a40847e8e35c99c0c38f5fee0cb8cd428edd9a8898114b862b6865e`  
		Last Modified: Tue, 30 Apr 2019 09:16:40 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab8b8b91233de9bccba800404029fb7f94911c4adea8bc59bf7971f127d0a86`  
		Last Modified: Tue, 30 Apr 2019 09:16:40 GMT  
		Size: 74.3 KB (74282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30a6f2926ad90d4008c9b46592cab31d142ad19298c18f298ee25d6d9c430d9`  
		Last Modified: Tue, 30 Apr 2019 09:17:03 GMT  
		Size: 172.3 MB (172325104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674ab188a49fc526633e3afbe8e0f21b15893dff210aa0cf209590b4666b1189`  
		Last Modified: Tue, 30 Apr 2019 09:16:40 GMT  
		Size: 4.3 KB (4260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:ad256888558261307daac71ee65a5db7fcce6209fc525d88d233fa861e51dc5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.3 MB (258278278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c543ff30db85e4b8ff7aaf52fcaee8db5d8cfe7ae4ac1ee1b00d45d17dd6bf1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:48 GMT
ADD file:6bf06125d936ccaf67981470df5ef6b9bd5dee3c0ef0e042a448fc60bb02f191 in / 
# Wed, 27 Mar 2019 12:07:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Apr 2019 12:18:42 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 16 Apr 2019 12:18:42 GMT
ENV LANG=C.UTF-8
# Tue, 16 Apr 2019 12:18:44 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Apr 2019 12:18:45 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Apr 2019 12:18:46 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Apr 2019 12:18:46 GMT
ENV JAVA_VERSION=11.0.3
# Tue, 16 Apr 2019 12:18:47 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Tue, 30 Apr 2019 12:05:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Apr 2019 12:14:16 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 30 Apr 2019 12:14:17 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Tue, 30 Apr 2019 12:14:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Apr 2019 12:14:30 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 12:18:38 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Apr 2019 12:18:39 GMT
ENV GOSU_VERSION=1.11
# Tue, 30 Apr 2019 12:18:39 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 30 Apr 2019 12:18:41 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Tue, 30 Apr 2019 12:18:45 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 30 Apr 2019 12:20:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /opt/solr/bin/solr.in.sh &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Tue, 30 Apr 2019 12:20:10 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Tue, 30 Apr 2019 12:20:11 GMT
EXPOSE 8983
# Tue, 30 Apr 2019 12:20:11 GMT
WORKDIR /opt/solr
# Tue, 30 Apr 2019 12:20:12 GMT
USER solr
# Tue, 30 Apr 2019 12:20:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 12:20:12 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:fac132c5d16f670820c8c4ae332bd663c2ff856e9af86b2b23a201db263d851e`  
		Last Modified: Wed, 27 Mar 2019 12:13:15 GMT  
		Size: 19.3 MB (19282442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2888f20f45f0d3a93af43fe90bc4fc53f8cc5b16e2aadd9293c17d5240834576`  
		Last Modified: Wed, 27 Mar 2019 15:18:13 GMT  
		Size: 430.6 KB (430598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf85dac1b034e2ec6ffbaf2cfa86ab5e54a842f7457c8097a39892756e8affee`  
		Last Modified: Tue, 30 Apr 2019 12:08:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93583b177f61dfb70ebe53662d5d7af67fed8a349f14684c2061db1958cea658`  
		Last Modified: Tue, 30 Apr 2019 12:08:31 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfb698c2d61e124ed5aa6afbb2068b6f622731a03de36e2e13ce749a14f0e6de`  
		Last Modified: Tue, 30 Apr 2019 12:08:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad564b2a3c60fe0dd21a63461820ca5064ed7968a49542fb29e3be6415d68158`  
		Last Modified: Tue, 30 Apr 2019 12:10:38 GMT  
		Size: 63.2 MB (63170021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b48d926bebb2904e8727cae7cfe98c35b91816c08defb04a151aef2ad1151f`  
		Last Modified: Tue, 30 Apr 2019 12:36:59 GMT  
		Size: 3.0 MB (2994512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d7ded20a47a197957692c5f09727bc694355af9f7eab8e70f25542f218913f`  
		Last Modified: Tue, 30 Apr 2019 12:38:08 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b688c43bf880ca439e8e461700086902631b9c52ddcbe2f856b9e887d2a81fa5`  
		Last Modified: Tue, 30 Apr 2019 12:38:08 GMT  
		Size: 74.3 KB (74316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d642b6bacbe1c03e5f72948ad7cedc4168e121b5eef1d25dd99483d768193c`  
		Last Modified: Tue, 30 Apr 2019 12:38:33 GMT  
		Size: 172.3 MB (172317298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6bd614be87df6d59a12b54c7783d3b226ee52d5ac285f8e2f7099e50dd822f7`  
		Last Modified: Tue, 30 Apr 2019 12:38:08 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:e26947d89750161e2c55715e7755fc47466970da61146dbd3de5ec50340a05ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.9 MB (264885644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd50852c53894d27943e069bc8927942025d360596482ab6c8e15e37fc5b80c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:46 GMT
ADD file:9db7760cb1c28ef0cd3fa9ee9d0f528d2bcfe80b1c3973daa9f87e30b2047102 in / 
# Wed, 27 Mar 2019 08:47:47 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 19:25:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:25:16 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 19:25:17 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:25:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:25:22 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:25:23 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 09:08:42 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 09:08:43 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 09:16:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:52:09 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:52:10 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:52:11 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Apr 2019 09:24:53 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 09:27:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Apr 2019 09:27:57 GMT
ENV GOSU_VERSION=1.11
# Tue, 30 Apr 2019 09:28:00 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 30 Apr 2019 09:28:05 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Tue, 30 Apr 2019 09:28:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 30 Apr 2019 09:28:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /opt/solr/bin/solr.in.sh &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Tue, 30 Apr 2019 09:28:36 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Tue, 30 Apr 2019 09:28:37 GMT
EXPOSE 8983
# Tue, 30 Apr 2019 09:28:38 GMT
WORKDIR /opt/solr
# Tue, 30 Apr 2019 09:28:38 GMT
USER solr
# Tue, 30 Apr 2019 09:28:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 09:28:40 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:007027d142c80b166a004bc7265c04036b80df438ac408f1a947e05c581b418e`  
		Last Modified: Wed, 27 Mar 2019 08:52:56 GMT  
		Size: 20.3 MB (20340179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b2a3db5fe5bcef92897d12d82e7bf4b1c81832ef030a3036b2cf488ad45373`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 440.9 KB (440897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3107a939efc2ffecd268a5637e3705163c31eab4af1855d8a47e1f21b3abc8c`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ad91712d904c5cc444aaf6ea61774d3b75110c9b2a7b0a320f1c79259189cf`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebe9595e756b55d5fb73915326e01dacd5ece818fe47b430ec90407e006244b`  
		Last Modified: Wed, 27 Mar 2019 19:41:48 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a1673cd7e242690bdefa8565f00f0eadc7c285b12e02b6624aababe1adfc0d`  
		Last Modified: Fri, 05 Apr 2019 09:22:12 GMT  
		Size: 68.6 MB (68603325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507f9459a79d0416be462348797760c1adff10db7306da6aa42b257a039da88e`  
		Last Modified: Tue, 30 Apr 2019 09:44:18 GMT  
		Size: 3.1 MB (3117617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f779cf61ef37ea23b930e33df5b6be32716180a891166a616bc3b1c1d9a5c936`  
		Last Modified: Tue, 30 Apr 2019 09:46:46 GMT  
		Size: 4.3 KB (4333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22aaca01a591975314bcb1bf24391db97dc0ac87717367a75a7cca62af9ffce2`  
		Last Modified: Tue, 30 Apr 2019 09:46:45 GMT  
		Size: 74.2 KB (74244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6da9a45a79bf7f7793c49db2720f8d75ccad8a2627bab9b65f66656c3d4a4d8`  
		Last Modified: Tue, 30 Apr 2019 09:47:40 GMT  
		Size: 172.3 MB (172300218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608a260fa2371d3b465b4e49ec414a390cd1d3b761e9fdc97f3f5ece8c3b3d2c`  
		Last Modified: Tue, 30 Apr 2019 09:46:45 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; 386

```console
$ docker pull solr@sha256:b20d36784d7a5949f123ede1c533e48df08abbc74d700a408151d8a4bf2c6ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281025242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3855f270fb925c58834db8da85f2a5732313263838e20c58a1c4b54166b2c212`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:41 GMT
ADD file:13e40d14dbdd0814b4fb7b2a378757164620517fec383739c87747c27e07d8e7 in / 
# Wed, 27 Mar 2019 10:43:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 17:53:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:53:36 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:53:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:53:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:53:38 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:50:00 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:52:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 12:17:50 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 12:17:50 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 12:17:50 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 12:17:58 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 12:17:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 12:17:58 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 12:17:58 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 12:17:59 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 12:18:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 12:18:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 12:18:18 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 12:18:18 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 12:18:18 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 12:18:18 GMT
USER solr
# Fri, 05 Apr 2019 12:18:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 12:18:19 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a5ba78e1989e52ae238c3f225934c1a2dee4dfaa4667abd6f2e0717b78159472`  
		Last Modified: Wed, 27 Mar 2019 10:49:24 GMT  
		Size: 23.1 MB (23125745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3d7f9eb531082cde488d0aa03b101f3e89fbf5c5a1258cd81277fc760913c1`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 463.5 KB (463546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84397945a3d0c25bcccd7ab1d3c7320834d353502f3fdaaebd58bf1c9bc428a`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84ab93bd8c7dab019374a7c07aa8698315ccb7032b45d41afc48c5288e946d66`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6530ef488aac5e7d903ce6a46a482601846e8fea4c6952f2ccde4bf11a733af9`  
		Last Modified: Wed, 27 Mar 2019 18:29:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3444dd8a7d221d98a1f9b614a114ccdafac633f42fabae0b49394b068397a1e`  
		Last Modified: Fri, 05 Apr 2019 10:55:48 GMT  
		Size: 81.5 MB (81489876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29f8610558ac6ad6294d08dc4632a1f464b82316f51cda95005dd9e3211d823`  
		Last Modified: Fri, 05 Apr 2019 12:21:25 GMT  
		Size: 3.5 MB (3530560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa0fbf9960022e09a765f38056cb1be3ae6dfa571382f91ceef6042acddaef`  
		Last Modified: Fri, 05 Apr 2019 12:21:24 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552dad9760c6aef30c19f1da0b6fd457e9e9edc27ac252fac41fd180d6602fc`  
		Last Modified: Fri, 05 Apr 2019 12:21:24 GMT  
		Size: 74.3 KB (74262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2362eb54212380e771011d4050286866da2ecadb4491c2891000fc486b0e81f6`  
		Last Modified: Fri, 05 Apr 2019 12:21:38 GMT  
		Size: 172.3 MB (172332200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414ae87744a284fe6a4875b6bbce6eddea13bf84c8ece1b474fbfa8f0ac8cd49`  
		Last Modified: Fri, 05 Apr 2019 12:21:24 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:ea883485ea79cf4101db66c8bdcf95723245c6ea574e5fd1b43c34394b2ed39a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264188792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f6a00465851fb1d364213a94b5224bf43a81b38c39946d8e05974ff74079db2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 08:25:17 GMT
ADD file:ef0d89af4ccdb491595dd964213059d7802952b9f452040c4f936f803ae3e3fd in / 
# Wed, 27 Mar 2019 08:25:20 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:38:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:38:09 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:38:13 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:38:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:38:24 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:38:27 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 08:40:14 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 08:40:16 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 08:47:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 09:24:22 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 09:24:25 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 09:24:28 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 30 Apr 2019 10:41:07 GMT
RUN apt-get update &&   apt-get -y install acl dirmngr gpg lsof procps wget &&   rm -rf /var/lib/apt/lists/*
# Tue, 30 Apr 2019 10:48:47 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 30 Apr 2019 10:48:51 GMT
ENV GOSU_VERSION=1.11
# Tue, 30 Apr 2019 10:48:52 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 30 Apr 2019 10:49:00 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Tue, 30 Apr 2019 10:49:08 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 30 Apr 2019 10:50:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   mv "/opt/solr-$SOLR_VERSION" /opt/solr &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   mkdir -p /opt/solr/server/solr/mycores /opt/solr/server/logs /opt/mysolrhome &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /opt/solr/bin/solr.in.sh &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/solr /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:$SOLR_GROUP" /opt/mysolrhome
# Tue, 30 Apr 2019 10:51:03 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Tue, 30 Apr 2019 10:51:09 GMT
EXPOSE 8983
# Tue, 30 Apr 2019 10:51:14 GMT
WORKDIR /opt/solr
# Tue, 30 Apr 2019 10:51:20 GMT
USER solr
# Tue, 30 Apr 2019 10:51:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 30 Apr 2019 10:51:32 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:47457ee2fac27696752b903854c4e4621e3481edc7a34b727f45b4c355de7976`  
		Last Modified: Wed, 27 Mar 2019 08:32:50 GMT  
		Size: 22.8 MB (22751385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d945fa8d0ebb59b7a9080958527a126b684d68ce1af2c32555975da70823c1d6`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 449.8 KB (449831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42bed384a1bc49851ddb4977e776db4695170f1df4be311e3b913425147eee0`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3234b120f694dab250cf6abc76557729027d06c76b1185994f7db77f429cf167`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03655f1b29e38c21f639109a34e5ffccea1be73dd65b73ac84c7be22561c6ee`  
		Last Modified: Wed, 27 Mar 2019 12:54:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c46d93e9ef5ba95d64690f0825cf3f5590e27934421ed4644665ecf585e3739`  
		Last Modified: Fri, 05 Apr 2019 08:52:35 GMT  
		Size: 65.2 MB (65240831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebacdfd26d0262992bd37e53561f1ccf45291fa077a8c3be7b6b90771eef8ac`  
		Last Modified: Tue, 30 Apr 2019 11:19:46 GMT  
		Size: 3.4 MB (3375023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99ad4d39c833cb7cbcf9fa3bd26b3904c1f1646f471de13bdffc44483b72cfb8`  
		Last Modified: Tue, 30 Apr 2019 11:21:24 GMT  
		Size: 4.3 KB (4298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8d4b885583d299da59309f5d895edaa04546f983bae451d2662fd321dbeebf`  
		Last Modified: Tue, 30 Apr 2019 11:21:24 GMT  
		Size: 74.3 KB (74296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4792673104d5261a02eda3817562e8cceebbf982e031ca375bd0850454958780`  
		Last Modified: Tue, 30 Apr 2019 11:21:59 GMT  
		Size: 172.3 MB (172288265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772039e0dea764c341437b26a43951be326f84b0fb337dc382e168da91e2b779`  
		Last Modified: Tue, 30 Apr 2019 11:21:23 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; s390x

```console
$ docker pull solr@sha256:5a168d3a1882e40f9076574bdde1b0c4c3f591b21dbc6e68f906e045fcdcedd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263390289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe161bd54350528c0e1c752c50de32802adafef3526eaa8ed4a1e23c6dca3ffa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:45 GMT
ADD file:bbc08c16057153af2910791402d3a29eb5da11e030d2fc6778644c444142d2ab in / 
# Wed, 27 Mar 2019 11:43:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:24:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:24:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:24:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:24:07 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 11:47:44 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 11:47:45 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 11:50:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 12:37:08 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 05 Apr 2019 12:37:08 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Fri, 05 Apr 2019 12:37:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 05 Apr 2019 12:37:16 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Fri, 05 Apr 2019 12:37:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.1/solr-7.7.1.tgz SOLR_SHA256=4fb85f12af045b28f6cb935b2f3739d59ec61ad1288ffe44c7ede64e614f28c4 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 12:37:17 GMT
ENV GOSU_VERSION=1.11
# Fri, 05 Apr 2019 12:37:17 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 05 Apr 2019 12:37:18 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 05 Apr 2019 12:37:20 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 05 Apr 2019 12:37:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Fri, 05 Apr 2019 12:37:38 GMT
COPY --chown=solr:solrdir:d7b50a21e7d2202ff57b821bec8a769d76b44ca3397a0fbe1fd8c4283d606486 in /opt/docker-solr/scripts 
# Fri, 05 Apr 2019 12:37:38 GMT
EXPOSE 8983
# Fri, 05 Apr 2019 12:37:38 GMT
WORKDIR /opt/solr
# Fri, 05 Apr 2019 12:37:39 GMT
USER solr
# Fri, 05 Apr 2019 12:37:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 05 Apr 2019 12:37:39 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9ce36a197e11ef57ec11f749055a2d2db6113c6b0026d930d3ddbbd86a7ec15b`  
		Last Modified: Wed, 27 Mar 2019 11:46:50 GMT  
		Size: 22.3 MB (22345282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:873fe20cf16e09acaa32a84770546a724019d27f9da4b456666341fadae1ea88`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 465.8 KB (465770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ede3dec1c45a344c8837e8c49e9830fb57cd1ab775fc552499b7c5163d6db4`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe09440de22b01805591eadf2f1240c95731db424b6699d38f21c72edd8f6204`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cca42a3a5352c8608f15abe2b11017cee5385d019762535efd3b95767b7419`  
		Last Modified: Wed, 27 Mar 2019 15:30:36 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312ef422f5c26d80581e00be8531c5f68189fdb71d998152e25972db0bc0b32d`  
		Last Modified: Fri, 05 Apr 2019 11:54:23 GMT  
		Size: 64.7 MB (64746224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d86a05f7db17facf017d5d699b60f77e8af98cf6a9b9f22d7624b74a5aac98`  
		Last Modified: Fri, 05 Apr 2019 12:40:56 GMT  
		Size: 3.4 MB (3395364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66b310192a63fbe0b9cc7b5674aab51e90583d3e63c04ab02e794cc969a95f96`  
		Last Modified: Fri, 05 Apr 2019 12:40:55 GMT  
		Size: 4.3 KB (4332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebee031d0e141e629a1d6859cfe7356a7889bcc32483f3e9ba92ef4726f47e7`  
		Last Modified: Fri, 05 Apr 2019 12:40:55 GMT  
		Size: 74.3 KB (74277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8194c000d738eeae3eb37f362ea758cfa6d46f261cb7b74f03ce9e4dac38425`  
		Last Modified: Fri, 05 Apr 2019 12:41:09 GMT  
		Size: 172.4 MB (172354206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f497fc0a46d7e6bfca293ce583ae97b961dab1e5ddc0295e57dd3ce3aefa8aea`  
		Last Modified: Fri, 05 Apr 2019 12:40:55 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

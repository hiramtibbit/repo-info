## `solr:slim`

```console
$ docker pull solr@sha256:73b35c089aa9c3f3a4331bc744a2379c6f4c7a8bc3a93dd37d5dc0d0c9ebf92d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:7c3b0a0c3be13f70f87757082bcbd28e4d4253c9530e07c46d58a3735b9f9a17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276516882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfa83349280ea841d6ea325c6059e207fff2bdd965d1bb6a0a441a3c2903d762`
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
# Mon, 29 Apr 2019 17:41:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=8.0.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/8.0.0/solr-8.0.0.tgz SOLR_SHA256=0e6392d3b980ab917c731b054101aafcebceacc0e5063cb1e305aeeaec911d12 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml
# Mon, 29 Apr 2019 17:41:01 GMT
ENV GOSU_VERSION=1.11
# Mon, 29 Apr 2019 17:41:01 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 29 Apr 2019 17:41:02 GMT
RUN groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP" &&   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER"
# Mon, 29 Apr 2019 17:41:03 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 29 Apr 2019 17:41:19 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   pkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$pkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   echo "downloading $SOLR_URL" &&   wget -nv "$SOLR_URL" -O "/opt/solr-$SOLR_VERSION.tgz" &&   echo "downloading $SOLR_URL.asc" &&   wget -nv "$SOLR_URL.asc" -O "/opt/solr-$SOLR_VERSION.tgz.asc" &&   echo "$SOLR_SHA256 */opt/solr-$SOLR_VERSION.tgz" | sha256sum -c - &&   (>&2 ls -l "/opt/solr-$SOLR_VERSION.tgz" "/opt/solr-$SOLR_VERSION.tgz.asc") &&   gpg --batch --verify "/opt/solr-$SOLR_VERSION.tgz.asc" "/opt/solr-$SOLR_VERSION.tgz" &&   tar -C /opt --extract --file "/opt/solr-$SOLR_VERSION.tgz" &&   (cd /opt && ln -s "solr-$SOLR_VERSION" solr) &&   rm "/opt/solr-$SOLR_VERSION.tgz"* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R 0:0 "/opt/solr-$SOLR_VERSION" &&   find "/opt/solr-$SOLR_VERSION" -type d -print0 | xargs -0 chmod 0755 &&   find "/opt/solr-$SOLR_VERSION" -type f -print0 | xargs -0 chmod 0644 &&   chmod -R 0755 "/opt/solr-$SOLR_VERSION/bin" &&   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh &&   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig &&   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig &&   chown root:0 /etc/default/solr.in.sh &&   chmod 0664 /etc/default/solr.in.sh &&   mkdir -p /var/solr/data /var/solr/logs &&   (cd /opt/solr/server/solr && cp solr.xml zoo.cfg /var/solr/data/) &&   cp /opt/solr/server/resources/log4j2.xml /var/solr/log4j2.xml &&   find /var/solr -type d -print0 | xargs -0 chmod 0770 &&   find /var/solr -type f -print0 | xargs -0 chmod 0660 &&   sed -i -e "s/\"\$(whoami)\" == \"root\"/\$(id -u) == 0/" /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e "/-Dsolr.clustering.enabled=true/ a SOLR_OPTS=\"\$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60\"" /etc/default/solr.in.sh &&   chown -R "0:0" /opt/solr-$SOLR_VERSION /docker-entrypoint-initdb.d /opt/docker-solr &&   chown -R "$SOLR_USER:0" /var/solr
# Mon, 29 Apr 2019 17:41:19 GMT
COPY --chown=0:0dir:9826d1d133e0629ced7a9dfcb2401e9d607866337f15d2bdeecc49d308c6dfde in /opt/docker-solr/scripts 
# Mon, 29 Apr 2019 17:41:20 GMT
VOLUME [/var/solr]
# Mon, 29 Apr 2019 17:41:20 GMT
EXPOSE 8983
# Mon, 29 Apr 2019 17:41:20 GMT
WORKDIR /opt/solr
# Mon, 29 Apr 2019 17:41:21 GMT
USER solr
# Mon, 29 Apr 2019 17:41:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 29 Apr 2019 17:41:21 GMT
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
	-	`sha256:9f33ad0460f54955ed6d7e22ef003b19b36394ce3b9a007f22115100c840024c`  
		Last Modified: Mon, 29 Apr 2019 17:50:20 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933dbb610427204eecd2b288bd4741fc447ceb6cd360084d3ce0a3bdea9c5478`  
		Last Modified: Mon, 29 Apr 2019 17:50:19 GMT  
		Size: 75.4 KB (75370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1af9195f414febb92397036d78f987408cee280e018a2fa7766f966d718f919`  
		Last Modified: Mon, 29 Apr 2019 17:50:33 GMT  
		Size: 172.9 MB (172934495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21350cccf895b54f4919b787aecd3caa3211398b1a12c3d158024b3f54216cb6`  
		Last Modified: Mon, 29 Apr 2019 17:50:19 GMT  
		Size: 3.8 KB (3809 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

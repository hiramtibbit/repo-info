## `solr:slim`

```console
$ docker pull solr@sha256:7dddbadd4c4bb19e9a37bfc43dd448d8acea5b65709e255e56045510720c4f3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:b6cac57bab3a71db10c12fcd964862b5e26bb6c18d95be17f34801a7172c2f7d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.9 MB (275880615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e5b96b92556ef445b8d474b96de1d6fab45381332ec87c902cf22fcf4d284d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:25:35 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 06 Feb 2019 08:25:35 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:25:36 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:25:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 06 Feb 2019 08:25:38 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 06 Feb 2019 08:28:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 12 Feb 2019 21:47:02 GMT
LABEL maintainer=Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 12 Feb 2019 21:47:03 GMT
LABEL repository=https://github.com/docker-solr/docker-solr
# Tue, 12 Feb 2019 21:47:03 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 12 Feb 2019 21:47:11 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg dirmngr &&   rm -rf /var/lib/apt/lists/*
# Tue, 12 Feb 2019 21:47:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.7.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.7.0/solr-7.7.0.tgz SOLR_SHA256=ad9eaa29449701fcabad497cc5f0506f8a8f76da714dc4a5429a549fcac24dc7 SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Feb 2019 21:47:12 GMT
ENV GOSU_VERSION=1.11
# Tue, 12 Feb 2019 21:47:13 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 12 Feb 2019 21:47:15 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 12 Feb 2019 21:47:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 12 Feb 2019 21:47:32 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome /docker-entrypoint-initdb.d /opt/docker-solr
# Tue, 12 Feb 2019 21:47:32 GMT
COPY --chown=solr:solrdir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 12 Feb 2019 21:47:32 GMT
EXPOSE 8983
# Tue, 12 Feb 2019 21:47:33 GMT
WORKDIR /opt/solr
# Tue, 12 Feb 2019 21:47:33 GMT
USER solr
# Tue, 12 Feb 2019 21:47:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Feb 2019 21:47:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:187061ad2a2978b8c52f307ede3a915e9134a3bb8f6ea795e67ad31524381cdd`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 454.9 KB (454874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3e07dee1e7e6bfded60c645d3d9e45bcebe2f8b44e74bf72e08dc1e4fb8c43a`  
		Last Modified: Wed, 06 Feb 2019 08:51:42 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9703bd99cc4e2d2c93c7346046d96e5ca406f66233267e835c3bee7591a8b092`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f0990bb7f893767d87d3ccbed0f56dbfe766648ac7231b2c36b1a9a4d109a35`  
		Last Modified: Wed, 06 Feb 2019 08:51:41 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8143d8fede809da5eb5a9f62c7b1eb6dcdff7251d06f38b681a3bd292a9cf5e`  
		Last Modified: Wed, 06 Feb 2019 08:53:08 GMT  
		Size: 77.1 MB (77134485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65d7529768869d831a5bbc5ddf2933ab812a2032a7c7d7beb13576b7f68d5e7b`  
		Last Modified: Tue, 12 Feb 2019 21:58:30 GMT  
		Size: 3.3 MB (3347664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d40312399b4d8adb8fa55d77e5a66488779d21aa245df80afe3e8aa71e32bce`  
		Last Modified: Tue, 12 Feb 2019 21:58:29 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd763d7bde7ae6d7984ce6f89df206da6343180f57ecc7df0197b1e86976ff6`  
		Last Modified: Tue, 12 Feb 2019 21:58:29 GMT  
		Size: 75.3 KB (75331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6605a51a4b024672458cbb614e9c917760e443241f963f962b60a68ebe37229`  
		Last Modified: Tue, 12 Feb 2019 21:58:40 GMT  
		Size: 172.4 MB (172358849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a96c66d2ec59f104c585c72f908b08c44fbed647dcd173dac3294089343e7113`  
		Last Modified: Tue, 12 Feb 2019 21:58:29 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

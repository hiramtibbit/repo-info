## `solr:latest`

```console
$ docker pull solr@sha256:8c76512853c1688ee5fbb1101824137a5d1e01eff667ecdd8c0d69157aaa8ca6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:b1ff58a2eed0ca64bd2895bbfa5f40bb90f5ed3850ef9b9dbcef6d7bd3d0737c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.5 MB (415523657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d2a57581d6936e7c85d90fae0c35acb209db15bbed8328c9539059dc00cf242`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Sat, 05 May 2018 04:59:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 04:59:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:00:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:00:25 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 08:00:26 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 08:05:40 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 08:05:41 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Mon, 14 May 2018 22:39:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 02:48:36 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 02:48:37 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 02:48:45 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:51:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 May 2018 19:51:40 GMT
ENV GOSU_VERSION=1.10
# Wed, 16 May 2018 19:51:40 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 16 May 2018 19:51:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 16 May 2018 19:51:43 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 16 May 2018 19:52:00 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Wed, 16 May 2018 19:52:01 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Wed, 16 May 2018 19:52:01 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Wed, 16 May 2018 19:52:02 GMT
EXPOSE 8983/tcp
# Wed, 16 May 2018 19:52:02 GMT
WORKDIR /opt/solr
# Wed, 16 May 2018 19:52:02 GMT
USER [solr]
# Wed, 16 May 2018 19:52:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 May 2018 19:52:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af7c2bd543ba42600867217cd2f676eae7c4c38a8ba8a3cf8edce489534cfe`  
		Last Modified: Sat, 05 May 2018 05:02:11 GMT  
		Size: 8.6 MB (8642335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b5286ee17a380311ffd9b7f82c5c957c59358a2103c0a1cc96c0be7eb91528f`  
		Last Modified: Sat, 05 May 2018 05:02:10 GMT  
		Size: 9.5 MB (9459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a6f948f766f58ed5e0b5c75b9b6338f3a6a7ee3ac64fe98c946b196b1a92515`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 856.7 KB (856710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ca5a1068e6437056cf1b53c145bb93231b122e13be7e8760336394bfb30a32`  
		Last Modified: Sat, 05 May 2018 08:08:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976ec9b55775a68c5468eec7fb19a0b965f06d13f14a7a3461d08c061dbde965`  
		Last Modified: Sat, 05 May 2018 08:15:21 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd825028dbf00e0dfcf8fdf8f1919a6d66608c63f442c816a2949e143400ebb8`  
		Last Modified: Mon, 14 May 2018 23:09:50 GMT  
		Size: 183.3 MB (183341014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec4724db427227ab8dd912d5ef057872d4a1a5f9288d931923ce0b344ccbd424`  
		Last Modified: Tue, 15 May 2018 02:54:10 GMT  
		Size: 2.1 MB (2124511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff0718c53616f8bd977aa5d37970de7b93a74bf2c6dfb366a785dde86761f8e`  
		Last Modified: Wed, 16 May 2018 20:00:30 GMT  
		Size: 5.1 KB (5078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af7ca3d60e35b25f8d736f7f9dc0c1fb677f2ba71f3d127914a372f8f9d9f3e`  
		Last Modified: Wed, 16 May 2018 20:00:30 GMT  
		Size: 73.3 KB (73317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:004d129597adc87813a9bcefea109be289f78feedddb98bc56f1797facbe2be0`  
		Last Modified: Wed, 16 May 2018 20:00:46 GMT  
		Size: 162.7 MB (162708738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7accedc26940bb30bb1bfdca21012b94a2241b013fa88396c49e1753f7ae0f76`  
		Last Modified: Wed, 16 May 2018 20:00:29 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad475b93606983c72af2caec02c750fbdba8e6600f62e6bdf960f88c3666ea49`  
		Last Modified: Wed, 16 May 2018 20:00:30 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

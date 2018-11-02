## `solr:latest`

```console
$ docker pull solr@sha256:4e8eada6759eb3e322eb8283fac0698e9be09eb40ac7e95cbe763fda35268528
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
$ docker pull solr@sha256:3e81ab2dc437bdc081bb6c86a3dd125d5ad65e5c3e7e73246e8344c1d876eb2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.8 MB (418837746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6988c7ae8de83da724041335ebf705f3c09bc466959a559770c24bf55d991f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 05:18:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:18:46 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:18:47 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:23:09 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:23:09 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:23:10 GMT
ENV JAVA_VERSION=10.0.2
# Wed, 24 Oct 2018 22:29:50 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Wed, 24 Oct 2018 22:30:38 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 00:14:46 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 00:14:47 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 00:14:52 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 00:14:52 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 00:14:53 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 00:14:53 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 00:14:54 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 00:14:55 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 00:15:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Thu, 01 Nov 2018 22:20:12 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Thu, 01 Nov 2018 22:20:13 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 01 Nov 2018 22:20:13 GMT
EXPOSE 8983/tcp
# Thu, 01 Nov 2018 22:20:14 GMT
WORKDIR /opt/solr
# Thu, 01 Nov 2018 22:20:14 GMT
USER [solr]
# Thu, 01 Nov 2018 22:20:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 01 Nov 2018 22:20:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7961e608858b28edeca0c7c0088bf0a9f4e7d451d82f6e673e1538506a86f706`  
		Last Modified: Tue, 16 Oct 2018 05:40:58 GMT  
		Size: 847.9 KB (847862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c08b11391f09f57b188e77665b517a3682a810faded1984ca4c765f68852d3a7`  
		Last Modified: Tue, 16 Oct 2018 05:40:57 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315ba632da3b96271c414cb63b1f95aa46c62efc726cb37d2527c26fa23b3a39`  
		Last Modified: Tue, 16 Oct 2018 05:50:06 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2f58dc3296af38ccda1c66575a6dc50505949fca5145f79e60f505c21b82fc`  
		Last Modified: Wed, 24 Oct 2018 22:40:49 GMT  
		Size: 181.9 MB (181863058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695e2ed472923d2d9e3709f1ed4a59fd7f35a0af1b47663135c53941f203ae27`  
		Last Modified: Thu, 25 Oct 2018 00:29:34 GMT  
		Size: 736.1 KB (736057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c992aa2a9a4772a4eeb5230b611893e9edf1580921ba8d5d4f110379826580`  
		Last Modified: Thu, 25 Oct 2018 00:29:34 GMT  
		Size: 5.1 KB (5131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb5f86406ef46a2aec3f83b94505e0aa891b9415f41b44304bd9546b85252d9`  
		Last Modified: Thu, 25 Oct 2018 00:29:33 GMT  
		Size: 75.4 KB (75443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02940d8b68d5020c22c877f85db32a02a165c5f27d44d1c26f3fdf094990bbdb`  
		Last Modified: Thu, 25 Oct 2018 00:29:57 GMT  
		Size: 169.0 MB (169047651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a93705ccc49951f71cb5dcca33f2ba697d3f197ebb9399288e058321ed018914`  
		Last Modified: Thu, 01 Nov 2018 22:34:43 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f95999763ad266c189ba2c83f0974e13e4b698ecad9ba685ab354160abe040`  
		Last Modified: Thu, 01 Nov 2018 22:34:43 GMT  
		Size: 4.2 KB (4230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v5

```console
$ docker pull solr@sha256:9bd2b7d431e0586bed2290859c91aa24c591167a12956e579a4c0a6ddd30b43e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **397.1 MB (397074857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6de0b78415600af1c53e1d008848606564a4946e4af96e205957034a5248254`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:38:08 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:38:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:43:18 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:43:18 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 12:43:19 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 08:53:18 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 08:54:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 09:29:22 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 09:29:22 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 09:29:32 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 09:29:33 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 09:29:33 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 09:29:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 09:29:35 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 09:29:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 09:31:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Fri, 02 Nov 2018 08:50:19 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Fri, 02 Nov 2018 08:50:21 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 02 Nov 2018 08:50:21 GMT
EXPOSE 8983/tcp
# Fri, 02 Nov 2018 08:50:22 GMT
WORKDIR /opt/solr
# Fri, 02 Nov 2018 08:50:22 GMT
USER [solr]
# Fri, 02 Nov 2018 08:50:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 08:50:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2861c2f237a736a54bd67307893eb9322b8632c568acf59eba378534bad842eb`  
		Last Modified: Tue, 16 Oct 2018 12:51:30 GMT  
		Size: 839.9 KB (839918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb6bfe2737d9f7652d7d79a295a847ceb301bab438dfe84881ace90fabcbef8`  
		Last Modified: Tue, 16 Oct 2018 12:51:30 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf3175a60d6ea1ebed6078d5bcfc2060a7d77e33d0e691e373bafaddd4bbb34`  
		Last Modified: Tue, 16 Oct 2018 12:54:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70aa5359ed4526924cde676dabc11def3a72d99bf18327dbad29988543f7d6a4`  
		Last Modified: Thu, 25 Oct 2018 09:01:17 GMT  
		Size: 163.1 MB (163093598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa6f20fad8cba0ab45ac0e6bd37aeee8d08823ed06bd97bd7edff1d63894a49`  
		Last Modified: Thu, 25 Oct 2018 09:41:18 GMT  
		Size: 742.8 KB (742761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7179fe9ee6d8db5058375152bb62d8abd8fe165eb2c4ecf107b056bf4b8e4240`  
		Last Modified: Thu, 25 Oct 2018 09:41:17 GMT  
		Size: 5.1 KB (5056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb114d652b0dc9a06423a62b758f06f3667fc502e556a30f4a5d8723da2daa8a`  
		Last Modified: Thu, 25 Oct 2018 09:41:17 GMT  
		Size: 75.5 KB (75506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04ef855e6bd16543c7e9d6216ff71e80db8ed67319474ce1e962e61cf74b2d2e`  
		Last Modified: Thu, 25 Oct 2018 09:41:38 GMT  
		Size: 169.0 MB (169038158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f2893ffd4374b0ddc049bc8154abee86c057b539c1dc3b3e5d4d98f341e686d`  
		Last Modified: Fri, 02 Nov 2018 08:54:52 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ea511a8a32f653cda4ba7ab62ae42f6830dadee2fbdf991722eac869ddeb30`  
		Last Modified: Fri, 02 Nov 2018 08:54:52 GMT  
		Size: 4.2 KB (4233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm variant v7

```console
$ docker pull solr@sha256:b35618c6ab5ac87ed265a3f70d014eddfe1a77c2b3ef01cefe144671aa9bce60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.7 MB (391650038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edd872631b527e855332fba4ea8aa8e306ed264f95848c4484217d1b890a146e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 12:03:01 GMT
ADD file:3d47e4eafb1700975274b7c68ee1bd156e101e5252d990f75937d97a90f7b613 in / 
# Tue, 16 Oct 2018 12:03:02 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:56:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:18:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:29 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:23:41 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:23:41 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:23:41 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 12:02:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 12:03:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 12:37:40 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 12:37:40 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 12:37:48 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 12:37:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 12:37:49 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 12:37:49 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 12:37:51 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 12:37:53 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 12:40:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Thu, 25 Oct 2018 12:40:25 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 12:40:30 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 25 Oct 2018 12:40:34 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 12:40:35 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 12:40:35 GMT
USER [solr]
# Thu, 25 Oct 2018 12:40:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 12:40:41 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4760d7874360cf16afc72e3ed07e58414d51cccfc8023f0bf68562c82bc5c471`  
		Last Modified: Tue, 16 Oct 2018 12:14:27 GMT  
		Size: 44.7 MB (44685243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf3556848531bb0de55219dfc3b1b3ead9022491a581f3743bb1deed1be8020`  
		Last Modified: Tue, 16 Oct 2018 13:08:04 GMT  
		Size: 6.7 MB (6695969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff12a4449485ceb38e16a1bd08c8ddf2cb0f1ab093e8bf728aa26f5a57eb3143`  
		Last Modified: Tue, 16 Oct 2018 13:08:05 GMT  
		Size: 9.1 MB (9147432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca1c43848bd1419b2156c71362a74b4dc7ebd7289c4913fda31be393ce82263`  
		Last Modified: Tue, 16 Oct 2018 13:38:41 GMT  
		Size: 822.7 KB (822681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a83bf0dc75c96c199c28d0ef189e06313ae3eed9d73c575d6baca1d11ed8da5c`  
		Last Modified: Tue, 16 Oct 2018 13:38:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd4233ee68b19775bf350dce6d90d041ce602f74fdfb835cf28484c5af0d9d2`  
		Last Modified: Tue, 16 Oct 2018 13:42:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66600f72d5891600afb7a630f57f99c569f39ec8d034a41b326844a7067cbf2d`  
		Last Modified: Thu, 25 Oct 2018 12:19:19 GMT  
		Size: 160.5 MB (160452076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb51fe88e121aac5423f78a85e74fc65fbc562e2acdd9b0d61e3697e762aeb9`  
		Last Modified: Thu, 25 Oct 2018 12:54:16 GMT  
		Size: 734.8 KB (734788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f11c917bbe072360682ebf99e9876ed03f009303b1f6f25fd1685ddf2236c42`  
		Last Modified: Thu, 25 Oct 2018 12:54:15 GMT  
		Size: 5.1 KB (5055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9bf3efcde58cc523e8ba23633aaed43990ad60a7670881af90f0860edc99cd`  
		Last Modified: Thu, 25 Oct 2018 12:54:14 GMT  
		Size: 75.5 KB (75495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5fa092d036010d362a5d978757548b14c6ad286379a368841cb5c32e318275f`  
		Last Modified: Thu, 25 Oct 2018 12:54:35 GMT  
		Size: 169.0 MB (169022444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01275c326be15d50813cfddd1537180863d5822862b56d2d0f603beac77a4f7b`  
		Last Modified: Thu, 25 Oct 2018 12:54:14 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47837dd2691e2a53243162e02d07e5904e67b90977d510857ccda80f6fddc43a`  
		Last Modified: Thu, 25 Oct 2018 12:54:14 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:0b05676c335ded3f2b3f0950017b0e2eeefa7dd1145f7cba903558e5799e09a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **404.0 MB (403966187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af606c23886e68c1f997598c41b324fd2573959a80c04de9fcca873333d4cd03`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:25 GMT
ADD file:993a36018778e74ae6ce1afa2ba4377c60bb69d360987bc158b9081037ec8587 in / 
# Tue, 16 Oct 2018 08:41:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:50:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:43:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:43:54 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 21:43:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 21:56:21 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 21:56:22 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 21:56:24 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 09:08:24 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 09:14:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 10:48:49 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 10:48:50 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 10:49:04 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 10:49:04 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 10:49:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 10:49:06 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 10:49:09 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 10:49:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 10:50:54 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Fri, 02 Nov 2018 09:28:29 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Fri, 02 Nov 2018 09:28:33 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 02 Nov 2018 09:28:34 GMT
EXPOSE 8983/tcp
# Fri, 02 Nov 2018 09:28:36 GMT
WORKDIR /opt/solr
# Fri, 02 Nov 2018 09:28:37 GMT
USER [solr]
# Fri, 02 Nov 2018 09:28:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 09:28:39 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:157e3bb7825ebf937e61c4c02ade571002c5e3384dd3ae81d0832ee2d2619b06`  
		Last Modified: Tue, 16 Oct 2018 08:47:21 GMT  
		Size: 47.5 MB (47450464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f8de04214fdc4137f7d41d3599d88cf4c390e58bb76896eae9237f093061c`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 7.2 MB (7224934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deb5de10153c14c4ffdf7b58fb5870696269f775b23af4750ab252a31b2fbd1`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 9.8 MB (9760024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:def4b1551c05684ced15338acd1fdab72983fb1cc9acf1e1592548e413b518d0`  
		Last Modified: Tue, 16 Oct 2018 22:18:27 GMT  
		Size: 834.6 KB (834606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806a9093490d028108ebd6ca540f1f578bdc176a62081a501d000c7995467a92`  
		Last Modified: Tue, 16 Oct 2018 22:18:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3aea4c5ba8dfee9d5ebe9829e633b13c6199ebff4c3c87cc3d87efce84c2753`  
		Last Modified: Tue, 16 Oct 2018 22:22:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c2261758438d389040b1740acb91dd05ac97655925b80f507d7de3ede2eb5ec`  
		Last Modified: Thu, 25 Oct 2018 09:27:34 GMT  
		Size: 168.9 MB (168858672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5c0198232a863cbee2e2cef6a5a2bafb60165297e07f59273a99e19c2a7c830`  
		Last Modified: Thu, 25 Oct 2018 11:12:19 GMT  
		Size: 732.5 KB (732488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5cc3e84b12b5a352c895405be113aa1451b60faacaa7051024a99aff7cb255d`  
		Last Modified: Thu, 25 Oct 2018 11:12:16 GMT  
		Size: 5.2 KB (5165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb945fa5dc9631591c3843e776ed6f615ac3dccf5d34d2e5cf769080db52ebf3`  
		Last Modified: Thu, 25 Oct 2018 11:12:17 GMT  
		Size: 75.5 KB (75470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f8684fb280b4b7bbb111bf0b72293342794af2b5f85e69fc35ca5a39cef8596`  
		Last Modified: Thu, 25 Oct 2018 11:12:39 GMT  
		Size: 169.0 MB (169015536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40c8f83ebb15739edad6bbe59ace6c7b40f288c7c41de8dcf1d89dd06b6eab24`  
		Last Modified: Fri, 02 Nov 2018 09:49:00 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8757faf5167d18e86f1fa04e781964c0b336ef648382df842f85c6bf97bcbfc8`  
		Last Modified: Fri, 02 Nov 2018 09:49:01 GMT  
		Size: 4.2 KB (4231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; 386

```console
$ docker pull solr@sha256:5be0f3b1b826d0f08ffed1e81abd9bc01bb639c1d879dce78bee1e2a48dec38c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **428.8 MB (428757547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d19bdce9e816949aded9a6d943b206f5edefb0f2be3775f34892cac7f29bcd3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 10:45:35 GMT
ADD file:6801190ad21f3efeeeeb6ca1473d8f32e41d2ba5324c620bc949df696e4b1cf4 in / 
# Tue, 16 Oct 2018 10:45:35 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:27:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:27:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 17 Oct 2018 03:31:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 03:31:00 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 03:31:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 17 Oct 2018 03:34:12 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 17 Oct 2018 03:34:12 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 17 Oct 2018 03:34:13 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 10:59:56 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 11:01:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 12:45:33 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 12:45:33 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 12:45:39 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 12:45:40 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 12:45:40 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 12:45:40 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 12:45:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 12:45:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 12:45:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Thu, 25 Oct 2018 12:45:59 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 12:45:59 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 25 Oct 2018 12:45:59 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 12:46:00 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 12:46:00 GMT
USER [solr]
# Thu, 25 Oct 2018 12:46:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 12:46:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c11ca5589af8bf436bc7393ae2e24b1f4f170ca31b4b1cf385603848d56fc658`  
		Last Modified: Tue, 16 Oct 2018 11:01:43 GMT  
		Size: 49.8 MB (49800443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bbac0b7c48bd1c965e778cd92ef67b0a8c964b24b4d5413a02cafb89484dd63`  
		Last Modified: Tue, 16 Oct 2018 21:43:04 GMT  
		Size: 7.5 MB (7515489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31bafc0fad38f944f7dc68ad4811c9a1cfc35ddef6a3f2b649299172d7a4536`  
		Last Modified: Tue, 16 Oct 2018 21:43:04 GMT  
		Size: 10.1 MB (10109001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfb9474cd99f3a5f36f6aab32f82371b0b28a8b5a655051d0a94e21d9d127b3`  
		Last Modified: Wed, 17 Oct 2018 03:44:07 GMT  
		Size: 855.7 KB (855674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec9559832b5c6960e09a7fdfae9a5a8897fe5a0821ececae87649eb7bdc09365`  
		Last Modified: Wed, 17 Oct 2018 03:44:07 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9bf49d61ad33fd60c61fdbb50f110a0779300a6c2b85fc62eafd6a2b2034b4`  
		Last Modified: Wed, 17 Oct 2018 03:47:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d232849ad30d1c75e33f8911ebcb95e61ad1a539c2760b1d5eb672bb05e16d3`  
		Last Modified: Thu, 25 Oct 2018 11:09:40 GMT  
		Size: 190.6 MB (190622868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f268749f998a4e75baf80e8d7282eaf1ffe0daa625954d550ee7eeece8fccb3d`  
		Last Modified: Thu, 25 Oct 2018 12:53:31 GMT  
		Size: 737.3 KB (737310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deb30f95ace3d8f7902c597e6c0c007c759e5d30ddb9e34c4c64a865c3b829ac`  
		Last Modified: Thu, 25 Oct 2018 12:53:29 GMT  
		Size: 5.1 KB (5051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a003be2f08cf9d2133ba91aa966d661bc09a0a3fff45901e130c1aa7be204ee`  
		Last Modified: Thu, 25 Oct 2018 12:53:29 GMT  
		Size: 75.4 KB (75445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2c052e14bfcefe1335321538819269e04ddd1fa8b98558016f7c457ad408be`  
		Last Modified: Thu, 25 Oct 2018 12:53:43 GMT  
		Size: 169.0 MB (169027443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b251971292f209f67242b9bf2bd73c5eb2f8fe6bf9a9ad6830adee0932c8084`  
		Last Modified: Thu, 25 Oct 2018 12:53:29 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa13421115b9bb08686225ff327527dab2b57785d44276718f43e9c076492fb`  
		Last Modified: Thu, 25 Oct 2018 12:53:30 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:0d7d13dafc0768dff64e7769170eeedfe0929a0ac49eb32571afe2eac8e5a3cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **418.7 MB (418684412 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c90b16afca866416413d3d0151894060a850d89c4bd88f706f48582d810ba66`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 14:46:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 14:46:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 14:46:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 15:01:18 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 15:01:19 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 15:01:21 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 08:40:37 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 08:44:15 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 09:48:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 09:48:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 09:48:32 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 09:48:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 09:48:35 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 09:48:36 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 09:48:38 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 09:48:41 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 09:50:08 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Fri, 02 Nov 2018 09:01:16 GMT
COPY dir:55323bf0f4306846d7bcff231c3fed74feb9ae0e6ecf481ba8a6fc245395b6a4 in /opt/docker-solr/scripts 
# Fri, 02 Nov 2018 09:01:20 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Fri, 02 Nov 2018 09:01:21 GMT
EXPOSE 8983/tcp
# Fri, 02 Nov 2018 09:01:21 GMT
WORKDIR /opt/solr
# Fri, 02 Nov 2018 09:01:22 GMT
USER [solr]
# Fri, 02 Nov 2018 09:01:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Nov 2018 09:01:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e0bc67742709e1248756b36b6a302efc9d1dba0d54e4e7b66f2d8e18fad3a99`  
		Last Modified: Tue, 16 Oct 2018 15:25:11 GMT  
		Size: 846.0 KB (846049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c185c544b64cfcb5380edc1dd6f8e52afabed39252705797ca9e3c35ce9ac7c`  
		Last Modified: Tue, 16 Oct 2018 15:25:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba948a3eb1c9b2b614d0864f4d0ae17cd94c1e99e78c79ea40826ba880231f6c`  
		Last Modified: Tue, 16 Oct 2018 15:30:33 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c677a4004386ab960e3c719dd41aa28742fe6524a661f8247724bc1991a365`  
		Last Modified: Thu, 25 Oct 2018 08:54:02 GMT  
		Size: 177.6 MB (177588697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e78947b53ad503dd1ad92a65ad662b42390181a6928e2f4231b5d4b789b036f`  
		Last Modified: Thu, 25 Oct 2018 10:07:32 GMT  
		Size: 732.3 KB (732256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c7a088be32607d49e06e2d18c02f98b278be087a53ec5033105460db1c363f`  
		Last Modified: Thu, 25 Oct 2018 10:07:30 GMT  
		Size: 5.1 KB (5128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686658c338c6076e5518d982e431abf8b16cd79c19b5f263466a696a70fd4e2e`  
		Last Modified: Thu, 25 Oct 2018 10:07:30 GMT  
		Size: 75.5 KB (75496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca4324b3d1b010d79662cc52f1ee529047306bcf52465d0e25bf5835ab189e0b`  
		Last Modified: Thu, 25 Oct 2018 10:07:49 GMT  
		Size: 169.0 MB (169016539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:825639fb85c99600961ffa3d7dd2a3dfb2fb75b1bfcf1a3ed215d47677c96cc7`  
		Last Modified: Fri, 02 Nov 2018 09:15:39 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ddbaf6d28d0ed5e30c335ae97ba21d0077f28a23e9db54ca4e0aeb26fd5d046`  
		Last Modified: Fri, 02 Nov 2018 09:15:39 GMT  
		Size: 4.2 KB (4232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:1110437ce9f5fd608ad7289cfcb56446aaedf2c38b1c89bfe894ff19a513a1bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380659499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34dba1dc72ca5fb0eb7ca99fe14048efb631497c209ac4b97e54e3d265142a09`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:58 GMT
ADD file:c2788418bf37902fd1afb90f8c09580137baf257270ad310c93f4617b2910c5c in / 
# Tue, 16 Oct 2018 11:41:58 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 13:01:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:01:59 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:01:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 13:04:05 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 13:04:05 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 13:04:05 GMT
ENV JAVA_VERSION=10.0.2
# Thu, 25 Oct 2018 11:49:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-2
# Thu, 25 Oct 2018 11:50:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 25 Oct 2018 12:45:24 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 25 Oct 2018 12:45:24 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 25 Oct 2018 12:45:29 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 25 Oct 2018 12:45:29 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 12:45:29 GMT
ENV GOSU_VERSION=1.10
# Thu, 25 Oct 2018 12:45:29 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 25 Oct 2018 12:45:30 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 25 Oct 2018 12:45:31 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 25 Oct 2018 12:45:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr /opt/mysolrhome
# Thu, 25 Oct 2018 12:45:42 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 25 Oct 2018 12:45:43 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr
# Thu, 25 Oct 2018 12:45:43 GMT
EXPOSE 8983/tcp
# Thu, 25 Oct 2018 12:45:43 GMT
WORKDIR /opt/solr
# Thu, 25 Oct 2018 12:45:44 GMT
USER [solr]
# Thu, 25 Oct 2018 12:45:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Oct 2018 12:45:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3d678438ae7450e08efed3c628d6a7e353e585928d4dfe02330f09708b274772`  
		Last Modified: Tue, 16 Oct 2018 11:44:43 GMT  
		Size: 47.7 MB (47695841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370423f265313c06fe7dd635c4b99d81682ced500c2b77a849335c6f0d80cc04`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 7.0 MB (7035166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeca24a03568efca643ee17996da4af2979d3da4313f8c2b884ffa852c56204`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 9.7 MB (9670377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256ad90c7474b5de835e3ab64dd8c8dca01d9691e402f0f46d9dda0488fb7dd3`  
		Last Modified: Tue, 16 Oct 2018 13:08:34 GMT  
		Size: 856.8 KB (856842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a5854269e98a3a87d6f9c36043fc6855b5b395fa7b410e89b424646e03e3df`  
		Last Modified: Tue, 16 Oct 2018 13:08:34 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c250692eddb4655d58016dc0545ce28510cd37618bcb732bdb06719dc32ed42`  
		Last Modified: Tue, 16 Oct 2018 13:10:46 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e865dcf337886b0be8f46d2ee33405ccc9e50bccd4260ccf5229ea74ed84fa0`  
		Last Modified: Thu, 25 Oct 2018 11:54:49 GMT  
		Size: 145.5 MB (145538077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43132421be114e9122eaca10eaedd8a1cf23c1b921dd93a45718d52e74e59b86`  
		Last Modified: Thu, 25 Oct 2018 12:51:54 GMT  
		Size: 740.2 KB (740184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ee86c0948c6777f387eda01d8838f2058471fef5b1f518ed1a9bbf4b58bd9`  
		Last Modified: Thu, 25 Oct 2018 12:51:54 GMT  
		Size: 5.2 KB (5163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:042e1f0a223981e4d4dc5e05d7559b7eb80a60a3eefa4cc2511b090241eb916a`  
		Last Modified: Thu, 25 Oct 2018 12:51:53 GMT  
		Size: 75.4 KB (75444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61584e966ac85d078498f92ad09f8945425e713e76a282885efbaceac3d10973`  
		Last Modified: Thu, 25 Oct 2018 12:52:06 GMT  
		Size: 169.0 MB (169033580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0480ecd331135404556f014b704d7ea68eb0aabc89127fa9f9cd61faac56cd5a`  
		Last Modified: Thu, 25 Oct 2018 12:51:53 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1fcd4305876abc46f6532835e7c7c5c818736fdd01400ec79ea07023010a82`  
		Last Modified: Thu, 25 Oct 2018 12:51:53 GMT  
		Size: 4.2 KB (4229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

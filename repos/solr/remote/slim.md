## `solr:slim`

```console
$ docker pull solr@sha256:25e80af3f93c26ba819da3539a555c4c952600c9849152119ccb50ea1006897b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:669fab50d4fd4643aedef753805c397e82795116abccea078a51956058d3378d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.7 MB (269686251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f43983c8a8fa92907a296948d58aab0b48da432f67fe8d2a9dc4c4ab544246a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:02:48 GMT
ADD file:4ac5b74448a361591479d0374d36fef5832baedf42ca81cbd6fbd8ac037ad414 in / 
# Sat, 28 Apr 2018 07:02:49 GMT
CMD ["bash"]
# Tue, 01 May 2018 09:40:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 09:40:17 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 09:40:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 11:00:51 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Mon, 14 May 2018 22:39:55 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 02:49:14 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 02:49:14 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 02:49:27 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 19:52:44 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 May 2018 19:52:44 GMT
ENV GOSU_VERSION=1.10
# Wed, 16 May 2018 19:52:45 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 16 May 2018 19:52:46 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 16 May 2018 19:52:48 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 16 May 2018 19:53:06 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 16 May 2018 19:53:06 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Wed, 16 May 2018 19:53:07 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 16 May 2018 19:53:07 GMT
EXPOSE 8983/tcp
# Wed, 16 May 2018 19:53:07 GMT
WORKDIR /opt/solr
# Wed, 16 May 2018 19:53:07 GMT
USER [solr]
# Wed, 16 May 2018 19:53:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 16 May 2018 19:53:08 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:c2ad77de49cedb25345a40be4f3ccc592075053d2d1b4cafcc67a011c070df60`  
		Last Modified: Sat, 28 Apr 2018 09:01:30 GMT  
		Size: 26.0 MB (26007039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6485a2cca95b289b549728c0c66bb1b463cdb7a204d224291f28c111a64a371`  
		Last Modified: Tue, 01 May 2018 14:02:46 GMT  
		Size: 460.5 KB (460510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4ea4e6ab41ff82240aed63937b358af3ee0d7749491ea788298b5cd38027cd`  
		Last Modified: Tue, 01 May 2018 14:02:47 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649f9534d72bc7ab44e527f83b63f51976a27696dc7ccbef9db571a111943a92`  
		Last Modified: Tue, 01 May 2018 16:08:07 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db3fcb6a0075d8e297e30126427ed1a6557a31223d4e5a44a0e7643ed1c2d87d`  
		Last Modified: Mon, 14 May 2018 23:12:18 GMT  
		Size: 76.1 MB (76136489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e4acaae33f259cc09ff445c3ab53caa5928728217453258b9ea2f984ab1685`  
		Last Modified: Tue, 15 May 2018 02:55:02 GMT  
		Size: 4.3 MB (4286515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e1558694e05c73267e25220b971f1b359da822992fa58a07b3a032141e39259`  
		Last Modified: Wed, 16 May 2018 20:02:16 GMT  
		Size: 4.9 KB (4906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92385221a8cbbd752baeeed975de41e33889ee7838b27cf8f279598bd3602436`  
		Last Modified: Wed, 16 May 2018 20:02:15 GMT  
		Size: 73.3 KB (73318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abc5b12e96706c072727b8ca420ab3ad5475dc294e5c27bc5f31ac50f3beaa42`  
		Last Modified: Wed, 16 May 2018 20:02:29 GMT  
		Size: 162.7 MB (162708634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb008114d304412e47560bcda8c9a9cdac2e9e181bf2bc408529b0381a4abc24`  
		Last Modified: Wed, 16 May 2018 20:02:15 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fd8f47c5bf57016578170c713097ff52fe5a04801b1e88a780833c29a6a63e`  
		Last Modified: Wed, 16 May 2018 20:02:16 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:af2c23c02baf6977a97073ca76d565946f0ee69deef6c8724f4cf6c6f70cb443
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.6 MB (394563156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c774d6ddda9a2ec52bbc5d006fea84345838441076e8ae24e7707167ac5700b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:51:39 GMT
ADD file:289dd78ee91d70cba0d1bc2f296c3c14565c2fc5a7545ded07d727de72e2c7af in / 
# Sat, 28 Apr 2018 08:51:39 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:57:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:19:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:19:08 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 09:19:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 09:27:42 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 05 May 2018 09:27:43 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 05 May 2018 09:27:44 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:26:01 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:26:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:26:10 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 17 May 2018 12:05:39 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 12:05:39 GMT
ENV GOSU_VERSION=1.10
# Thu, 17 May 2018 12:05:39 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 17 May 2018 12:05:40 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 17 May 2018 12:05:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 17 May 2018 12:07:40 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 17 May 2018 12:07:41 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 17 May 2018 12:07:42 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 17 May 2018 12:07:42 GMT
EXPOSE 8983/tcp
# Thu, 17 May 2018 12:07:43 GMT
WORKDIR /opt/solr
# Thu, 17 May 2018 12:07:43 GMT
USER [solr]
# Thu, 17 May 2018 12:07:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 May 2018 12:07:44 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e55988127988d265ae9a533cadc5ee50c9a724a2602f8677daa3d5ca1354a4c8`  
		Last Modified: Sat, 28 Apr 2018 08:59:59 GMT  
		Size: 46.3 MB (46298645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aafc48823c28e5748b4391dec0c3ace05a68f5a65301bb16529fbf5cfdcf4ba2`  
		Last Modified: Sat, 05 May 2018 09:11:24 GMT  
		Size: 7.8 MB (7807554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab5f6db056b1ea7d4547374cc334a044271698f505521bb613b98b4e9d62fff`  
		Last Modified: Sat, 05 May 2018 09:11:25 GMT  
		Size: 9.2 MB (9194241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16073a84548c03437560da2931d6276f5698e1b26256817ec343c389cfd1c66a`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 849.9 KB (849869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7511e3d44dd1677ace4c49728e92bc682e66c906f2d94d5a76db694717d1923c`  
		Last Modified: Sat, 05 May 2018 09:40:37 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed79a9690e83c5f8a409eac147b7022786b8cd54de49f9726a5c9f1debf44bc`  
		Last Modified: Sat, 05 May 2018 09:52:15 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d78f03eaf4946a8a38a25969bba8a7c701f5a72a98fb57f8d8faebb42210249`  
		Last Modified: Tue, 15 May 2018 10:12:34 GMT  
		Size: 165.5 MB (165502932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a3ef173cef258fac13bffa11e7cd4d93fee0bcde22d12951a4b92518371caeb`  
		Last Modified: Tue, 15 May 2018 13:33:30 GMT  
		Size: 2.1 MB (2123086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:381194fef16d80a371b94d2a160e07dfd13c24cdc12b380172404fe96b659472`  
		Last Modified: Thu, 17 May 2018 12:14:02 GMT  
		Size: 5.0 KB (5002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83106620271ebd080fcc75e7ee1a71e518cf2e7b6c57b106727593b34bd552c`  
		Last Modified: Thu, 17 May 2018 12:14:03 GMT  
		Size: 73.3 KB (73340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feeb66f47242370b9d181f6f0a46c39b5d69546cc076372d274c8487b245c50a`  
		Last Modified: Thu, 17 May 2018 12:15:30 GMT  
		Size: 162.7 MB (162699610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9669497066cd7d8625a033df4d81ef479a9d23adffd3a5ff626ef02c1ab9045b`  
		Last Modified: Thu, 17 May 2018 12:15:09 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f164151c84f4e975b423662f4c01444091661be32e7fc63f0d0bc9a6fb3d22`  
		Last Modified: Thu, 17 May 2018 12:15:09 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:3f66989d71c919e0cbfe078ebe7042be5c8746adadf4e0efa5beec65377959a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **255.5 MB (255533038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53ab3acc1570b35b58efbc5bec7f39d166f546b9e5f319c33b3c8c8eb3924f18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:28:38 GMT
ADD file:0c141fd79d3e8c492efc85f35f6f2273b082454831ae4e4e58f2bb99395ac72b in / 
# Mon, 30 Apr 2018 23:28:47 GMT
CMD ["bash"]
# Tue, 01 May 2018 10:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 10:26:43 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 10:26:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 01 May 2018 10:56:53 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 01 May 2018 10:56:54 GMT
ENV JAVA_VERSION=9.0.4+12
# Tue, 01 May 2018 10:56:55 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 09:41:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 14:21:01 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 14:21:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 14:21:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 17 May 2018 09:21:50 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 09:21:51 GMT
ENV GOSU_VERSION=1.10
# Thu, 17 May 2018 09:21:51 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 17 May 2018 09:21:54 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 17 May 2018 09:21:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 17 May 2018 09:23:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 17 May 2018 09:23:10 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 17 May 2018 09:23:13 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 17 May 2018 09:23:14 GMT
EXPOSE 8983/tcp
# Thu, 17 May 2018 09:23:15 GMT
WORKDIR /opt/solr
# Thu, 17 May 2018 09:23:16 GMT
USER [solr]
# Thu, 17 May 2018 09:23:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 May 2018 09:23:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8a965c5efd07de5feb761f2ff7f7c9319fbd736849e5c372d102a79db79c4f2f`  
		Last Modified: Mon, 30 Apr 2018 23:48:28 GMT  
		Size: 23.4 MB (23364515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca2f61f6ee678d7988be608168e9c185ba5c895ae0c465aae1111cc9b9f381e`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 445.3 KB (445326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46c81d59c641d2ddc2a09929f5b5d1a2b5181d4c465d5d47ac607bb97deb6f8a`  
		Last Modified: Tue, 01 May 2018 11:43:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3359846d10d5ef13605aa0470f33e1cb5fd5e8e6977c33a370b2abacad0613f`  
		Last Modified: Tue, 01 May 2018 11:51:49 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc3a51a42fd310bb6e0861cff02acec5b5156d339847cb499f1b23da837402d`  
		Last Modified: Tue, 15 May 2018 10:53:55 GMT  
		Size: 65.0 MB (64997705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f20d83fb4481bae13f33942e50f8366fd50e42a8f63a05ceac30847d2ac14cc6`  
		Last Modified: Tue, 15 May 2018 14:40:15 GMT  
		Size: 4.0 MB (3959694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b69fed1d595f28e0294731f4b1e567a0d98bbc5068df037d1de035e36814c4b5`  
		Last Modified: Thu, 17 May 2018 09:41:54 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0623ceb30321c65633924c4a966f6a9fda6751694c15115079b4c1490d4650`  
		Last Modified: Thu, 17 May 2018 09:41:54 GMT  
		Size: 73.3 KB (73320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c2f8076552eb8040ff762654ed0a8f9938b7cd2e5fb062b9c81c10aa5c81a6`  
		Last Modified: Thu, 17 May 2018 09:42:19 GMT  
		Size: 162.7 MB (162678687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:075eb64bce0efb139e2892789c92720353a18780a0a4ece6c686bed7e7d8c257`  
		Last Modified: Thu, 17 May 2018 09:41:54 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:638c15d29f9462fa52e544dfe5d73bf058d9fd1e9374028ed740d1b2acd215c6`  
		Last Modified: Thu, 17 May 2018 09:41:54 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; 386

```console
$ docker pull solr@sha256:368eb701583f184a71a04d54c0c93d326103ddfd03f5ed017e5c1cebf460d14e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275613822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dab9fd18d592a97bbbf319fe8144a04301a98234043b3ee4120371979b9f85`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:40:59 GMT
ADD file:9e204bd06575325653d9ca924ded453fa1a0f9eb3fe6d0fb8390160b39768da9 in / 
# Sat, 28 Apr 2018 10:40:59 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:41:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:41:58 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:50:01 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 11:32:51 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:22:16 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:22:16 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:22:28 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 17 May 2018 11:08:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 11:08:58 GMT
ENV GOSU_VERSION=1.10
# Thu, 17 May 2018 11:08:58 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 17 May 2018 11:09:00 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 17 May 2018 11:09:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 17 May 2018 11:09:23 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 17 May 2018 11:09:24 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 17 May 2018 11:09:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 17 May 2018 11:09:25 GMT
EXPOSE 8983/tcp
# Thu, 17 May 2018 11:09:25 GMT
WORKDIR /opt/solr
# Thu, 17 May 2018 11:09:25 GMT
USER [solr]
# Thu, 17 May 2018 11:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 May 2018 11:09:25 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b0b251c3fa17d0cdbdd0cb21b207843e9e733533c09d41956b9606a7c6aaf613`  
		Last Modified: Sat, 28 Apr 2018 10:47:45 GMT  
		Size: 26.7 MB (26687092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dba5883d54ea2e960ec74337613b22d342a4cf7dc0a8004731c69f17ca460c2`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 469.1 KB (469104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0202ed9a08fb9954731cc7fe5f246e4b09b730c006ef6ba471b6671db09dbe`  
		Last Modified: Sat, 28 Apr 2018 15:06:11 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21011dd0714ba1832917938749b79fe5fa3314ae25a124bdd3b538211696d4d2`  
		Last Modified: Sat, 28 Apr 2018 15:13:54 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80bfdf099792bbce34ade98168ac44ef865fc62f556803fe780e9ac00243ded`  
		Last Modified: Tue, 15 May 2018 12:08:13 GMT  
		Size: 81.1 MB (81094714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1194fab43aeb617a98fbc6261474599f4b591e243c0637ea72f9864c376de73`  
		Last Modified: Tue, 15 May 2018 13:36:18 GMT  
		Size: 4.6 MB (4587471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6098d9e6ab4cc2eed857e33431e2f3edfdd45be5c2c28f76bbf00183bed92c50`  
		Last Modified: Thu, 17 May 2018 11:16:34 GMT  
		Size: 4.8 KB (4843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8119d43b0715bca77de324830f6117bdb9c82b4248ca833bb958f2ff55affa0`  
		Last Modified: Thu, 17 May 2018 11:16:34 GMT  
		Size: 73.3 KB (73329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f19620fcf007b005fcb99e8b6f7f8fd5c12a96c60ec3a9c5b5fa70893355c0`  
		Last Modified: Thu, 17 May 2018 11:16:55 GMT  
		Size: 162.7 MB (162688424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713b439b35323a459dfc3fae7f37ba29c1f40cdec5fce582252238a9fa93103e`  
		Last Modified: Thu, 17 May 2018 11:16:34 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2659ab424cf739964a8e9f0332e754e0fa28c3e1555708049c306bb471613ff7`  
		Last Modified: Thu, 17 May 2018 11:16:34 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:5fc86f84379c9a40683065078af814f5331882f6cff8f50d73919e8628d41eb4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.3 MB (261276586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c46f1bcd9420bfcbfaab60827d7fd5ef34c9d82497248378655d6dff9826d1ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:19:31 GMT
ADD file:0f2a0abf96fc92379da26343d7babcee966430e13e320ed58e9b026f81a35dc0 in / 
# Sat, 28 Apr 2018 08:19:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:22:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:22:50 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:22:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:30:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:30:56 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 09:30:57 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 09:30:58 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 08:46:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 10:09:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 10:09:37 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 10:10:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 17 May 2018 08:19:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 08:19:45 GMT
ENV GOSU_VERSION=1.10
# Thu, 17 May 2018 08:19:45 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 17 May 2018 08:19:50 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 17 May 2018 08:19:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 17 May 2018 08:21:24 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 17 May 2018 08:21:26 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 17 May 2018 08:21:30 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 17 May 2018 08:21:31 GMT
EXPOSE 8983/tcp
# Thu, 17 May 2018 08:21:33 GMT
WORKDIR /opt/solr
# Thu, 17 May 2018 08:21:34 GMT
USER [solr]
# Thu, 17 May 2018 08:21:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 May 2018 08:21:37 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:62552d209895f0ed53682f7309596edd291c8529683e854dd1fb36398d01bf69`  
		Last Modified: Sat, 28 Apr 2018 08:28:10 GMT  
		Size: 27.3 MB (27275595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ff6d72f21b69924c949ee40aec368655f2ab6a94c0a4a2067453fce44edabe`  
		Last Modified: Sat, 28 Apr 2018 09:48:20 GMT  
		Size: 455.2 KB (455169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d6f4b35b1a81554702460476a2fe3bd916579be94638ded8ee84048b7e208b`  
		Last Modified: Sat, 28 Apr 2018 09:48:19 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8d4e6285cb453ad45b8fffd593683ce971561e5dc3e3894511a103c2e0f3ef`  
		Last Modified: Sat, 28 Apr 2018 09:52:22 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d0a24dd34a9dfb1c5c4cb9b74cfbfc3874866e562e347365f904e1008882b5`  
		Last Modified: Tue, 15 May 2018 09:35:37 GMT  
		Size: 66.2 MB (66174142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6aa880621604ab031047b4362437eedf9770ddd16639768450454303d5e18b`  
		Last Modified: Tue, 15 May 2018 10:29:41 GMT  
		Size: 4.6 MB (4605795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4744612c4b9ddcc0476a0f6a23db4e5ae892d4ad3f08bde0cb17814beca2ded9`  
		Last Modified: Thu, 17 May 2018 08:41:01 GMT  
		Size: 4.9 KB (4910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9bb0d36347df9fd82cc37776a362b17e47260f8f01ff92b27fb2b7f5949367`  
		Last Modified: Thu, 17 May 2018 08:41:01 GMT  
		Size: 73.4 KB (73357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:976854eb5dca0e607904abc2d8fde8c585c2b9887760b8afc594cc3f10770d8c`  
		Last Modified: Thu, 17 May 2018 08:41:18 GMT  
		Size: 162.7 MB (162678749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03747ab7cb41b23189030dbf9507b51c11fad7624d720296ba62d93fb46481bb`  
		Last Modified: Thu, 17 May 2018 08:41:00 GMT  
		Size: 4.2 KB (4246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816d4f785cbcb1610a390b1ddd825ab139c431e8a72693a11c33428401c6a3ba`  
		Last Modified: Thu, 17 May 2018 08:41:00 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; s390x

```console
$ docker pull solr@sha256:b060998cc868aaf99cbbf8c57ae5c491cd125a7a611e2bc0d63ec2c81143d669
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258475432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8211fd5de022d861befbc2f54ef5cd41ee3f3bbbb5e056f22ec4617f421bf9c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:44:07 GMT
ADD file:e38be352b5f5592b16e7137f372c3c15b62fa18d58036f3756f302a0b0bb631b in / 
# Sat, 28 Apr 2018 11:44:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:19:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:19:52 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:19:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:26:54 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_VERSION=9.0.4+12
# Sat, 28 Apr 2018 14:26:55 GMT
ENV JAVA_DEBIAN_VERSION=9.0.4+12-4
# Tue, 15 May 2018 12:03:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-9-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 13:52:36 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:52:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:52:42 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 17 May 2018 11:53:23 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.3.1 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.3.1/solr-7.3.1.tgz SOLR_SHA256=0cd8953cf7c85bc0d9a533429200c531822f18807f9fc9fb792c0b149dbd0c4d SOLR_KEYS=A72C08F85D7666C3980C35DD1A3859BBABBDB295 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 11:53:23 GMT
ENV GOSU_VERSION=1.10
# Thu, 17 May 2018 11:53:23 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 17 May 2018 11:53:24 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 17 May 2018 11:53:26 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 17 May 2018 11:53:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 17 May 2018 11:53:40 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 17 May 2018 11:53:42 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 17 May 2018 11:53:42 GMT
EXPOSE 8983/tcp
# Thu, 17 May 2018 11:53:42 GMT
WORKDIR /opt/solr
# Thu, 17 May 2018 11:53:42 GMT
USER [solr]
# Thu, 17 May 2018 11:53:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 May 2018 11:53:43 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bff59799036649cecf076e4900a64b601dd41fb4774da5d260797609e96f77d2`  
		Last Modified: Sat, 28 Apr 2018 11:50:00 GMT  
		Size: 25.1 MB (25056085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00321480668e2c88c597070fd4a0503df76d083adfe3488d69f82f37cf3a1143`  
		Last Modified: Sat, 28 Apr 2018 14:37:59 GMT  
		Size: 471.3 KB (471260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee0b7fa65f7725d173d1d9261b5c223d16d2f1f2a2850391fb2cd3eca5082060`  
		Last Modified: Sat, 28 Apr 2018 14:37:58 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad0a4327ddb4df4bb93acb5eae40ad36e95b2347b79c0e675f2a5e62293f6a68`  
		Last Modified: Sat, 28 Apr 2018 14:48:49 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c12e682761ef0a8595f992222b0e12d42179c0e6c161773b6d5427791ddb3e44`  
		Last Modified: Tue, 15 May 2018 12:35:19 GMT  
		Size: 65.9 MB (65930053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29d5d0109a2355c79e9d199e8f38864b2bd26ca9fb645992c0ee97c53d87bf47`  
		Last Modified: Tue, 15 May 2018 13:59:46 GMT  
		Size: 4.2 MB (4236169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef0de1ad2a255fa7254ff5be4c787d76ec3f6e3e904d291491c8f30932315d20`  
		Last Modified: Thu, 17 May 2018 12:05:35 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:656b8e0d029c72841e15891e742946ea6ae76a26d80071ae818481ca0cf8f8df`  
		Last Modified: Thu, 17 May 2018 12:05:36 GMT  
		Size: 73.3 KB (73307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741d3b2317df0ea7ed289be4a5ed9f0e1d8b5bccd417619244a146f84ae21ecb`  
		Last Modified: Thu, 17 May 2018 12:05:55 GMT  
		Size: 162.7 MB (162694765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb80022d3ccfe7d03ace682b43685b5df9b96a6ba2efb3121974e7d50a879ed6`  
		Last Modified: Thu, 17 May 2018 12:05:35 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4be9144cafea6aa1f415cffdd9d57c1080f0f6524774bee86b95132d3850e7b`  
		Last Modified: Thu, 17 May 2018 12:05:35 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

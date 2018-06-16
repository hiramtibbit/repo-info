## `solr:6-slim`

```console
$ docker pull solr@sha256:5ddfcf00bac8bf9fb79f4daaf0a3607189ac8375f37dfb7db2827b2661d5d96d
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

### `solr:6-slim` - linux; amd64

```console
$ docker pull solr@sha256:5af8727f64a78dd8d2a657d8bee30a957bf65fb31eb11801f25509fb1968de75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.1 MB (231075292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:773bbc03cc46ba2ecd6c657aa133dac221cd379310802fe433c44e045b4782f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 01:54:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:54:56 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:54:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:54:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:54:59 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:54:59 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:55:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:55:36 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 16 Jun 2018 09:36:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 16 Jun 2018 09:36:29 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 16 Jun 2018 09:36:42 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 16 Jun 2018 09:39:42 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Jun 2018 09:39:42 GMT
ENV GOSU_VERSION=1.10
# Sat, 16 Jun 2018 09:39:42 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 16 Jun 2018 09:39:43 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 16 Jun 2018 09:39:47 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 16 Jun 2018 09:40:04 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 16 Jun 2018 09:40:05 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 16 Jun 2018 09:40:05 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 16 Jun 2018 09:40:06 GMT
EXPOSE 8983/tcp
# Sat, 16 Jun 2018 09:40:06 GMT
WORKDIR /opt/solr
# Sat, 16 Jun 2018 09:40:06 GMT
USER [solr]
# Sat, 16 Jun 2018 09:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 16 Jun 2018 09:40:06 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44ea3e7c4ff00a9a43f29069ca7249f6a31ef8a7365ed89b7f22f8d436ec0a5`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 454.9 KB (454851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ffd93428115226c4bae15842cfda8645782d5d26ddd3193688abf73a3a7daf9`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd00e3c2b114a3541c50a56a3f9391a30b3f2948cf59347f3ce0e416e4e609fb`  
		Last Modified: Wed, 06 Jun 2018 02:14:42 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342f54931737941d8bbf16988aa25c00661d4947cf0d256dae6200ca05d80175`  
		Last Modified: Wed, 06 Jun 2018 02:15:01 GMT  
		Size: 55.9 MB (55851012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee0b21f15e0e168f9176a8ecf70aebd0ae059cdf8805b049599663bb38aaf89`  
		Last Modified: Wed, 06 Jun 2018 02:14:43 GMT  
		Size: 272.1 KB (272128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0fbc8767af7749c508f7fa5e7c38fdaf6b077ed89907629a23fd0bb1f2e687c`  
		Last Modified: Sat, 16 Jun 2018 09:43:16 GMT  
		Size: 4.0 MB (3968268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0bfc070c2056b8d2f1172adb85e073dc62b3a71d00b1125371b54c5f6377013`  
		Last Modified: Sat, 16 Jun 2018 09:45:50 GMT  
		Size: 4.3 KB (4301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1100e888feb467f8c4165193429fa0e4ac401d2261016118b1a35568e2ebb49`  
		Last Modified: Sat, 16 Jun 2018 09:45:50 GMT  
		Size: 74.2 KB (74216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6a9d10013a5bb6799b4612c793dab7561cb2b2114433e109ca7b40d10f1ff5d`  
		Last Modified: Sat, 16 Jun 2018 09:46:02 GMT  
		Size: 147.9 MB (147945632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af9916958229cfb0e961fed6ed6cb217e36ea520d4f57d378ebcd3b99898802`  
		Last Modified: Sat, 16 Jun 2018 09:45:50 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77a9347b89bbf6c61c39744467cd0ead2624b96daf1e324c3141b1dd76649d94`  
		Last Modified: Sat, 16 Jun 2018 09:45:50 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:0de34f09a7b53e97d9d0ca7c3708f28ecbe80e90ca626de3d5c7a1a3545f8726
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.3 MB (220272199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa4b9e83614ef96f55aea8ef00f88533cf2d5278bd4f014139e238f1ab9665f8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:48:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:48:31 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:48:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:48:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:48:35 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 09:32:16 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 09:32:16 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 09:32:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:46:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:47:03 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 31 May 2018 09:53:45 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 31 May 2018 09:53:46 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 31 May 2018 09:53:58 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 09:55:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 09:55:44 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 09:55:44 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 31 May 2018 09:55:45 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 31 May 2018 09:55:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 31 May 2018 09:56:05 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 31 May 2018 09:56:05 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 31 May 2018 09:56:06 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 31 May 2018 09:56:07 GMT
EXPOSE 8983/tcp
# Thu, 31 May 2018 09:56:07 GMT
WORKDIR /opt/solr
# Thu, 31 May 2018 09:56:07 GMT
USER [solr]
# Thu, 31 May 2018 09:56:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 09:56:08 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88fbc4bf09646719f2169da564fc13c0338c5d3ffad9d1529d01b7c51222ab6a`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 447.7 KB (447689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b0bc7f64f9c781a475de308113334713dc905ca7d4cbad091d2ea143f7a9678`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0681ed43b7a56022b45c6755a8ff6db92d23fe3628cf2c3d37f67e8e7b8d51e2`  
		Last Modified: Sat, 28 Apr 2018 13:24:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2afefe739aa44ad174af0d9d4acb90ff0bbc62c786d7154f1e7730fe4aa17fb3`  
		Last Modified: Tue, 15 May 2018 10:23:14 GMT  
		Size: 46.6 MB (46582112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24927b6e1fd933910480797555ef8d66115cd4e7e71d871864610e9bd9fb8b49`  
		Last Modified: Tue, 15 May 2018 10:23:02 GMT  
		Size: 272.2 KB (272202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa7a5eaafce9878a1700a9748af1e716972a8f80fdb0b8cfa15995375cca63d`  
		Last Modified: Thu, 31 May 2018 09:58:14 GMT  
		Size: 3.8 MB (3771391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c194271ddc31394f7d8192067bc5121e73ae388ce46e1303efa9aa9beccb2966`  
		Last Modified: Thu, 31 May 2018 09:59:40 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f92ecc5920e2913f452cdb094477bba44c6ae420e05ae5f12bab5983d63b45`  
		Last Modified: Thu, 31 May 2018 09:59:40 GMT  
		Size: 74.3 KB (74253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf515d9294aa60b602d420993065c74db3435c409703c606abd87e238d134ce2`  
		Last Modified: Thu, 31 May 2018 09:59:56 GMT  
		Size: 147.9 MB (147935777 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61d6799124fe144761f21138226c0e2fff9b588634b786196fa54f0ef82370cd`  
		Last Modified: Thu, 31 May 2018 09:59:40 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83936d77dacccefdd6414a86b0846011a3c7f46b0187ae34c5a58f02e2e448e4`  
		Last Modified: Thu, 31 May 2018 09:59:40 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:61fb6dbe993d93e413074018b96608566f59652f44b562bc242f7fdd1013e0f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.3 MB (345333416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4a8ff96da31b624f305136b3de51e370889f92ff6b61ba3fb1ae478b73f1cd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:13:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:13:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:59:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:59:16 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:59:17 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:59:18 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:59:19 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:59:27 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:59:27 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 05 May 2018 13:00:26 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 05 May 2018 13:00:28 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 05 May 2018 15:31:15 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 05 May 2018 15:31:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 05 May 2018 15:31:22 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 13:05:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 13:05:13 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 13:05:13 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 31 May 2018 13:05:14 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 31 May 2018 13:05:18 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 31 May 2018 13:06:07 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 31 May 2018 13:06:08 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 31 May 2018 13:06:09 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 31 May 2018 13:06:09 GMT
EXPOSE 8983/tcp
# Thu, 31 May 2018 13:06:10 GMT
WORKDIR /opt/solr
# Thu, 31 May 2018 13:06:10 GMT
USER [solr]
# Thu, 31 May 2018 13:06:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 13:06:11 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed57f83cc7c78757972312a1b5a30524f861523c5390d062845f18c696f48ea`  
		Last Modified: Sat, 05 May 2018 12:35:37 GMT  
		Size: 9.5 MB (9472475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859203aede279201e8caf07cf2963456c56bac72a64071079dc9db6fb65ed1a2`  
		Last Modified: Sat, 05 May 2018 12:35:34 GMT  
		Size: 3.9 MB (3912835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df26ddf71ea9e82f175e400809b8f06871dd0937c5a90f4ffe95286544a9f719`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 830.3 KB (830332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c21322a9c89724512d6ea5faa10299c60c8a605d6f563c84c28177db8d2770`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2270f04a4be61f52577232813fff92e797d3fc190d52f71411afc26b0911f8e4`  
		Last Modified: Sat, 05 May 2018 13:29:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2dc1aba58c8cd285639cac6b03c823e5fcdb91aa8922652e7d9387aaca6fa4`  
		Last Modified: Sat, 05 May 2018 13:29:37 GMT  
		Size: 139.5 MB (139501760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02869ec2bb3864b06abd435610eb6849d5c62426517de1a603ef6fe43c7d3815`  
		Last Modified: Sat, 05 May 2018 13:29:05 GMT  
		Size: 272.1 KB (272082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae19f0b8eaa5c772059fa0b83a7d7111d07fb5d6414f83571ace59fe5ff4754`  
		Last Modified: Sat, 05 May 2018 15:36:01 GMT  
		Size: 1.3 MB (1270722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:333f97aa47e1140ced7fbbd480de12c97f568aa6b66627a37699a47df4e4047a`  
		Last Modified: Thu, 31 May 2018 13:14:13 GMT  
		Size: 4.3 KB (4261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba99afe5f0cf1b882fb804a4676a8b1f5dca0c2b5aa8ce17c12f2412007c980`  
		Last Modified: Thu, 31 May 2018 13:14:13 GMT  
		Size: 74.3 KB (74253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a052bf80a3bf68d43915c567c5075c6aa4414f35ea2f487a3d4f6fadd34ad2`  
		Last Modified: Thu, 31 May 2018 13:15:58 GMT  
		Size: 147.9 MB (147922081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778843f96e3085ea2b380f9438225d573e5b65533d601e2a1e3610b07abad760`  
		Last Modified: Thu, 31 May 2018 13:15:40 GMT  
		Size: 4.2 KB (4248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38d8889660721550df1b66458c8db63d59635623e1c6b83f988f38a878e09ecf`  
		Last Modified: Thu, 31 May 2018 13:15:40 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:c1a0e808855343ba2a09db8e96ebe72005deddf5455f61fc8fe02dacc5fe2b09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.7 MB (220726030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:118d99243c6bb26207fc92c452364b35c54c35ac32c398ccb1abbcdf215fbbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:10:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:10:49 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 12:10:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 05 May 2018 12:10:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 05 May 2018 12:10:58 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 12:10:59 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 12:11:00 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 12:11:01 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 09:58:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 09:58:58 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 14:25:35 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 14:25:36 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 14:26:03 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 22 May 2018 09:05:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 May 2018 09:05:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 May 2018 09:05:13 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 22 May 2018 09:05:16 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 22 May 2018 09:05:20 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 22 May 2018 09:07:29 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 22 May 2018 09:07:30 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 22 May 2018 09:07:32 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 22 May 2018 09:07:33 GMT
EXPOSE 8983/tcp
# Tue, 22 May 2018 09:07:33 GMT
WORKDIR /opt/solr
# Tue, 22 May 2018 09:07:34 GMT
USER [solr]
# Tue, 22 May 2018 09:07:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 May 2018 09:07:35 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1356ac538eb57fd128c76210e69d8ea192739ab472c2fb3a454077a04f586e32`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 440.9 KB (440854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404967e0deffced58d7fa59617c4f79114b54f83e611352df179e0ab16a4dcec`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bda87709b8348221cfb29ec6618a561250a0123b234348707f7efb5a8b6cf4`  
		Last Modified: Sat, 05 May 2018 13:03:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3093f172af1160077781f96960837c40a0f934e47340ac669015fa3bc462c472`  
		Last Modified: Tue, 15 May 2018 11:03:08 GMT  
		Size: 48.0 MB (48021358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9adc97a1717970017eeaf51a62b8a8be2e19efda5fc10fceda4bb9259bb57582`  
		Last Modified: Tue, 15 May 2018 11:02:51 GMT  
		Size: 272.1 KB (272109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05bec6c292d5b8de86ed3c13839be3842e2cb3549cf58cb2e90378394ff44910`  
		Last Modified: Tue, 15 May 2018 14:42:04 GMT  
		Size: 3.6 MB (3641164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbc53e8f5e296914ae84a5b871f962ebbbdbdeffa8f01518eef0d6f74a6a1d94`  
		Last Modified: Tue, 22 May 2018 09:09:32 GMT  
		Size: 4.3 KB (4330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b753bb6ffdb60982f94bd7fcbda4c63ca943a1dadab06bc359a68db9539377`  
		Last Modified: Tue, 22 May 2018 09:09:33 GMT  
		Size: 74.2 KB (74216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a763693e6b3b9ba0a6a29519b4fed8f85fcc557122b1820aea345489679938c`  
		Last Modified: Tue, 22 May 2018 09:10:12 GMT  
		Size: 147.9 MB (147915226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000b2c8e20a1cf4ff0f274eeef0d10cd34c475dd629d6b8c3ec0a376ce1abad1`  
		Last Modified: Tue, 22 May 2018 09:09:33 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e07e8ed7fd1a64f9dcd3cf7a5e0de9a8d5d84b825235f8c1d479deb7693a1b`  
		Last Modified: Tue, 22 May 2018 09:09:33 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; 386

```console
$ docker pull solr@sha256:499a2c8b8188b05b0f03422487d7c5b7b959341e5fe87a885d05213f74caf5a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231476665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09aca9b85b040f649c674e49d398b90297dff57e7b1f36cd86cdc3686427a2f6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Thu, 31 May 2018 06:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 06:01:53 GMT
ENV LANG=C.UTF-8
# Thu, 31 May 2018 06:01:54 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 31 May 2018 06:01:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 31 May 2018 06:01:55 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 31 May 2018 06:01:55 GMT
ENV JAVA_VERSION=8u171
# Thu, 31 May 2018 06:01:55 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Thu, 31 May 2018 06:01:55 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Thu, 31 May 2018 06:02:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 31 May 2018 06:02:32 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Thu, 31 May 2018 11:21:29 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 31 May 2018 11:21:30 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 31 May 2018 11:21:41 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 31 May 2018 11:39:47 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 May 2018 11:39:47 GMT
ENV GOSU_VERSION=1.10
# Thu, 31 May 2018 11:39:47 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 31 May 2018 11:39:48 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 31 May 2018 11:39:51 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 31 May 2018 11:44:26 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 31 May 2018 11:44:26 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Thu, 31 May 2018 11:44:27 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 31 May 2018 11:44:27 GMT
EXPOSE 8983/tcp
# Thu, 31 May 2018 11:44:27 GMT
WORKDIR /opt/solr
# Thu, 31 May 2018 11:44:27 GMT
USER [solr]
# Thu, 31 May 2018 11:44:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 31 May 2018 11:44:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20b454a28067110bf421699f878a0aae15d8ce26c443b4c1a8e0f3af04aafd21`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 463.5 KB (463489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b99a754209b8eeff120bad47d735c30883fe13221341d29571db09ecf50d2c7`  
		Last Modified: Thu, 31 May 2018 06:40:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e46b4733cab8906e21512f53a48ff56245cb1b49e1faf71d19c64483631019`  
		Last Modified: Thu, 31 May 2018 06:40:22 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfdd123d5f485911bcf8d7e8cd0b29198f7da8a90bf078781052ead4f5d829c0`  
		Last Modified: Thu, 31 May 2018 06:40:43 GMT  
		Size: 55.4 MB (55379055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff9d11bc0148abaa696e7bdcd6d020ceaa91bcb134b10f08463be6fdaf209e1`  
		Last Modified: Thu, 31 May 2018 06:40:21 GMT  
		Size: 272.1 KB (272106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba28e7e5bcf7343956c86e6447e36de62e599024d0e890f0169b063ce820e75`  
		Last Modified: Thu, 31 May 2018 11:56:14 GMT  
		Size: 4.2 MB (4211244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61799aafaffcc7af675c545f8cafbe3126abcbfb529d938b8aa2d687a9b816b`  
		Last Modified: Thu, 31 May 2018 11:58:39 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7177cb5754045e77912a781b73e9f48da25f7ec376ffc548ccedf98600631c51`  
		Last Modified: Thu, 31 May 2018 11:58:39 GMT  
		Size: 74.2 KB (74218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab5bbfb9240dbfd5a9a635f18453adfa6d55d442a07f8498a057d71bc8b6ca8`  
		Last Modified: Thu, 31 May 2018 11:58:56 GMT  
		Size: 147.9 MB (147924947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac91286994588e904dd663f8a18f0b6554b3a131b491a46a98eb4427d2318950`  
		Last Modified: Thu, 31 May 2018 11:58:39 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a25fd6e987ed8ee031a5dc0dc5303850877fbc1bf4272f408104c44962d2833`  
		Last Modified: Thu, 31 May 2018 11:58:39 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:0072cfa558d1eca623dadeeaa5df6bb0fe0a0e9d25bc1997d7d8e9e27f091061
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.9 MB (223909985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecce1f3a0e599fd8580a0b4a5b5d9b5f6875a54ae03d86fa1f414385f7fbeb62`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:34:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:34:16 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 09:34:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 09:34:19 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 09:34:20 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 14:30:50 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 14:30:51 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 14:30:51 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 08:57:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 08:57:10 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 10:15:01 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 10:15:02 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 10:15:37 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 22 May 2018 08:23:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 May 2018 08:23:18 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 May 2018 08:23:20 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 22 May 2018 08:23:22 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 22 May 2018 08:23:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 22 May 2018 08:24:48 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 22 May 2018 08:24:49 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 22 May 2018 08:24:52 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 22 May 2018 08:24:53 GMT
EXPOSE 8983/tcp
# Tue, 22 May 2018 08:24:55 GMT
WORKDIR /opt/solr
# Tue, 22 May 2018 08:24:56 GMT
USER [solr]
# Tue, 22 May 2018 08:24:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 May 2018 08:24:57 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc33a1da85c5533fce9cfc9805b3eb2e761d8b4f7631ecbd90cd4a010f94908`  
		Last Modified: Sat, 28 Apr 2018 09:55:40 GMT  
		Size: 449.8 KB (449779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022ea33a084eecb4673a5740e10f27c92233479692a434e0d54dcecfbd7a76d2`  
		Last Modified: Sat, 28 Apr 2018 09:55:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d091aae77173ee90e1756bb6f3fa323fb3f63bddbc058a6c361293efd48aadc5`  
		Last Modified: Sat, 28 Apr 2018 09:55:39 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7904699de4c0957dcf00f2f5d2dc4bcd53e9c9967aefce967478b8b741f017d`  
		Last Modified: Tue, 15 May 2018 09:42:38 GMT  
		Size: 48.5 MB (48491514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ec12141e41d4c645e774c1c9f370b2650eb1b883d0e2a14530ff55ff2aa8ca`  
		Last Modified: Tue, 15 May 2018 09:42:22 GMT  
		Size: 272.1 KB (272118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85d731d47f2ebc0061664caf75f38f90e1aee1bc0704903119d16dca967aa3cd`  
		Last Modified: Tue, 15 May 2018 10:31:02 GMT  
		Size: 3.9 MB (3941763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95c79abd69e5bf227f2a6b107dcaead03a38f4fd172bef225d7d4c57d42bde6b`  
		Last Modified: Tue, 22 May 2018 08:26:36 GMT  
		Size: 4.3 KB (4296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ad537fdb7ca764c6db5b4be6e06802284f77ba98b398e66ad7bbeb968418fe`  
		Last Modified: Tue, 22 May 2018 08:26:36 GMT  
		Size: 74.2 KB (74246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35947e75214f6de5c794939301312aefe85648c3d2b8e52a8a4148fdbb728f8d`  
		Last Modified: Tue, 22 May 2018 08:26:50 GMT  
		Size: 147.9 MB (147914284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99075b86edd02d6f712805831fa2fb4e6cde770ccbd5b7278a2060a893603f35`  
		Last Modified: Tue, 22 May 2018 08:26:36 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85a099ba4f5354151dff0c9e95a09312c993830be32ae024e7b2652382d0b39d`  
		Last Modified: Tue, 22 May 2018 08:26:36 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:6-slim` - linux; s390x

```console
$ docker pull solr@sha256:5a2e6ca6f212c58b76e2918a9fce5c61148a9bea27c55093bbd6f9e53296d078
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **222.8 MB (222827678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41aa6951bf5de20b01fee442a6db6dfb1c5926d321c965c99ce4786542326e99`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:30:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:01 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:30:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:30:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:30:03 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 05 May 2018 13:13:50 GMT
ENV JAVA_VERSION=8u171
# Sat, 05 May 2018 13:13:50 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Sat, 05 May 2018 13:13:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 15 May 2018 12:09:05 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 15 May 2018 12:09:08 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 15 May 2018 13:53:55 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 15 May 2018 13:53:55 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 15 May 2018 13:54:04 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 22 May 2018 11:50:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=6.6.4 SOLR_URL=https://archive.apache.org/dist/lucene/solr/6.6.4/solr-6.6.4.tgz SOLR_SHA256=cb4a8552c3b60a7a195280e8bcd65ba2c045488fa52778f620138543c5265c50 SOLR_KEYS=2085660D9C1FCCACC4A479A3BF160FF14992A24C PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 May 2018 11:50:19 GMT
ENV GOSU_VERSION=1.10
# Tue, 22 May 2018 11:50:19 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 22 May 2018 11:50:20 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 22 May 2018 11:50:23 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 22 May 2018 11:50:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 22 May 2018 11:50:38 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 22 May 2018 11:50:39 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 22 May 2018 11:50:39 GMT
EXPOSE 8983/tcp
# Tue, 22 May 2018 11:50:39 GMT
WORKDIR /opt/solr
# Tue, 22 May 2018 11:50:39 GMT
USER [solr]
# Tue, 22 May 2018 11:50:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 22 May 2018 11:50:40 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90801d58a6d56c724d5792b8a42cc96a1e0561cd086660bf68d0291a40ddcbd`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 465.7 KB (465749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19a8f883c7ed4e5bc5ac600672c8b671b7da7b9b3165847d29ac63d7ccdf69d`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52e66d8a2f90508e7dd2c1b398fe687ce2179feaeef82dd8f31d01eaa50e11f`  
		Last Modified: Sat, 28 Apr 2018 14:54:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db67e1e80e37fd7bc6deda14d8b960d20e29261e7dfab301b2112d553d6a078`  
		Last Modified: Tue, 15 May 2018 12:43:55 GMT  
		Size: 47.7 MB (47692546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39d12bd4afa5e349fb7759745a5f6e5eae9bef7cc41fa6ba6036c35bace8c6b1`  
		Last Modified: Tue, 15 May 2018 12:43:46 GMT  
		Size: 272.2 KB (272169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a26093fb380dbe128985092eb96961f6da5affa4e86b8cdfe8101139af99af7`  
		Last Modified: Tue, 15 May 2018 14:01:13 GMT  
		Size: 4.0 MB (4028603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f7c05e1f689f07f74a5e3877c8c85a319a782c8c67efd355f5ffb237c00fc2d`  
		Last Modified: Tue, 22 May 2018 11:52:36 GMT  
		Size: 4.3 KB (4328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73dddb9861e43a67bdcf540dca9d186fefdbbf520096dd6737416ba284c8ffe1`  
		Last Modified: Tue, 22 May 2018 11:52:35 GMT  
		Size: 74.2 KB (74212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:171d28df1c7c3a63aa90460926f6bc02689029b1e9d7b306f5bf368269e534f6`  
		Last Modified: Tue, 22 May 2018 11:52:47 GMT  
		Size: 147.9 MB (147931319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f6a5ba7b6371c460ee534e01ed24a916949bbfa98639104087617cf7d3c9e1`  
		Last Modified: Tue, 22 May 2018 11:52:38 GMT  
		Size: 4.2 KB (4220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e89295a3fad9e100becf69518aeafe29efc40e15052ab0780c1536de85768e2`  
		Last Modified: Tue, 22 May 2018 11:52:35 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

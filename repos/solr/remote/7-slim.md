## `solr:7-slim`

```console
$ docker pull solr@sha256:f300cc257107a932bf3a6f550c1f497181c1cb35730a130c38536b0b6ac0669b
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
$ docker pull solr@sha256:ea435a8f0e645843e4ecd46b9b58cdd2248ef209ab8592403934a82b7246e330
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278330181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17fe9b8f0548bee9dfdc5162ec4d1f6c053824996150ee0f95a6b24dabf94510`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:58 GMT
ADD file:a391d9232725a03d7b21f24be4d387c1d11f905c3ba448c0a3793745ca8cc6f3 in / 
# Tue, 04 Sep 2018 21:20:58 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 01:15:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 01:15:51 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:15:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 01:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 28 Sep 2018 18:28:39 GMT
ENV JAVA_VERSION=10.0.2
# Fri, 28 Sep 2018 18:28:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Fri, 28 Sep 2018 18:30:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 28 Sep 2018 18:59:32 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 28 Sep 2018 18:59:33 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 28 Sep 2018 18:59:51 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 28 Sep 2018 18:59:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 18:59:57 GMT
ENV GOSU_VERSION=1.10
# Fri, 28 Sep 2018 18:59:58 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 28 Sep 2018 18:59:58 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 28 Sep 2018 18:59:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 28 Sep 2018 19:00:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 28 Sep 2018 19:00:13 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Fri, 28 Sep 2018 19:00:20 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Fri, 28 Sep 2018 19:00:20 GMT
EXPOSE 8983/tcp
# Fri, 28 Sep 2018 19:00:20 GMT
WORKDIR /opt/solr
# Fri, 28 Sep 2018 19:00:20 GMT
USER [solr]
# Fri, 28 Sep 2018 19:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 28 Sep 2018 19:00:21 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a7e1658cb0533dfcb5baa38a0ce3230fd3aea217be1a52d0b46f5521b305d608`  
		Last Modified: Tue, 04 Sep 2018 21:24:51 GMT  
		Size: 26.3 MB (26269506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826d7fab3f2f9f524ee8ab66d9bf80ff7ce89278ff495a4c665481d069832089`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 460.8 KB (460788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7705f8b8f1de989ae8e63828bc91553d1aa32563ed57bd05b21828c0ef89920`  
		Last Modified: Wed, 05 Sep 2018 01:32:25 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2baa561332e300334fa017ef5b45151657527137d6c5d1996d8e8b7fa714bbba`  
		Last Modified: Wed, 05 Sep 2018 01:36:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1725191b36292d7aad37f9154abfc603b10ed6bfee82df1e22535a8663eef42`  
		Last Modified: Fri, 28 Sep 2018 18:41:42 GMT  
		Size: 78.4 MB (78387324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ba3e6a309a1b4e4d99b879beea6f0b931799ea02661002a9aa91b779dc25f83`  
		Last Modified: Fri, 28 Sep 2018 19:06:14 GMT  
		Size: 4.1 MB (4075721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c210acb15275a6911e58f8a76e76b6ca1716159d981f312e92aaf115f16b9568`  
		Last Modified: Fri, 28 Sep 2018 19:06:12 GMT  
		Size: 4.9 KB (4912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448770a6d7a26c838d54ee7debc84537e3cc0f840c8c0671a762e64aba8addf0`  
		Last Modified: Fri, 28 Sep 2018 19:06:12 GMT  
		Size: 75.4 KB (75445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b194bffb5d0093469d855e99f40b4e4d6b92282d77119b61ca2f29eaf94661`  
		Last Modified: Fri, 28 Sep 2018 19:06:40 GMT  
		Size: 169.0 MB (169047639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b018f064943e6a0b3147c990ebbf21c841945aff6abd8224f2c49e4dc256df64`  
		Last Modified: Fri, 28 Sep 2018 19:06:12 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2282b7bbc5694dfe52d6adb19e45ea118eae162b5af2150bbfc04a0257f822`  
		Last Modified: Fri, 28 Sep 2018 19:06:12 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:6ca4ae91ac5b2219a49118de9c731136404b1776affb84bebeb8b033f899780c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260702496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5abfb9387fb2f3c397b20b6db8d725c0ce54ff59f8fa95fc7a91065210c9c9c0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:53:37 GMT
ADD file:c7d4df0199eabe1be20064e36b7f406cc093e6e4b249fe3d5e80efbdd9d11396 in / 
# Wed, 05 Sep 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:28:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:28:42 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 09:28:43 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 09:30:14 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 09:30:15 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 09:32:34 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 14:05:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 14:05:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 14:05:38 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:50:37 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 08:50:37 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 08:50:38 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 08:50:40 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 08:50:41 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 08:52:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 08:52:17 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 08:52:18 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 08:52:18 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 08:52:19 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 08:52:19 GMT
USER [solr]
# Tue, 25 Sep 2018 08:52:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 08:52:20 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:242ba358ac12243e79ea9900990c026a4b2a428ee912e82307cda7137ce87b08`  
		Last Modified: Wed, 05 Sep 2018 09:02:45 GMT  
		Size: 24.0 MB (24046737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9be3091e0f7f183201efb4d0d133657219a4951278ed991b57026f1390a136`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 452.7 KB (452681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046c6149e9cffbd63a5b8711d29fa55ec8913d650f6ba47eae844fdcceb45afd`  
		Last Modified: Wed, 05 Sep 2018 09:38:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c38bc6cad5552a2a60388a28ced2c9c70a64a36b5f04205c9c672ff1d84b699`  
		Last Modified: Wed, 05 Sep 2018 09:38:39 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2dec0e90a26ee5d750814e012b02e2fc8067ce3bec3ee2e3ec62eb8b53324fc`  
		Last Modified: Wed, 05 Sep 2018 09:41:30 GMT  
		Size: 63.3 MB (63281338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fd00b361dd84facba50c381b15f5a6dce9872a1020bc1b318d3b0a5cf86fde`  
		Last Modified: Wed, 05 Sep 2018 14:10:51 GMT  
		Size: 3.8 MB (3794350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e821285e422a27744eadc66b479396ba65cc9e4a79f72488eadb347380536dce`  
		Last Modified: Tue, 25 Sep 2018 08:55:17 GMT  
		Size: 4.8 KB (4840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f620604a8a224ae434675408e2911ef286464bd5a4fbfc2b8a5da841e0dc4deb`  
		Last Modified: Tue, 25 Sep 2018 08:55:17 GMT  
		Size: 75.5 KB (75512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e28ee99e7f7f4aea0f7c3635fc34daa915f7f529d431b8af1b9a0997a713f0`  
		Last Modified: Tue, 25 Sep 2018 08:55:39 GMT  
		Size: 169.0 MB (169038162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6777eaaa92030d2a3e500f21658edb95a5a60f8c09a483e31a7292951b5996d9`  
		Last Modified: Tue, 25 Sep 2018 08:55:18 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1b85ee0652e11143858a25990ed1c599033cb2c0369368047819d15476daf2`  
		Last Modified: Tue, 25 Sep 2018 08:55:17 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:2d720e583655e7685974130bd014f55d6867cd49eef590d1500860967e3b12c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.1 MB (260118385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d38edbd8fb6bab0e7a5263fd84d35c3d17544e1742fd112715fc8101a6f9aa6`
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
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:14:30 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:17:00 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:50:22 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 17:50:23 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 17:50:40 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 12:01:09 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 12:01:10 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 12:01:10 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 12:01:12 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 12:01:13 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 12:02:46 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 12:02:53 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 12:02:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 12:02:55 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 12:02:55 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 12:02:56 GMT
USER [solr]
# Tue, 25 Sep 2018 12:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 12:02:57 GMT
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
	-	`sha256:3c6df311b4bc437e900b0e884eb48d0da62cf1f4d1eaaf17c4e2b19405fa5e85`  
		Last Modified: Wed, 05 Sep 2018 13:42:25 GMT  
		Size: 65.1 MB (65118276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5ca2cd4821c47087477ffafed7f68df2ffea1de308f641c8eaab3ac92656e64`  
		Last Modified: Wed, 05 Sep 2018 17:55:13 GMT  
		Size: 3.5 MB (3466374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6d9794e43ba7a61d8c71cbaa499f6b809f64e486f2a0001602d3da7fa7b36e`  
		Last Modified: Tue, 25 Sep 2018 12:05:47 GMT  
		Size: 4.8 KB (4845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4823c43a3ce033786020e8c63107e1f5f8cbcc0bdec54ef10e4d90467b4031`  
		Last Modified: Tue, 25 Sep 2018 12:05:47 GMT  
		Size: 75.5 KB (75498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80d13c6185399ea9551fed9a0214c2d5899e5b686da7546634af6e8786ba67c`  
		Last Modified: Tue, 25 Sep 2018 12:06:24 GMT  
		Size: 169.0 MB (169022661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00d458ba5586b89c5e54c688dbb046ef2772b1a405a1823bc440e1b3987aab57`  
		Last Modified: Tue, 25 Sep 2018 12:05:47 GMT  
		Size: 4.2 KB (4250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2048448d14e331b31e0b53a62d33f696648882cfa3dd4ff77b7261cc40be4afd`  
		Last Modified: Tue, 25 Sep 2018 12:05:47 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:33dddf6c599f61e5224e6435276687b730755c90460eb996739d0fcff74bd8b9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.6 MB (265560270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90b0fca5ad6cfb613ac25fd8f5aaacc843e02b0b78e6c2ab3a5cf9c49c3e7b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:45:52 GMT
ADD file:24dbb552dccf9615a5e69bf23e9456e1113ecd17c0803a5b489ffed88bedfc74 in / 
# Wed, 05 Sep 2018 08:46:08 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:58:14 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:58:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 13:12:03 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 13:12:06 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 13:12:07 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 13:12:08 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 13:23:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 06 Sep 2018 04:10:21 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 06 Sep 2018 04:10:22 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 06 Sep 2018 04:10:54 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:59:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 08:59:11 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 08:59:11 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 08:59:14 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 08:59:17 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 09:00:16 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 09:00:17 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 09:00:19 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 09:00:20 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 09:00:20 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 09:00:21 GMT
USER [solr]
# Tue, 25 Sep 2018 09:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 09:00:22 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:72c8cb2fd9e6abd14d8304d2ab8f3981d9ee18081e0eec41f5a6329ad46e13dc`  
		Last Modified: Wed, 05 Sep 2018 09:03:24 GMT  
		Size: 24.4 MB (24421582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6913615f01b262099426dbf3dc8f34a66d8acdd16e1b670f80120a578455d15f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 446.8 KB (446802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec43cb8ddfaa74be1577307975c3673ede54a0bdbaf3dfd3ce3f5026dc960b4c`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d068053e034e51230770f923a95fb4c838f9f86f674198cde6f986f77975313f`  
		Last Modified: Wed, 05 Sep 2018 13:51:40 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb7df94413a3acea6bd7bf62764d6f3dc452589e138aa848f570f3833638267f`  
		Last Modified: Wed, 05 Sep 2018 14:05:08 GMT  
		Size: 67.6 MB (67616182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a094f398d46ddba5113b6e669e4cb6d0c1949ae5235afea27508e8c925892f48`  
		Last Modified: Thu, 06 Sep 2018 04:53:16 GMT  
		Size: 4.0 MB (3970873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b095a46b551dbd5ce295f069570d90e48b64337e833d0e26b5692836d5ff322`  
		Last Modified: Tue, 25 Sep 2018 09:06:58 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77ed69894000ba67166660d114fbaff212d57bb753a293eae04ac1f61be3eb44`  
		Last Modified: Tue, 25 Sep 2018 09:06:58 GMT  
		Size: 75.5 KB (75459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a98d613dc338b25408c8f78a018a70403b0b13d90fae3597d706a3737486eedf`  
		Last Modified: Tue, 25 Sep 2018 09:07:25 GMT  
		Size: 169.0 MB (169015577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d2538fda828af0403675ded5c11dfbe6ff9c6251753c75cfa86a9725551be96`  
		Last Modified: Tue, 25 Sep 2018 09:06:59 GMT  
		Size: 4.2 KB (4227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:620b1a1322efc65af1f5f22956897bb19ea6e900f61e82fb5b935268701cc53b`  
		Last Modified: Tue, 25 Sep 2018 09:06:58 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; 386

```console
$ docker pull solr@sha256:0a36302df67f4ac30c9a79dad06cec62a5047aa3e46bcf4bd518fdc994c137c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283495874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a217934ac16ad06eb28cbb9ec3b2261c50ebddadf32e8bc014511c7285fd279d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:28 GMT
ADD file:d4af5b170a1dc9b1a5129aad95a449a0412bc890b20f7bcc406b10765217d72d in / 
# Wed, 05 Sep 2018 10:42:28 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:46:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:46:37 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:46:38 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:51:15 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:51:16 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:55:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 07 Sep 2018 03:17:10 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 07 Sep 2018 03:17:10 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 07 Sep 2018 03:17:21 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 10:56:39 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 10:56:40 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 10:56:40 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 10:56:41 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 10:56:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 10:56:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 10:56:58 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 10:56:59 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 10:56:59 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 10:56:59 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 10:56:59 GMT
USER [solr]
# Tue, 25 Sep 2018 10:56:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 10:56:59 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5b7c4e2e64859070ddb846c8d1995c868828ca3f0747e700ce525cca0c668ead`  
		Last Modified: Wed, 05 Sep 2018 10:50:43 GMT  
		Size: 26.9 MB (26855389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe790305403cfefcd04e2c7141ec9c0cdf63365ea7cb2266f45810018349d1e`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 469.7 KB (469687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ab579a9b26299f67deeeff886666f4181e13e5ff5abf594e0cc6b5c92241e0`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e89b90599f0895ab1c534d8de2562ce3a6f075cefe4de08fc3b6d51484bdfc5`  
		Last Modified: Wed, 05 Sep 2018 13:18:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79796c60db5e9b11b3cca0f930972591704d260aa4dd54c6e1aa3a2b7df34915`  
		Last Modified: Wed, 05 Sep 2018 13:23:35 GMT  
		Size: 82.7 MB (82696063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906ab295f1609df0b389b7251d9c62caccfdcb0fac336b9690689a12880b9fa8`  
		Last Modified: Fri, 07 Sep 2018 03:25:50 GMT  
		Size: 4.4 MB (4358069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f6845152ac12ccbdb3f1d1bbea494112b8daf1dd434d52d25c399ffbde253e1`  
		Last Modified: Tue, 25 Sep 2018 11:00:53 GMT  
		Size: 4.8 KB (4842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fb3ca9b20fbfde8a1852f6ea3c371e8da3fea4d32249b7042a50f5d7e36213a`  
		Last Modified: Tue, 25 Sep 2018 11:00:53 GMT  
		Size: 75.4 KB (75447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90035f24dc90b39037bdcf3b94da57512e5522a321f912601efb5a52aefa30b7`  
		Last Modified: Tue, 25 Sep 2018 11:01:08 GMT  
		Size: 169.0 MB (169027529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:898b946418020ab3651cb1fa320de1ff6dcd6ce2d86430c1aa0f85cdce8cf296`  
		Last Modified: Tue, 25 Sep 2018 11:00:54 GMT  
		Size: 4.2 KB (4225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673498e8196f29d555f821e7711a66f8e1347ee14fdcfad94cd88d5140275725`  
		Last Modified: Tue, 25 Sep 2018 11:00:53 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:96c5ec9907ce4b20a28d388796c67ac943fc8bd788bd34cb2f6812362c42bb19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.4 MB (272384614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98b3044043a77ea7135dbe01606352950ddc54704f1f82ac4fb8d9619eca2164`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 08:18:11 GMT
ADD file:2c83f3c9e6ae13dc30fafc9ae3805ad69b08b4da3106915ed14ab1f30f967f23 in / 
# Wed, 05 Sep 2018 08:18:11 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:45:55 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:45:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 11:57:01 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 11:57:02 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 11:57:03 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 17:17:43 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 17:17:44 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 17:18:30 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 08:24:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 08:24:13 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 08:24:14 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 08:24:18 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 08:24:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 08:25:49 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 08:25:51 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 08:25:54 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 08:25:55 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 08:25:56 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 08:25:57 GMT
USER [solr]
# Tue, 25 Sep 2018 08:25:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 08:26:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ad06b39b761d5d0d233a1f9ed85dd96e65a277e736303cc95163a7aff63a44ec`  
		Last Modified: Wed, 05 Sep 2018 08:23:53 GMT  
		Size: 28.7 MB (28718549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49bca90424a7272ac7b846fddea3728bdaaae7093a26bda8e0596bdd046aa8d2`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 458.4 KB (458392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e875ef1b7436e18e8f4d510cd11b49d70c3cc15aadbdff5eceb47089e22b733`  
		Last Modified: Wed, 05 Sep 2018 12:24:45 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b70776989c90e7bf1525a8eda7b904cd78325751c1c4a02b57a879c362c1d105`  
		Last Modified: Wed, 05 Sep 2018 12:24:44 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe86d0a8bd2d8ddc0916b25c66d21e490057d6f8b2b765258df8e7e3cdedeb68`  
		Last Modified: Wed, 05 Sep 2018 12:31:17 GMT  
		Size: 69.4 MB (69416847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04fbcf12da8ec3a9d07e494bf4b9da287942f3a9a4544dcf14489c0252e4356c`  
		Last Modified: Wed, 05 Sep 2018 17:51:43 GMT  
		Size: 4.7 MB (4685038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c40593d268358ee3a9d42ec424adbf326ff9a3800da5f258ef148ab08738c9ef`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.9 KB (4909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d72c1ded08befa58c5cadf50579a0cd459cf4a14e2849f24cc2ba7fa3f4e07ad`  
		Last Modified: Tue, 25 Sep 2018 08:34:48 GMT  
		Size: 75.5 KB (75485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4b2fb97b252ebe1c0d7ed047eb35e8774581ce4ec0d9414a5fd02b41d9fe00c`  
		Last Modified: Tue, 25 Sep 2018 08:35:13 GMT  
		Size: 169.0 MB (169016518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7998027b002339386a8224a268491df7d17e8943bf3e9eb5585962b3b73aaf87`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.3 KB (4252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73e20460817b79c1a897f2d755e661329e79b80e28a5242a66e14190d187dc8`  
		Last Modified: Tue, 25 Sep 2018 08:34:47 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:7-slim` - linux; s390x

```console
$ docker pull solr@sha256:138cb231dd973c8cc1cf39868716446674df38489e20e4924cc6aa8df107c951
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.2 MB (266160192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08e783555bb5f12db7326fd2ddfe18aed97169eb38dab78b01a0809c1521165a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 05 Sep 2018 11:42:49 GMT
ADD file:7095b21d997eff90a29af9f20d020b10d14cea2f20456b08af38e55cc6c5dcfb in / 
# Wed, 05 Sep 2018 11:42:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:06:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:06:45 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 12:06:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Sep 2018 12:07:55 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_VERSION=10.0.2+13
# Wed, 05 Sep 2018 12:07:56 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Wed, 05 Sep 2018 12:09:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Sep 2018 15:12:14 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 05 Sep 2018 15:12:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 05 Sep 2018 15:12:24 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 25 Sep 2018 11:59:06 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Sep 2018 11:59:06 GMT
ENV GOSU_VERSION=1.10
# Tue, 25 Sep 2018 11:59:06 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 25 Sep 2018 11:59:07 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 25 Sep 2018 11:59:07 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 25 Sep 2018 11:59:20 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 25 Sep 2018 11:59:20 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Tue, 25 Sep 2018 11:59:20 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 25 Sep 2018 11:59:21 GMT
EXPOSE 8983/tcp
# Tue, 25 Sep 2018 11:59:21 GMT
WORKDIR /opt/solr
# Tue, 25 Sep 2018 11:59:22 GMT
USER [solr]
# Tue, 25 Sep 2018 11:59:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Sep 2018 11:59:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0141ef1e371b0b8a4fc6d4d5118bbbf6045c295fad232833a634af2cf45bd823`  
		Last Modified: Wed, 05 Sep 2018 11:47:38 GMT  
		Size: 24.9 MB (24910961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bc3bfe0feae05698cb0859fa53d95daee2e1eaab41cfebb8f0ce0069be8249f`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 469.8 KB (469760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afb38e1f6e0d29149721db25f9fbb79505806393a70c856ce96f12151c543441`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:622e8c23a6cd95f633fc06b7d0f1738dad7c31e9d3124e92c3c647ee51eed9b8`  
		Last Modified: Wed, 05 Sep 2018 12:11:29 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d5cc4f0da91266b6f41e71f0a7a4fe96a84b4574d210cda14acc7b7311c2d0d`  
		Last Modified: Wed, 05 Sep 2018 12:13:57 GMT  
		Size: 67.7 MB (67667270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d97f553d9968e9d7285df70563d2a2422546dfc4ce7136261482d8dcc324a2`  
		Last Modified: Wed, 05 Sep 2018 15:16:15 GMT  
		Size: 4.0 MB (3989452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2973992b951e2e3fbbe4ea849caa2fba135e5439cd797006aaaf5833ebef252b`  
		Last Modified: Tue, 25 Sep 2018 12:02:35 GMT  
		Size: 4.9 KB (4944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ea74df27a23c4c2c7e89b24447af72c9babaa898c148038d85a5028e1bbd94`  
		Last Modified: Tue, 25 Sep 2018 12:02:35 GMT  
		Size: 75.4 KB (75444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f757a0142f50e7220900f66453ef5c47b3d015171876da676ecabb8f011d097c`  
		Last Modified: Tue, 25 Sep 2018 12:02:48 GMT  
		Size: 169.0 MB (169033515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07281e92a8eca2dd0ee66c25a748322c87042361236ff8db613b14efa0a64d9f`  
		Last Modified: Tue, 25 Sep 2018 12:02:35 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7edc76d23c4421c511f1565e5a9d37f21fa973a4a573bfa0adda7f133cc1c1de`  
		Last Modified: Tue, 25 Sep 2018 12:02:34 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

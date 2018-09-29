## `solr:slim`

```console
$ docker pull solr@sha256:8fa81a134a89c35fd5b81aaa1e519243545895172f66ffae521c3996c13aee5c
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

### `solr:slim` - linux; amd64

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

### `solr:slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:dec78ac72bfc5797489cdd019fb5230ed612cc449007551d8f7afadb444a641e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.7 MB (260740664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b63f03633bcd87543445198aee02cbf356ba5612405ff71cc623fff367cfaa2`
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
# Sat, 29 Sep 2018 08:56:47 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 08:56:48 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 08:59:59 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 09:40:18 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 29 Sep 2018 09:40:18 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 29 Sep 2018 09:40:33 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 09:40:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 09:40:34 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Sep 2018 09:40:34 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Sep 2018 09:40:36 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 29 Sep 2018 09:40:37 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 29 Sep 2018 09:42:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 29 Sep 2018 09:42:03 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 29 Sep 2018 09:42:04 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 29 Sep 2018 09:42:05 GMT
EXPOSE 8983/tcp
# Sat, 29 Sep 2018 09:42:05 GMT
WORKDIR /opt/solr
# Sat, 29 Sep 2018 09:42:06 GMT
USER [solr]
# Sat, 29 Sep 2018 09:42:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Sep 2018 09:42:07 GMT
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
	-	`sha256:275635166108ddad4171dee9a25d3a090a3813a663fa1132040c61ecd03ea77c`  
		Last Modified: Sat, 29 Sep 2018 09:10:42 GMT  
		Size: 63.3 MB (63317300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd16301dd8b48d7bb42897a1d2d663b8ff7ebcde5310a322be31a794a4542f8`  
		Last Modified: Sat, 29 Sep 2018 09:53:15 GMT  
		Size: 3.8 MB (3796650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c330709b4b937c7136d002d2918a494d8ea8ee79fe0b25785be35b08e5f52242`  
		Last Modified: Sat, 29 Sep 2018 09:53:13 GMT  
		Size: 4.8 KB (4840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c0569ffc6debf4bfe85ed3262e45d7485b824adbfe5ab633e5e6d312fe610af`  
		Last Modified: Sat, 29 Sep 2018 09:53:13 GMT  
		Size: 75.5 KB (75478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e013fddf09846d28917ff3b5e4a856b1063f3a4cb8ceb21641983f86d95517d`  
		Last Modified: Sat, 29 Sep 2018 09:53:33 GMT  
		Size: 169.0 MB (169038096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c02a0f570f4b94a4ce5fa503d2f9595b05dd946987b874aaf684ceb415dad65a`  
		Last Modified: Sat, 29 Sep 2018 09:53:13 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199da295bf114550ce07c9b1f5f328881d53c517bd9fffafe0687b8918588399`  
		Last Modified: Sat, 29 Sep 2018 09:53:13 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm variant v7

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

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:68411561fae4fb515d1451d1cbf5eeabc6ba473271a7cc4c358c7def261d0b32
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.9 MB (265887033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98281227f8407dcc7b8b887145fff93eed35bb379c25892a32a35759f802339a`
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
# Sat, 29 Sep 2018 09:12:22 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 09:12:23 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 09:21:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 10:19:40 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 29 Sep 2018 10:19:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 29 Sep 2018 10:20:22 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 10:20:23 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 10:20:24 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Sep 2018 10:20:24 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Sep 2018 10:20:27 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 29 Sep 2018 10:20:30 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 29 Sep 2018 10:21:42 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 29 Sep 2018 10:21:44 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 29 Sep 2018 10:21:50 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 29 Sep 2018 10:21:51 GMT
EXPOSE 8983/tcp
# Sat, 29 Sep 2018 10:21:52 GMT
WORKDIR /opt/solr
# Sat, 29 Sep 2018 10:21:53 GMT
USER [solr]
# Sat, 29 Sep 2018 10:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Sep 2018 10:21:57 GMT
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
	-	`sha256:b08174b822a76b899cc41c26641ae3b347af487f494f5c4bd45812092f1d6018`  
		Last Modified: Sat, 29 Sep 2018 09:40:15 GMT  
		Size: 67.9 MB (67919602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ae82a2220694c94fbd6fa17261836238c1f7d6c714a51e95cae1ff402d9599`  
		Last Modified: Sat, 29 Sep 2018 10:37:36 GMT  
		Size: 4.0 MB (3994304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076c969f59d1fd2004e717952c465848469954044affcea5f655623a456f5009`  
		Last Modified: Sat, 29 Sep 2018 10:37:33 GMT  
		Size: 4.9 KB (4943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:560fe1ac5c1a355e2c4a9a57bbe87e49c36cc3190719de68dcb9e8a6bc23bb36`  
		Last Modified: Sat, 29 Sep 2018 10:37:33 GMT  
		Size: 75.5 KB (75464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c8f3f529aea54461d05c90e96d24f43269d4f76b76241d78f69a0ecce231cf`  
		Last Modified: Sat, 29 Sep 2018 10:37:57 GMT  
		Size: 169.0 MB (169015483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e5fe4a70f19a28f7fea9e306c334722fa47ea47b0f8474205d913ee120045da`  
		Last Modified: Sat, 29 Sep 2018 10:37:33 GMT  
		Size: 4.2 KB (4228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c30770407f8dcfab5a2c9cd400bba60eab184e9c3cb15b6d15f28cb5a5832fdf`  
		Last Modified: Sat, 29 Sep 2018 10:37:33 GMT  
		Size: 4.3 KB (4257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; 386

```console
$ docker pull solr@sha256:bda230df97dcd2d66738137d599416fc144884a788047351c2ce9b5cec172199
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283542561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ea3572124c1ce28bf43555448452ae79f823b329ea8ce0673e76fbe86f9dd3`
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
# Sat, 29 Sep 2018 10:53:58 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 10:53:59 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 10:56:24 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 11:43:14 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 29 Sep 2018 11:43:15 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 29 Sep 2018 11:43:24 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 11:43:25 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 11:43:25 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Sep 2018 11:43:25 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Sep 2018 11:43:26 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 29 Sep 2018 11:43:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 29 Sep 2018 11:43:44 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 29 Sep 2018 11:43:45 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 29 Sep 2018 11:43:45 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 29 Sep 2018 11:43:45 GMT
EXPOSE 8983/tcp
# Sat, 29 Sep 2018 11:43:46 GMT
WORKDIR /opt/solr
# Sat, 29 Sep 2018 11:43:46 GMT
USER [solr]
# Sat, 29 Sep 2018 11:43:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Sep 2018 11:43:46 GMT
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
	-	`sha256:b05f0321718501c8d7e8549c59159b5e583e34975c2030410fde242387dc2c80`  
		Last Modified: Sat, 29 Sep 2018 11:08:43 GMT  
		Size: 82.7 MB (82742202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa544b304bed9b99064875c79c7fd575dada0303067aac0b93b3ab93660f5fb`  
		Last Modified: Sat, 29 Sep 2018 11:48:55 GMT  
		Size: 4.4 MB (4358653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b3e4669b63c6c2f42ccab6a041893c948be8a7c898d228fe955b3aad06f17e8`  
		Last Modified: Sat, 29 Sep 2018 11:48:54 GMT  
		Size: 4.8 KB (4842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:844c55df2bc0491cbb2f9c789a193ee0258d7889291f4ddc31d7e26378325605`  
		Last Modified: Sat, 29 Sep 2018 11:48:54 GMT  
		Size: 75.5 KB (75479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13cec0f123017609c5d32c0f18af33fbce8410df5f2f4f641c2b8761b142f901`  
		Last Modified: Sat, 29 Sep 2018 11:49:07 GMT  
		Size: 169.0 MB (169027469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf276ca5cba62d04251509bcb193f2476fc4d44b4cfa26db9e62eacf89896293`  
		Last Modified: Sat, 29 Sep 2018 11:48:53 GMT  
		Size: 4.2 KB (4221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88573b7d18e6c7db9f54a2edf66394652db8acc46e74fa1e1d5db49d77814bf7`  
		Last Modified: Sat, 29 Sep 2018 11:48:53 GMT  
		Size: 4.3 KB (4251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:fef08b2495209e61cabe4a651a43b36752ebc748b083c482bf2b1122d04e972c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.8 MB (272829317 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62cb3741fa4de717f4b1e20701de5fe9d370b84ed1747edb651c8308a8a9175e`
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
# Sat, 29 Sep 2018 08:43:41 GMT
ENV JAVA_VERSION=10.0.2
# Sat, 29 Sep 2018 08:43:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.2+13-1
# Sat, 29 Sep 2018 08:54:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Sep 2018 09:53:08 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Sat, 29 Sep 2018 09:53:20 GMT
ARG SOLR_DOWNLOAD_SERVER
# Sat, 29 Sep 2018 09:54:09 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Sat, 29 Sep 2018 09:54:11 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.5.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.5.0/solr-7.5.0.tgz SOLR_SHA256=eac2daffc376dd8057ee831fbfc4a1b8ee236b8ad94122e11d67fd2b242acebc SOLR_KEYS=052C5B48A480B9CEA9E218A5F98C13CFA5A135D8 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Sep 2018 09:54:22 GMT
ENV GOSU_VERSION=1.10
# Sat, 29 Sep 2018 09:54:24 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Sat, 29 Sep 2018 09:54:29 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Sat, 29 Sep 2018 09:54:36 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Sat, 29 Sep 2018 09:56:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Sat, 29 Sep 2018 09:56:12 GMT
COPY dir:559a3b850dcec4cf3808cc890e2a3da7dea47e3e083fe4065a61affa123bfbce in /opt/docker-solr/scripts 
# Sat, 29 Sep 2018 09:56:16 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Sat, 29 Sep 2018 09:56:17 GMT
EXPOSE 8983/tcp
# Sat, 29 Sep 2018 09:56:18 GMT
WORKDIR /opt/solr
# Sat, 29 Sep 2018 09:56:18 GMT
USER [solr]
# Sat, 29 Sep 2018 09:56:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Sep 2018 09:56:21 GMT
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
	-	`sha256:43eaf4002f0dbbb00bac3d35ad8fe16d739205c1206cca4e0a2bfe4931ca9452`  
		Last Modified: Sat, 29 Sep 2018 09:22:47 GMT  
		Size: 69.8 MB (69835304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa09cd961578c902d7dcd791a56b5edbd8b7cf99af48fd62f7a205401dc19bd`  
		Last Modified: Sat, 29 Sep 2018 10:13:07 GMT  
		Size: 4.7 MB (4711279 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b381ce143c5e3293ae79b349a898cd62dfe608ee22a3f72533b14aa7ec0cef`  
		Last Modified: Sat, 29 Sep 2018 10:13:02 GMT  
		Size: 4.9 KB (4916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74a42099ab31389222205c860de85c608b5e65c2934c225e5fefed2398ae7492`  
		Last Modified: Sat, 29 Sep 2018 10:13:01 GMT  
		Size: 75.5 KB (75493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d75f182b54dc7475658a942c9d6f5fafe60c274ec2ba62db72fd5782e3d1a97f`  
		Last Modified: Sat, 29 Sep 2018 10:13:25 GMT  
		Size: 169.0 MB (169016507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9ec7aaa939573b61fff243da71fac2b46fc9de6c096bb1f1525915e4f45ba58`  
		Last Modified: Sat, 29 Sep 2018 10:13:02 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31721e04f6bf3a07f46a3e667648729aa3c7f23a00e20e84dd1883dd49f9dddb`  
		Last Modified: Sat, 29 Sep 2018 10:13:03 GMT  
		Size: 4.3 KB (4254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; s390x

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

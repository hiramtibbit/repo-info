## `solr:5-slim`

```console
$ docker pull solr@sha256:ff76557543a067b3427bcd78d3465dfec8d4d864ee4fccd53c39e2edaacc7445
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

### `solr:5-slim` - linux; amd64

```console
$ docker pull solr@sha256:1dbd87744851e2e21b2d3ddb800b23bed3fb910e83d79622589ba90762063ba8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.3 MB (215296113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10fe8f1075a188f791adce05e8d66a4f604aeb4f865c0f33620fb840cc8245e9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 08:25:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 08:29:13 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 08:29:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 08:29:15 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 08:30:47 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 08:31:12 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 17:29:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 06 Feb 2019 17:29:17 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 06 Feb 2019 17:29:26 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 17:33:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 17:33:01 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 17:33:02 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 06 Feb 2019 17:33:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 06 Feb 2019 17:33:07 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 06 Feb 2019 17:33:26 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 06 Feb 2019 17:33:26 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 06 Feb 2019 17:33:28 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 06 Feb 2019 17:33:28 GMT
EXPOSE 8983
# Wed, 06 Feb 2019 17:33:29 GMT
WORKDIR /opt/solr
# Wed, 06 Feb 2019 17:33:29 GMT
USER solr
# Wed, 06 Feb 2019 17:33:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 17:33:30 GMT
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
	-	`sha256:8f37e25a28fcc612aa4d7f14effcc97964c720244c1df67570f6834c8e80fdb7`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211d5433339d39c37cc2fe7f8cfa195ac8d9f0072c3be0e49b33dca261a56733`  
		Last Modified: Wed, 06 Feb 2019 08:53:55 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60727ce1471afc3de3bc0c8f518e1f79bc5714bc6b80e322f64ff9d75dbf30b`  
		Last Modified: Wed, 06 Feb 2019 08:55:09 GMT  
		Size: 55.8 MB (55844124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d11f0b5fa7984ce0b0c537510ace8afa8a994e19820c16445c82b69c4a8de19`  
		Last Modified: Wed, 06 Feb 2019 17:36:17 GMT  
		Size: 4.0 MB (3974087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceb13b90fd5d4be2c9a0d31356994b95f25ec51bb44a6d962d2b944bb81081bd`  
		Last Modified: Wed, 06 Feb 2019 17:38:38 GMT  
		Size: 4.3 KB (4295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c7a1a4405cfe63cdc38fa2e4c6f585acbeb2f65e06e99c7328135f93544faa3`  
		Last Modified: Wed, 06 Feb 2019 17:38:38 GMT  
		Size: 88.7 KB (88715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aba5f17d4eee445d6fdc895c23d9922580ddf2ef9fdbfdc26b0317cc00f41ad`  
		Last Modified: Wed, 06 Feb 2019 17:38:54 GMT  
		Size: 132.4 MB (132420872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191d0f653b6b592940e11e55cf742c67747dcf3ffb138b6ec53d63d3a30ee430`  
		Last Modified: Wed, 06 Feb 2019 17:38:38 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719bb451774045a5ad1ca97383ed8f377bfd223d8bd5afabfd59c305ef4b5c67`  
		Last Modified: Wed, 06 Feb 2019 17:38:38 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:91cd29c587b43c5765bf48bf5d74f929e065b188bea24898c1be828f3d2d1e2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.5 MB (204504446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ab1c7d74da1df5d467ee67d8aee990fe3822336b9c0533e755fb0087e268f9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:53 GMT
ADD file:dc26e428c2cc58c087582281cf61d570f0393114b5402cff1118ca6b35ed53d7 in / 
# Wed, 23 Jan 2019 09:54:54 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:42:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:50:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:50:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 12:50:31 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 12:52:52 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 12:52:52 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 12:52:53 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 12:53:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 17:36:27 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 23 Jan 2019 17:36:27 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 23 Jan 2019 17:36:44 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:47:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:47:27 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 17:47:27 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 23 Jan 2019 17:47:29 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 23 Jan 2019 17:47:33 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 23 Jan 2019 17:48:41 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 23 Jan 2019 17:48:43 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 23 Jan 2019 17:48:44 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 23 Jan 2019 17:48:45 GMT
EXPOSE 8983
# Wed, 23 Jan 2019 17:48:45 GMT
WORKDIR /opt/solr
# Wed, 23 Jan 2019 17:48:46 GMT
USER solr
# Wed, 23 Jan 2019 17:48:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 17:48:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:583fbf7ac56f75b30837306fc2d7ea455e87b6dd8eed4573d37b90971861e219`  
		Last Modified: Wed, 23 Jan 2019 10:02:22 GMT  
		Size: 21.2 MB (21181826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0448a0274fb127b6c698658b3915c7c94f835e73f7b8698a2a288bbed1965c95`  
		Last Modified: Wed, 23 Jan 2019 13:06:49 GMT  
		Size: 447.8 KB (447751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68d058a57605cf4c1efca448612cbcceaa1a050308dfee775036679ab356a5e6`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2036eb6031fefda81a1005b3f0af4b65d65f252cf6835cf8268856fb6b7d49da`  
		Last Modified: Wed, 23 Jan 2019 13:10:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c13d9d0c0e6850920ac6c841019026ee9df1264736aaddea1c98353e7b096b`  
		Last Modified: Wed, 23 Jan 2019 13:11:41 GMT  
		Size: 46.6 MB (46583272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f27a9796067bcc585acb759722a6a4a4526ded9f09fc98cbfb9c99af909d9ac`  
		Last Modified: Wed, 23 Jan 2019 17:52:26 GMT  
		Size: 3.8 MB (3778256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f68406848fa7587f56371a3bdf6e4aca5052d6640d0ff052d40f17dceaad9b`  
		Last Modified: Wed, 23 Jan 2019 17:55:14 GMT  
		Size: 4.2 KB (4223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86b21bd55741275d26c14d4b996c4f044c6ed2afe94e67ec6d5cc54ada371e3a`  
		Last Modified: Wed, 23 Jan 2019 17:55:14 GMT  
		Size: 88.7 KB (88746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a6d697ca32f53bb2a6d44c65ca7c82e132cc84cff680b71a221eca2c2805be5`  
		Last Modified: Wed, 23 Jan 2019 17:55:33 GMT  
		Size: 132.4 MB (132411482 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298eace96fd0d1ca7a96ecf93c5d5009045e533670777faeea4c2848fde995e1`  
		Last Modified: Wed, 23 Jan 2019 17:55:14 GMT  
		Size: 4.3 KB (4255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b1db2ea3cb01cc07f5fddc60261a91d34a350b89f0bc39624a7151aa36fd9f8`  
		Last Modified: Wed, 23 Jan 2019 17:55:14 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm variant v7

```console
$ docker pull solr@sha256:0221aee72325d3c554583d38cdd307379c6c2120fee3ca3ea8cd5e3aa54622ac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204939973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96686b68c70afff83e3161677ad6f6b91b403edca04a3c63cc9214eaf8993fa4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Tue, 27 Mar 2018 01:50:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 01:50:11 GMT
ENV LANG=C.UTF-8
# Tue, 27 Mar 2018 01:50:13 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 01:50:14 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 01:50:15 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 01:50:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 01:50:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 01:51:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 17 Jul 2018 17:02:52 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 17 Jul 2018 17:02:53 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 17 Jul 2018 17:03:08 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 17:06:02 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 17:06:02 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 17:06:02 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 17 Jul 2018 17:06:04 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 18 Dec 2018 13:27:05 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 18 Dec 2018 13:28:10 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 18 Dec 2018 13:28:11 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Tue, 18 Dec 2018 13:28:13 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 18 Dec 2018 13:28:13 GMT
EXPOSE 8983
# Tue, 18 Dec 2018 13:28:13 GMT
WORKDIR /opt/solr
# Tue, 18 Dec 2018 13:28:14 GMT
USER solr
# Tue, 18 Dec 2018 13:28:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 18 Dec 2018 13:28:14 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b006c16d8c81f9d03b541fa686cb57f40818f1d13ca2a326b7685a357d63e5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 447.7 KB (447679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b4c60102a2d43ceb83f32f54bc9fc75f477a8b3b7b43521e705bca7293161f6`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b290902da6536cde53ecb48ed3327fcebd41dd015833f9822475ef20d500ef85`  
		Last Modified: Tue, 27 Mar 2018 02:13:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd7dafe25a2c944102fd7f991fbe4c637540d55a8c821e79b4c9314d2a490d02`  
		Last Modified: Tue, 27 Mar 2018 02:13:42 GMT  
		Size: 46.8 MB (46769228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f3d863baa2a4efcf659083b9683c68d6ea00f60e0acb7d7610efb2edc9d4f5`  
		Last Modified: Tue, 27 Mar 2018 02:13:30 GMT  
		Size: 272.2 KB (272185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3dff72edbe1966fb319a82c7dbe51f51c76aebdb5b2a161cd7dc30dac1a4492`  
		Last Modified: Tue, 17 Jul 2018 17:11:58 GMT  
		Size: 3.8 MB (3772515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eaaa4e3321490bfc9989bbe083f405a7730d54db866ff44286291412af9a80d`  
		Last Modified: Tue, 17 Jul 2018 17:14:19 GMT  
		Size: 4.3 KB (4264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d722ae308a1379d079695e69749643232216007c7d9a67d01333422b7281b778`  
		Last Modified: Tue, 18 Dec 2018 13:36:26 GMT  
		Size: 88.7 KB (88747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617e8cd80664b4382db8b96ebd8a8017c2dee98b9f04ec823d26ea4d29661caf`  
		Last Modified: Tue, 18 Dec 2018 13:36:44 GMT  
		Size: 132.4 MB (132411506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0525f991af22fb03646fbfb8de873b4e362e05b49955fb5be0137a85d6d018ad`  
		Last Modified: Tue, 18 Dec 2018 13:36:26 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fceeb6aef2c276831e8f88a1545f504708fa9b6982c2d2ab5fa29392d649affe`  
		Last Modified: Tue, 18 Dec 2018 13:36:26 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:bfc0bd7b687805c33af8f1989ac03290f8d384730d9e1cbdad1559ce7c34207e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.9 MB (204943679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbac7f036f2e5536be3e1ae381f815d9f764a6f7acbb70aa10f364b8c57e701f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 10:04:38 GMT
ADD file:64db5736cabe52ff81a1eb31101c1afa1e4a04374e84ae717532a88286d01784 in / 
# Wed, 23 Jan 2019 10:04:39 GMT
CMD ["bash"]
# Fri, 25 Jan 2019 02:40:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 02:52:52 GMT
ENV LANG=C.UTF-8
# Fri, 25 Jan 2019 02:53:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 25 Jan 2019 02:53:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 25 Jan 2019 03:00:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 25 Jan 2019 03:00:02 GMT
ENV JAVA_VERSION=8u181
# Fri, 25 Jan 2019 03:00:05 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 25 Jan 2019 03:02:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 25 Jan 2019 11:06:17 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Fri, 25 Jan 2019 11:06:21 GMT
ARG SOLR_DOWNLOAD_SERVER
# Fri, 25 Jan 2019 11:08:29 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Fri, 25 Jan 2019 11:12:52 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 11:12:56 GMT
ENV GOSU_VERSION=1.10
# Fri, 25 Jan 2019 11:12:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Fri, 25 Jan 2019 11:13:03 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Fri, 25 Jan 2019 11:13:09 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Fri, 25 Jan 2019 11:13:38 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Fri, 25 Jan 2019 11:13:38 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Fri, 25 Jan 2019 11:13:41 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Fri, 25 Jan 2019 11:13:42 GMT
EXPOSE 8983
# Fri, 25 Jan 2019 11:13:42 GMT
WORKDIR /opt/solr
# Fri, 25 Jan 2019 11:13:43 GMT
USER solr
# Fri, 25 Jan 2019 11:13:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Jan 2019 11:13:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:711c3a2baeda87a6b9816cb812388d62d17396034e595a68d8ee5f938f9d77b3`  
		Last Modified: Wed, 23 Jan 2019 10:11:36 GMT  
		Size: 20.4 MB (20350180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76edf01497c9a4e831ad07bb27cbe0a56f58f853d7abf82120ad17cfd5d08be`  
		Last Modified: Fri, 25 Jan 2019 03:08:43 GMT  
		Size: 440.9 KB (440909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a0adf5053934b0aa34d6687db0aee4b5208f6a3d542719c88738de21a835b00`  
		Last Modified: Fri, 25 Jan 2019 03:11:58 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f07c907cb5f9ae9cc0f66f6904b0389d215f461d9193899965c115ed69562de`  
		Last Modified: Fri, 25 Jan 2019 03:11:57 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac41d148dc390cdccea7129c687a297406c4957848d592c743903d151b5bb63`  
		Last Modified: Fri, 25 Jan 2019 03:13:00 GMT  
		Size: 48.0 MB (48015594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b46e9de1841cd51781334da58d3e949b70ee8d4bffffd0d9f676f9a5214b6a0`  
		Last Modified: Fri, 25 Jan 2019 11:14:47 GMT  
		Size: 3.6 MB (3646292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78d9a9b09abddc91486e827a5e04cb3b55016c3a4a1de269dfca371a04ef269`  
		Last Modified: Fri, 25 Jan 2019 11:16:27 GMT  
		Size: 4.3 KB (4340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17a8bb5c3696a0db1559c491c8ca4cf450d3d0699a5863dc6892eb5e559ad572`  
		Last Modified: Fri, 25 Jan 2019 11:16:27 GMT  
		Size: 88.7 KB (88712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6839f31c96ff68cb7bd174dbf5a080288af4db5a583f002715c6334f79c284`  
		Last Modified: Fri, 25 Jan 2019 11:16:47 GMT  
		Size: 132.4 MB (132388791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e860d430ac676763e2b42b42371c15fc449490acda75e62c5525a368fea1ff72`  
		Last Modified: Fri, 25 Jan 2019 11:16:27 GMT  
		Size: 4.2 KB (4224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:103cea3d20a03abfc315d165a9e43311b1da2a0d36ef3c46618cdd10bb16fcc3`  
		Last Modified: Fri, 25 Jan 2019 11:16:27 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; 386

```console
$ docker pull solr@sha256:d12fd3e700164df99dcfbb59962c34ec4d908a062ca93a86e9426d3239a28c57
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215718406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4cd3eaff935ad933b35c007e8c763d454251ee5433dfabcd607f23fff9db63e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 23 Jan 2019 11:53:14 GMT
ADD file:33ade62bc2e01bcde808effab0eb8a419e852a98f00d20aa90921b4ab336f065 in / 
# Wed, 23 Jan 2019 11:53:15 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:55:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:58:57 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:58:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 17:58:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 18:00:16 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 23 Jan 2019 18:00:16 GMT
ENV JAVA_VERSION=8u181
# Wed, 23 Jan 2019 18:00:16 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 23 Jan 2019 18:00:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 24 Jan 2019 01:34:11 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 24 Jan 2019 01:34:11 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 24 Jan 2019 01:34:20 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 01:39:57 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 24 Jan 2019 01:39:57 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 01:39:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 24 Jan 2019 01:39:58 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 24 Jan 2019 01:40:01 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 24 Jan 2019 01:40:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 24 Jan 2019 01:40:15 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Thu, 24 Jan 2019 01:40:16 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 24 Jan 2019 01:40:16 GMT
EXPOSE 8983
# Thu, 24 Jan 2019 01:40:16 GMT
WORKDIR /opt/solr
# Thu, 24 Jan 2019 01:40:17 GMT
USER solr
# Thu, 24 Jan 2019 01:40:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Jan 2019 01:40:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7900f805f4cf31befea34795a27462a91c7e89405b1016d7762ebda023f3cf21`  
		Last Modified: Wed, 23 Jan 2019 12:02:40 GMT  
		Size: 23.1 MB (23147117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce65d679f0c09f017a7a14ac8e4106ac49211945c1a5c56f91fde304a197df42`  
		Last Modified: Wed, 23 Jan 2019 18:24:59 GMT  
		Size: 463.6 KB (463558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efac57406fca5734f97f95b2921ae5baa13b7cfe728f909b095476e96ee25de0`  
		Last Modified: Wed, 23 Jan 2019 18:27:35 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ccdcc4264095175b1ac8a862bb66c9db39515b7d662494061d3d952f49d4b5`  
		Last Modified: Wed, 23 Jan 2019 18:27:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f51d1a7e2a400ae215676db4ec4668ce08779cca3acb843c3e70fcafa9b588cf`  
		Last Modified: Wed, 23 Jan 2019 18:28:41 GMT  
		Size: 55.4 MB (55392498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf028f8904ed7ba62de2a0b740aee43bc9d96b67046ab4585435cc415bd5e09`  
		Last Modified: Thu, 24 Jan 2019 01:42:14 GMT  
		Size: 4.2 MB (4212753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5313b16041b6c4741674e6a494db1d079c037689b04164e9887087f5dda7c9e0`  
		Last Modified: Thu, 24 Jan 2019 01:44:02 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5145fd3c4707d5b4cfe71c9aff09fdf3b483b1396b9b86fa3a5cf66a2d9b9c6e`  
		Last Modified: Thu, 24 Jan 2019 01:44:02 GMT  
		Size: 88.7 KB (88713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841dddf5670dfe475a362191256d60896254d47fb1f98fc6354a59a0a2c4062e`  
		Last Modified: Thu, 24 Jan 2019 01:44:13 GMT  
		Size: 132.4 MB (132400689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08eeabc7652b83174b3c53b1592d7adbf0e62a71a023b122ff50b513e8d113cf`  
		Last Modified: Thu, 24 Jan 2019 01:44:02 GMT  
		Size: 4.2 KB (4222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c60dc9c19bf92848809bf5aab5ab992bfe2f7f0f050f75d474b81af5f223e9f2`  
		Last Modified: Thu, 24 Jan 2019 01:44:02 GMT  
		Size: 4.3 KB (4253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:8847472ee2128d91241cb7a01f3589d212de22e5c2572c721af85fa9ed07415a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.1 MB (208119453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feee2659a3ceabc5e249279e6a72da890492117ba31a1f861c94d073a33e4630`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:52 GMT
ADD file:a3fa4dfe4f8ea60454e3698650325be0ad97847e49c257136da78e2f997c2202 in / 
# Wed, 06 Feb 2019 09:26:54 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 11:22:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 11:28:25 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:28:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:28:35 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 11:30:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 11:30:56 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 11:30:58 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 11:32:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 01:34:07 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Thu, 07 Feb 2019 01:34:09 GMT
ARG SOLR_DOWNLOAD_SERVER
# Thu, 07 Feb 2019 01:34:34 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:48:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 01:48:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 01:48:10 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Thu, 07 Feb 2019 01:48:15 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Thu, 07 Feb 2019 01:48:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Thu, 07 Feb 2019 01:49:35 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Thu, 07 Feb 2019 01:49:37 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Thu, 07 Feb 2019 01:49:42 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Thu, 07 Feb 2019 01:49:43 GMT
EXPOSE 8983
# Thu, 07 Feb 2019 01:49:45 GMT
WORKDIR /opt/solr
# Thu, 07 Feb 2019 01:49:46 GMT
USER solr
# Thu, 07 Feb 2019 01:49:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 07 Feb 2019 01:49:49 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ce77ebcb1b656de04f8443959fa201b1696ff2136de5be3de628f0c463c727f4`  
		Last Modified: Wed, 06 Feb 2019 09:31:25 GMT  
		Size: 22.8 MB (22755392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29dc20b3ce8c37688658ff595852548d704112b0ebb0d3af8f062192264d7928`  
		Last Modified: Wed, 06 Feb 2019 11:36:54 GMT  
		Size: 449.8 KB (449778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df626ed30eb0652e5b003b710a3985d4da8fab9380d73d6a527844dd558869f3`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54567a4b75a7a615e048f4a48fd5d655f74096e529371baffad947f1bcb99d8`  
		Last Modified: Wed, 06 Feb 2019 11:40:02 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a965720baa7310cb30338d049ce534c88b9e8634d343901505d968282677ee44`  
		Last Modified: Wed, 06 Feb 2019 11:41:25 GMT  
		Size: 48.5 MB (48475541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7908eb07f7964701ba20fcf8c489170c56c0d9a5c81637d4c2dd0100fed2833f`  
		Last Modified: Thu, 07 Feb 2019 01:53:01 GMT  
		Size: 3.9 MB (3946630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1224941b60b00892ee4fd91a47d7cf675163d7b64a82dfe6e69fcbf0b181361e`  
		Last Modified: Thu, 07 Feb 2019 01:55:46 GMT  
		Size: 4.3 KB (4294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f79fc2187f4e77a99027eeb79236882c923517689b890aec24528dd58e1e31`  
		Last Modified: Thu, 07 Feb 2019 01:55:46 GMT  
		Size: 88.7 KB (88746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67d1f3dac562d5db5d2b4b81aadc98039195d4b666db24b0f31de2d9a0c4fdb`  
		Last Modified: Thu, 07 Feb 2019 01:56:12 GMT  
		Size: 132.4 MB (132390176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b0f193cd7a9045f400c66d583598eaba0d9d0f211769f2287dd64f7bf0a9b8`  
		Last Modified: Thu, 07 Feb 2019 01:55:46 GMT  
		Size: 4.3 KB (4256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e86e02c84b27d1fded658cee60e035cb96e6d713d1972b675ff88f0d043305`  
		Last Modified: Thu, 07 Feb 2019 01:55:45 GMT  
		Size: 4.3 KB (4259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:5-slim` - linux; s390x

```console
$ docker pull solr@sha256:c157a720283633d21e3bc3d860c4c9fd48ac8a7c961b662731b933cfbeb6be2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.0 MB (207048720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395173edb6c3fd1fabadc15ebc94798b4ebd2cdc92baea720897f2d51e7da8e1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:23 GMT
ADD file:3a9fa274c8adc237938518b0ab05a8da0888b24eb1291c4c1d10353adf5c2c35 in / 
# Wed, 06 Feb 2019 12:43:24 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 13:17:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 13:19:52 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:19:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:19:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Feb 2019 13:20:31 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 06 Feb 2019 13:20:32 GMT
ENV JAVA_VERSION=8u181
# Wed, 06 Feb 2019 13:20:32 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 06 Feb 2019 13:20:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Feb 2019 19:22:59 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Wed, 06 Feb 2019 19:22:59 GMT
ARG SOLR_DOWNLOAD_SERVER
# Wed, 06 Feb 2019 19:23:06 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:26:46 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=5.5.5 SOLR_URL=https://archive.apache.org/dist/lucene/solr/5.5.5/solr-5.5.5.tgz SOLR_SHA256=2bbe3a55976f118c5d8c2382d4591257f6e2af779c08c6561e44afa3181a87c1 SOLR_KEYS=5F55943E13D49059D3F342777186B06E1ED139E7 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 19:26:46 GMT
ENV GOSU_VERSION=1.10
# Wed, 06 Feb 2019 19:26:46 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Wed, 06 Feb 2019 19:26:47 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Wed, 06 Feb 2019 19:26:51 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --batch --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Wed, 06 Feb 2019 19:27:02 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Wed, 06 Feb 2019 19:27:03 GMT
COPY dir:7aa8184dd72cb3692c8f729b55f3c09baea5f3548d04771c2f4402f5da0d1287 in /opt/docker-solr/scripts 
# Wed, 06 Feb 2019 19:27:03 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Wed, 06 Feb 2019 19:27:03 GMT
EXPOSE 8983
# Wed, 06 Feb 2019 19:27:04 GMT
WORKDIR /opt/solr
# Wed, 06 Feb 2019 19:27:04 GMT
USER solr
# Wed, 06 Feb 2019 19:27:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 19:27:04 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7a7744b459675a4ad2aa884ea8350b1c1ae822c31e0ed60ab392fa7362b5c510`  
		Last Modified: Wed, 06 Feb 2019 12:46:59 GMT  
		Size: 22.4 MB (22353334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c438cc50f33a89006d37f9ee58571a62bf167eff7389eff6777b14be5377e640`  
		Last Modified: Wed, 06 Feb 2019 13:22:43 GMT  
		Size: 465.8 KB (465790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d29dfcdade1d644eb5b4cf276402047d11d0b87fa7ba193dd958e26fe60d3e`  
		Last Modified: Wed, 06 Feb 2019 13:24:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bfa5c9223ed8aaf543da528ea97f3ec76a14e416035b95f2425c1622647d48`  
		Last Modified: Wed, 06 Feb 2019 13:24:45 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013ca1cf185f5517bb6b7ca7d419d854b8b6f9456bc00db2e60ae31d400d496b`  
		Last Modified: Wed, 06 Feb 2019 13:25:30 GMT  
		Size: 47.7 MB (47685985 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c2811bb1e8ac67a626a4a06d6b09e9912879514a82cea28b954d08d26f755d`  
		Last Modified: Wed, 06 Feb 2019 19:30:19 GMT  
		Size: 4.0 MB (4034744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121e7c918bc4d981ba29760371302d095dd83405f5e3658827f7d085632c113c`  
		Last Modified: Wed, 06 Feb 2019 19:32:56 GMT  
		Size: 4.3 KB (4336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676b750f919089820f8d4b6e577f11032ee6fa978d2386b9889f8b5d8ac6f9e9`  
		Last Modified: Wed, 06 Feb 2019 19:32:55 GMT  
		Size: 88.7 KB (88713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a7f11f9b00e6fbf5090e91c8363f192dd25e4b9ebe4bd0f93dae3fcac3450b`  
		Last Modified: Wed, 06 Feb 2019 19:33:06 GMT  
		Size: 132.4 MB (132406955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1c1191d86fbd19ac4603dd599bef32db4b2ec3674931192d1583b9330aab8b3`  
		Last Modified: Wed, 06 Feb 2019 19:32:55 GMT  
		Size: 4.2 KB (4226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71179c343f736a2c2475bdcb613e5bc17a02faefb88c85e5b79356a81e8055bf`  
		Last Modified: Wed, 06 Feb 2019 19:32:55 GMT  
		Size: 4.3 KB (4258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

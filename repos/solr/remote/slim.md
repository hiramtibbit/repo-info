## `solr:slim`

```console
$ docker pull solr@sha256:e8ac4a51c576019355a57ef4a352fab1b39004289254273eb0e26e9c8f3ffa53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:0a13e4554fa7712967db3e52d7f5734b7cc242645c5f7ceb7bf2f8db3acabeab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.0 MB (275016095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82938bfa6fb44b58e8085a78834ef0b8ca7f41842dc8e449601235383fee3643`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 26 Jun 2018 21:23:47 GMT
ADD file:f6f1518ff68043ed3ca8bae9ce07dcc969ae13bbdbfa6de70c869a9082f53e3c in / 
# Tue, 26 Jun 2018 21:23:47 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:19:36 GMT
ENV LANG=C.UTF-8
# Tue, 26 Jun 2018 23:19:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_VERSION=10.0.1+10
# Tue, 26 Jun 2018 23:23:44 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Tue, 26 Jun 2018 23:26:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:43:39 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Mon, 02 Jul 2018 23:43:39 GMT
ARG SOLR_DOWNLOAD_SERVER
# Mon, 02 Jul 2018 23:43:56 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:43:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jul 2018 23:43:57 GMT
ENV GOSU_VERSION=1.10
# Mon, 02 Jul 2018 23:43:57 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Mon, 02 Jul 2018 23:43:58 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Mon, 02 Jul 2018 23:43:59 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Mon, 02 Jul 2018 23:44:22 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Mon, 02 Jul 2018 23:44:22 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Mon, 02 Jul 2018 23:44:23 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Mon, 02 Jul 2018 23:44:23 GMT
EXPOSE 8983/tcp
# Mon, 02 Jul 2018 23:44:23 GMT
WORKDIR /opt/solr
# Mon, 02 Jul 2018 23:44:24 GMT
USER [solr]
# Mon, 02 Jul 2018 23:44:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 02 Jul 2018 23:44:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:469c03946d59bad3e2f921c73851b892468df0e7358d603dc6cf4cf3754df71d`  
		Last Modified: Tue, 26 Jun 2018 21:34:51 GMT  
		Size: 26.1 MB (26124512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9071a53fca24b6a916b853d0e5fc165853317f150c46e8cb23f78f07cbd910cd`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 460.1 KB (460064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5abfd2a20a1c0b8700b067a71251d414d178315c2de46c9f6d0c0a85d105c810`  
		Last Modified: Tue, 26 Jun 2018 23:42:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db8f3a2da32f1fc8ee5d2a6df817b518c352401ee994eea942cf004321390480`  
		Last Modified: Tue, 26 Jun 2018 23:42:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2712b07288b4694086f2d5ba1b5eba8f06ebdce40a86cbab252721ac8209912d`  
		Last Modified: Tue, 26 Jun 2018 23:47:36 GMT  
		Size: 76.4 MB (76354261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cebda061ab3581acdc683e5e0241300f410ea8c501d65faf2931c2c0302db918`  
		Last Modified: Mon, 02 Jul 2018 23:49:51 GMT  
		Size: 4.0 MB (4027629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7c5bb72ff1c0805bba891f84ba4525b02cc27c5325da3327009fa7dab13548`  
		Last Modified: Mon, 02 Jul 2018 23:49:47 GMT  
		Size: 4.9 KB (4909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22105e3a2ada3b6a327fefcea9424e791899acaa72952933a6d6b5c01863449d`  
		Last Modified: Mon, 02 Jul 2018 23:49:44 GMT  
		Size: 74.4 KB (74412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:822fed6821e5ec8b384fc35ee6be028eba1442a14a24c6ac616f7753dd1f2479`  
		Last Modified: Mon, 02 Jul 2018 23:50:05 GMT  
		Size: 168.0 MB (167960410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983b1f7a8e6f2d3b088dddd099e6d38c6c9805d0b8c6d5ef1f6a99654e1fc6f6`  
		Last Modified: Mon, 02 Jul 2018 23:49:45 GMT  
		Size: 4.8 KB (4751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94425aaf2744106039c7c76841ded5f90e42f42dad31806d253e1a8d42a1fd8`  
		Last Modified: Mon, 02 Jul 2018 23:49:44 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm variant v5

```console
$ docker pull solr@sha256:c5ca80b9d87dc03f7ae806828eb5d664af5fe53f63b3a37181f35239e6607fa5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257587818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb8cef9dc7091ed2919c16d3bd37299fec13addfde56a7edc7df897e3b6a1a0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:52:27 GMT
ADD file:e57206d1e45e262bfb6e4f3bc11722f30ee3b33538b4c1095792a076d5b4b2aa in / 
# Wed, 27 Jun 2018 08:52:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:25:21 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 12:25:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 12:29:40 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 12:29:41 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 12:32:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 09:19:41 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 03 Jul 2018 09:19:41 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 03 Jul 2018 09:19:55 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:19:55 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:19:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 03 Jul 2018 09:19:56 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 03 Jul 2018 09:19:57 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 03 Jul 2018 09:19:58 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 03 Jul 2018 09:20:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 03 Jul 2018 09:20:16 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 03 Jul 2018 09:20:17 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 03 Jul 2018 09:20:17 GMT
EXPOSE 8983/tcp
# Tue, 03 Jul 2018 09:20:17 GMT
WORKDIR /opt/solr
# Tue, 03 Jul 2018 09:20:18 GMT
USER [solr]
# Tue, 03 Jul 2018 09:20:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 09:20:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ab290037f4b3ddf1d7b1d19da8d2becec47e1854d7d4ee1442ab7f82bde3b262`  
		Last Modified: Wed, 27 Jun 2018 09:01:27 GMT  
		Size: 24.1 MB (24081950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68d3622f3af06525b6108a0a3e2bb840402b384b4d8f18836036fec4bccc750`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 453.6 KB (453561 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7078e99830203460c84053319478b36f2cb0988d2ecd3309a56a01fb37a93fbd`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d320bdb202788d7ff5812ec7341814eb7f72641fd0a2642031af85f0901754e`  
		Last Modified: Wed, 27 Jun 2018 12:47:58 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0409905400fae4a326fdce2d08042ba67e82f80468669d3cf79711209502f923`  
		Last Modified: Wed, 27 Jun 2018 12:52:31 GMT  
		Size: 61.3 MB (61258680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68ef9f204320acbf82b08803de3bb2e0a6e649aef596d6df9e159295ea608dcd`  
		Last Modified: Tue, 03 Jul 2018 09:23:16 GMT  
		Size: 3.8 MB (3753291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50d8c6fc92e412ae52042c8739505a57c0861aef0c283eb960f6242d2b9fde9`  
		Last Modified: Tue, 03 Jul 2018 09:23:14 GMT  
		Size: 4.8 KB (4842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffdf02eedda50c81b8d38416f3e407d59edb8e437e0e68dd0fcf77d43204462c`  
		Last Modified: Tue, 03 Jul 2018 09:23:14 GMT  
		Size: 74.4 KB (74415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b1a879101e58b1a794f57cb2f5a2a145913615d85306e8705303b026667d5c`  
		Last Modified: Tue, 03 Jul 2018 09:23:34 GMT  
		Size: 168.0 MB (167951147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b48fa64b31efaaf3daf54d9196417ab7f3e4301101baeed6325eac253faeab34`  
		Last Modified: Tue, 03 Jul 2018 09:23:14 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c3920619eec72f46ab534dd5559ea87b547c153b810e5fc2c59173caaa51e86`  
		Last Modified: Tue, 03 Jul 2018 09:23:14 GMT  
		Size: 4.8 KB (4783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:a3206ac50d33fb47572f90c3f2937be589292e06d351a0f7d245096c97c089ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.3 MB (260346850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c5024695ff9f89f3d9600db15b8709675b35ba624520bb99a7bb366249cd32`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:45:15 GMT
ADD file:43ec4f040b626f1ded3ce1a923597ce0c4c7f95f69f95f086a3847e8aeb74bd3 in / 
# Wed, 27 Jun 2018 08:45:17 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:20:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:20:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 10:20:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 10:22:39 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 10:22:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 10:22:41 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 10:22:42 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 10:34:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 09:43:09 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 03 Jul 2018 09:43:11 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 03 Jul 2018 09:44:13 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 09:44:14 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 09:44:15 GMT
ENV GOSU_VERSION=1.10
# Tue, 03 Jul 2018 09:44:17 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 03 Jul 2018 09:44:23 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 03 Jul 2018 09:44:27 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 03 Jul 2018 09:45:33 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 03 Jul 2018 09:45:34 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 03 Jul 2018 09:45:36 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 03 Jul 2018 09:45:37 GMT
EXPOSE 8983/tcp
# Tue, 03 Jul 2018 09:45:37 GMT
WORKDIR /opt/solr
# Tue, 03 Jul 2018 09:45:56 GMT
USER [solr]
# Tue, 03 Jul 2018 09:45:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 09:45:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6a0581b8511ac26263e1c081abe6382d7ce4481f47612f79a5460165410d1da7`  
		Last Modified: Wed, 27 Jun 2018 08:55:56 GMT  
		Size: 23.5 MB (23467711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29a41f0f7beab1d044e8af784988f7edba4c2864fc3c3a8895b4a9923cf8688a`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 445.0 KB (444977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a408113d860847fc397e2efe7e9e5b70c792848f6cdd53715333f04f14d5151c`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360f23b6c1f5ff2fd50f4c1624b12135cad6b44e5fcad2ca644809184db95729`  
		Last Modified: Wed, 27 Jun 2018 10:44:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b838544e25b2cd9cf7f46ac62c889776bfd65414990379f41aa30654b37069e4`  
		Last Modified: Wed, 27 Jun 2018 10:48:49 GMT  
		Size: 64.7 MB (64684558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa03f0133834614de0713f6fb8d4daeea315006b4486cf82db0814ab88b3f3fe`  
		Last Modified: Tue, 03 Jul 2018 09:56:09 GMT  
		Size: 3.7 MB (3731971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879d50e0f111cb4169fda4c5912ff9fac7b4775cd935ad6a10cdd54815dfd802`  
		Last Modified: Tue, 03 Jul 2018 09:56:05 GMT  
		Size: 4.9 KB (4949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b993f382065a1b5fe608a618943712c2fa7c00541043b81e00dc02fc6e110cf`  
		Last Modified: Tue, 03 Jul 2018 09:56:05 GMT  
		Size: 74.4 KB (74378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64e822177e3a9c413d8e9a21ce97d7ea6945aff9a97231b72242125c9ace6294`  
		Last Modified: Tue, 03 Jul 2018 09:56:34 GMT  
		Size: 167.9 MB (167928407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5c5ab62912226edcfed4bab71c4ef3fb708adc4eade63939502cd22b80f3ae7`  
		Last Modified: Tue, 03 Jul 2018 09:56:06 GMT  
		Size: 4.8 KB (4751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fafc766a3e5889c75f7f95bc2ee936901ba5d1c366504c21f8177d7375f8f9e`  
		Last Modified: Tue, 03 Jul 2018 09:56:05 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; 386

```console
$ docker pull solr@sha256:1fb78437ca2b10b8b5494c0b00ed4b4077e83b38fa10bf075789f42b5536b0b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280516244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6164227bd3df5beba52f57de46d40acbfaa93f7f34ab9533f1b300bbd14d6915`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 10:44:39 GMT
ADD file:f929d208ceb204b3c1497f39d9adcf84b402fd97ac8f46d83cd7037e033a72a6 in / 
# Wed, 27 Jun 2018 10:44:39 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 15:08:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 15:08:52 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 15:08:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 15:12:09 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 15:12:10 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 15:14:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 10:54:38 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 03 Jul 2018 10:54:38 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 03 Jul 2018 10:54:53 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 10:54:53 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 10:54:53 GMT
ENV GOSU_VERSION=1.10
# Tue, 03 Jul 2018 10:54:53 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 03 Jul 2018 10:54:54 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 03 Jul 2018 10:54:56 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 03 Jul 2018 10:55:23 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 03 Jul 2018 10:55:23 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 03 Jul 2018 10:55:24 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 03 Jul 2018 10:55:25 GMT
EXPOSE 8983/tcp
# Tue, 03 Jul 2018 10:55:25 GMT
WORKDIR /opt/solr
# Tue, 03 Jul 2018 10:55:26 GMT
USER [solr]
# Tue, 03 Jul 2018 10:55:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 10:55:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a0fea8269111d652b0ccabbceca6901b3b5791cfc9bb1d6d6f82252a9642bd91`  
		Last Modified: Wed, 27 Jun 2018 11:08:32 GMT  
		Size: 26.8 MB (26801995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95034a8d87d9c355bc27c23ad0c8867e9eae93965df86188e628194c2a12628e`  
		Last Modified: Wed, 27 Jun 2018 15:26:24 GMT  
		Size: 468.7 KB (468729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e631fe3dcfcbf42022608af9fafb31506636834640a617210d6a07c8f2784f2`  
		Last Modified: Wed, 27 Jun 2018 15:26:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9149731fef78b89e29e6b409b876d261b3605b0167ff14a227c3f5510e18d77`  
		Last Modified: Wed, 27 Jun 2018 15:26:23 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50d08b2873b21da4ab3205d76b65736f8242f78ff80fe3d7091e6392b7cee0c`  
		Last Modified: Wed, 27 Jun 2018 15:26:54 GMT  
		Size: 80.9 MB (80899833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab70110b16acbe261530920cd6c989a74b4d2d0e75d484a18097f5eceaf75b65`  
		Last Modified: Tue, 03 Jul 2018 11:03:01 GMT  
		Size: 4.3 MB (4316578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a80cc8ac19f6ce6c651e5611e5a13ffdcad7df853030e3483fab565485ebabe2`  
		Last Modified: Tue, 03 Jul 2018 11:02:58 GMT  
		Size: 4.8 KB (4843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbff671af640772b0d4edfa40444cd61d23534bd4c660f70d6da1976c9166947`  
		Last Modified: Tue, 03 Jul 2018 11:02:56 GMT  
		Size: 74.4 KB (74418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879091ba43862bb1b5a5d96c5ed411f61b047ce10513275b466b89ba061baead`  
		Last Modified: Tue, 03 Jul 2018 11:03:22 GMT  
		Size: 167.9 MB (167939949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd9b65028d2328c0634cf9658ffbbdac5303139065c7a415d9c7bdf2ac06d20`  
		Last Modified: Tue, 03 Jul 2018 11:02:57 GMT  
		Size: 4.8 KB (4751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:496eba1cd2fc44ec29a2e912bcb1ccbd822b692323a5053a01ad69947bc064df`  
		Last Modified: Tue, 03 Jul 2018 11:02:56 GMT  
		Size: 4.8 KB (4780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:d7ad74756f49353d9f91ac18d88240d39b2cae84cc3dcc7767c6c4ec5e20e0d2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.1 MB (266145919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d9a931e1b0152970d2d77660839cc0d3364649307802dced474abe2fc3c4365`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Wed, 27 Jun 2018 08:19:43 GMT
ADD file:b78eeabafaf8782971a5f0656c75c78c8c5433892c3eaf767f7929efef69c569 in / 
# Wed, 27 Jun 2018 08:19:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:09:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 13:09:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 13:09:50 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Jun 2018 13:24:35 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Jun 2018 13:24:37 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Jun 2018 13:24:38 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 27 Jun 2018 13:24:39 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 27 Jun 2018 13:37:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre-headless="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 03 Jul 2018 08:48:20 GMT
MAINTAINER Martijn Koster "mak-docker@greenhills.co.uk"
# Tue, 03 Jul 2018 08:48:31 GMT
ARG SOLR_DOWNLOAD_SERVER
# Tue, 03 Jul 2018 08:50:17 GMT
RUN apt-get update &&   apt-get -y install lsof procps wget gpg &&   rm -rf /var/lib/apt/lists/*
# Tue, 03 Jul 2018 08:50:18 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 SOLR_VERSION=7.4.0 SOLR_URL=https://archive.apache.org/dist/lucene/solr/7.4.0/solr-7.4.0.tgz SOLR_SHA256=a50eac8dece0acb5e6f0d868c7868ce8174e299752356f3424a15aa39bd64407 SOLR_KEYS=E6E21FFCDCEA14C95910EA65051A0FAF76BC6507 PATH=/opt/solr/bin:/opt/docker-solr/scripts:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 03 Jul 2018 08:50:20 GMT
ENV GOSU_VERSION=1.10
# Tue, 03 Jul 2018 08:50:23 GMT
ENV GOSU_KEY=B42F6819007F00F88E364FD4036A9C25BF357DD4
# Tue, 03 Jul 2018 08:50:34 GMT
RUN groupadd -r --gid $SOLR_GID $SOLR_GROUP &&   useradd -r --uid $SOLR_UID --gid $SOLR_GID $SOLR_USER
# Tue, 03 Jul 2018 08:50:40 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   mkdir -p "$GNUPGHOME" &&   chmod 700 "$GNUPGHOME" &&   for key in $SOLR_KEYS $GOSU_KEY; do     found='';     for server in       ha.pool.sks-keyservers.net       hkp://keyserver.ubuntu.com:80       hkp://p80.pool.sks-keyservers.net:80       pgp.mit.edu     ; do       echo "  trying $server for $key";       gpg --keyserver "$server" --keyserver-options timeout=10 --recv-keys "$key" && found=yes && break;     done;     test -z "$found" && echo >&2 "error: failed to fetch $key from several disparate servers -- network issues?" && exit 1;   done;   exit 0
# Tue, 03 Jul 2018 08:52:15 GMT
RUN set -e;   export GNUPGHOME="/tmp/gnupg_home" &&   dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')" &&   wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch" &&   wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc" &&   gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu &&   rm /usr/local/bin/gosu.asc &&   chmod +x /usr/local/bin/gosu &&   gosu nobody true &&   mkdir -p /opt/solr &&   echo "downloading $SOLR_URL" &&   wget -nv $SOLR_URL -O /opt/solr.tgz &&   echo "downloading $SOLR_URL.asc" &&   wget -nv $SOLR_URL.asc -O /opt/solr.tgz.asc &&   echo "$SOLR_SHA256 */opt/solr.tgz" | sha256sum -c - &&   (>&2 ls -l /opt/solr.tgz /opt/solr.tgz.asc) &&   gpg --batch --verify /opt/solr.tgz.asc /opt/solr.tgz &&   tar -C /opt/solr --extract --file /opt/solr.tgz --strip-components=1 &&   rm /opt/solr.tgz* &&   rm -Rf /opt/solr/docs/ &&   mkdir -p /opt/solr/server/solr/lib /opt/solr/server/solr/mycores /opt/solr/server/logs /docker-entrypoint-initdb.d /opt/docker-solr /opt/mysolrhome &&   sed -i -e 's/"\$(whoami)" == "root"/$(id -u) == 0/' /opt/solr/bin/solr &&   sed -i -e 's/lsof -PniTCP:/lsof -t -PniTCP:/' /opt/solr/bin/solr &&   sed -i -e '/-Dsolr.clustering.enabled=true/ a SOLR_OPTS="$SOLR_OPTS -Dsun.net.inetaddr.ttl=60 -Dsun.net.inetaddr.negative.ttl=60"' /opt/solr/bin/solr.in.sh &&   chown -R $SOLR_USER:$SOLR_GROUP /opt/solr
# Tue, 03 Jul 2018 08:52:17 GMT
COPY dir:3ab6c2998615274979b7fe3c2f1554b0c63d5110555f3871ee3f56972484ccc6 in /opt/docker-solr/scripts 
# Tue, 03 Jul 2018 08:52:20 GMT
RUN chown -R $SOLR_USER:$SOLR_GROUP /opt/docker-solr /opt/mysolrhome
# Tue, 03 Jul 2018 08:52:21 GMT
EXPOSE 8983/tcp
# Tue, 03 Jul 2018 08:52:22 GMT
WORKDIR /opt/solr
# Tue, 03 Jul 2018 08:52:30 GMT
USER [solr]
# Tue, 03 Jul 2018 08:52:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 03 Jul 2018 08:52:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:97c5cc34273d3c2f949fe7e1929100eee6ce7c2a2cd3643a25cdf70d6de85dc0`  
		Last Modified: Wed, 27 Jun 2018 08:29:18 GMT  
		Size: 27.4 MB (27418879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7d97ed0631635aedd4374fc866e43da4d472d2db0823719ee368e40e6e1a9bb`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 454.8 KB (454789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40effdc3cf774d1ccc0bb80e0f9f3ca757b9aacb532d5e613e4f3ae4c64642a9`  
		Last Modified: Wed, 27 Jun 2018 14:00:52 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876339928d0898664acfd7b59ab840f17142f1c5ee966aa0ed07e3a5df18e0b3`  
		Last Modified: Wed, 27 Jun 2018 14:00:53 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95df1a46a5d6e1e781fd227eba740aef37f6dcd2a0f01c780109e2608e8d79f`  
		Last Modified: Wed, 27 Jun 2018 14:07:02 GMT  
		Size: 65.9 MB (65920365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7f6963c219bcc006a8da354a62f73f8d42228612beff8ba8bfc64f63e2b87b0`  
		Last Modified: Tue, 03 Jul 2018 09:08:41 GMT  
		Size: 4.3 MB (4332726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95cb01b7ec9694ffc9e4799b2b13a966d8f25bf9c45b009d72b984bbcf55d27b`  
		Last Modified: Tue, 03 Jul 2018 09:08:40 GMT  
		Size: 4.9 KB (4913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67935af761e00f0a755351babda3d4236c989ee2061274114d55b469d78b3c9e`  
		Last Modified: Tue, 03 Jul 2018 09:08:37 GMT  
		Size: 74.4 KB (74410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3722ba5c626076b4c95185ee4e4a38c5411673e991c54bce3d362239f7183a9`  
		Last Modified: Tue, 03 Jul 2018 09:08:54 GMT  
		Size: 167.9 MB (167929909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:251977136ebcc83aaa85f1fc4536625484e2051223b1e52f9a9aeb7352d4f0db`  
		Last Modified: Tue, 03 Jul 2018 09:08:38 GMT  
		Size: 4.8 KB (4779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48505e2ab185ba2e81ebe44fdfa841d89a8403ea7c43683d94388e31994aaf57`  
		Last Modified: Tue, 03 Jul 2018 09:08:37 GMT  
		Size: 4.8 KB (4781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

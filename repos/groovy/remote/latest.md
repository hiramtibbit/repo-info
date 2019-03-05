## `groovy:latest`

```console
$ docker pull groovy@sha256:1ba78514cdcd254ec3bb2f8867db6571b233724afcb9979135ab30ca4f52d51b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `groovy:latest` - linux; amd64

```console
$ docker pull groovy@sha256:ccccf16243cf3dc4cf600494023352e6b32a1e4cc10d111dc1d133d433c1345d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.4 MB (213358842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b186e37a156581cdda924ea9ff5efc205e944b89e76868791891aef5ae518d13`
-	Default Command: `["groovysh"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 04:01:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:04:52 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:04:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 04:04:53 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:04:54 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:05:28 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:13:00 GMT
CMD ["groovysh"]
# Tue, 05 Mar 2019 14:13:00 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 05 Mar 2019 14:13:01 GMT
ENV GROOVY_VERSION=2.5.6
# Tue, 05 Mar 2019 14:13:10 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 05 Mar 2019 14:13:10 GMT
USER groovy
# Tue, 05 Mar 2019 14:13:10 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 05 Mar 2019 14:13:11 GMT
WORKDIR /home/groovy
# Tue, 05 Mar 2019 14:13:15 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4afad9c4aba6cc6f5b4e85b14e0a16c4807fdcc8a5e4c43a532d6aa06f5d5664`  
		Last Modified: Tue, 05 Mar 2019 04:25:25 GMT  
		Size: 852.9 KB (852890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12fce9923c9d837e515d3de06b77d97a5a0c4796a35a97cf9a6768641ea25a8c`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dd81083d77ea06270e287c0fb5be2ab4daf9003518745fbdc4f2e55d2635db0`  
		Last Modified: Tue, 05 Mar 2019 04:27:32 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2afc6ff72dd12b78d094cdbc7e04f6285e599f8a03d6cc1e935aee96b176c1`  
		Last Modified: Tue, 05 Mar 2019 04:27:58 GMT  
		Size: 122.1 MB (122122910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:804a97a9b7b96e5a612a93a6ebbb1041c7825e950f8f619912de3484deeb0f4f`  
		Last Modified: Tue, 05 Mar 2019 14:16:43 GMT  
		Size: 29.9 MB (29917890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f781d2c51b5a2272c504416860ea88f2b56f763264c578136341e6a106bd7dc`  
		Last Modified: Tue, 05 Mar 2019 14:16:40 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:latest` - linux; arm variant v5

```console
$ docker pull groovy@sha256:c0a6c27b7bb662b91b1e09cd0e2d008ebae2f8edc186f9d4e8ff3194d62a2221
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.7 MB (200709335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da26899b747c8f0ef3d5bc67a9378c545d16bf6cc45dd8a5d68ecb0ec60126b1`
-	Default Command: `["groovysh"]`

```dockerfile
# Tue, 05 Mar 2019 09:54:45 GMT
ADD file:0d24c375e856f1e75f5cb0a6766b22665902b1a6940a87d2c7fc0e61f658e944 in / 
# Tue, 05 Mar 2019 09:54:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:33:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:33:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:17:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:23:41 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 11:23:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 11:23:44 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 11:23:45 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 11:24:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:58:25 GMT
CMD ["groovysh"]
# Tue, 05 Mar 2019 14:58:25 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 05 Mar 2019 14:58:26 GMT
ENV GROOVY_VERSION=2.5.6
# Tue, 05 Mar 2019 14:58:44 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 05 Mar 2019 14:58:44 GMT
USER groovy
# Tue, 05 Mar 2019 14:58:45 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 05 Mar 2019 14:58:45 GMT
WORKDIR /home/groovy
# Tue, 05 Mar 2019 14:58:50 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:35963a726ee5d52a496a31b3c1f6accaf90ad61bf0e1e0bd8aad2cf66ab8cdb3`  
		Last Modified: Tue, 05 Mar 2019 10:02:26 GMT  
		Size: 44.0 MB (44029811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088a52eee835f09abb5e08bfd27b8cf0960dbcd0d3f28aa0e602654df58ce922`  
		Last Modified: Tue, 05 Mar 2019 10:43:14 GMT  
		Size: 9.9 MB (9851956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2616673f78baa6ea1b22951cb4a50ea0c9db5f109d098f00b5bf86b3e29a7b51`  
		Last Modified: Tue, 05 Mar 2019 10:43:12 GMT  
		Size: 4.2 MB (4158962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b29e62902178d17f798c00d2c12d1ce2afa56979e692b609138a6d0fce78bfbe`  
		Last Modified: Tue, 05 Mar 2019 11:39:23 GMT  
		Size: 845.9 KB (845894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e03a6663d62bc5229d655bf4f7e0c3815777f64ca218883147d22f092e3145a3`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d1b5ca803bdccd60e3da135efe557f76540bfd75a3729a8c5c5a2435ce61003`  
		Last Modified: Tue, 05 Mar 2019 11:42:02 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8af12fca2f0cbf9e602cd9ce86cb8e0379da77a659fd11b75d046265630cbc56`  
		Last Modified: Tue, 05 Mar 2019 11:42:34 GMT  
		Size: 111.9 MB (111904104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f169364a48b04485b28f04867588a1d0ae2a57dac07f4657ee3d98448a7b9dc3`  
		Last Modified: Tue, 05 Mar 2019 15:03:32 GMT  
		Size: 29.9 MB (29917975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85123463fa13d6b4104c2ce5e779e6d024dd7b8015154775ddb443ae8d4f2c8c`  
		Last Modified: Tue, 05 Mar 2019 15:03:28 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:latest` - linux; arm variant v7

```console
$ docker pull groovy@sha256:9823e4ed285aeb0dfef59b312d49e4cb3b778e4a1efe3964045c31b773cb0b04
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.5 MB (196488646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03adc6ea81785cea3d72fbc36f2a2f4061a0b9ee7f46856ec58fa30520292624`
-	Default Command: `["groovysh"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 14:23:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:27:02 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:27:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:27:05 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Tue, 05 Mar 2019 14:27:06 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:27:07 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:28:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:53:29 GMT
CMD ["groovysh"]
# Tue, 05 Mar 2019 17:53:29 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 05 Mar 2019 17:53:30 GMT
ENV GROOVY_VERSION=2.5.6
# Tue, 05 Mar 2019 17:53:48 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 05 Mar 2019 17:53:49 GMT
USER groovy
# Tue, 05 Mar 2019 17:53:49 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 05 Mar 2019 17:53:50 GMT
WORKDIR /home/groovy
# Tue, 05 Mar 2019 17:53:53 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a3e27c925bbcf3bfdb87e8ada386662c36463b6a3e0ad177d9929165991eb81`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 830.3 KB (830260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ed6ab30ee336646adef073ab59f86cf414e1cda0e1a8b4738580f02c9c647d`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3194d62d1cc31512719126c58f402c41d67eba3f27ea1853c8222bc626d032a`  
		Last Modified: Tue, 05 Mar 2019 14:41:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bfb1fecf803c2846f8e3ec203d16d1207738be28e714ab71ca7dee31381f331`  
		Last Modified: Tue, 05 Mar 2019 14:42:11 GMT  
		Size: 110.3 MB (110262430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c61547fa985f262fb5a44657c6cd16cc4a21a58c27fab7a4a3bc788bc9e740`  
		Last Modified: Tue, 05 Mar 2019 17:56:01 GMT  
		Size: 29.9 MB (29917995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d330cdff276766e18ed83e1e70a2f207c801bada83dac1b64ab012b12841fdcd`  
		Last Modified: Tue, 05 Mar 2019 17:55:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:latest` - linux; 386

```console
$ docker pull groovy@sha256:1200c408fb36c72e620204fdcb78ae3591ff08a9e90b585ea057b4f7baf1bc3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214818493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd888f4a02edd8d27cdbe4bb476f5f41874f1c740929b3e2b76d2d1fb8638600`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 06:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 06:23:57 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 06:23:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_VERSION=8u181
# Thu, 07 Feb 2019 06:23:59 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Thu, 07 Feb 2019 06:24:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 07 Feb 2019 06:43:30 GMT
CMD ["groovysh"]
# Thu, 07 Feb 2019 06:43:30 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 07 Feb 2019 06:43:31 GMT
ENV GROOVY_VERSION=2.5.6
# Thu, 07 Feb 2019 06:43:37 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Thu, 07 Feb 2019 06:43:37 GMT
USER groovy
# Thu, 07 Feb 2019 06:43:38 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 07 Feb 2019 06:43:38 GMT
WORKDIR /home/groovy
# Thu, 07 Feb 2019 06:43:40 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:404daee469e7110f87d6cff18a56b702c9a559f4ed1a9dbfc19dd4b7f467a8f6`  
		Last Modified: Thu, 07 Feb 2019 06:39:52 GMT  
		Size: 861.8 KB (861782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8eb0682ae720b17c31fb2604657fce4f6666c5d10dcc28fbdddb7975c40d0580`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2468d39d4f0a7aefb8c7ff17aaf6f1d629af13da8f2ba011b60f91a4406c232f`  
		Last Modified: Thu, 07 Feb 2019 06:41:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cae5e57702086236a1f8f63a621c95b430457a22febdd0cee00cb145ea7c53f`  
		Last Modified: Thu, 07 Feb 2019 06:41:28 GMT  
		Size: 122.6 MB (122608632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc252c7c0b8f4f349d1bcd0c1993a4919744c9afff57ee6e50fdffa9e8558387`  
		Last Modified: Thu, 07 Feb 2019 06:46:10 GMT  
		Size: 29.9 MB (29917864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c697111ac4c73301661d5ed7bd47ebed74d14b8aa2188a70b9f174fb655a60`  
		Last Modified: Thu, 07 Feb 2019 06:46:08 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

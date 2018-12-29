## `groovy:jre7`

```console
$ docker pull groovy@sha256:417827a30829d2e19f5121976e557fbae45769f4196579ec63db2101657331b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `groovy:jre7` - linux; amd64

```console
$ docker pull groovy@sha256:f2b053c909e22c39c429ab31d93f4a41c3a7db9e2418ac4987d00d5144d6ceed
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184385342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a565f908436bf47be9bf9b58ef59ec07bc85d89dd98fbbf02785a42e46420785`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 03:13:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:13:31 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 03:13:32 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 03:13:33 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_VERSION=7u181
# Sat, 29 Dec 2018 03:13:33 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Sat, 29 Dec 2018 03:16:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 12:07:51 GMT
CMD ["groovysh"]
# Sat, 29 Dec 2018 12:07:52 GMT
ENV GROOVY_HOME=/opt/groovy
# Sat, 29 Dec 2018 12:07:52 GMT
ENV GROOVY_VERSION=2.5.5
# Sat, 29 Dec 2018 12:08:51 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Sat, 29 Dec 2018 12:08:51 GMT
USER groovy
# Sat, 29 Dec 2018 12:08:51 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Sat, 29 Dec 2018 12:08:51 GMT
WORKDIR /home/groovy
# Sat, 29 Dec 2018 12:08:56 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c585ab63309a7757bdc035b4f49c113d264f4a536484e4be1fcf5a81e453e4fa`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 795.1 KB (795121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe89d15f060ecce88605162ab580db9180ab4a8523dd1f1cc8b105ab09d76ca2`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68182016c931bdc85672c27d0290efc7326434807900f78723021f4952b3b6fe`  
		Last Modified: Sat, 29 Dec 2018 03:27:28 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c18feebf96d82debe74d5aa2a2b9bb5731baa1ec9ba094e2812ffd3b92d946b2`  
		Last Modified: Sat, 29 Dec 2018 03:27:42 GMT  
		Size: 81.8 MB (81818581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e61093d8c9649a8ec12dca56c7e44310d7bac8147da7c6946ab1e1fdf43c1a5`  
		Last Modified: Sat, 29 Dec 2018 12:22:54 GMT  
		Size: 29.8 MB (29844992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ae34f47ba0800f2200a0a57d8b85c80ce0d0ce25b2b2ea368d6ef43bb07146`  
		Last Modified: Sat, 29 Dec 2018 12:22:51 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jre7` - linux; arm variant v5

```console
$ docker pull groovy@sha256:c999e02f42108bf4860f1794463e08566c31822d6a2e27811f219e9c8306d5bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.7 MB (171692192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea3d0e474af0e4260a0332f7df2496eff25f2a09280d358893d5232119ba959`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Dec 2018 09:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Dec 2018 09:55:52 GMT
ENV LANG=C.UTF-8
# Wed, 05 Dec 2018 09:55:52 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Dec 2018 09:55:53 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 05 Dec 2018 09:55:54 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 05 Dec 2018 09:55:54 GMT
ENV JAVA_VERSION=7u181
# Wed, 05 Dec 2018 09:55:55 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Wed, 05 Dec 2018 09:57:31 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 05 Dec 2018 10:35:51 GMT
CMD ["groovysh"]
# Wed, 05 Dec 2018 10:35:51 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 25 Dec 2018 09:50:27 GMT
ENV GROOVY_VERSION=2.5.5
# Tue, 25 Dec 2018 09:51:08 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 25 Dec 2018 09:51:08 GMT
USER groovy
# Tue, 25 Dec 2018 09:51:08 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 25 Dec 2018 09:51:09 GMT
WORKDIR /home/groovy
# Tue, 25 Dec 2018 09:51:12 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85e7a926b9697d9b8ca1e354a10a67ab9ac56b09d02c3e293a6d2f10eb1939e`  
		Last Modified: Fri, 16 Nov 2018 18:46:57 GMT  
		Size: 17.0 MB (17030194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7f2067c5b8920e588c58729503b6e129c03b1956df91c5463bfa31f3f4d5176`  
		Last Modified: Wed, 05 Dec 2018 10:06:18 GMT  
		Size: 787.9 KB (787927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e1f82a929c2cf5ab4092a4ce0b1b74a9d5be80421dd8661479d2d7c7952815`  
		Last Modified: Wed, 05 Dec 2018 10:06:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff3a088659864efc698b74dbf0386b122eb8ff3b315f9180151868d625186c7`  
		Last Modified: Wed, 05 Dec 2018 10:06:18 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8405896c42ef3e17dcfdb44dd180b4ce254766896d0b05530fea94ba217dd1`  
		Last Modified: Wed, 05 Dec 2018 10:06:33 GMT  
		Size: 71.5 MB (71483860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdea9663ddbb3ba0ae31b6adf5e8895ef50bf56a02433b8b9f81088a2ec67f7`  
		Last Modified: Tue, 25 Dec 2018 09:55:38 GMT  
		Size: 29.8 MB (29845016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60ff47e4a87ff851ad25ea2b275c386409a07f28c35074f5c54728fc7c6b8695`  
		Last Modified: Tue, 25 Dec 2018 09:55:33 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jre7` - linux; arm variant v7

```console
$ docker pull groovy@sha256:197e896e1ed0c44f5a83933c7a246a89d9dbfe95f14e94424546c9338322d00c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167617013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34aca5cfdd645ff3b7b14cdcb9c8f01e83cb17ef334967b37b8f9c3eaf2b0961`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:09:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:09:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:41:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:41:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 19:41:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 19:42:01 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 19:42:01 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Fri, 16 Nov 2018 19:42:01 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 13:27:14 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 13:28:37 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 13:59:57 GMT
CMD ["groovysh"]
# Thu, 29 Nov 2018 13:59:57 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 25 Dec 2018 13:00:51 GMT
ENV GROOVY_VERSION=2.5.5
# Tue, 25 Dec 2018 13:01:36 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 25 Dec 2018 13:01:36 GMT
USER groovy
# Tue, 25 Dec 2018 13:01:37 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 25 Dec 2018 13:01:37 GMT
WORKDIR /home/groovy
# Tue, 25 Dec 2018 13:01:41 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cbf9b0332806ff18413498271ad3f71f9c770f17fd6365db6bd350a47af07`  
		Last Modified: Fri, 16 Nov 2018 18:27:49 GMT  
		Size: 16.7 MB (16712873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8777cfe250349ea5b17bc2ce41cf5c89d3fd63cd6262a340aba84cf0797f9610`  
		Last Modified: Fri, 16 Nov 2018 20:06:50 GMT  
		Size: 762.5 KB (762451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:696327fb6998d2aaaa73eab38262dc5b4eb617c040eb3f832615b002647988ea`  
		Last Modified: Fri, 16 Nov 2018 20:06:49 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef9c50af1ac6255f6fc0ab75205b7dcf6fa122f0feb09b16f740ca1b1793ebe1`  
		Last Modified: Fri, 16 Nov 2018 20:06:50 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c83fc8c65d7056fa8011f0b6b4af72eee34034eb8d8a9671d1eae9ddf84c10`  
		Last Modified: Thu, 29 Nov 2018 13:34:35 GMT  
		Size: 70.0 MB (70016477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87931ed6fcb95604727b6b08ba8f26fa12d73104c29623a88a33261d6cf2b955`  
		Last Modified: Tue, 25 Dec 2018 13:07:32 GMT  
		Size: 29.8 MB (29845012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cda825b6358348df88c4f9e60a6c0d1653a334fd24ca424f26ea7d47b0510a2`  
		Last Modified: Tue, 25 Dec 2018 13:07:27 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jre7` - linux; 386

```console
$ docker pull groovy@sha256:cad0d0c02645931b1019fc07524f0048a3131d284a01d295d1dea53b883dbda6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196738591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2fd3daa2582fc3fb83764b8afba5fc2859ce0958d62f273a5ad5a6d958450d9`
-	Default Command: `["groovysh"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:14:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 14:15:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:15:17 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:15:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:15:19 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:15:19 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Nov 2018 14:15:20 GMT
ENV JAVA_VERSION=7u181
# Thu, 29 Nov 2018 12:35:37 GMT
ENV JAVA_DEBIAN_VERSION=7u181-2.6.14-2~deb8u1
# Thu, 29 Nov 2018 12:36:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 29 Nov 2018 14:28:52 GMT
CMD ["groovysh"]
# Thu, 29 Nov 2018 14:28:52 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 25 Dec 2018 11:43:32 GMT
ENV GROOVY_VERSION=2.5.5
# Tue, 25 Dec 2018 11:43:45 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 25 Dec 2018 11:43:45 GMT
USER groovy
# Tue, 25 Dec 2018 11:43:45 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 25 Dec 2018 11:43:46 GMT
WORKDIR /home/groovy
# Tue, 25 Dec 2018 11:43:48 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c656c5ba901c867f311e23cdb35dca16d35c23b492c6e4738f0124af80e92d`  
		Last Modified: Sat, 17 Nov 2018 11:41:35 GMT  
		Size: 19.8 MB (19837621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8eeade8c93deacfecd13bcf8a7980becf0d1f547f3ced99cd9a8d0f846b22b`  
		Last Modified: Sat, 17 Nov 2018 14:57:19 GMT  
		Size: 798.1 KB (798129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19b79a4aabbb3b0ee1ebf7e408302a40c889eb26cbcde8d4a82dd507c18aa2fa`  
		Last Modified: Sat, 17 Nov 2018 14:57:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd414829b65fc4dd8459fbd1553b5fd52076fadce33288650923308bf08cd0b`  
		Last Modified: Sat, 17 Nov 2018 14:57:19 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10846b5e937d556083a07024c5252bd59960526b23dd53adff9d834cd278b747`  
		Last Modified: Thu, 29 Nov 2018 12:43:35 GMT  
		Size: 91.7 MB (91672506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9708c172de8ba95601b95bb4ce2bc1b096596ad022f6fa5428cb0ffedb266378`  
		Last Modified: Tue, 25 Dec 2018 11:49:50 GMT  
		Size: 29.8 MB (29844967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4b954f914cd444815ca510cfeb76610cdf7a92582b9b8eadfa8df7022101db`  
		Last Modified: Tue, 25 Dec 2018 11:49:47 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

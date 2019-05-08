## `groovy:jdk11`

```console
$ docker pull groovy@sha256:2ebb52cb95e1cd9353aa60f54c2b800b77da9060b1aabf197b28046c8299b25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `groovy:jdk11` - linux; amd64

```console
$ docker pull groovy@sha256:379453c3ff9146aec6e5f8b63554b1898d7a910fad2e9ca76ef228018fe74ece
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **460.7 MB (460662044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2bdc1cfe0938370cd9ac17a20f6bded08c27c80a5f49809bed9fcc1c26e643`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:40:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:02:38 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 05:02:38 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 05:02:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 05:02:40 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 05:04:09 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 05:04:10 GMT
CMD ["jshell"]
# Wed, 08 May 2019 11:25:20 GMT
CMD ["groovysh"]
# Wed, 08 May 2019 11:25:20 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 08 May 2019 11:25:20 GMT
ENV GROOVY_VERSION=2.5.6
# Wed, 08 May 2019 11:26:55 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Installing build dependencies"     && apt-get update     && apt-get update && apt-get install --yes --no-install-recommends         dirmngr         gnupg     && rm --recursive --force /var/lib/apt/lists/*         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy"         && echo "Cleaning up build dependencies"     && echo $(apt-mark showauto)     && apt-get remove --yes --purge         dirmngr         gnupg     && apt-get autoremove --yes --purge         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Wed, 08 May 2019 11:26:56 GMT
USER groovy
# Wed, 08 May 2019 11:26:56 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 08 May 2019 11:26:56 GMT
WORKDIR /home/groovy
# Wed, 08 May 2019 11:27:01 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:221d80d00ae9675aad24913aacbadfac1ce8b7084f9765a6c0813486082c5c69`  
		Last Modified: Wed, 08 May 2019 01:45:42 GMT  
		Size: 10.8 MB (10784878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4250b3117dca5e14edc32ebf1366cd54e4cda91f17610b76c504a86917ff8b95`  
		Last Modified: Wed, 08 May 2019 01:45:41 GMT  
		Size: 4.3 MB (4340094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7ca19181b24b87e24423c01b490633bc1e47d2fcdc1987bf2e37949d6789b5`  
		Last Modified: Wed, 08 May 2019 01:46:01 GMT  
		Size: 50.1 MB (50066382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eadaf4c0dff038c7597047e84133eb098bc3c6e6eabae1dea15d225a39d28e3`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 892.7 KB (892652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3541530b87264c3535fa37f39f2714cace1af5ee3f7ec596f67be98d5485b47c`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e4c938e30afa7a1ee6d776f97c29c125be77332bdd08c34608938c9819a915`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a116edcafe050593a87a767abf70c45d4de3d95e2372ce40ecc7d124df1bf855`  
		Last Modified: Wed, 08 May 2019 05:26:41 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf32feffaff9ffea298a90419e7ee7d793ff71023075e4436726a6f61c5f226`  
		Last Modified: Wed, 08 May 2019 05:27:16 GMT  
		Size: 318.9 MB (318888934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:161233c273ad345faad4e553baedbaba45859ba084dffc7c60194ff3bf1c4506`  
		Last Modified: Wed, 08 May 2019 11:34:04 GMT  
		Size: 30.3 MB (30349052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df8504283bc2a392001fd4d6a62967251b6cafd9961e5c529ecae10be77cc08b`  
		Last Modified: Wed, 08 May 2019 11:34:00 GMT  
		Size: 137.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jdk11` - linux; arm variant v5

```console
$ docker pull groovy@sha256:9cbcf1e4b8e82da0b7fb70d8f23b169f2b90d8cc221dc66ddc7312f82be17e6f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.4 MB (383412274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e090c4f6082dddceaacfd48e1d8d14d2e80c06a4cb027e1b9dffe0c6ba2860f2`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:01:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:22:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:22:51 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 08 May 2019 11:22:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:22:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 11:22:54 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 11:22:54 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 11:22:54 GMT
ENV JAVA_VERSION=11.0.3
# Wed, 08 May 2019 11:22:55 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Wed, 08 May 2019 11:26:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 11:26:16 GMT
CMD ["jshell"]
# Wed, 08 May 2019 16:20:36 GMT
CMD ["groovysh"]
# Wed, 08 May 2019 16:20:37 GMT
ENV GROOVY_HOME=/opt/groovy
# Wed, 08 May 2019 16:20:38 GMT
ENV GROOVY_VERSION=2.5.6
# Wed, 08 May 2019 16:21:26 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Installing build dependencies"     && apt-get update     && apt-get update && apt-get install --yes --no-install-recommends         dirmngr         gnupg     && rm --recursive --force /var/lib/apt/lists/*         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy"         && echo "Cleaning up build dependencies"     && echo $(apt-mark showauto)     && apt-get remove --yes --purge         dirmngr         gnupg     && apt-get autoremove --yes --purge         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Wed, 08 May 2019 16:21:27 GMT
USER groovy
# Wed, 08 May 2019 16:21:28 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Wed, 08 May 2019 16:21:29 GMT
WORKDIR /home/groovy
# Wed, 08 May 2019 16:21:43 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b30b379469b50f6ada866964876f5c4ba164c22896bf3a08aabab61869e51`  
		Last Modified: Wed, 08 May 2019 10:09:26 GMT  
		Size: 9.9 MB (9854225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e257762b4747840fc09dce269e7f68146ac9864b8bf218e57475b4af367a74`  
		Last Modified: Wed, 08 May 2019 10:09:24 GMT  
		Size: 4.2 MB (4159009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d4213268efa4d0a6f48cbe22d41880c44ded3c92c84ae62354c147e273c61d`  
		Last Modified: Wed, 08 May 2019 10:09:52 GMT  
		Size: 48.3 MB (48281807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2410be54669de13a975df6a88bf9d9c1963f8070e2a754ad9fbf00a576971420`  
		Last Modified: Wed, 08 May 2019 11:48:25 GMT  
		Size: 884.9 KB (884889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce34d8b853a74e468bfa9f244db44dc71080b27b1c8824745c21bcef109b2a11`  
		Last Modified: Wed, 08 May 2019 11:48:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41735c6a6192bddb1259476057180747986c69c1f876f01fdae470f1e9b86642`  
		Last Modified: Wed, 08 May 2019 11:48:24 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:003f7a3c581e0a687298b69b482f045d0dd79be271323b639d8de51203d7da4a`  
		Last Modified: Wed, 08 May 2019 11:48:24 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:458615ac07a9b8d5973a00ce865e37342e270fccfa36dceaf0dc8259494106b0`  
		Last Modified: Wed, 08 May 2019 11:49:11 GMT  
		Size: 245.8 MB (245836538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d315b7535fe771ef2d390302d44a8268a86c491dde9ca525d05710472eb90e`  
		Last Modified: Wed, 08 May 2019 16:26:06 GMT  
		Size: 30.3 MB (30349172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dba0a3c53f144b8e2787cacbd4214270dd9e5080e1277676664e9de38cb6475`  
		Last Modified: Wed, 08 May 2019 16:26:01 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jdk11` - linux; arm variant v7

```console
$ docker pull groovy@sha256:158d8d8ca2d83add21308f23bf63dfc1a5d2bda965c98f0d75af2b66a0f14bbf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **409.7 MB (409665078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ec0cba5c51dc28d699b831f3f8b272698c02679806934aee84cc4f44fdc3fef`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 27 Mar 2019 12:07:23 GMT
ADD file:bb82b6b8aa709ab4455c13e7e19562bc1ddbd415015cd576612b0fc51c4e7007 in / 
# Wed, 27 Mar 2019 12:07:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:12:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:13:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:13:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Apr 2019 12:18:05 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Tue, 16 Apr 2019 12:18:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Apr 2019 12:18:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Apr 2019 12:18:10 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Apr 2019 12:18:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Apr 2019 12:18:11 GMT
ENV JAVA_VERSION=11.0.3
# Tue, 16 Apr 2019 12:18:11 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Tue, 30 Apr 2019 12:02:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Apr 2019 12:02:30 GMT
CMD ["jshell"]
# Tue, 30 Apr 2019 12:48:19 GMT
CMD ["groovysh"]
# Tue, 30 Apr 2019 12:48:19 GMT
ENV GROOVY_HOME=/opt/groovy
# Tue, 30 Apr 2019 12:48:20 GMT
ENV GROOVY_VERSION=2.5.6
# Tue, 30 Apr 2019 12:49:07 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Installing build dependencies"     && apt-get update     && apt-get update && apt-get install --yes --no-install-recommends         dirmngr         gnupg     && rm --recursive --force /var/lib/apt/lists/*         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy"         && echo "Cleaning up build dependencies"     && echo $(apt-mark showauto)     && apt-get remove --yes --purge         dirmngr         gnupg     && apt-get autoremove --yes --purge         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Tue, 30 Apr 2019 12:49:08 GMT
USER groovy
# Tue, 30 Apr 2019 12:49:08 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Tue, 30 Apr 2019 12:49:08 GMT
WORKDIR /home/groovy
# Tue, 30 Apr 2019 12:49:11 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:f6e94265067157e7d769560dc94116366784ddea686f6d20c9f3e67ba72940f9`  
		Last Modified: Wed, 27 Mar 2019 12:12:58 GMT  
		Size: 42.1 MB (42075164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f2fbc1f843984fcee8822e171c70d7b2ddf5233beeaf7eb422dca14e8ca0826`  
		Last Modified: Wed, 27 Mar 2019 13:22:14 GMT  
		Size: 9.5 MB (9483453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dcb1afece058cd63eccf185f2a039fa824964013c16f587cbf4f36552f1019a`  
		Last Modified: Wed, 27 Mar 2019 13:22:13 GMT  
		Size: 3.9 MB (3918606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bd852cf67320cb264474e6a781be61143a1db5e666692fb408b7228a2d51658`  
		Last Modified: Wed, 27 Mar 2019 13:22:38 GMT  
		Size: 46.4 MB (46389513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7f97cb5b86b1489bdf938cff6c3eabccf6c24c2210d653dc006e194ce7513a`  
		Last Modified: Thu, 28 Mar 2019 12:17:13 GMT  
		Size: 867.9 KB (867883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce18f28c89fc22d265a54a6c181c37f99c62fd1b2d3225db9336d408776f7ff`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f725414ad033ce6b539da33e71fad64868fd623840791f21e639db6f06a52501`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ac6270f68ca88f0a2f5a91c7764ee59faa787f4a680d4c8824cdf9bb5a2e94`  
		Last Modified: Tue, 30 Apr 2019 12:07:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4ce67287a72ceb3b2aa1f2ae2dcb62b9b581a86a235340acac6d4d6053c5609`  
		Last Modified: Tue, 30 Apr 2019 12:08:16 GMT  
		Size: 276.6 MB (276580355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd72b8e7987f69635322efdb04819a0e383860791fefebc4ae782e5200405243`  
		Last Modified: Tue, 30 Apr 2019 12:51:34 GMT  
		Size: 30.3 MB (30349245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139ba737c94ed90b8bfe546f83609debf14e370fb2830af8b9705f4151ec3acc`  
		Last Modified: Tue, 30 Apr 2019 12:51:26 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `groovy:jdk11` - linux; 386

```console
$ docker pull groovy@sha256:3b53bb8b90ac5cd3160e6d96f4ca8769e6557347bc6bb6395716dbc7bbe93f0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521747456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bf2cd4c2d0f88654d37cfdf19e958ea6199c28e7afb27f51614b3de7d3629f`
-	Default Command: `["groovysh"]`

```dockerfile
# Wed, 27 Mar 2019 10:43:24 GMT
ADD file:62e6f951f41a7a3973289c673aaf3b36d711e5339dd5bc50d15714d4bdf50917 in / 
# Wed, 27 Mar 2019 10:43:24 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:55:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:50:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:50:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:50:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:50:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 05 Apr 2019 10:48:32 GMT
ENV JAVA_VERSION=11.0.3
# Fri, 05 Apr 2019 10:48:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.3+1-1~bpo9+1
# Fri, 05 Apr 2019 10:49:52 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 05 Apr 2019 10:49:52 GMT
CMD ["jshell"]
# Fri, 05 Apr 2019 11:15:14 GMT
CMD ["groovysh"]
# Fri, 05 Apr 2019 11:15:15 GMT
ENV GROOVY_HOME=/opt/groovy
# Fri, 05 Apr 2019 11:15:15 GMT
ENV GROOVY_VERSION=2.5.6
# Fri, 05 Apr 2019 11:15:27 GMT
RUN set -o errexit -o nounset     && echo "Downloading Groovy"     && wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip"         && echo "Installing build dependencies"     && apt-get update     && apt-get update && apt-get install --yes --no-install-recommends         dirmngr         gnupg     && rm --recursive --force /var/lib/apt/lists/*         && echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server"     && export GNUPGHOME="$(mktemp -d)";     for key in         "7FAA0F2206DE228F0DB01AD741321490758AAD6F"         "331224E1D7BE883D16E8A685825C06C827AF6B66"         "34441E504A937F43EB0DAEF96A65176A0FB1CD0B"         "9A810E3B766E089FFB27C70F11B595CEDC4AEBB5"         "81CABC23EECA0790E8989B361FF96E10F0E13706"     ; do         for server in             "ha.pool.sks-keyservers.net"             "hkp://p80.pool.sks-keyservers.net:80"             "pgp.mit.edu"         ; do             echo "  Trying ${server}";             if gpg --batch --no-tty --keyserver "${server}" --recv-keys "${key}"; then                 break;             fi;         done;     done;     if [ $(gpg --batch --no-tty --list-keys | grep -c "pub ") -ne 5 ]; then         echo "ERROR: Failed to fetch GPG keys" >&2;         exit 1;     fi         && echo "Checking download signature"     && wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc"     && gpg --batch --no-tty --verify groovy.zip.asc groovy.zip     && rm --recursive --force "${GNUPGHOME}"     && rm groovy.zip.asc         && echo "Installing Groovy"     && unzip groovy.zip     && rm groovy.zip     && mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/"     && ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape     && ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy     && ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc     && ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole     && ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc     && ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh     && ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy         && echo "Editing startGroovy to include java.xml.bind module"     && sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy"         && echo "Cleaning up build dependencies"     && echo $(apt-mark showauto)     && apt-get remove --yes --purge         dirmngr         gnupg     && apt-get autoremove --yes --purge         && echo "Adding groovy user and group"     && groupadd --system --gid 1000 groovy     && useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy     && mkdir --parents /home/groovy/.groovy/grapes     && chown --recursive groovy:groovy /home/groovy         && echo "Symlinking root .groovy to groovy .groovy"     && ln -s /home/groovy/.groovy /root/.groovy
# Fri, 05 Apr 2019 11:15:28 GMT
USER groovy
# Fri, 05 Apr 2019 11:15:28 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Fri, 05 Apr 2019 11:15:28 GMT
WORKDIR /home/groovy
# Fri, 05 Apr 2019 11:15:30 GMT
RUN set -o errexit -o nounset     && echo "Testing Groovy installation"     && groovy --version
```

-	Layers:
	-	`sha256:3cf1c3e5c1c3ebb2ee78121e945d60be8e21bba1586daa95c7513d49ce96e5d1`  
		Last Modified: Wed, 27 Mar 2019 10:49:04 GMT  
		Size: 46.1 MB (46064366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c0fc9be5a7da27a34e4d748ce7625429bdca8bc859f883ab0d52b1135834`  
		Last Modified: Wed, 27 Mar 2019 14:09:50 GMT  
		Size: 10.8 MB (10800039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:330984995c009366005f495b95e3230ee73b6f16514f0e526f218ba00c0102cc`  
		Last Modified: Wed, 27 Mar 2019 14:09:49 GMT  
		Size: 4.6 MB (4561399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f40195820b264e9ba8f831313176a937879829fb669daa81d1b513cb15123704`  
		Last Modified: Wed, 27 Mar 2019 14:10:10 GMT  
		Size: 51.6 MB (51587502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce73586e8439b4de724327a1eee39ded998089032ddd044195b2f93ab369b89`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 900.0 KB (899966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096d2fb06b2d4e69e7068be90b7cc56453f5d0ad83b1f569405119dfa38eec2b`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b7ae642cfff67a7720d6430d2d0d637437c5a412fe22a02f3e6f3159b2ada8`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7669130211fc83ee00d0cc938108debdf6178224f0a1f00c4927f07f7a1f`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27107c5cf89a3bf581442ddc0d0d289204c2f6f7532470409a1b04945151b655`  
		Last Modified: Fri, 05 Apr 2019 10:54:10 GMT  
		Size: 377.5 MB (377484516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f98f4c7c672a4bbb0689ea036ae98b557f38a656ca4f0b013edfb13a613fcc`  
		Last Modified: Fri, 05 Apr 2019 11:16:27 GMT  
		Size: 30.3 MB (30348930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e82cd6b452e32ca6fcc85301b08255f7b2409a1955c451f92897c1310058fff1`  
		Last Modified: Fri, 05 Apr 2019 11:16:24 GMT  
		Size: 139.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `groovy:jre9`

```console
$ docker pull groovy@sha256:c5abebcf4c2b6f5965bde6350f7a4c8f9f0276a96161f6b7cf7a082f94e65892
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `groovy:jre9` - linux; amd64

```console
$ docker pull groovy@sha256:c0292f690aa7d32e3c611234961133fb5f8699a3a94a3c849a49f85ef46bdba4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.4 MB (303361666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e41b9910c66937c4996cefb6e58233d67a09e34c0b0d01a279857953c850d5`
-	Default Command: `["groovysh"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:35:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:36:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 09:16:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 10:24:04 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 10:24:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Feb 2018 10:24:17 GMT
RUN ln -svT "/usr/lib/jvm/java-9-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Feb 2018 10:24:18 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 15 Feb 2018 10:24:18 GMT
ENV JAVA_VERSION=9.0.1+11
# Thu, 15 Feb 2018 10:24:18 GMT
ENV JAVA_DEBIAN_VERSION=9.0.1+11-1
# Thu, 15 Feb 2018 10:25:16 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-9-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Feb 2018 17:50:35 GMT
CMD ["groovysh"]
# Thu, 15 Feb 2018 17:50:35 GMT
ENV GROOVY_HOME=/opt/groovy
# Thu, 15 Feb 2018 17:50:36 GMT
ENV GROOVY_VERSION=2.4.13
# Thu, 15 Feb 2018 17:50:36 GMT
COPY file:e08b5c84a9d5a31f261ecabb5457633b5bf067646b5794580a81902b3318127f in /etc/ssl/certs/java/cacerts 
# Thu, 15 Feb 2018 17:50:52 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive --force /var/lib/apt/lists/* 		&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in 		"7FAA0F2206DE228F0DB01AD741321490758AAD6F" 		"331224E1D7BE883D16E8A685825C06C827AF6B66" 		"34441E504A937F43EB0DAEF96A65176A0FB1CD0B" 		"9A810E3B766E089FFB27C70F11B595CEDC4AEBB5" 		"81CABC23EECA0790E8989B361FF96E10F0E13706" 	; do 		for server in 			"ha.pool.sks-keyservers.net" 			"hkp://p80.pool.sks-keyservers.net:80" 			"pgp.mit.edu" 		; do 			echo "  Trying ${server}"; 			if gpg --keyserver "${server}" --recv-keys "${key}"; then 				break; 			fi; 		done; 	done; 	if [ $(gpg --list-keys | grep -c "pub ") -ne 5 ]; then 		echo "ERROR: Failed to fetch GPG keys" >&2; 		exit 1; 	fi 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Editing startGroovy to include java.xml.bind module" 	&& sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Symlinking root .groovy to groovy .groovy" 	&& ln -s /home/groovy/.groovy /root/.groovy
# Thu, 15 Feb 2018 17:50:52 GMT
USER [groovy]
# Thu, 15 Feb 2018 17:50:52 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Thu, 15 Feb 2018 17:50:53 GMT
WORKDIR /home/groovy
# Thu, 15 Feb 2018 17:50:58 GMT
RUN set -o errexit -o nounset 	&& echo "Testing Groovy installation" 	&& groovy --version
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cbcd6d6fb5ba1a29429cabae2b6c93f13bc6ed37d66980ef59f1c307368279`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 8.6 MB (8633437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5a073a53d8391a783dd8d6b676cd6eb5de13d3cc9bdc71bc7fbda27c5aff`  
		Last Modified: Thu, 15 Feb 2018 04:28:07 GMT  
		Size: 9.1 MB (9067842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cff3b98ce90e0703cbd0e3e96967cd658684237ecc46350843fceb417782d9e`  
		Last Modified: Thu, 15 Feb 2018 11:45:00 GMT  
		Size: 855.5 KB (855520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ba88a7f5a4d4a05cb7e2f9dd4b4719091e5f13b6c9cb3638b88a945e161424`  
		Last Modified: Thu, 15 Feb 2018 12:55:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc94d7957dd8310df1d422d9f2939d56db08068443614071b2aebcd7b19c16db`  
		Last Modified: Thu, 15 Feb 2018 12:55:35 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8fbafc7b5356ea006e9b0e12ed5ba5e2e4f9082a693209679f34b1cb796c315`  
		Last Modified: Thu, 15 Feb 2018 12:56:41 GMT  
		Size: 199.9 MB (199864191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b695139041994fe1ce6f4fc70e9039317c13c293f69b58a0811a777a0c6f96`  
		Last Modified: Thu, 15 Feb 2018 18:08:47 GMT  
		Size: 76.1 KB (76072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9520c67b89cfd0b8a0ff64d60bfa2206843f00356d3ad45f660a6e131f3ba795`  
		Last Modified: Thu, 15 Feb 2018 18:08:50 GMT  
		Size: 37.0 MB (36994922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8afdd5cbc8d679aadff77aa86d8ffd02d2eb1d855b952225072c3fb3548b7b`  
		Last Modified: Thu, 15 Feb 2018 18:08:47 GMT  
		Size: 141.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

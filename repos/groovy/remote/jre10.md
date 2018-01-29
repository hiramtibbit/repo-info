## `groovy:jre10`

```console
$ docker pull groovy@sha256:0fc22b06d20e952d59a68f78bf7b42079ae5e86064c7d9fe5526f5b6cf0ddaa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `groovy:jre10` - linux; amd64

```console
$ docker pull groovy@sha256:86e5b5f77b787096bc01212345ed19d194435d16d5f89f57bc51211cda90acbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.0 MB (311035569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf97ec82678e07abab93f3cc2abdc912492b1adc2bce39218514da2e37f554f4`
-	Default Command: `["groovysh"]`

```dockerfile
# Tue, 12 Dec 2017 01:43:09 GMT
ADD file:f4f0ede88e0b0edf8235b2a5ff46ab7d8de71d56720cb7dc3032bca0e1872695 in / 
# Tue, 12 Dec 2017 01:43:10 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:51:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:51:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 15:35:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 18 Jan 2018 20:21:56 GMT
RUN echo 'deb http://deb.debian.org/debian experimental main' > /etc/apt/sources.list.d/experimental.list
# Thu, 18 Jan 2018 20:22:06 GMT
ENV LANG=C.UTF-8
# Thu, 18 Jan 2018 20:22:07 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 18 Jan 2018 20:22:17 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 18 Jan 2018 20:22:27 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 18 Jan 2018 20:22:27 GMT
ENV JAVA_VERSION=10-ea+32
# Thu, 18 Jan 2018 20:22:28 GMT
ENV JAVA_DEBIAN_VERSION=10~32-1
# Thu, 18 Jan 2018 20:23:48 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 29 Jan 2018 20:08:51 GMT
CMD ["groovysh"]
# Mon, 29 Jan 2018 20:08:51 GMT
ENV GROOVY_HOME=/opt/groovy
# Mon, 29 Jan 2018 20:08:51 GMT
ENV GROOVY_VERSION=2.4.13
# Mon, 29 Jan 2018 20:09:07 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive --force /var/lib/apt/lists/* 		&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in 		"7FAA0F2206DE228F0DB01AD741321490758AAD6F" 		"331224E1D7BE883D16E8A685825C06C827AF6B66" 		"34441E504A937F43EB0DAEF96A65176A0FB1CD0B" 		"9A810E3B766E089FFB27C70F11B595CEDC4AEBB5" 		"81CABC23EECA0790E8989B361FF96E10F0E13706" 	; do 		for server in 			"ha.pool.sks-keyservers.net" 			"hkp://p80.pool.sks-keyservers.net:80" 			"pgp.mit.edu" 		; do 			echo "  Trying ${server}"; 			if gpg --keyserver "${server}" --recv-keys "${key}"; then 				break; 			fi; 		done; 	done; 	if [ $(gpg --list-keys | grep -c "pub ") -ne 5 ]; then 		echo "ERROR: Failed to fetch GPG keys" >&2; 		exit 1; 	fi 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Editing startGroovy to include java.xml.bind module" 	&& sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Symlinking root .groovy to groovy .groovy" 	&& ln -s /home/groovy/.groovy /root/.groovy
# Mon, 29 Jan 2018 20:09:08 GMT
USER [groovy]
# Mon, 29 Jan 2018 20:09:08 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Mon, 29 Jan 2018 20:09:08 GMT
WORKDIR /home/groovy
# Mon, 29 Jan 2018 20:09:12 GMT
RUN set -o errexit -o nounset 	&& echo "Testing Groovy installation" 	&& groovy --version
```

-	Layers:
	-	`sha256:a8797cd0c76e8b1532d95708a0a38554c89e6fa0cdd856dbede8555225cdea00`  
		Last Modified: Tue, 12 Dec 2017 01:51:30 GMT  
		Size: 48.4 MB (48429060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdce62b256df9c745afac618b5a44d73531cede1a187586e73ed27bd7e1c508`  
		Last Modified: Tue, 12 Dec 2017 08:01:58 GMT  
		Size: 8.6 MB (8636787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c93763e33f35c3974631198e261ac389cb564d90b37f0443650ce34fee2dba2`  
		Last Modified: Tue, 12 Dec 2017 08:01:57 GMT  
		Size: 9.0 MB (8973876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b42e2b6acf2a08ab33b82572cb072d8e1cfd20c7d010dd6c41ede9f0dbb203c`  
		Last Modified: Tue, 12 Dec 2017 16:23:43 GMT  
		Size: 856.3 KB (856290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0623e4e296fbf837d87e0c3636c0f71a8012657c6df67975f840b5979226c070`  
		Last Modified: Thu, 18 Jan 2018 20:50:48 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89b6d8543cfb046ab47cc1753bad3b071451bb68683c16c14a4d17c72de6b48a`  
		Last Modified: Thu, 18 Jan 2018 20:50:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c648b44543a3f5e2cd2c75d0559315cb0d5a49b06ca757e97bbb9ac3b151b292`  
		Last Modified: Thu, 18 Jan 2018 20:50:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b24757d7d21ab96f9c0ebfed7e02a5fbef3e5ef0d2d1cc58ee8f4b6330253a5`  
		Last Modified: Thu, 18 Jan 2018 20:51:32 GMT  
		Size: 206.5 MB (206541322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9178b35ae779f6b1945ce0124dbf4f5fe15d253667a28538f88d7ed0d418afb`  
		Last Modified: Mon, 29 Jan 2018 20:26:41 GMT  
		Size: 37.6 MB (37597494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f9e2fb2bfea0e210672ed7a8851dc4af336c148643c2f879a24b41a8c5d6f5c`  
		Last Modified: Mon, 29 Jan 2018 20:26:38 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

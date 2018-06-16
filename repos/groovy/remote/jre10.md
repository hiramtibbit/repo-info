## `groovy:jre10`

```console
$ docker pull groovy@sha256:70c25ae250f51134e7bcb6e71791f984ab6c2219c0d2f783e3cdc373c10d21ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `groovy:jre10` - linux; amd64

```console
$ docker pull groovy@sha256:7a58178f39786c2e9a21a5657770524d9008d486a70dd7e37bfb530c9470dd7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.1 MB (288094282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:195bf28ebaf95e08fd347353213b1e533385998f183bd328fd7d381bfc6f3c6b`
-	Default Command: `["groovysh"]`

```dockerfile
# Sat, 28 Apr 2018 06:49:58 GMT
ADD file:229ad62fdc5e079bf925fb084264841ce27bf7125beb1fd821cbd6ed5132b37c in / 
# Sat, 28 Apr 2018 06:49:59 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:11:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:11:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 01:45:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:45:47 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:45:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:47:09 GMT
RUN ln -svT "/usr/lib/jvm/java-10-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:47:10 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:47:10 GMT
ENV JAVA_VERSION=10.0.1+10
# Wed, 06 Jun 2018 01:47:10 GMT
ENV JAVA_DEBIAN_VERSION=10.0.1+10-4
# Wed, 06 Jun 2018 01:48:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-10-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 16 Jun 2018 08:18:02 GMT
CMD ["groovysh"]
# Sat, 16 Jun 2018 08:18:02 GMT
ENV GROOVY_HOME=/opt/groovy
# Sat, 16 Jun 2018 08:18:02 GMT
ENV GROOVY_VERSION=2.4.15
# Sat, 16 Jun 2018 08:18:58 GMT
RUN set -o errexit -o nounset 	&& echo "Downloading Groovy" 	&& wget --no-verbose --output-document=groovy.zip "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip" 		&& echo "Installing build dependencies" 	&& apt-get update 	&& apt-get update && apt-get install --yes --no-install-recommends 		dirmngr 		gnupg 	&& rm --recursive --force /var/lib/apt/lists/* 		&& echo "Importing keys listed in http://www.apache.org/dist/groovy/KEYS from key server" 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in 		"7FAA0F2206DE228F0DB01AD741321490758AAD6F" 		"331224E1D7BE883D16E8A685825C06C827AF6B66" 		"34441E504A937F43EB0DAEF96A65176A0FB1CD0B" 		"9A810E3B766E089FFB27C70F11B595CEDC4AEBB5" 		"81CABC23EECA0790E8989B361FF96E10F0E13706" 	; do 		for server in 			"ha.pool.sks-keyservers.net" 			"hkp://p80.pool.sks-keyservers.net:80" 			"pgp.mit.edu" 		; do 			echo "  Trying ${server}"; 			if gpg --keyserver "${server}" --recv-keys "${key}"; then 				break; 			fi; 		done; 	done; 	if [ $(gpg --list-keys | grep -c "pub ") -ne 5 ]; then 		echo "ERROR: Failed to fetch GPG keys" >&2; 		exit 1; 	fi 		&& echo "Checking download signature" 	&& wget --no-verbose --output-document=groovy.zip.asc "https://dist.apache.org/repos/dist/release/groovy/${GROOVY_VERSION}/distribution/apache-groovy-binary-${GROOVY_VERSION}.zip.asc" 	&& gpg --batch --verify groovy.zip.asc groovy.zip 	&& rm --recursive --force "${GNUPGHOME}" 	&& rm groovy.zip.asc 		&& echo "Installing Groovy" 	&& unzip groovy.zip 	&& rm groovy.zip 	&& mv "groovy-${GROOVY_VERSION}" "${GROOVY_HOME}/" 	&& ln --symbolic "${GROOVY_HOME}/bin/grape" /usr/bin/grape 	&& ln --symbolic "${GROOVY_HOME}/bin/groovy" /usr/bin/groovy 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyc" /usr/bin/groovyc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovyConsole" /usr/bin/groovyConsole 	&& ln --symbolic "${GROOVY_HOME}/bin/groovydoc" /usr/bin/groovydoc 	&& ln --symbolic "${GROOVY_HOME}/bin/groovysh" /usr/bin/groovysh 	&& ln --symbolic "${GROOVY_HOME}/bin/java2groovy" /usr/bin/java2groovy 		&& echo "Editing startGroovy to include java.xml.bind module" 	&& sed -i 's|startGroovy ( ) {|startGroovy ( ) {\n    JAVA_OPTS="$JAVA_OPTS --add-modules=ALL-SYSTEM"|' "${GROOVY_HOME}/bin/startGroovy" 		&& echo "Cleaning up build dependencies" 	&& echo $(apt-mark showauto) 	&& apt-get remove --yes --purge 		dirmngr 		gnupg 	&& apt-get autoremove --yes --purge 		&& echo "Adding groovy user and group" 	&& groupadd --system --gid 1000 groovy 	&& useradd --system --gid groovy --uid 1000 --shell /bin/bash --create-home groovy 	&& mkdir --parents /home/groovy/.groovy/grapes 	&& chown --recursive groovy:groovy /home/groovy 		&& echo "Symlinking root .groovy to groovy .groovy" 	&& ln -s /home/groovy/.groovy /root/.groovy
# Sat, 16 Jun 2018 08:18:59 GMT
USER [groovy]
# Sat, 16 Jun 2018 08:18:59 GMT
VOLUME [/home/groovy/.groovy/grapes]
# Sat, 16 Jun 2018 08:18:59 GMT
WORKDIR /home/groovy
# Sat, 16 Jun 2018 08:19:01 GMT
RUN set -o errexit -o nounset 	&& echo "Testing Groovy installation" 	&& groovy --version
```

-	Layers:
	-	`sha256:e7cb83f94a464daabb5fa4e63ae521d65d7956bfcb3619bc75857f7d598ff12c`  
		Last Modified: Sat, 28 Apr 2018 08:58:22 GMT  
		Size: 48.3 MB (48303234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea75eac4dae2f20cbd6fa1d55bc23e09e128934c845cd07f16ce17d88bf39af5`  
		Last Modified: Tue, 05 Jun 2018 23:39:45 GMT  
		Size: 7.0 MB (7030508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c35a0f820b4b715ac0c1825dacb71e27c6e5bbbc9320b94c42a479cb1f55eb`  
		Last Modified: Tue, 05 Jun 2018 23:39:49 GMT  
		Size: 10.3 MB (10334570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:feb626ca12da9b32e561d58b4bcb0fe6874bb7a3fa20cd534d6ca2d4ab8cdeb5`  
		Last Modified: Wed, 06 Jun 2018 02:05:36 GMT  
		Size: 845.0 KB (845010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bdf20213a2cb2adcf65ca9786d4f82428b3f43f013b70d3c4aab1f1e4d717c`  
		Last Modified: Wed, 06 Jun 2018 02:05:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b2f34b6f6734c9a33600e2fcbedc852815de23eb858eac94a18f64450981d8`  
		Last Modified: Wed, 06 Jun 2018 02:05:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e363c2f7a460febd9386adc8348e15dbf9f85f9be952c0d3d5a0546f142e85`  
		Last Modified: Wed, 06 Jun 2018 02:06:11 GMT  
		Size: 183.4 MB (183400896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f7392476453895a292df0142de505f618f9bc1d3932ab31705be76882199a2c`  
		Last Modified: Sat, 16 Jun 2018 08:53:26 GMT  
		Size: 38.2 MB (38179553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53e54b46bdb22bc11ade0816a260d9243be718682a190f57aa62135718834be`  
		Last Modified: Sat, 16 Jun 2018 08:53:14 GMT  
		Size: 140.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

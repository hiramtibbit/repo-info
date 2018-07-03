## `sonarqube:latest`

```console
$ docker pull sonarqube@sha256:a791413a0a6844dbc7dd994fed18b4a73c31900c5d080ade04c845316720baa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `sonarqube:latest` - linux; amd64

```console
$ docker pull sonarqube@sha256:d6386db8ae7d7c4422a4be169c392a4f37ead2357453574453fccd2128eeaae8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.4 MB (395411808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4595fdec7170b7e052f94a99f4842e306eef79b5f5b5112adec7173af441d241`
-	Entrypoint: `[".\/bin\/run.sh"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:16:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:16:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Mon, 02 Jul 2018 23:57:21 GMT
ENV LANG=C.UTF-8
# Mon, 02 Jul 2018 23:57:22 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Mon, 02 Jul 2018 23:57:22 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_VERSION=8u171
# Mon, 02 Jul 2018 23:57:23 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Mon, 02 Jul 2018 23:57:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 02 Jul 2018 23:58:14 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 02 Jul 2018 23:58:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 03 Jul 2018 01:45:24 GMT
ENV SONAR_VERSION=7.1 SONARQUBE_HOME=/opt/sonarqube SONARQUBE_JDBC_USERNAME=sonar SONARQUBE_JDBC_PASSWORD=sonar SONARQUBE_JDBC_URL=
# Tue, 03 Jul 2018 01:45:25 GMT
EXPOSE 9000/tcp
# Tue, 03 Jul 2018 01:45:26 GMT
RUN groupadd -r sonarqube && useradd -r -g sonarqube sonarqube
# Tue, 03 Jul 2018 01:45:32 GMT
RUN set -x     && wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture)"     && wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/1.10/gosu-$(dpkg --print-architecture).asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true
# Tue, 03 Jul 2018 01:46:14 GMT
RUN set -x     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys F1182E81C792928921DBCAB4CFCA4A29D26468DE     && cd /opt     && curl -o sonarqube.zip -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip     && curl -o sonarqube.zip.asc -fSL https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-$SONAR_VERSION.zip.asc     && gpg --batch --verify sonarqube.zip.asc sonarqube.zip     && unzip sonarqube.zip     && mv sonarqube-$SONAR_VERSION sonarqube     && chown -R sonarqube:sonarqube sonarqube     && rm sonarqube.zip*     && rm -rf $SONARQUBE_HOME/bin/*
# Tue, 03 Jul 2018 01:46:15 GMT
VOLUME [/opt/sonarqube/data]
# Tue, 03 Jul 2018 01:46:15 GMT
WORKDIR /opt/sonarqube
# Tue, 03 Jul 2018 01:46:16 GMT
COPY file:8e25c057205c3bc912a47e98b3ba17b1da8f3b9e4e383b0baf6d4b9532a0ee15 in /opt/sonarqube/bin/ 
# Tue, 03 Jul 2018 01:46:16 GMT
ENTRYPOINT ["./bin/run.sh"]
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047670ddbd2a37cb7940be99332555b0a9f4f2531802e50c06128c340ccd0c0d`  
		Last Modified: Tue, 26 Jun 2018 22:30:05 GMT  
		Size: 10.8 MB (10774053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea7d5dc8943870545f4eecc6b06b3fd6b12b987dc99f0bbcfee8f132044fc9e2`  
		Last Modified: Tue, 26 Jun 2018 22:30:03 GMT  
		Size: 4.3 MB (4336270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7ad5906a7580677bdf8a8d57749814520c2c6a2054604c115ba6e8646363aa`  
		Last Modified: Tue, 26 Jun 2018 22:30:55 GMT  
		Size: 50.1 MB (50062264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76e47a4ab0225b6ee4c395aa6979ea0b1163b36f0b08b931f9fb7a43bb99da3`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 892.5 KB (892538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b21dd5ce8252da9da2000e24bfefe7c5d51409762134293f8d37697e04c796`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26054c6ae22c796517b458da2ea716c128499232cbe00feef5418add144406d9`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57152e61ecf5fc6fd0c4062c8f130af079dc1a151d7785a3cb6bbd5208073c5d`  
		Last Modified: Tue, 03 Jul 2018 00:33:28 GMT  
		Size: 134.0 MB (133970717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35afc44390528977c361ba405945092b32d5755142f450334115ee5f8a7f083b`  
		Last Modified: Tue, 03 Jul 2018 00:33:01 GMT  
		Size: 272.1 KB (272126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:091cb20dbd8201255adc5f99f9dfa1d0dcb1d563bc579b91eb26e03b196ef29d`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d864eaf01f7cd10442acf010e18e01e069b62cd43586ae8e2f70c6b4b1006d16`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 500.9 KB (500916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983e423df131e4c70d9dea0f1aa655fc388632827bc4af3ef545e941081bff2b`  
		Last Modified: Tue, 03 Jul 2018 01:49:29 GMT  
		Size: 149.3 MB (149281072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68cd417b0608e44393f7d27886d147985fbd7d2982d3e3d0b05f8b0d6c06ddf2`  
		Last Modified: Tue, 03 Jul 2018 01:49:10 GMT  
		Size: 482.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

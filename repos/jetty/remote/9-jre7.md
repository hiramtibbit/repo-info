## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:d6ba6a4490437019b7151de0f4b65523f9dcee9ee14225ec559505cb8a55a847
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:a6f7997aaa44e2c33b8c7ff86a19be8a7967ef780f1fc207d484d748735ae9a4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199610027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d2813e0c01829773d60d774279238d3ca2bad3abf6b5b1ce1163f1d6814ecc6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:12:58 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:12:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:12:59 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_VERSION=7u151
# Wed, 14 Mar 2018 11:13:00 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Wed, 14 Mar 2018 11:13:56 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 15 Mar 2018 10:20:25 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Thu, 15 Mar 2018 10:20:25 GMT
ENV JETTY_HOME=/usr/local/jetty
# Thu, 15 Mar 2018 10:20:25 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 10:20:26 GMT
RUN mkdir -p "$JETTY_HOME"
# Thu, 15 Mar 2018 10:20:26 GMT
WORKDIR /usr/local/jetty
# Thu, 22 Mar 2018 02:46:49 GMT
ENV JETTY_VERSION=9.2.24.v20180105
# Thu, 22 Mar 2018 02:46:49 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.24.v20180105/jetty-distribution-9.2.24.v20180105.tar.gz
# Thu, 22 Mar 2018 02:46:50 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Thu, 22 Mar 2018 02:46:58 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:46:58 GMT
ENV JETTY_BASE=/var/lib/jetty
# Thu, 22 Mar 2018 02:46:59 GMT
RUN mkdir -p "$JETTY_BASE"
# Thu, 22 Mar 2018 02:46:59 GMT
WORKDIR /var/lib/jetty
# Thu, 22 Mar 2018 02:47:02 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Thu, 22 Mar 2018 02:47:02 GMT
ENV TMPDIR=/tmp/jetty
# Thu, 22 Mar 2018 02:47:03 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Thu, 22 Mar 2018 02:47:04 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Thu, 22 Mar 2018 02:47:04 GMT
USER [jetty]
# Thu, 22 Mar 2018 02:47:04 GMT
EXPOSE 8080/tcp
# Thu, 22 Mar 2018 02:47:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 02:47:05 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9837675e69408ed38a5cd50b7bad4aceb89b943ec4d0c6547d3da7c2911ce1fa`  
		Last Modified: Wed, 14 Mar 2018 13:15:40 GMT  
		Size: 795.6 KB (795622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d602d78cf3359ca712061598d8ff56eb3242af4ca83b5d1c650e8d2e37e70fe7`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0d228baacbc3d4fd9bb4ed7dda30fee6eb4cee8a615c3c1f03215c6e2c8478`  
		Last Modified: Wed, 14 Mar 2018 13:15:39 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22a4474778a07d1700cd709b5211d393206561d9fa8b39c7b232bfcb42ca58f`  
		Last Modified: Wed, 14 Mar 2018 13:16:49 GMT  
		Size: 116.9 MB (116905091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffb68956ec0a71c5f8f8e958bab3c7bea468589843a6f0a3dfde0e0fa239a432`  
		Last Modified: Thu, 15 Mar 2018 10:26:28 GMT  
		Size: 2.2 KB (2154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53fe037af1b3957558193456a6861d7da6d234b222092422b61826a4fd8906fd`  
		Last Modified: Thu, 15 Mar 2018 10:26:27 GMT  
		Size: 151.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c8a1971b4457e99f86380466f3d20745c197ad1e7d5df1de352390b0571950`  
		Last Modified: Thu, 22 Mar 2018 02:56:56 GMT  
		Size: 10.0 MB (10028803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd0dba4ff03a79d83c1c5328fb31c02d516420c5cda0cc3dc001a8182fb83a7a`  
		Last Modified: Thu, 22 Mar 2018 02:56:52 GMT  
		Size: 138.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ebbf1913e870f437b95f62aae3c4d246147ea73794c6e24903bd5b41c5a02c`  
		Last Modified: Thu, 22 Mar 2018 02:56:52 GMT  
		Size: 1.5 KB (1467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f27bb21659f0dbc955e006cd4a016b3b7071ac458779969cbbd011a559fe1b1`  
		Last Modified: Thu, 22 Mar 2018 02:56:51 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14a619b14fe9d34d138fbb1d63c4c763b817070b9eb9294331920ab27ecc0a50`  
		Last Modified: Thu, 22 Mar 2018 02:56:53 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

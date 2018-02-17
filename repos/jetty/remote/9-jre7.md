## `jetty:9-jre7`

```console
$ docker pull jetty@sha256:298d0b10ed65fa60928c76f1b82ce4f77778926365ad7c1c2c85d57638f79aed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `jetty:9-jre7` - linux; amd64

```console
$ docker pull jetty@sha256:52317b674285cfd3af7496f6f9b604ff4e986cdd116044dab0406266158bac97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.6 MB (199609254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:107ae585c8ed3945511a33b0ed737247378ada2f86aa8557b0de4040e146a8f8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["java","-jar","\/usr\/local\/jetty\/start.jar"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 09:08:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:08:59 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:09:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Feb 2018 09:09:13 GMT
RUN ln -svT "/usr/lib/jvm/java-7-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_HOME=/docker-java-home/jre
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_VERSION=7u151
# Sat, 17 Feb 2018 09:09:13 GMT
ENV JAVA_DEBIAN_VERSION=7u151-2.6.11-2~deb8u1
# Sat, 17 Feb 2018 09:10:18 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-7-jre="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Feb 2018 10:58:35 GMT
RUN groupadd -r jetty && useradd -r -g jetty jetty
# Sat, 17 Feb 2018 10:58:35 GMT
ENV JETTY_HOME=/usr/local/jetty
# Sat, 17 Feb 2018 10:58:35 GMT
ENV PATH=/usr/local/jetty/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 10:58:36 GMT
RUN mkdir -p "$JETTY_HOME"
# Sat, 17 Feb 2018 10:58:36 GMT
WORKDIR /usr/local/jetty
# Sat, 17 Feb 2018 10:58:37 GMT
ENV JETTY_VERSION=9.2.22.v20170606
# Sat, 17 Feb 2018 10:58:37 GMT
ENV JETTY_TGZ_URL=https://repo1.maven.org/maven2/org/eclipse/jetty/jetty-distribution/9.2.22.v20170606/jetty-distribution-9.2.22.v20170606.tar.gz
# Sat, 17 Feb 2018 10:58:37 GMT
ENV JETTY_GPG_KEYS=AED5EE6C45D0FE8D5D1B164F27DED4BF6216DB8F 	2A684B57436A81FA8706B53C61C3351A438A3B7D 	5989BAF76217B843D66BE55B2D0E1FB8FE4B68B4 	B59B67FD7904984367F931800818D9D68FB67BAC 	BFBB21C246D7776836287A48A04E0C74ABB35FEA 	8B096546B1A8F02656B15D3B1677D141BCF3584D 	FBA2B18D238AB852DF95745C76157BDF03D0DCD6 	5C9579B3DB2E506429319AAEF33B071B29559E1E
# Sat, 17 Feb 2018 10:58:44 GMT
RUN set -xe 	&& curl -SL "$JETTY_TGZ_URL" -o jetty.tar.gz 	&& curl -SL "$JETTY_TGZ_URL.asc" -o jetty.tar.gz.asc 	&& export GNUPGHOME="$(mktemp -d)" 	&& for key in $JETTY_GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; done 	&& gpg --batch --verify jetty.tar.gz.asc jetty.tar.gz 	&& rm -rf "$GNUPGHOME" 	&& tar -xvf jetty.tar.gz --strip-components=1 	&& sed -i '/jetty-logging/d' etc/jetty.conf 	&& rm -fr demo-base javadoc 	&& rm jetty.tar.gz* 	&& rm -rf /tmp/hsperfdata_root
# Sat, 17 Feb 2018 10:58:57 GMT
ENV JETTY_BASE=/var/lib/jetty
# Sat, 17 Feb 2018 10:58:58 GMT
RUN mkdir -p "$JETTY_BASE"
# Sat, 17 Feb 2018 10:58:58 GMT
WORKDIR /var/lib/jetty
# Sat, 17 Feb 2018 10:59:14 GMT
RUN modules="$(grep -- ^--module= "$JETTY_HOME/start.ini" | cut -d= -f2 | paste -d, -s)" 	&& set -xe 	&& java -jar "$JETTY_HOME/start.jar" --add-to-startd="$modules" 	&& chown -R jetty:jetty "$JETTY_BASE" 	&& rm -rf /tmp/hsperfdata_root
# Sat, 17 Feb 2018 10:59:27 GMT
ENV TMPDIR=/tmp/jetty
# Sat, 17 Feb 2018 10:59:28 GMT
RUN set -xe 	&& mkdir -p "$TMPDIR" 	&& chown -R jetty:jetty "$TMPDIR"
# Sat, 17 Feb 2018 10:59:28 GMT
COPY multi:4510ce2f7fb9540fb389937165085b97c71d4b0659b22ddb7dfe601528a7461a in / 
# Sat, 17 Feb 2018 10:59:29 GMT
USER [jetty]
# Sat, 17 Feb 2018 10:59:29 GMT
EXPOSE 8080/tcp
# Sat, 17 Feb 2018 10:59:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 17 Feb 2018 10:59:29 GMT
CMD ["java" "-jar" "/usr/local/jetty/start.jar"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2295e0d5b99336bf7d96ab156571ba1c97e71747b936d65032020ab0d3242`  
		Last Modified: Sat, 17 Feb 2018 09:30:28 GMT  
		Size: 795.6 KB (795583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a518a1915ba7ff1f46f713419e5a567d8c4daa86bcc35cde15e8a9c2dab0860e`  
		Last Modified: Sat, 17 Feb 2018 09:30:27 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b5a26f8bfc75ae4efad7ff2b587179e84248c0fe11828b9186632c2f9fe71e`  
		Last Modified: Sat, 17 Feb 2018 09:30:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1143db754843f9f4b8fd563bc64f1d2be0130423b3c1353861def374981533f0`  
		Last Modified: Sat, 17 Feb 2018 09:30:51 GMT  
		Size: 116.9 MB (116906687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:768ad5ee9c07d2108a06eb7f15672dfbdcd0c211e9677f8fc34415f1309c0862`  
		Last Modified: Sat, 17 Feb 2018 11:00:01 GMT  
		Size: 2.2 KB (2151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:748bd84299cd895ac0541d5537bae5edbf8d36f2944b59e9d05d879d9c297e4a`  
		Last Modified: Sat, 17 Feb 2018 11:00:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d4edb41014b7c93ab8940381bab730bea51514d476a28fac9776aeca8921e8`  
		Last Modified: Sat, 17 Feb 2018 11:00:00 GMT  
		Size: 10.0 MB (10026505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ff6cc3ec8b77412f56195bc1b5c734a3dbae91c7e8b8ccddb52eb9bea13762`  
		Last Modified: Sat, 17 Feb 2018 10:59:58 GMT  
		Size: 136.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf8ad8183ff7179f06571bd9e47ee9cd4397ea6b1e5b47a60d62c06358de22a`  
		Last Modified: Sat, 17 Feb 2018 10:59:58 GMT  
		Size: 1.5 KB (1475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a78a10f3a0df163cfff84f6671386855ceec4fcc0bd95b50d5d04960e0c080`  
		Last Modified: Sat, 17 Feb 2018 10:59:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769f1d2de1ab7d8df19ecc99283116549175a252e910d77f35850f280db8fb75`  
		Last Modified: Sat, 17 Feb 2018 10:59:58 GMT  
		Size: 1.4 KB (1389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

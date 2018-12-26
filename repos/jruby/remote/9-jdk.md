## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:ed89fa452ba5c8a3244327c5669b48a69afad0c7bbd80386c1fdc3a09580cca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9-jdk` - linux; amd64

```console
$ docker pull jruby@sha256:21e94bebb1ef5b8fb46b359cd94c5f111ceb4e31223674dfd74ce6aba46500cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277181630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9695450e6295569c024e55397bf1f52b7a2b54f1849004e5b61881ead8f354c6`
-	Default Command: `["irb"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 09:59:29 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 09:59:29 GMT
ENV JRUBY_VERSION=9.2.5.0
# Wed, 26 Dec 2018 09:59:29 GMT
ENV JRUBY_SHA256=f4ad088082eca73561df983f6cb0a937b966cba3a36454e88f63930ed2bdf349
# Wed, 26 Dec 2018 09:59:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 26 Dec 2018 09:59:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:59:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 26 Dec 2018 09:59:47 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 26 Dec 2018 09:59:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 09:59:48 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 09:59:48 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 09:59:49 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 26 Dec 2018 09:59:49 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:949241a760004510aa629698d9192f45543c410472baacfee7444d7a480c85ea`  
		Last Modified: Wed, 26 Dec 2018 10:01:51 GMT  
		Size: 6.8 MB (6757583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7d55ad586484fbb88fdb622232b8d082716ccdb02809ef5096c093ceded5268`  
		Last Modified: Wed, 26 Dec 2018 10:01:52 GMT  
		Size: 24.1 MB (24144718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40431dd665feb475125d693b8095aaea984739463ac8bd0b599ce2ace7c064b`  
		Last Modified: Wed, 26 Dec 2018 10:01:49 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b603e660efdaee5b0598260539b993a58fc866d24578634458492ab94377615`  
		Last Modified: Wed, 26 Dec 2018 10:01:49 GMT  
		Size: 946.1 KB (946114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6693b9f4a373a5d7b9e4edd90d8fc271233f28137405cacd318a3468803a41ba`  
		Last Modified: Wed, 26 Dec 2018 10:01:49 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm variant v5

```console
$ docker pull jruby@sha256:01bbdfbf396ee8c965b6d1b7b5abd164e3a69134ba343d82b41adaeca16257f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.5 MB (258531627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd23087cde280e56f0cdddcdd0b95fa51a5603afaf3a30f2e08b888588133fee`
-	Default Command: `["irb"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:00:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:45:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:45:07 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 12:45:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 12:45:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 12:45:10 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 12:45:11 GMT
ENV JAVA_VERSION=8u181
# Tue, 30 Oct 2018 10:01:34 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 30 Oct 2018 10:01:34 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 30 Oct 2018 10:03:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 30 Oct 2018 10:03:19 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 31 Oct 2018 10:01:13 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 31 Oct 2018 10:01:13 GMT
ENV JRUBY_VERSION=9.2.0.0
# Wed, 31 Oct 2018 10:01:14 GMT
ENV JRUBY_SHA256=42718dea5fc90b7696cb3fccf8e8d546729173963ad0bc477d66545677d00684
# Wed, 31 Oct 2018 10:01:18 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 31 Oct 2018 10:01:18 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:01:19 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 31 Oct 2018 10:03:31 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 31 Oct 2018 10:03:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 31 Oct 2018 10:03:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 31 Oct 2018 10:03:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 31 Oct 2018 10:03:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 31 Oct 2018 10:03:33 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934ee470e55ff8bd40b6443f001fd454b30115f4b101a17d9636ad5fb1b9a626`  
		Last Modified: Tue, 16 Oct 2018 10:11:07 GMT  
		Size: 48.3 MB (48271388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848ebfa95aa0d86f00a756135fce41a9f8379ac40b295a22d37f8b28487f2632`  
		Last Modified: Tue, 16 Oct 2018 12:55:38 GMT  
		Size: 884.6 KB (884623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14348942ef0e1b1486f90aa8ad91a3c0ef06b3de35686c8364f6a3e4bb990e7`  
		Last Modified: Tue, 16 Oct 2018 12:55:36 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:407fb1e8f05c6338af21514eb6d43427f13c28db620055f9403028fb5ff09bbd`  
		Last Modified: Tue, 16 Oct 2018 12:55:36 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16acea2c06c1d5253fa48fae016079d915c81d3c969495e7468aa59f9cd9499`  
		Last Modified: Tue, 30 Oct 2018 10:08:41 GMT  
		Size: 121.4 MB (121371083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bac7112f111554c020b620c3a19cef9995daeb2486f62be1e0bc3ff6c2d0209`  
		Last Modified: Tue, 30 Oct 2018 10:08:11 GMT  
		Size: 246.8 KB (246750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afe20c25eaeaf45337b5a067783aca0eb8346d0739e42dfbdc827a633c50590c`  
		Last Modified: Wed, 31 Oct 2018 10:10:34 GMT  
		Size: 5.8 MB (5818903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b870dd9cb45b7ecf9e70de9106823827f335dfbe841802a2a8f711373d100f`  
		Last Modified: Wed, 31 Oct 2018 10:10:35 GMT  
		Size: 23.0 MB (22969498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e244e7365c8ae0f5aef23adba8fdbe9837963f5b1bf4abdbe9dbf151fd2ab6`  
		Last Modified: Wed, 31 Oct 2018 10:10:30 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b15833f866911ee17ed13a266f7eec84196d38c42ed68a214d8d9b507634a6`  
		Last Modified: Wed, 31 Oct 2018 10:10:31 GMT  
		Size: 971.4 KB (971364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed24717650c353858312fef674bbbf83c6ac456cd7f178db242db22cc7d646bc`  
		Last Modified: Wed, 31 Oct 2018 10:10:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:577163f60ba0e026e52ecce75ec8539d36f3863b7d0eedbe3bfff5cf7e8f594b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259532906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71f1a7fed04ab65eb60f8bdae155276e3d5860a625f09194d71d27f3234f7707`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 04:55:01 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 04:55:04 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 04:55:06 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 04:55:07 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 04:55:08 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 04:55:09 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 04:55:09 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 05:00:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 05:00:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 20:30:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 11:59:02 GMT
ENV JRUBY_VERSION=9.2.5.0
# Sat, 08 Dec 2018 11:59:03 GMT
ENV JRUBY_SHA256=f4ad088082eca73561df983f6cb0a937b966cba3a36454e88f63930ed2bdf349
# Sat, 08 Dec 2018 11:59:10 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 08 Dec 2018 11:59:11 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 11:59:14 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 08 Dec 2018 11:59:56 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Sat, 08 Dec 2018 11:59:57 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 08 Dec 2018 11:59:58 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 08 Dec 2018 11:59:59 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 12:00:02 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 08 Dec 2018 12:00:03 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaeab0ecba831abe35f50cb9dee5b4bd68274cf8ad778ca18d425026705ac509`  
		Last Modified: Sat, 17 Nov 2018 05:46:27 GMT  
		Size: 877.6 KB (877593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:876730cf1334a2cb7ffe4ceeae8358b70bb126b397ba016f85a82a1cf572ce74`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b2dcc6ac60eed4ff55f4d3058d913a9af223a27175aff2fb734f7ba0123d28e`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddefc3463fd15b5228fa685f5fd713da126cadb89e1d03f21d3282f56737cdd9`  
		Last Modified: Sat, 17 Nov 2018 05:47:05 GMT  
		Size: 122.3 MB (122276122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b2a53d65300e1d9d173f1e28a7455a84ca3a8d0579f3fdf28e3bedcecb7777`  
		Last Modified: Sat, 17 Nov 2018 05:46:26 GMT  
		Size: 246.7 KB (246701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d345bd18655af68f35ed014be10b3a5f18dfb63ea1b79bf19eebbbfa344878ec`  
		Last Modified: Sat, 17 Nov 2018 20:51:20 GMT  
		Size: 6.1 MB (6133709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6075ed5fb51db1c60e160910027a059574212fe3ab26148346ff3f9536248cb1`  
		Last Modified: Sat, 08 Dec 2018 12:07:02 GMT  
		Size: 24.1 MB (24145190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70af4a9424e2fa4387c0f4362e7943212eb798e9cbecb8567d0d13894f742a76`  
		Last Modified: Sat, 08 Dec 2018 12:06:53 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc2754db394df7460991eafce50b6d458da8eaab6bf2978179a6dda21a0119ef`  
		Last Modified: Sat, 08 Dec 2018 12:06:54 GMT  
		Size: 947.7 KB (947741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d1c0176a831de6488b9e99755db905f9aa397699457d610d0ff36b0e85492b`  
		Last Modified: Sat, 08 Dec 2018 12:06:53 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:daf5ee6c9b4df0d59e6fee7398a893ed3379e4e5e85824726bd746afcd2274d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.5 MB (283462970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6cd16d5ea8a42b0e5c175f22a129ab23f71b5fd1aa3e34aa2710984a7bce3d1`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 14:00:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 14:00:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 17 Nov 2018 14:01:00 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_VERSION=8u181
# Sat, 17 Nov 2018 14:01:01 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 17 Nov 2018 14:01:02 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 17 Nov 2018 14:02:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 17 Nov 2018 14:02:31 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sun, 18 Nov 2018 02:15:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 12:45:36 GMT
ENV JRUBY_VERSION=9.2.5.0
# Sat, 08 Dec 2018 12:45:36 GMT
ENV JRUBY_SHA256=f4ad088082eca73561df983f6cb0a937b966cba3a36454e88f63930ed2bdf349
# Sat, 08 Dec 2018 12:45:39 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 08 Dec 2018 12:45:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 12:45:40 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 08 Dec 2018 12:45:51 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Sat, 08 Dec 2018 12:45:51 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 08 Dec 2018 12:45:52 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 08 Dec 2018 12:45:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 12:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 08 Dec 2018 12:45:53 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039b5b2bccea4dc7559f4d7b5d0544bff21827a7e832f096f0b601bd8b533986`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 900.0 KB (900047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73a2c2bfc99cdd99c45256a594624d53acd213ea498433cf7c23a481a0feadb5`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3824eb9924abfefee33e1266319a69ffac6bbb676cc6950b976610f47406fe22`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71dece1dd81fc5100938afdb8aad58a8638a1f95373d987f38e519282b3a325a`  
		Last Modified: Sat, 17 Nov 2018 14:47:34 GMT  
		Size: 134.1 MB (134087543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f09a0148c8f81c3c9b90d7a46ce71a1e54ed83850830dd0a3316c0b11651ae`  
		Last Modified: Sat, 17 Nov 2018 14:47:04 GMT  
		Size: 246.8 KB (246779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:472b28f4b7e164774633f87b0f14b6d2d30ca1d4744cab2f975b8679822b19ff`  
		Last Modified: Sun, 18 Nov 2018 02:19:31 GMT  
		Size: 10.2 MB (10174530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af5f263affada181bd5e192170ad421fb9fb964496076c046bc5545b3687b392`  
		Last Modified: Sat, 08 Dec 2018 12:48:49 GMT  
		Size: 24.1 MB (24145158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f422e954da1983d32441147b1106a495bd507f300ad1f2218a0da47b9d30085`  
		Last Modified: Sat, 08 Dec 2018 12:48:46 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a912725cdcf818092adf6e151375a497dce95ddb8f83ae06404aa50dc438f9e2`  
		Last Modified: Sat, 08 Dec 2018 12:48:46 GMT  
		Size: 947.7 KB (947689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaeec01e5349b02f3c742d626f8563b9da2f7b35f28ca255ffe2e2431d608287`  
		Last Modified: Sat, 08 Dec 2018 12:48:46 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:7e1b802c9ba7ff2a6587d056ee6ad8bf21b355c0b9e83f37e11ad94f2b6e4f3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (266991981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63b3eaecbb40b1f8d67ed592362f4780237dfd05e4dac1af675d3e62739f4141`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:07:06 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:07:09 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 22:07:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 22:07:13 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 22:07:15 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 22:07:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Fri, 16 Nov 2018 22:07:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Fri, 16 Nov 2018 22:10:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Fri, 16 Nov 2018 22:11:02 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 17 Nov 2018 05:20:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 08 Dec 2018 11:49:02 GMT
ENV JRUBY_VERSION=9.2.5.0
# Sat, 08 Dec 2018 11:49:03 GMT
ENV JRUBY_SHA256=f4ad088082eca73561df983f6cb0a937b966cba3a36454e88f63930ed2bdf349
# Sat, 08 Dec 2018 11:49:07 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 08 Dec 2018 11:49:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 11:49:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 08 Dec 2018 11:49:30 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Sat, 08 Dec 2018 11:49:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 08 Dec 2018 11:49:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 08 Dec 2018 11:49:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 08 Dec 2018 11:49:34 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 08 Dec 2018 11:49:34 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e469fb5581abe67c9afdec146613c3f9b83ea5dac1585f9cd125c54a079d792d`  
		Last Modified: Fri, 16 Nov 2018 22:47:26 GMT  
		Size: 886.1 KB (886141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c508dc59cd1fa7d4ce5d137025c6418ecb48295c3bdc1962ecc312e5c3d8b24`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ec055d409bf54d544bc86c293fb21507b0144a3c9d86a7e89e0e1454bb39ab4`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f427f79fdd67bcb1702b8a5bd8d9f038db747050ef34a13c556c8821ff8924`  
		Last Modified: Fri, 16 Nov 2018 22:48:25 GMT  
		Size: 124.1 MB (124113942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ba3d2b6d2b99c380f402b9bc8662460bf83a5e10035b1c29e16bc899b37ab8`  
		Last Modified: Fri, 16 Nov 2018 22:47:25 GMT  
		Size: 246.6 KB (246637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df03b253a38540720baf1dcd66864dda4ca0a46d1e029c52e0ec3904ffcfa7cd`  
		Last Modified: Sat, 17 Nov 2018 05:31:59 GMT  
		Size: 6.7 MB (6734836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558573da6c35a1d8491cd1322169f89c369f08bbc7b038a6af005547f24084dc`  
		Last Modified: Sat, 08 Dec 2018 11:56:23 GMT  
		Size: 24.1 MB (24145225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17fc42a2ebacb8a174378173aea4eadf82e930829ef9ea55f26e8fa986f04e6a`  
		Last Modified: Sat, 08 Dec 2018 11:56:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959bd8d816172f30a81f1336bb63d233aa11983a95e4fac396e76e040f55e464`  
		Last Modified: Sat, 08 Dec 2018 11:56:17 GMT  
		Size: 947.9 KB (947894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382ded9c8e12d89736a39fa00f1b6dbc63b36f6b1664b830ce28bce56ff5212`  
		Last Modified: Sat, 08 Dec 2018 11:56:15 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

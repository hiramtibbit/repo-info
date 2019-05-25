## `jruby:9-jdk`

```console
$ docker pull jruby@sha256:9cfcfa3f40da520fe0560f18a80e666a497f0a15ff7bcce1e63a0314ec1cff5c
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
$ docker pull jruby@sha256:167fdaad0a2483b3f03b61649b1249e1116cd32895f54d8e3fb70cb9cbd863eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.5 MB (252523835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:730992eb053984a55fee1092442b225709a678b06d6e10c2544d715a4bfc0dca`
-	Default Command: `["irb"]`

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
# Fri, 24 May 2019 22:34:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 22:34:08 GMT
ENV LANG=C.UTF-8
# Fri, 24 May 2019 22:35:07 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Fri, 24 May 2019 22:35:08 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 22:35:08 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 24 May 2019 22:35:08 GMT
ENV JAVA_VERSION=8u212-b04
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Fri, 24 May 2019 22:35:09 GMT
ENV JAVA_URL_VERSION=8u212b04
# Fri, 24 May 2019 22:35:19 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract --file openjdk.tgz --directory "$JAVA_HOME" --strip-components 1; 	rm openjdk.tgz*; 			javac -version; 	java -version
# Fri, 24 May 2019 23:35:36 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 23:35:36 GMT
ENV JRUBY_VERSION=9.2.7.0
# Fri, 24 May 2019 23:35:36 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Fri, 24 May 2019 23:35:40 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Fri, 24 May 2019 23:35:40 GMT
ENV PATH=/opt/jruby/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:35:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Fri, 24 May 2019 23:35:59 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Fri, 24 May 2019 23:36:00 GMT
ENV GEM_HOME=/usr/local/bundle
# Fri, 24 May 2019 23:36:00 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Fri, 24 May 2019 23:36:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:36:01 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Fri, 24 May 2019 23:36:01 GMT
CMD ["irb"]
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
	-	`sha256:350c4ab1d0b159c95c411e20b7371e541d228cb390c5ea1e04f0d69d06b0e103`  
		Last Modified: Fri, 24 May 2019 22:37:35 GMT  
		Size: 4.6 MB (4647143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb16e1cfeecf9d36be916034f7909a2e1dbca9af4a42db187f979b80ef0ecc4`  
		Last Modified: Fri, 24 May 2019 22:38:29 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf1a68a908d173b520278b5fd75a81973241c8a03be7ef3032f5a1839ee6b48`  
		Last Modified: Fri, 24 May 2019 22:38:49 GMT  
		Size: 104.0 MB (103986965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2a0bc7241d14d3ffc1e20e857f5ed71048332ccf12c50d61b9066b557afee2`  
		Last Modified: Fri, 24 May 2019 23:37:53 GMT  
		Size: 6.7 MB (6732102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2bbb11d53d58da08794e2beec59c6edf93dfc9d703c0958aac2f0e31656488`  
		Last Modified: Fri, 24 May 2019 23:37:52 GMT  
		Size: 25.7 MB (25679447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b5cdbd4ab178dc01dd6724bb475943b82d29115ef18fad93f0ea60ebf85c93`  
		Last Modified: Fri, 24 May 2019 23:37:48 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795756ab89d6dc78e34a5bb2a4bc3a7ae44209a4f120e1ce19cf259d33e0a21e`  
		Last Modified: Fri, 24 May 2019 23:37:48 GMT  
		Size: 946.9 KB (946929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e56d0d88b209ee5fd5c77bd9e86667f2ae635cc7478b372c9e99140451b7a875`  
		Last Modified: Fri, 24 May 2019 23:37:48 GMT  
		Size: 163.0 B  
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
$ docker pull jruby@sha256:600af290e26bbd9e4e5d3506b9cd8433b2a21cd9c8b01cd7fcc8b771f9c1cf8f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.3 MB (264330663 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba758f0db36be5e1bf595b83c4ab0204396e78482e5e725f11b33b6347eca783`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 15:59:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:13:57 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:14:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 16:14:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 16:14:20 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 16:14:22 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 16:14:23 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 16:18:30 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 07:34:34 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 07:34:35 GMT
ENV JRUBY_VERSION=9.2.7.0
# Thu, 09 May 2019 07:34:35 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Thu, 09 May 2019 07:34:43 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 09 May 2019 07:34:44 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 07:34:46 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 09 May 2019 07:35:24 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Thu, 09 May 2019 07:35:24 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 09 May 2019 07:35:25 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 09 May 2019 07:35:26 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 07:35:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 09 May 2019 07:35:28 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15d647b47ef94b2d72191241987a4e2fe1ee7665a1c71266e8466fd1e17973b9`  
		Last Modified: Wed, 08 May 2019 16:28:53 GMT  
		Size: 878.0 KB (878011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fc683e349f09554da079d5e8e38598f2914a241e6a3b93130fba03984aff21`  
		Last Modified: Wed, 08 May 2019 16:33:10 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34c8bab3a692459b88ce41932b6c714d86a13675eed179253a82d8e190e3b862`  
		Last Modified: Wed, 08 May 2019 16:33:10 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2ccc8e276978316fefd6f3b1caeb7ac98301cf93ee8c8955291acaf30beb24`  
		Last Modified: Wed, 08 May 2019 16:33:52 GMT  
		Size: 125.7 MB (125665018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470cfdc31abc1049338340681ebf989f27f06fc45705855f3f635227f2fe6c68`  
		Last Modified: Thu, 09 May 2019 07:40:58 GMT  
		Size: 6.2 MB (6181929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e050ebb78719b7ee71fb33c003fc6c8ea5cb1f7d9b433a8fc03e21ab205e31b`  
		Last Modified: Thu, 09 May 2019 07:41:02 GMT  
		Size: 25.7 MB (25681063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b269dbd7aeb2996bb9c38d1ca53f09db1589ec146c0a6046db39b38c39eaf630`  
		Last Modified: Thu, 09 May 2019 07:40:55 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fd5490adde494c426ad6e2853a81d1ba04034c474d9f18ef0e577acda2f166`  
		Last Modified: Thu, 09 May 2019 07:40:56 GMT  
		Size: 947.0 KB (946973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd302bca5b0d792bbbc19eb1ff4f4885b0e12af75b0abf926829539480d66874`  
		Last Modified: Thu, 09 May 2019 07:40:55 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; 386

```console
$ docker pull jruby@sha256:758630a626337b1290442d2a9d67ce45e8cb9997b1476406e3937d739c97ede4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.9 MB (285868919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b1ebed94a7d4118e46ada2abcd81d2c8eed254489bdab2a1d81653833536f97`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 08 May 2019 10:49:19 GMT
ADD file:fde8cf5700c66c38b88d4b3254ec1544d09194e06568c23fe3989f7eaa1f5785 in / 
# Wed, 08 May 2019 10:49:20 GMT
CMD ["bash"]
# Wed, 08 May 2019 19:08:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:08:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:08:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:10:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:14:46 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 22:14:46 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 22:14:47 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 22:14:47 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 22:14:47 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 22:14:48 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 22:15:33 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 09 May 2019 03:53:28 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 03:53:28 GMT
ENV JRUBY_VERSION=9.2.7.0
# Thu, 09 May 2019 03:53:28 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Thu, 09 May 2019 03:53:31 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 09 May 2019 03:53:31 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:53:32 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 09 May 2019 03:53:44 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Thu, 09 May 2019 03:53:44 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 09 May 2019 03:53:45 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 09 May 2019 03:53:45 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 03:53:46 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 09 May 2019 03:53:46 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:b5d586ad7adeab23f6ff0b7ec90785dc757eaccd445976fda3f6d7db64d20585`  
		Last Modified: Wed, 08 May 2019 10:57:26 GMT  
		Size: 46.1 MB (46063371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b18ff57de8d55737be40848138cbd66efcc99443ae507217ae5dd45e3cf41a`  
		Last Modified: Wed, 08 May 2019 19:14:07 GMT  
		Size: 10.8 MB (10802110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc701b379559241c696cd079ff9b83f0bba19faec8747d75654fe5bc7e8adb03`  
		Last Modified: Wed, 08 May 2019 19:14:05 GMT  
		Size: 4.6 MB (4561353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a47e3a163bfc1731ea1b89b1e8d7cd1e421bd15347fb66425a6772de8daf64f8`  
		Last Modified: Wed, 08 May 2019 19:14:23 GMT  
		Size: 51.6 MB (51587424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:324cabc250745c8c131c7d1f968b02120eb2595540dede664065846dba3a8b34`  
		Last Modified: Wed, 08 May 2019 22:45:02 GMT  
		Size: 900.2 KB (900152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f41b3caa9e84767d38e91c91f3a2b106226c3bfc06cb18d3f2a1eea7df05fd1`  
		Last Modified: Wed, 08 May 2019 22:50:14 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e97400c233cd5b873079cc276a07bcf002b3b406b79259870d5c855ba257e9`  
		Last Modified: Wed, 08 May 2019 22:50:14 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1c331c91454acea8d856decaf0ade08a3397e6b0fc38207b939ec686211350`  
		Last Modified: Wed, 08 May 2019 22:51:06 GMT  
		Size: 135.1 MB (135095191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a3158983ec8b382248be062c8584aad0e6e0e389c22a0dcf92dfb39a9a985d8`  
		Last Modified: Thu, 09 May 2019 03:55:00 GMT  
		Size: 10.2 MB (10230356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043dbdc3dedee2cc0a68733e7221966a4486f68ad3981d0c7925a6bb27dcd163`  
		Last Modified: Thu, 09 May 2019 03:55:01 GMT  
		Size: 25.7 MB (25681259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c3bac2eb808302e1921aeeb832fda3c2af5bed31d694d0740705f249b5dcdfd`  
		Last Modified: Thu, 09 May 2019 03:54:57 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08f8af39890385d314ad7a0a19e0a0c6faaa470a4b4d4532d9de4caa4f2ef409`  
		Last Modified: Thu, 09 May 2019 03:54:57 GMT  
		Size: 947.0 KB (946964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ea06ebacfcd3c6c427d1c6890e0da0fd1dc0a92e975d1180dffd4251afaec27`  
		Last Modified: Thu, 09 May 2019 03:54:57 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-jdk` - linux; ppc64le

```console
$ docker pull jruby@sha256:79883ffc5e9158855bb15f9e47016392abbb5590de59893bb3936325c6a677d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.4 MB (269398231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b9cddef91df8b9b36484c7594e02da3937a275693f704fce71b082872f4f849`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 08 May 2019 09:03:26 GMT
ADD file:844cea0aa071f0f6b2640d4c452590a8777485fa27a0aad789553110eaeb7081 in / 
# Wed, 08 May 2019 09:03:33 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:06:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:07:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:48:27 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:48:35 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 08 May 2019 12:48:42 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 08 May 2019 12:48:44 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 08 May 2019 12:48:47 GMT
ENV JAVA_VERSION=8u212
# Wed, 08 May 2019 12:48:49 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 08 May 2019 12:54:27 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 08 May 2019 22:50:38 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 22:50:42 GMT
ENV JRUBY_VERSION=9.2.7.0
# Wed, 08 May 2019 22:50:44 GMT
ENV JRUBY_SHA256=da7c1a5ce90015c0bafd4bca0352294e08fe1c9ec049ac51e82fe57ed50e1348
# Wed, 08 May 2019 22:50:56 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 08 May 2019 22:51:01 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 22:51:08 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 08 May 2019 22:51:44 GMT
RUN gem install bundler rake net-telnet xmlrpc
# Wed, 08 May 2019 22:51:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 08 May 2019 22:51:55 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 08 May 2019 22:52:00 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 22:52:12 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 08 May 2019 22:52:20 GMT
CMD ["irb"]
```

-	Layers:
	-	`sha256:c6c4df30bc4ffa8fb97a3dda6f8758fb0ddeb8929d159369cf5974dd3f2ac117`  
		Last Modified: Wed, 08 May 2019 09:21:32 GMT  
		Size: 45.6 MB (45603184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8b6d64c78121ab5074c55b90272e1a13e72e3b7854d6a6c7e638eff77307ba`  
		Last Modified: Wed, 08 May 2019 12:24:57 GMT  
		Size: 10.0 MB (9991084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663d68dc2e1243453bf4b04afcb5394452ca5371b05a1c96f41a0df4189631e8`  
		Last Modified: Wed, 08 May 2019 12:24:54 GMT  
		Size: 4.3 MB (4296597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb9e53310a32438c1469c44f0a134314d8c4091b5ffa8f58fef5357ff3633415`  
		Last Modified: Wed, 08 May 2019 12:25:56 GMT  
		Size: 50.1 MB (50071573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d238037ed96ca39723b2ee324978c74743556692baf6e9eb42bd21fe63186281`  
		Last Modified: Wed, 08 May 2019 13:10:34 GMT  
		Size: 886.4 KB (886422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6acf537adb79f65e1ac82c6970a4b627a94053cf6b9f665c2f7983b4e99e803`  
		Last Modified: Wed, 08 May 2019 13:17:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71ce554fdde0e1f8c296846b4ccda3c305752e078d12bcdba6740ea209df6a49`  
		Last Modified: Wed, 08 May 2019 13:17:48 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba7c9b555677504d9d96cbd389b1537f645ebcd4f3c671cde8d4c14bd3c62fd`  
		Last Modified: Wed, 08 May 2019 13:19:01 GMT  
		Size: 125.1 MB (125136529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53bc93fdd98ee18815d4ca59a9dc9e20d82ea5f1d3129e041fc7ca2d8673bb2f`  
		Last Modified: Wed, 08 May 2019 23:00:07 GMT  
		Size: 6.8 MB (6783466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27381a3a200bacd4d8d224c872c7e1adb4cced954596935a07abb5a83fe5c877`  
		Last Modified: Wed, 08 May 2019 23:00:09 GMT  
		Size: 25.7 MB (25681395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c561ab981bab86fe8db668265852feb3fd951bea501050c9807e6119dd39d54f`  
		Last Modified: Wed, 08 May 2019 23:00:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9ec0cd6837df725e8c26688128463884e51a03a119b245bc668d98886d0616`  
		Last Modified: Wed, 08 May 2019 23:00:05 GMT  
		Size: 947.2 KB (947180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e3ded9009f438ea308ce66bfce8ee04b032bbc676a1e958a5762cdcd3f7b21`  
		Last Modified: Wed, 08 May 2019 23:00:06 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

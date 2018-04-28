## `clojure:boot-2.7.2`

```console
$ docker pull clojure@sha256:1260d1f0257d5d6ed0ed49968596f16b57e482909275ae32726a217d3eba9a2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `clojure:boot-2.7.2` - linux; amd64

```console
$ docker pull clojure@sha256:465f881ce42e195b91729c192e73f73546cfd83c303fe3695e09340383e493f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **317.9 MB (317909694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7728fafeedad88332dd89c8a379ae9e769dfafb0fb3fa2a4f84a1c34345f5b24`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 11:09:00 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 11:09:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 11:09:02 GMT
ENV JAVA_HOME=/docker-java-home
# Mon, 19 Mar 2018 21:22:52 GMT
ENV JAVA_VERSION=8u162
# Mon, 19 Mar 2018 21:22:53 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Mon, 19 Mar 2018 21:22:53 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Mon, 19 Mar 2018 21:23:40 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Mon, 19 Mar 2018 21:23:43 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Mon, 23 Apr 2018 21:41:47 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Mon, 23 Apr 2018 21:41:47 GMT
ENV BOOT_VERSION=2.7.2
# Mon, 23 Apr 2018 21:41:47 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Mon, 23 Apr 2018 21:41:48 GMT
WORKDIR /tmp
# Mon, 23 Apr 2018 21:41:49 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Mon, 23 Apr 2018 21:41:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Mon, 23 Apr 2018 21:41:50 GMT
ENV BOOT_AS_ROOT=yes
# Mon, 23 Apr 2018 21:43:54 GMT
RUN boot
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da44f64ae9991a9e8cb7c2af4dfd63608bd4026552b2b6a7f523dcfac960e1ac`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 892.2 KB (892173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bbc7b377a9155696eb0b684bd1999bc43937918552d73fd9697ea50ef46528a`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b6c70b3786f72e5255ccd51e27840d1c853a17561b5e94a4359b17d27494d50`  
		Last Modified: Wed, 14 Mar 2018 12:50:06 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bbcf733166f991331a80e1cd55a91111c4ba96fc7ce1ecabd05b450b7da7a3`  
		Last Modified: Mon, 19 Mar 2018 23:42:27 GMT  
		Size: 172.7 MB (172725313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d3e8de8ec6d87b8485a8a3b66d63125a033cfb0711f8af24b4f600f524e276`  
		Last Modified: Mon, 19 Mar 2018 23:41:54 GMT  
		Size: 272.1 KB (272122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b6612eb7691fac021b612ca3daf31f00af1d08f42683633c993e92982f3937`  
		Last Modified: Mon, 23 Apr 2018 21:52:41 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f44fac422a8403123776e60bf6a11d58d39ca81314d61787fdb253cc2f7baea6`  
		Last Modified: Mon, 23 Apr 2018 21:52:45 GMT  
		Size: 33.4 MB (33410509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v5

```console
$ docker pull clojure@sha256:d9ecfb14fd32f317c52508e4878cd7e4223f718b8c88986742d6877b50a09593
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282482702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4e51f7685e2c3838c2295fd2dc5d9139a2812490e0d2a9f6b6d298d4a6f439`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:04 GMT
ADD file:bd77176b7f68cf66010ed7d5cd955387a1eb54726e5071bc42ddd831ac56de69 in / 
# Sat, 28 Apr 2018 08:53:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:30:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:31:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:31:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:08 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:50:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:50:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:50:14 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:50:14 GMT
ENV JAVA_VERSION=8u162
# Sat, 28 Apr 2018 12:50:15 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 28 Apr 2018 12:50:16 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 28 Apr 2018 12:51:21 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:51:26 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 28 Apr 2018 14:59:04 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 28 Apr 2018 14:59:05 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 28 Apr 2018 14:59:05 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 28 Apr 2018 14:59:05 GMT
WORKDIR /tmp
# Sat, 28 Apr 2018 14:59:07 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 28 Apr 2018 14:59:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 28 Apr 2018 14:59:07 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 28 Apr 2018 15:06:28 GMT
RUN boot
```

-	Layers:
	-	`sha256:c87e62b47a5d3031bbfc66d1b7c178e12dd4b62b36eaa44a879cebbbc558c33d`  
		Last Modified: Sat, 28 Apr 2018 09:01:28 GMT  
		Size: 44.0 MB (44038582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59d750a22d1dd30a1b9d82a41c62fd170d194d3d863bc4bc295e74fcf9f483a3`  
		Last Modified: Sat, 28 Apr 2018 09:41:51 GMT  
		Size: 9.8 MB (9824273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3da53036c472f74b6d551d59513ab4694e2f77a0fc3c3e6bd8024c1c7e9b1915`  
		Last Modified: Sat, 28 Apr 2018 09:41:50 GMT  
		Size: 4.2 MB (4152984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a76673c3d1df178c9966d339aaa8eeda6ddee2e60b17d9ed1f025e0facfc33d`  
		Last Modified: Sat, 28 Apr 2018 09:42:27 GMT  
		Size: 48.2 MB (48239221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2790c6b3b935a526c66cbfa94edce91920c58182b2e0f1db9b4ffe1a3979cf3a`  
		Last Modified: Sat, 28 Apr 2018 13:25:35 GMT  
		Size: 884.3 KB (884259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10fe22762f231ea159d04f44c898fa679cf7f7d6c9bbed57000c49e443311a09`  
		Last Modified: Sat, 28 Apr 2018 13:25:34 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4805f1000981281caa3739ac0e8af831fa0b838d872a00b79793711c5efac5a1`  
		Last Modified: Sat, 28 Apr 2018 13:25:34 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e102432843fb8efebdeec94960eb81696dbe32fec8e63bfdfdcfe0b59b07391`  
		Last Modified: Sat, 28 Apr 2018 13:26:27 GMT  
		Size: 141.7 MB (141652805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3ea038b5bcda4e583460b9852213aacc39d697b9fd3d51622309008b86ab0d`  
		Last Modified: Sat, 28 Apr 2018 13:25:35 GMT  
		Size: 272.2 KB (272202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f97685800eeb1445f149e849e5751b37cd5668c7186c572d46efb48f71b4a01`  
		Last Modified: Sat, 28 Apr 2018 15:08:46 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:534f496d08e1048ce7c2ca482d621db1de4bf2c76e366a66b37a153cad52db8a`  
		Last Modified: Sat, 28 Apr 2018 15:08:51 GMT  
		Size: 33.4 MB (33411098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm variant v7

```console
$ docker pull clojure@sha256:a1e02d95f30411f11a355ac9767136aef547525388075b941d0fb59a6d231319
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.9 MB (290884955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a655f2a5e7501afe178dc13b7879630ea746a9e58cf84d495c22e60ad7ec930`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:18 GMT
ADD file:c7fba27b02c4bda63faef7eb30156a55feb4c0e9ecd529a24dd8d62942c2f83c in / 
# Sat, 28 Apr 2018 12:04:19 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:42:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:43:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:54:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:54:19 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:54:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 12:54:22 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 12:54:22 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 12:54:22 GMT
ENV JAVA_VERSION=8u162
# Sat, 28 Apr 2018 12:54:22 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 28 Apr 2018 12:54:23 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 28 Apr 2018 12:55:11 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 12:55:17 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 28 Apr 2018 17:06:13 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 28 Apr 2018 17:06:14 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 28 Apr 2018 17:06:14 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 28 Apr 2018 17:06:14 GMT
WORKDIR /tmp
# Sat, 28 Apr 2018 17:06:15 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 28 Apr 2018 17:06:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 28 Apr 2018 17:06:16 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 28 Apr 2018 17:10:40 GMT
RUN boot
```

-	Layers:
	-	`sha256:5483105d09166836731e940c850827dd1a4fe16b04d1921eea4d8da7c98e99bc`  
		Last Modified: Sat, 28 Apr 2018 12:15:18 GMT  
		Size: 42.1 MB (42063737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb5424e9076ab96c3fbc714afcd99e7f9c4f35ecf54660ae99cf71410315613`  
		Last Modified: Sat, 28 Apr 2018 13:06:40 GMT  
		Size: 9.4 MB (9449717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed44b64a3aee0cea1bad2a1954b943ef678d795d9c3ac814e5f8bbbc99a9b143`  
		Last Modified: Sat, 28 Apr 2018 13:06:38 GMT  
		Size: 3.9 MB (3912466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c52bc83323b176b9f21a75de82ef7a5e6510e896910b0d271ced3f2407c8e63`  
		Last Modified: Sat, 28 Apr 2018 13:07:30 GMT  
		Size: 46.4 MB (46351415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e54fd88f08f94d6feb9234f46fc1f8593886f9cc19604570ac2d4343dea743d`  
		Last Modified: Sat, 28 Apr 2018 13:25:38 GMT  
		Size: 867.4 KB (867389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8b535fa8b2e47b1103c5579f9a02f26712c3c23808f21305f37455ce68f92ba`  
		Last Modified: Sat, 28 Apr 2018 13:25:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eb6746992839c73639faad644010544b521dfa98815fc26ffa074330e23ed2b`  
		Last Modified: Sat, 28 Apr 2018 13:25:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a393e22acad2edf67e65f21896d5e165fd1b060d16e3aa511945c9146052c96`  
		Last Modified: Sat, 28 Apr 2018 13:26:33 GMT  
		Size: 154.6 MB (154550265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfa83fd435c819d68758e609d838fa3be48c62b3415415c0015f719bca04d5bf`  
		Last Modified: Sat, 28 Apr 2018 13:25:37 GMT  
		Size: 272.1 KB (272073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bde0a5aac9384a00b685ed18f5ac726ac830d66ff01fd221ea73c65029da2ad`  
		Last Modified: Sat, 28 Apr 2018 17:12:25 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88955d01171639e2730a482c57a55654fef5b90e66b4825ea0062c67fa240547`  
		Last Modified: Sat, 28 Apr 2018 17:12:30 GMT  
		Size: 33.4 MB (33410616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7102a7133952879535e93719fe28efba2fc5c55504f826be010a92c6b07d6719
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297478659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383ac4814db98fdc054179f181223f285059d45399115c2a7a639ca6bc1f6a1c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:46:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:46:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:43:45 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 20:43:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 20:43:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 20:43:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:55:32 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:55:33 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:55:33 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:03:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:04:04 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 24 Apr 2018 08:42:25 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 24 Apr 2018 08:42:25 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 24 Apr 2018 08:42:26 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Apr 2018 08:42:27 GMT
WORKDIR /tmp
# Tue, 24 Apr 2018 08:42:29 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 24 Apr 2018 08:42:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Apr 2018 08:42:31 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Apr 2018 08:44:10 GMT
RUN boot
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab7dbcb22e5d9d968cd5d78dfb96bf92704a665b3d1710483048568abd1ba5b`  
		Last Modified: Wed, 14 Mar 2018 19:05:19 GMT  
		Size: 10.1 MB (10066603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03e8835ddfb1ea03693a4eb69d729fa15c982207e1518c3dd84f76336f920f9d`  
		Last Modified: Wed, 14 Mar 2018 19:05:18 GMT  
		Size: 4.1 MB (4087845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bade4a02b1a0af4c7b52bcd066c9d44034d712a06638e6e7dbb69c1127476aa9`  
		Last Modified: Wed, 14 Mar 2018 19:06:15 GMT  
		Size: 48.0 MB (47982966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:017f2ff0740b0d2ee580e3e7cf9a3c5635e3510c54742d69bba7585c89fce020`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 877.4 KB (877402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fea043b76dc779a9046b59c75f8354f9429bc318f291db53d8b103285e7c1e6`  
		Last Modified: Wed, 14 Mar 2018 21:43:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dacb32a77f7b3a9290a2abe2735de8740c90d0cf3d62aa97267121dbed290cbc`  
		Last Modified: Wed, 14 Mar 2018 21:43:05 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df99662177ee893da701e714d6dc22d9a462d2fb7cdb5c2aa5315690b9e5d891`  
		Last Modified: Tue, 20 Mar 2018 12:12:46 GMT  
		Size: 157.9 MB (157866119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40498775571f78f58e2b1f63299b42e3ac873659fefcde3ee47ac84975fa9952`  
		Last Modified: Tue, 20 Mar 2018 12:11:58 GMT  
		Size: 272.1 KB (272135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965c2a1c772f216d45fef2c04c92c0e359f3a2bf242a2b04bb1b02047b45235f`  
		Last Modified: Tue, 24 Apr 2018 08:48:32 GMT  
		Size: 6.9 KB (6901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4eb1e9ff7bf9de299127e1eb65fad68d6d3200804cffbe5bda269a233b7d27fa`  
		Last Modified: Tue, 24 Apr 2018 08:48:37 GMT  
		Size: 33.4 MB (33410484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; 386

```console
$ docker pull clojure@sha256:dd6b9613ce696a3093245652d2bea9113514936ffb2d9616b361093c5d2733a1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.0 MB (322960597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dabc0de316c920707d3fa2b408188acecc888192969c4a5b02e97fb0a0d1301`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 15:59:32 GMT
ADD file:3a8e11cd900f3ac48c7d30158b5a85e65d78680861eb910888c20ef4ae42756f in / 
# Tue, 27 Mar 2018 15:59:33 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:13:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:14:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 02:57:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 02:57:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 14 Apr 2018 02:57:49 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 14 Apr 2018 02:57:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 14 Apr 2018 02:57:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 14 Apr 2018 02:58:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 14 Apr 2018 02:58:48 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 24 Apr 2018 11:10:30 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Tue, 24 Apr 2018 11:10:31 GMT
ENV BOOT_VERSION=2.7.2
# Tue, 24 Apr 2018 11:10:31 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Tue, 24 Apr 2018 11:10:31 GMT
WORKDIR /tmp
# Tue, 24 Apr 2018 11:10:32 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Tue, 24 Apr 2018 11:10:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 24 Apr 2018 11:10:33 GMT
ENV BOOT_AS_ROOT=yes
# Tue, 24 Apr 2018 11:12:41 GMT
RUN boot
```

-	Layers:
	-	`sha256:bebcce41445a0be67e63665c298f73217c532640d75de97624d019429de2dd93`  
		Last Modified: Thu, 15 Mar 2018 01:29:27 GMT  
		Size: 45.8 MB (45843420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4af42cc296b8123184d1dd96e7066479319ac82b0deeef7c39eeb72cd9acf7eb`  
		Last Modified: Fri, 13 Apr 2018 22:31:55 GMT  
		Size: 11.2 MB (11151403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cdce8568bfceab7fd8a5b9e3ed360d35113c4029501d684938ed686c50824f3`  
		Last Modified: Fri, 13 Apr 2018 22:31:53 GMT  
		Size: 4.6 MB (4554687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:144ab27aa9f62df613b67603bb22e2ee0753d87a202961681483ecaa2ed4614e`  
		Last Modified: Fri, 13 Apr 2018 22:32:33 GMT  
		Size: 51.6 MB (51553527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c3dba506887dbcfbd2473b504e5cd3cb787478c0e92738aec9df406398c32f`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 899.8 KB (899799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cace77a6f8572e42bf7a3926066c510937294adb65d7c2501f87b827a95e220a`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6283dc389b8615d990b483b4acc7c89e551ae35a5d3b745c23bb6e947873fa1b`  
		Last Modified: Sat, 14 Apr 2018 03:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bacaac48e14c4491c7ef2dacc52eee361fc2fc17696abde2ad8ba048b79bb50`  
		Last Modified: Sat, 14 Apr 2018 03:21:28 GMT  
		Size: 175.3 MB (175267769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c351f81880cdd1d397a28f01011b280018658a0b8551c7d88cf3b1bac993c06`  
		Last Modified: Sat, 14 Apr 2018 03:20:45 GMT  
		Size: 272.2 KB (272157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe020dbb991ee10bd02736fd617d83e119961f0414b52450eb697117eed691ef`  
		Last Modified: Tue, 24 Apr 2018 11:13:10 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99c6136a2c0c4568c74d6f8ae2f5dfa5f6d60560418905a1133a7afd9a95a0fa`  
		Last Modified: Tue, 24 Apr 2018 11:13:13 GMT  
		Size: 33.4 MB (33410558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; ppc64le

```console
$ docker pull clojure@sha256:cba8fa88506699c0b92facc98e84c049d604ea43a028cb659a87fc7f1aebb750
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.0 MB (305960584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24b0761ba9c7c4fe2c3ce1bfdb014d819cea38745f4eb0bb3346df9fda357522`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:30 GMT
ADD file:ae8b79396496eb2731c9fe7f159d6f3086ec59dd9c418c6d93780fc8cb685d2b in / 
# Sat, 28 Apr 2018 08:20:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:07:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 10:08:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:38:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:38:09 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 17:38:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 17:38:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 17:38:12 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 17:38:13 GMT
ENV JAVA_VERSION=8u162
# Sat, 28 Apr 2018 17:38:13 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 28 Apr 2018 17:38:14 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 28 Apr 2018 17:41:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 17:42:46 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 28 Apr 2018 20:29:27 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 28 Apr 2018 20:29:28 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 28 Apr 2018 20:29:29 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 28 Apr 2018 20:29:29 GMT
WORKDIR /tmp
# Sat, 28 Apr 2018 20:29:32 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 28 Apr 2018 20:29:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 28 Apr 2018 20:29:33 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 28 Apr 2018 20:34:44 GMT
RUN boot
```

-	Layers:
	-	`sha256:5c65288cd974eda27ef2a891c3b15c52c38c5a1c74befed7d569db78cbcb88b4`  
		Last Modified: Sat, 28 Apr 2018 08:29:36 GMT  
		Size: 45.6 MB (45590843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343a22ebff6b5419ff44cde1157bce380c49ebff18dc5a45a3ac95dccec293ae`  
		Last Modified: Sat, 28 Apr 2018 10:42:59 GMT  
		Size: 10.0 MB (9956162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33a69365768e2ab41b91be7fe2b449f02f0120a0da79c128a17acd8070e5f27`  
		Last Modified: Sat, 28 Apr 2018 10:42:57 GMT  
		Size: 4.3 MB (4289076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4e1d35f0ea4130d0fbc677cde86990fed44597ca9feaf04852d40853ca1a9d1`  
		Last Modified: Sat, 28 Apr 2018 10:43:46 GMT  
		Size: 50.0 MB (50028766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d7a36a902858c996a8b3071ea52dc2e2bd106d65b5628a079002a143b582d6`  
		Last Modified: Sat, 28 Apr 2018 18:07:03 GMT  
		Size: 885.5 KB (885507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd9e6e74cfb1546d68ca6da55e4f013f11d199afc14fedb4049ac0bd0cc74e68`  
		Last Modified: Sat, 28 Apr 2018 18:07:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e56d8c87f9f38f65e06b1a37d84721b9354d3753b1cac85fafefae9271f0a2a`  
		Last Modified: Sat, 28 Apr 2018 18:07:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8480d0978114dbde45731efa0e3cfc196678df84926725d44d36c996ebd7089`  
		Last Modified: Sat, 28 Apr 2018 18:07:47 GMT  
		Size: 161.5 MB (161519966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4f35465fa589d5d0fa3536942f6adba7eef2b3ba3dbeef7eef02c1c37ce408`  
		Last Modified: Sat, 28 Apr 2018 18:07:03 GMT  
		Size: 272.1 KB (272100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ac14a65eb993b3571cb39ae4d79c6b023f1d67fb1ebd425e419753d439c052`  
		Last Modified: Sat, 28 Apr 2018 20:36:33 GMT  
		Size: 6.9 KB (6900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc76abeb4c1f1d592f12d4f0b7eb9be6d4d0f92e26e7e07fe9c93ac69a54f705`  
		Last Modified: Sat, 28 Apr 2018 20:36:38 GMT  
		Size: 33.4 MB (33410883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:boot-2.7.2` - linux; s390x

```console
$ docker pull clojure@sha256:9273c868e20245b738c54e9dde764fe2688e3e8247217aa8925e0dcb23f1590c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.4 MB (288393619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f2258851f3b6ce98a0eead21c78761ba464ff6a6316b86ec621328275150ea2`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:04 GMT
ADD file:cb13df185b5fc36710007c3b4ec6f239ac340ff9c69cbec1e38fcf974766179b in / 
# Sat, 28 Apr 2018 11:45:04 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:19:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:19:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:20:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:30:48 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:30:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 28 Apr 2018 14:30:49 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_VERSION=8u162
# Sat, 28 Apr 2018 14:30:50 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Sat, 28 Apr 2018 14:30:50 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Sat, 28 Apr 2018 14:31:22 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 28 Apr 2018 14:31:25 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Sat, 28 Apr 2018 20:19:02 GMT
LABEL maintainer=Wes Morgan <wesmorgan@icloud.com>
# Sat, 28 Apr 2018 20:19:02 GMT
ENV BOOT_VERSION=2.7.2
# Sat, 28 Apr 2018 20:19:03 GMT
ENV BOOT_INSTALL=/usr/local/bin/
# Sat, 28 Apr 2018 20:19:03 GMT
WORKDIR /tmp
# Sat, 28 Apr 2018 20:19:04 GMT
RUN mkdir -p $BOOT_INSTALL   && wget -q https://github.com/boot-clj/boot-bin/releases/download/2.7.2/boot.sh   && echo "Comparing installer checksum..."   && echo "f717ef381f2863a4cad47bf0dcc61e923b3d2afb *boot.sh" | sha1sum -c -   && mv boot.sh $BOOT_INSTALL/boot   && chmod 0755 $BOOT_INSTALL/boot
# Sat, 28 Apr 2018 20:19:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 28 Apr 2018 20:19:05 GMT
ENV BOOT_AS_ROOT=yes
# Sat, 28 Apr 2018 20:25:18 GMT
RUN boot
```

-	Layers:
	-	`sha256:9793d586559922dfd1f10be65f3cabffaf1d31f81660ef474409da1f4f675fc7`  
		Last Modified: Sat, 28 Apr 2018 11:50:58 GMT  
		Size: 45.2 MB (45185265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1029d8fb29ae0fbf637f52ff30953b34e447a34365b9055b19faf7f1304d7a6`  
		Last Modified: Sat, 28 Apr 2018 13:29:28 GMT  
		Size: 10.3 MB (10282302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4db5fb833827f26afd173271cc60ae9e63a0188bcdfcfa887ca20ef5cba5fea5`  
		Last Modified: Sat, 28 Apr 2018 13:29:26 GMT  
		Size: 4.4 MB (4365988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:880249d542fab8452b7a2557e8f03c0bc9d21c2cb3d863b2e3e4db454ef4f75f`  
		Last Modified: Sat, 28 Apr 2018 13:29:36 GMT  
		Size: 50.5 MB (50450158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f0aba92e0f80ec33924cf8df5bf4c9c862f81c44d1c3a2e8b2f5e5d23fe444`  
		Last Modified: Sat, 28 Apr 2018 14:55:09 GMT  
		Size: 903.1 KB (903079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b703017df6314f9b8493960924ee5eb2b3c9def54e5d352ed31bb87cf93ceb6d`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6204e617487fda7c8cd462d9fa5ce9b0c5eadb154902bedae113a33177b115c1`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae059516112b02a3d2551947674db730ad93f43433d7bf7caab04ef915915fbb`  
		Last Modified: Sat, 28 Apr 2018 14:55:29 GMT  
		Size: 143.5 MB (143516383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49cd51ffc9aca982374111319b6f3a0fea07bc97eadd6e9843b5160fe97fc247`  
		Last Modified: Sat, 28 Apr 2018 14:55:08 GMT  
		Size: 272.2 KB (272158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16b5e5e26de206bbdff6d7830ca8bee27da3a9dd42cd0c660b31a8967420e7ca`  
		Last Modified: Sat, 28 Apr 2018 20:27:31 GMT  
		Size: 6.9 KB (6898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed4f7501810bfba8b3c062f9c1b23402dd3fac1772ee80bdcb62a56345a475a`  
		Last Modified: Sat, 28 Apr 2018 20:27:34 GMT  
		Size: 33.4 MB (33411008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

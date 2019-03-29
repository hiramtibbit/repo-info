## `clojure:latest`

```console
$ docker pull clojure@sha256:f9a49c127e52aac3908c55a485a8e4a12e3385c509ce1323c79dc1a628b70ac7
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

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:237d354a5e3c9f70a939988ea44e20e24fe1d2a94c78bf7301f2dbefe21b5993
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263927634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:519d679607879ac442c10355d1ad4a196b34f0dadc5c127c060ba8af96d135ee`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:26:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:27:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:43:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 00:48:05 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:48:06 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:48:07 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_VERSION=8u212
# Wed, 27 Mar 2019 23:25:21 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Wed, 27 Mar 2019 23:26:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 00:35:22 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 00:35:22 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 00:35:22 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 00:35:22 GMT
WORKDIR /tmp
# Fri, 29 Mar 2019 22:41:21 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Fri, 29 Mar 2019 22:41:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 29 Mar 2019 22:41:22 GMT
ENV LEIN_ROOT=1
# Fri, 29 Mar 2019 22:41:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Fri, 29 Mar 2019 22:41:29 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4b7902036fe0cefdfe9ccf0404fe13322ecbd552f132be73d3e840f95538838`  
		Last Modified: Tue, 26 Mar 2019 23:32:09 GMT  
		Size: 10.8 MB (10781908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b2a72d4e03052566e99130108071fc4eca4942c62923e3e5cf19666a23088ef`  
		Last Modified: Tue, 26 Mar 2019 23:32:07 GMT  
		Size: 4.3 MB (4340149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d54db43011fd116b8cb6d9e49e268cee1fa6212f152b30cbfa7f3c4c684427c3`  
		Last Modified: Tue, 26 Mar 2019 23:32:25 GMT  
		Size: 50.1 MB (50065446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a97c78dad716eca1d273d3f7f5661d3fa2dcbbefeab64f5690b285bf395d160`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 892.4 KB (892365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dcb79eeeda466f75d6e054aca0bd2c18861cb0c7c2b25334b9e28a30e016d12`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd56246cf4fdc376663368727fbc81bc7a4e4ff58007751d77e5f402e86a7946`  
		Last Modified: Wed, 27 Mar 2019 23:45:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88cea60f56c50b139ec25f442de67b34ce723ae45c69758c09ed98d32bd804be`  
		Last Modified: Wed, 27 Mar 2019 23:46:00 GMT  
		Size: 135.2 MB (135208938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18ff32f69bbcc6c8f206baad8f9722d722c288727163bd83e972522f1713662`  
		Last Modified: Fri, 29 Mar 2019 22:42:05 GMT  
		Size: 13.1 MB (13138433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32da13e682d0065f7992cedb0b4a64aa030ccd08f77c12b551a54dbebfeb3c62`  
		Last Modified: Fri, 29 Mar 2019 22:42:04 GMT  
		Size: 4.2 MB (4157418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm variant v5

```console
$ docker pull clojure@sha256:1d7e6a7afce014a5e8245159ba68a8b15e5c9924766588750763fb368ad10c4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.9 MB (245937940 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f7801990cb5e13324ca1f2b2618745cafb752ec2a1656e54f06a6db5d99f2d`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:53:37 GMT
ADD file:55757b58d47ad1bd75530ef5bfd90c3354b7da7cbb3519f8bedc170b9e2a5d9c in / 
# Wed, 27 Mar 2019 08:53:38 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:54:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:54:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:57:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:48:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:05:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:05:10 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:05:12 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:05:12 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:48:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:48:56 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:57:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:30:20 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 09:30:21 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 09:30:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 09:30:22 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 09:30:27 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 28 Mar 2019 09:30:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 28 Mar 2019 09:30:28 GMT
ENV LEIN_ROOT=1
# Thu, 28 Mar 2019 09:31:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 28 Mar 2019 09:31:16 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:f924f7b5a6a0a527f783d52778b09ae800121ce3fdd0812c44366174092a5573`  
		Last Modified: Wed, 27 Mar 2019 08:59:18 GMT  
		Size: 44.0 MB (44029721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9493ad08ec9883c81689003b68a06292c9e69f0d1227c28f63a7ec4ed0c17739`  
		Last Modified: Wed, 27 Mar 2019 10:09:42 GMT  
		Size: 9.9 MB (9851920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63792336dd728e502aed649c428b2e9514dce0e6c6b3f7d19491d103567bbdb1`  
		Last Modified: Wed, 27 Mar 2019 10:09:40 GMT  
		Size: 4.2 MB (4158987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2759e657580c6867634b69896d1a8a90b82a2871c7b9d333f4e4b541b64722e`  
		Last Modified: Wed, 27 Mar 2019 10:10:06 GMT  
		Size: 48.3 MB (48281903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1d771a516cf91efecf5c423dcec6da660891e73ee29f73b503cbb79f80ec1f`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 884.7 KB (884709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab50ed80671704ccd4c95e5b2039729b2f8e77b6769df85ebdc3550dfdfdece9`  
		Last Modified: Thu, 28 Mar 2019 09:10:10 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9692318f87a8c2c8b948352484c4dbe65baa6c849d86e283e9d3151926b02c`  
		Last Modified: Thu, 28 Mar 2019 09:10:11 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87309c2e80fdf05036af593bedfe124c2ee22be4079c932783c827669ecab528`  
		Last Modified: Thu, 28 Mar 2019 09:10:48 GMT  
		Size: 121.4 MB (121434379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf06b2b6374a1800065c80818a37b61d73f5516bf668a4bbb76fd7be2f95dd88`  
		Last Modified: Thu, 28 Mar 2019 09:36:41 GMT  
		Size: 13.1 MB (13138450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c65f7626f034ea88ca70214c5af42d01c24cf048cdb418ca2d6e90bd3726ca4`  
		Last Modified: Thu, 28 Mar 2019 09:36:40 GMT  
		Size: 4.2 MB (4157492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm variant v7

```console
$ docker pull clojure@sha256:508251d80f377c858f38b2456d62860417e3e5dfb67c9fe518e2c77a39b86a1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239852210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395951e3bce9df278501156d526af60cf8eb60061a66a28c2e6824e9b965dbe3`
-	Default Command: `["lein","repl"]`

```dockerfile
# Tue, 05 Mar 2019 13:10:34 GMT
ADD file:8f0ec0cbcef5902fe5ef35892898a19e6c61f5c422ac3d47500d42067ad7fef8 in / 
# Tue, 05 Mar 2019 13:10:35 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:50:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:50:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:51:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:22:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:24:47 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 14:24:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 14:24:50 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 14:24:51 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 14:24:51 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 14:24:52 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 14:26:04 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 17:44:55 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Tue, 05 Mar 2019 17:44:56 GMT
ENV LEIN_VERSION=2.9.1
# Tue, 05 Mar 2019 17:44:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 05 Mar 2019 17:44:58 GMT
WORKDIR /tmp
# Tue, 05 Mar 2019 17:45:04 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Tue, 05 Mar 2019 17:45:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 05 Mar 2019 17:45:06 GMT
ENV LEIN_ROOT=1
# Tue, 05 Mar 2019 17:45:13 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Tue, 05 Mar 2019 17:45:13 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:ec43a77fdcf3d8df75738e0d3bec016f01ad00db637d5e43eee90aa67114e127`  
		Last Modified: Tue, 05 Mar 2019 13:18:22 GMT  
		Size: 42.1 MB (42075119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0128678cc4b40c9bb1ec7b0fa116a9208fd54d9337636244f099bbfedc9ca0`  
		Last Modified: Tue, 05 Mar 2019 14:02:58 GMT  
		Size: 9.5 MB (9483576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b2e6712f412bb77d3968e5923bc8e9a94c1e8cdf8885e330ba02209eb30333`  
		Last Modified: Tue, 05 Mar 2019 14:02:56 GMT  
		Size: 3.9 MB (3918633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddf45915d948e0432094f336547edb2d36192b5d75faa9ed87557c6376defbd5`  
		Last Modified: Tue, 05 Mar 2019 14:03:21 GMT  
		Size: 46.4 MB (46388461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16427dc6d63940e85dc87bafb75891c2f2f291e7eaba249e42eaa95a6ff5e125`  
		Last Modified: Tue, 05 Mar 2019 14:40:26 GMT  
		Size: 867.9 KB (867894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31389826315adf87928d4763d79433504d80257a313d388a58b9d2d2952262c`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9af266faed44d8c87642707aac441d0cc0966e72172033712c9684fed1cb5ac0`  
		Last Modified: Tue, 05 Mar 2019 14:40:25 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:401254547fb9af20b602a5f224e30fd3c671fc94a45ca0fac706b514c6370780`  
		Last Modified: Tue, 05 Mar 2019 14:41:02 GMT  
		Size: 119.8 MB (119822235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639d39b02f1e6c8ec471ba1950b006ad567595ccfdebe67108f15996735942e9`  
		Last Modified: Tue, 05 Mar 2019 17:47:45 GMT  
		Size: 13.1 MB (13138450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ced51f48040a9ffcbe961764262b0416878cacddc87092b146f10fc372e747c`  
		Last Modified: Tue, 05 Mar 2019 17:47:44 GMT  
		Size: 4.2 MB (4157463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9d540aa12efaaa12cfd22946b3492738aa2e63ca6315935dddae66a87abcf4d1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.8 MB (248801429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f44b4d582b462c5c101e5a4decc0f968130bb1c0e0bf148a89d1e1a81860f555`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:16:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:17:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 19:35:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:35:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:35:30 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:35:31 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 03:52:50 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 03:52:51 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 03:58:07 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 04:30:14 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 04:30:15 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 04:30:16 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 04:30:16 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 04:30:41 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 28 Mar 2019 04:30:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 28 Mar 2019 04:30:43 GMT
ENV LEIN_ROOT=1
# Thu, 28 Mar 2019 04:30:53 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 28 Mar 2019 04:30:54 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6696bae2f570e0c96dcb21308e525216796d3452d1a9b8dcaba168ba37f3f464`  
		Last Modified: Wed, 27 Mar 2019 10:36:08 GMT  
		Size: 9.7 MB (9730463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dca82770cb3702e9c92d2f155923c0fb55671c1c373b8b50640b7bf05ed8418`  
		Last Modified: Wed, 27 Mar 2019 10:36:05 GMT  
		Size: 4.1 MB (4094072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95e88827e80fd1e7c7d0a78bc734615833dd6ac19b07c1ad3b8b1c837bb4ece`  
		Last Modified: Wed, 27 Mar 2019 10:36:43 GMT  
		Size: 48.0 MB (48007546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b918968c658e5fccf315dfefd0fa9aa78bcd41675036298167da2bec4b1406dd`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 877.6 KB (877635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a7832bf03e4b7c54b24f367d9c8050d34ab96a51a57b117b1af07b4887c169`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82425005e04069a0ce309c9fc34f7c774e8c48774ed976b38da4c2f4a98ba027`  
		Last Modified: Thu, 28 Mar 2019 04:11:01 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a213aa49f4e98511aa253590cf547c6f407c48d49a2d2712144feb9ce9e3d8`  
		Last Modified: Thu, 28 Mar 2019 04:11:40 GMT  
		Size: 125.7 MB (125663506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7a398fbc18dc42b35fb560b29664bbf6a0d40c5cd0996517895d4903b6f4ea1`  
		Last Modified: Thu, 28 Mar 2019 04:37:32 GMT  
		Size: 13.1 MB (13138427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ddc66681bdeabc3e641bc7972e0b1711a0d53766dea580eb4f2251a3fefd3a`  
		Last Modified: Thu, 28 Mar 2019 04:37:31 GMT  
		Size: 4.2 MB (4157403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; 386

```console
$ docker pull clojure@sha256:c48e205eb2ab7138cabeabfcf0b08a1316453f17fe59c39cfbc82cc2fcc3c21f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.3 MB (266306053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19505243ee923962a5ba09b0f6115b4f962f8d04a59989cc94780befbabdf38a`
-	Default Command: `["lein","repl"]`

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
# Wed, 27 Mar 2019 17:56:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:56:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:56:21 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:56:21 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 00:57:40 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 00:57:40 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 00:58:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 03:08:57 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 03:08:57 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 03:08:57 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 03:08:57 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 03:09:02 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 28 Mar 2019 03:09:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 28 Mar 2019 03:09:02 GMT
ENV LEIN_ROOT=1
# Thu, 28 Mar 2019 03:09:09 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 28 Mar 2019 03:09:09 GMT
CMD ["lein" "repl"]
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
	-	`sha256:47aff93458b2651eb1b3e8661218fba1cea6bf5b0dd1c3b1409a68f5a3a3ff3a`  
		Last Modified: Thu, 28 Mar 2019 01:16:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:509018cc3ba60b960d4b8de6cf3966143e4f4708c0df4815b7b0f99f1ad4ec0b`  
		Last Modified: Thu, 28 Mar 2019 01:16:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6bbc46dff6475c95109a36c7b6addd6b50203c8a67ef0b5ee99da5218249659`  
		Last Modified: Thu, 28 Mar 2019 01:16:53 GMT  
		Size: 135.1 MB (135096567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7563af2a3ae6c72d1f0aa44a53a7be72f31612edcd97fee95c81b61752f2aad`  
		Last Modified: Thu, 28 Mar 2019 03:11:52 GMT  
		Size: 13.1 MB (13138418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fc3e32614105130512ea131458350510240d05a412a066f594d6598eef95d84`  
		Last Modified: Thu, 28 Mar 2019 03:11:51 GMT  
		Size: 4.2 MB (4157418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:f14cf83d15183029faf0ecf2d2ca031fbc27b8b5b6753e2928421fc3d7d54550
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.3 MB (253287105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7c9f4efe75fc8643608c0ff655bd96c504e14a63214a14d3e69a02acce297f`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 27 Mar 2019 08:24:48 GMT
ADD file:0aeca7a94fcd3aca37307eaa304fdd2a23bc43fb7ade8a9f306254fa30accfec in / 
# Wed, 27 Mar 2019 08:24:51 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:33:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:34:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:36:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:33:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:46:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:46:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:46:46 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:46:48 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 08:17:56 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 08:17:58 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 08:26:36 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 09:09:39 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 09:09:43 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 09:09:47 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 09:09:49 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 09:10:10 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 28 Mar 2019 09:10:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 28 Mar 2019 09:10:15 GMT
ENV LEIN_ROOT=1
# Thu, 28 Mar 2019 09:10:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 28 Mar 2019 09:10:31 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:5462e4d3f2420111f3439323c918443a24d22a783fcd63aa20ab3f08fb484802`  
		Last Modified: Wed, 27 Mar 2019 08:32:15 GMT  
		Size: 45.6 MB (45610507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d9b225199f5b709c5d08dc4a8a9bfc0aa5b18927c07f24132a83d863dc1bfb`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 10.0 MB (9988941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2181699f39c0e63ab78a4d11a44c024c396bc99684a04be14ad455ec8fd8a066`  
		Last Modified: Wed, 27 Mar 2019 09:51:31 GMT  
		Size: 4.3 MB (4296512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1027482d9c86e7b0fb6cce65103b1a9a414568a5a23e77cead4904acbbe3378e`  
		Last Modified: Wed, 27 Mar 2019 09:52:13 GMT  
		Size: 50.1 MB (50071700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96fc7258158f286e94ac66432d2ac9809176fc30ce88127ebc7ef34c919357bc`  
		Last Modified: Wed, 27 Mar 2019 12:53:05 GMT  
		Size: 886.0 KB (886044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd38cda32c6d4dfcd1c53b547985c65d4123ca83be2296d162702afda16d3c09`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2c5364092af7fe95ee496fe264d221a0e1a6e0755ad3152c58e01cfadb9d8e5`  
		Last Modified: Thu, 28 Mar 2019 08:39:53 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5267068d3f6a4840904bb6c2c5d920c72b7cdc00d60be5d6056f838755b57ce9`  
		Last Modified: Thu, 28 Mar 2019 08:42:20 GMT  
		Size: 125.1 MB (125137072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:140e03dd0b73c238a5bbad341326f835485b446b212a90b8eed76b2e4cfbff8e`  
		Last Modified: Thu, 28 Mar 2019 09:15:00 GMT  
		Size: 13.1 MB (13138465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95d58e259320109d5362c9d05f83d8871ef684410a4ad4e16496e6e6f2092c42`  
		Last Modified: Thu, 28 Mar 2019 09:14:57 GMT  
		Size: 4.2 MB (4157483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:08475d23e854d36ac3a11a2384708c6d29dda83344a8c78ddb286bfc2088f08a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252687981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50e2a873242ba3a3bd63e088f497b27232b7c11e1b5ee608b7e5b75136792996`
-	Default Command: `["lein","repl"]`

```dockerfile
# Wed, 27 Mar 2019 11:43:28 GMT
ADD file:7110876caa1efff30ec13a260b6ecdc3169bb586a858211431cf38aa2eaf6b40 in / 
# Wed, 27 Mar 2019 11:43:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:43:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:44:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:21:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:26:54 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:26:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:26:56 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:26:57 GMT
ENV JAVA_HOME=/docker-java-home
# Thu, 28 Mar 2019 11:45:17 GMT
ENV JAVA_VERSION=8u212
# Thu, 28 Mar 2019 11:45:18 GMT
ENV JAVA_DEBIAN_VERSION=8u212-b01-1~deb9u1
# Thu, 28 Mar 2019 11:46:58 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Thu, 28 Mar 2019 12:40:59 GMT
LABEL maintainer=Paul Lam <paul@quantisan.com>
# Thu, 28 Mar 2019 12:40:59 GMT
ENV LEIN_VERSION=2.9.1
# Thu, 28 Mar 2019 12:41:00 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 28 Mar 2019 12:41:01 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 12:41:11 GMT
RUN mkdir -p $LEIN_INSTALL   && wget -q https://raw.githubusercontent.com/technomancy/leiningen/$LEIN_VERSION/bin/lein-pkg   && echo "Comparing lein-pkg checksum ..."   && sha1sum lein-pkg   && echo "93be2c23ab4ff2fc4fcf531d7510ca4069b8d24a *lein-pkg" | sha1sum -c -   && mv lein-pkg $LEIN_INSTALL/lein   && chmod 0755 $LEIN_INSTALL/lein   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip   && wget -q https://github.com/technomancy/leiningen/releases/download/$LEIN_VERSION/leiningen-$LEIN_VERSION-standalone.zip.asc   && gpg --batch --keyserver pool.sks-keyservers.net --recv-key 2B72BF956E23DE5E830D50F6002AF007D1A7CC18   && echo "Verifying Jar file signature ..."   && gpg --verify leiningen-$LEIN_VERSION-standalone.zip.asc   && rm leiningen-$LEIN_VERSION-standalone.zip.asc   && mkdir -p /usr/share/java   && mv leiningen-$LEIN_VERSION-standalone.zip /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar
# Thu, 28 Mar 2019 12:41:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 28 Mar 2019 12:41:17 GMT
ENV LEIN_ROOT=1
# Thu, 28 Mar 2019 12:42:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.10.0"]])' > project.clj   && lein deps && rm project.clj
# Thu, 28 Mar 2019 12:42:05 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:d2a11bbe31e5b32e46b5e6bae2c7bab6594a74680c9c80903b5790853e800a1e`  
		Last Modified: Wed, 27 Mar 2019 11:46:35 GMT  
		Size: 45.2 MB (45199333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d50ce7d399845400d5a183933ebc5c6cb7095927c6fe7b71f3546b52c20916`  
		Last Modified: Wed, 27 Mar 2019 12:53:49 GMT  
		Size: 10.3 MB (10314977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb29f88d766eb640800085e76903c14e35253dd5d563451d0fc44981c807de0`  
		Last Modified: Wed, 27 Mar 2019 12:53:47 GMT  
		Size: 4.4 MB (4372243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1250363d323e44a672cd18e9371763e0dd3a088fcfd972364b5be924948e988`  
		Last Modified: Wed, 27 Mar 2019 12:54:06 GMT  
		Size: 50.5 MB (50489833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:079f50fa64721b4d7472d239522c3d09135e05c18192031e6ad31c69195394f7`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 903.5 KB (903472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6589a2dd36c2006cff2d5d4c8979388493bf85f6da62e5cc9152a0de2875ff9c`  
		Last Modified: Thu, 28 Mar 2019 11:51:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43fab49f2691b215b7f875a5e0620502e8b99bd02d3a9928d1f806ca33868392`  
		Last Modified: Thu, 28 Mar 2019 11:51:27 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c06e3673ab9390a8967b9e59e05bc31710c3e4689fb73cfdbc612d2ab09bc59`  
		Last Modified: Thu, 28 Mar 2019 11:51:54 GMT  
		Size: 124.1 MB (124111892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc4f05851b3e1bef1bffb34ff0bfabb03bd947ac965a2c153193bf0416cb19f`  
		Last Modified: Thu, 28 Mar 2019 12:47:19 GMT  
		Size: 13.1 MB (13138418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b47c857358de4d2f55331254ddeb1b4b6c0e84adfb920a006c6cf6a7537e0f3`  
		Last Modified: Thu, 28 Mar 2019 12:47:18 GMT  
		Size: 4.2 MB (4157434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

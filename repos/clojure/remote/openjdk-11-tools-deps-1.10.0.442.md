## `clojure:openjdk-11-tools-deps-1.10.0.442`

```console
$ docker pull clojure@sha256:fba509962f874032fb5ef7ec47de3eab108a2482302e686fc914f477b4130f9d
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

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; amd64

```console
$ docker pull clojure@sha256:5c5c60704e4bbabe12c991b2ac4c753aba2c35bd4c88810c45091f40941a7f30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **474.3 MB (474285157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7b1bf9b9484eb7e1b6ecdfe2d6765690003063fbcb56e0bf29696fdb327ba4`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 00:44:00 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 00:44:00 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 00:44:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 00:44:01 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 00:44:02 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 00:45:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 00:45:26 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 11:09:56 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Mon, 01 Apr 2019 23:20:49 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Mon, 01 Apr 2019 23:20:49 GMT
WORKDIR /tmp
# Mon, 01 Apr 2019 23:20:54 GMT
RUN apt-get update && apt-get install -y rlwrap
# Mon, 01 Apr 2019 23:20:55 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Mon, 01 Apr 2019 23:21:04 GMT
RUN clojure -e "(clojure-version)"
# Mon, 01 Apr 2019 23:21:04 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:99a9d43f5b1c3593b7eb98ccf10e74bc0390cb227befbef3bf13f27d2a79f7f9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3d516f512e0d5c064be962d0f4ee49d9b8675b5a5acd3f70527ea40d60d766f`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:818845f741c457054b344e3108bd8e119c3f1f4d8f48b515a610f797b9a20cb9`  
		Last Modified: Wed, 27 Mar 2019 01:06:50 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c738f464a19882ad215b583752f969af431250f7c54f6b8fa282d8feb5fe484`  
		Last Modified: Wed, 27 Mar 2019 01:07:37 GMT  
		Size: 325.0 MB (325046409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3d5b5ea2717b62ae64ec9113707e99f83b2b143b7a842e3f92d3fa3ac4aa876`  
		Last Modified: Mon, 01 Apr 2019 23:21:39 GMT  
		Size: 13.9 MB (13944199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd73421e204f80f98cae5f46fe804887e3b65c6af33100e9657c867a00094bea`  
		Last Modified: Mon, 01 Apr 2019 23:21:38 GMT  
		Size: 19.8 MB (19768753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b90f1a2b5fe274c4b0028557ef19aa3daaa00156921620c300895e30d1ae9c`  
		Last Modified: Mon, 01 Apr 2019 23:21:37 GMT  
		Size: 4.1 MB (4102729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; arm variant v5

```console
$ docker pull clojure@sha256:f12b21cad133d72aa509fcaecb33bbf013b3df2e0917294e9d6e0f09a70d89d8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **407.7 MB (407676014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:361c476d0473c9e851441bc279491be8db0eb695564395cac6bcf6a49c584f21`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 11:48:30 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 11:48:30 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:48:31 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 11:48:33 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 11:48:33 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 11:48:34 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 11:48:34 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 11:57:57 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 11:57:58 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 17:14:04 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 08:50:15 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 08:50:15 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 08:51:26 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 08:51:30 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 08:52:55 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 08:52:55 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:174244afdd5177bdbf204b5fc4b2f4b416f69505ad7a14179342d01c8ab88479`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:127e35b656dade04d7fbb9322fda9b207490253bdec2ec4e4eb2a90f4ab6c004`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0c346f5515889ae75eae2ea9bcbc1aee13981504da29e78faaa2e2ff20e7a0`  
		Last Modified: Wed, 27 Mar 2019 12:19:37 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:debd457cbde96b038779506edbe5cfb581afd443721bb56f03ea2939c69b1b73`  
		Last Modified: Wed, 27 Mar 2019 12:20:26 GMT  
		Size: 262.6 MB (262564449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f174528a3dff6b52792a0ee088b5c2d5fccda8a87d2df74b15d9682a3c40fb`  
		Last Modified: Tue, 02 Apr 2019 08:53:29 GMT  
		Size: 14.0 MB (14032032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29c0884e7f117b8864c1f239700e69b17ea5425794f92bacab7fdda5ce5548af`  
		Last Modified: Tue, 02 Apr 2019 08:53:29 GMT  
		Size: 19.8 MB (19768859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cc15cfef8484d04d961525fe4d366cd05108427ae45f61dcd725b7bb6651b0`  
		Last Modified: Tue, 02 Apr 2019 08:53:26 GMT  
		Size: 4.1 MB (4102833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; arm variant v7

```console
$ docker pull clojure@sha256:99ed20b162f3676e8a8ff7620e477c4b0702b8d7729a4dd1a6d010b98982b689
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.9 MB (421876590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc974dbf753eb719aa991846538bf9c9b3db024a63d80a22df3fc17cb5839c78`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:35:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:35:59 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 23 Jan 2019 14:35:59 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:36:01 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 23 Jan 2019 14:36:03 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 23 Jan 2019 14:36:04 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 23 Jan 2019 14:36:04 GMT
ENV JAVA_VERSION=11.0.1
# Wed, 23 Jan 2019 14:36:04 GMT
ENV JAVA_DEBIAN_VERSION=11.0.1+13-2~bpo9+1
# Wed, 23 Jan 2019 14:37:43 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 23 Jan 2019 14:37:49 GMT
CMD ["jshell"]
# Wed, 23 Jan 2019 19:03:51 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 11:59:47 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 11:59:48 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 11:59:56 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 11:59:59 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 12:00:10 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 12:00:11 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:314e931308c5b3048a05360ec5a95d4f05eed1c5cc32a75ec50ab05e572a0672`  
		Last Modified: Wed, 23 Jan 2019 15:04:17 GMT  
		Size: 867.9 KB (867863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:769ae4f27b816215340980fafe8c8c387a57e9ff01db821456e4eba6d49ac774`  
		Last Modified: Wed, 23 Jan 2019 15:04:17 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105c2e961a4c72fe9d4ac46fe9325d3794164008b3e774dad9334311cb419ba5`  
		Last Modified: Wed, 23 Jan 2019 15:04:17 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4984d8fac080e2e36cdf0830f78747bfff06bc6c6d9571d1d84bebf2e978715`  
		Last Modified: Wed, 23 Jan 2019 15:04:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07c19fee6c1cc723dea2475f565ef714163c02b5f5bd03a189e1d87116424a5c`  
		Last Modified: Wed, 23 Jan 2019 15:05:11 GMT  
		Size: 281.1 MB (281136686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe3f73da0040bbca7dd26cc73196dcd5869c19ad4d0d73900dfb3a0c4307434b`  
		Last Modified: Tue, 02 Apr 2019 12:00:44 GMT  
		Size: 14.1 MB (14128500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b88e6fb14e277c3744e6738efe1f63d39923181bab56b479e6b45e783b990c43`  
		Last Modified: Tue, 02 Apr 2019 12:00:44 GMT  
		Size: 19.8 MB (19768865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ab74dc4563ca9b44e274ae179dc0619141983cbcd547710acb8e9c9437fa47a`  
		Last Modified: Tue, 02 Apr 2019 12:00:42 GMT  
		Size: 4.1 MB (4102792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d4127c76570a23d9f49cab30b0e070c7cc631ea6f6f43698ffb128a691db26d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **445.2 MB (445191573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff89cc54bd2ea0dbf4842e85d8e416d0eab7ff08d33b1f3ca2df5097ac39a71`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 19:20:24 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 19:20:25 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 19:20:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 19:20:30 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 19:20:31 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 19:20:32 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 19:20:32 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 19:24:35 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 19:24:37 GMT
CMD ["jshell"]
# Thu, 28 Mar 2019 04:36:26 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 08:40:51 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 08:40:52 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 08:41:03 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 08:41:07 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 08:41:26 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 08:41:27 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:e97cc37ba01632d37959a7e25eebbdfe5197bf64ca8acc15024f206da5279532`  
		Last Modified: Wed, 27 Mar 2019 19:40:19 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b0708dcd7a8392d5757aaa0e78df5dc4e065be9267862f497b3121ccfd52183`  
		Last Modified: Wed, 27 Mar 2019 19:40:18 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1429ad4df1b7d82c847322c9f6bdab347c2701b909c3ca10ff17f766560743`  
		Last Modified: Wed, 27 Mar 2019 19:40:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724be21902c89b01c119615da80a46df5a1714c497fa16d75b1d22a89906a161`  
		Last Modified: Wed, 27 Mar 2019 19:41:24 GMT  
		Size: 301.9 MB (301856864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c92755077b03eaa73eb44d79864541f51774c50a8cfefc8f85dd9f6276b45406`  
		Last Modified: Tue, 02 Apr 2019 08:42:18 GMT  
		Size: 13.6 MB (13620882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5720bb19b5918c7fb4f61b57ad1cbb841e1d9177f1c03c38bd430f6069d8a58c`  
		Last Modified: Tue, 02 Apr 2019 08:42:20 GMT  
		Size: 19.8 MB (19768758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed6cd093b34cc3cf61de1a4891a0ada5bf1dcf4e387eba90a48770bcfb23f4e2`  
		Last Modified: Tue, 02 Apr 2019 08:42:16 GMT  
		Size: 4.1 MB (4102750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; 386

```console
$ docker pull clojure@sha256:14547aa0680173d4bb812fcb65c2e68240a88b8248e3d68c519648851870d147
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **540.2 MB (540231899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:082379e4909765f0e72f05ac6c527374342419694829500ad00a27c44acc91fa`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 17:50:55 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 17:50:56 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:50:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 17:50:57 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 17:50:58 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 17:53:25 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 17:53:25 GMT
CMD ["jshell"]
# Thu, 28 Mar 2019 03:11:20 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 10:38:50 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 10:38:50 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 10:38:55 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 10:38:57 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 10:39:05 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 10:39:05 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:096d2fb06b2d4e69e7068be90b7cc56453f5d0ad83b1f569405119dfa38eec2b`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b7ae642cfff67a7720d6430d2d0d637437c5a412fe22a02f3e6f3159b2ada8`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af7669130211fc83ee00d0cc938108debdf6178224f0a1f00c4927f07f7a1f`  
		Last Modified: Wed, 27 Mar 2019 18:28:19 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518ed9cf1481440176383d71963925965811ac1f8081f8d298db544d08893083`  
		Last Modified: Wed, 27 Mar 2019 18:29:02 GMT  
		Size: 388.0 MB (388020305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da2368639bb9a9d9bf7adbd7363e6f0323beb8960d67b53e240bfbca0442dec9`  
		Last Modified: Tue, 02 Apr 2019 10:39:30 GMT  
		Size: 14.4 MB (14426262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32407b76de45fcb52625eb526fae82757720046a9884bf366b3e599ada565497`  
		Last Modified: Tue, 02 Apr 2019 10:39:30 GMT  
		Size: 19.8 MB (19768747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36f6c04e7c1c24642b9ddd62a15b951f44ac6157bd73b7834e19e0a5acfd87f`  
		Last Modified: Tue, 02 Apr 2019 10:39:29 GMT  
		Size: 4.1 MB (4102714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; ppc64le

```console
$ docker pull clojure@sha256:577eeb68ffd04e12865e4b1a94c8a65b32fa51bd14d8d4a9ce92839104a4affe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.3 MB (441326591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c253e38ee5da7f4dc229b338b38beac86bf53c7e1cbb916445f0a7126e53b56`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 12:33:13 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 12:33:15 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 12:33:20 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 12:33:25 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 12:33:26 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 12:33:29 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 12:33:30 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 12:37:23 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 12:37:33 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 19:35:31 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 08:18:28 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 08:18:30 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 08:18:43 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 08:18:48 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 08:19:02 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 08:19:06 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:68ea5606b0ab0f9785b09523fbab1bc61ea4c3be532697e46b335a41b14ef13d`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6140218cafdbc0a0a55e39346362a87008296ac3b0a734f7e7f74c3fa79918f8`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25aa2cc4e25215380c3203c2681cd0afde017e041cedcc531cb4212666f9e432`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd43a6718775b45fb08007b8f5fa08479a9d12af312e4f0e03dd4ed161b7bf`  
		Last Modified: Wed, 27 Mar 2019 12:54:27 GMT  
		Size: 293.0 MB (293016060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f329374a57863e9a2c607db9ca6b8ed761a14a1907bbf7b8e94122e63c0d46c`  
		Last Modified: Tue, 02 Apr 2019 08:20:04 GMT  
		Size: 13.6 MB (13584580 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f8dc235dc4dce96c591ec0f5237d4b8f7941733e7a1aa50d15eb0ea1d6b05a`  
		Last Modified: Tue, 02 Apr 2019 08:20:04 GMT  
		Size: 19.8 MB (19768861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8bfac9b6f874b1b5b1cdba67337325a9905f0298887b78647f25234d88ba33`  
		Last Modified: Tue, 02 Apr 2019 08:20:02 GMT  
		Size: 4.1 MB (4102785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `clojure:openjdk-11-tools-deps-1.10.0.442` - linux; s390x

```console
$ docker pull clojure@sha256:1281ad2fb1757f0bfaa5525d7a948037fd0de021996f9c5fb7b84dd442687673
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.4 MB (441383214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd337cc7bd06602b87d138f9ce1da6dd281f11889cd50f540aef7e97640a0a81`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

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
# Wed, 27 Mar 2019 15:21:32 GMT
RUN echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list
# Wed, 27 Mar 2019 15:21:32 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:21:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 27 Mar 2019 15:21:34 GMT
RUN ln -svT "/usr/lib/jvm/java-11-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 27 Mar 2019 15:21:34 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 27 Mar 2019 15:21:34 GMT
ENV JAVA_VERSION=11.0.2
# Wed, 27 Mar 2019 15:21:34 GMT
ENV JAVA_DEBIAN_VERSION=11.0.2+9-3~bpo9+1
# Wed, 27 Mar 2019 15:23:44 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		ln -svT /docker-java-home/bin/java /usr/local/bin/java; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-11-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		rm -v /usr/local/bin/java; 		keytool -importkeystore -srckeystore /etc/ssl/certs/java/cacerts -destkeystore /etc/ssl/certs/java/cacerts.jks -deststoretype JKS -srcstorepass changeit -deststorepass changeit -noprompt; 	mv /etc/ssl/certs/java/cacerts.jks /etc/ssl/certs/java/cacerts; 	/var/lib/dpkg/info/ca-certificates-java.postinst configure; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 27 Mar 2019 15:23:45 GMT
CMD ["jshell"]
# Wed, 27 Mar 2019 20:29:33 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 02 Apr 2019 11:43:46 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 02 Apr 2019 11:43:47 GMT
WORKDIR /tmp
# Tue, 02 Apr 2019 11:44:01 GMT
RUN apt-get update && apt-get install -y rlwrap
# Tue, 02 Apr 2019 11:44:09 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 02 Apr 2019 11:44:31 GMT
RUN clojure -e "(clojure-version)"
# Tue, 02 Apr 2019 11:44:31 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:4f9fb3ead36893f3333087fffc58282627cb9b97942c96775a2f3e6b85d0b0c4`  
		Last Modified: Wed, 27 Mar 2019 15:29:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec42bc82fc17d6db688e99112f3aa7309d545795500f1a7b4becf31c4ab3bb3c`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdceb599da730616ec033e04eddf3b1bfbb9e4185d6d62db4e29208d7678e7cb`  
		Last Modified: Wed, 27 Mar 2019 15:29:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253690a99925ec346d2f26966ece426852268caa29fca8d2c48aaa3da74edea9`  
		Last Modified: Wed, 27 Mar 2019 15:30:23 GMT  
		Size: 293.4 MB (293415536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c578e5c98bbf0544284c9b1b603e3a936b4b50cacc86a8d36327980bcee0947`  
		Last Modified: Tue, 02 Apr 2019 11:45:52 GMT  
		Size: 12.8 MB (12815702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0406aba0fd89d13eb8c8ce8185b96d068ae60dff8ec28407e11f5f0c130afb53`  
		Last Modified: Tue, 02 Apr 2019 11:45:52 GMT  
		Size: 19.8 MB (19768752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:120827a0378f75a8e20cd51934a36f688bdcd621de7280a6b7ac332033c6780d`  
		Last Modified: Tue, 02 Apr 2019 11:45:48 GMT  
		Size: 4.1 MB (4102764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

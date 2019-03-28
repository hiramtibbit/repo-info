## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:de0aaf1071fbd6be3c513d6d9669d507d34e4212bc282fca119a812113fccbb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `jruby:9-onbuild` - linux; amd64

```console
$ docker pull jruby@sha256:ace933f614f87d624383e94709518c9835d8b29a1afa67c11f68f7834a3e1fcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.6 MB (275643031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0cda6116be153c0a571b6f3d9805d50fcc6e0c16bfab138f00bb1aaa5d29658`
-	Default Command: `["irb"]`

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
# Thu, 28 Mar 2019 00:27:07 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 00:30:06 GMT
ENV JRUBY_VERSION=9.1.17.0
# Thu, 28 Mar 2019 00:30:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Thu, 28 Mar 2019 00:30:09 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 28 Mar 2019 00:30:09 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:30:10 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 28 Mar 2019 00:30:26 GMT
RUN gem install bundler
# Thu, 28 Mar 2019 00:30:27 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 28 Mar 2019 00:30:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 28 Mar 2019 00:30:27 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 00:30:28 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 28 Mar 2019 00:30:28 GMT
CMD ["irb"]
# Thu, 28 Mar 2019 00:30:33 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Mar 2019 00:30:34 GMT
WORKDIR /usr/src/app
# Thu, 28 Mar 2019 00:30:34 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 28 Mar 2019 00:30:34 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 28 Mar 2019 00:30:34 GMT
ONBUILD RUN bundle install --system
# Thu, 28 Mar 2019 00:30:34 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:aa2cf16740fb2b03caacfc8125fc6f453e0e65175182f79e7df77df706368c9e`  
		Last Modified: Thu, 28 Mar 2019 00:31:28 GMT  
		Size: 6.8 MB (6781551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67742b33041b2be7b3f3be8d929a2614fcb19d048822b2be922bbef98765b18c`  
		Last Modified: Thu, 28 Mar 2019 00:32:19 GMT  
		Size: 21.5 MB (21500586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e7f5f10b25f66d642cf8e4e9656769f095e97b974a7ee10967797a7dfc6bdd`  
		Last Modified: Thu, 28 Mar 2019 00:32:16 GMT  
		Size: 200.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81fb2da6f64260c6f950e6a1a2c6a16f71365d617f0c97da145e21f48512a32f`  
		Last Modified: Thu, 28 Mar 2019 00:32:16 GMT  
		Size: 728.6 KB (728615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff0f30d215e77cb383582ee47c76b161fd12d5e28109337dd45583c9ff81ae6`  
		Last Modified: Thu, 28 Mar 2019 00:32:16 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abd65dbf6a0fe66e883aa8af51a6e7c55c2177517bd77922a5595c79dee47e11`  
		Last Modified: Thu, 28 Mar 2019 00:32:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:863917502fbc88eff91892b8bb2d877a8954a41c7e8af38e869c0105e073135c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.7 MB (256736256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe2e562d0e225c686751c1fbe67aa87ecf4cd3c415999feac83bdecd0e44490`
-	Default Command: `["irb"]`

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
# Thu, 28 Mar 2019 09:47:15 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 09:53:47 GMT
ENV JRUBY_VERSION=9.1.17.0
# Thu, 28 Mar 2019 09:53:48 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Thu, 28 Mar 2019 09:53:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 28 Mar 2019 09:53:54 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 09:53:55 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 28 Mar 2019 09:55:37 GMT
RUN gem install bundler
# Thu, 28 Mar 2019 09:55:38 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 28 Mar 2019 09:55:38 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 28 Mar 2019 09:55:38 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 09:55:40 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 28 Mar 2019 09:55:40 GMT
CMD ["irb"]
# Thu, 28 Mar 2019 09:55:48 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Mar 2019 09:55:49 GMT
WORKDIR /usr/src/app
# Thu, 28 Mar 2019 09:55:49 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 28 Mar 2019 09:55:49 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 28 Mar 2019 09:55:50 GMT
ONBUILD RUN bundle install --system
# Thu, 28 Mar 2019 09:55:50 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:77c1b6454c38f249eae6023565ea2d5160a12d463c6abb5a67de4b8653a1f7a6`  
		Last Modified: Thu, 28 Mar 2019 09:56:25 GMT  
		Size: 5.9 MB (5864008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97c3a5fc66d511b00d2af2443146dcb2da6124c63a35ba6ab801d8bda4170baf`  
		Last Modified: Thu, 28 Mar 2019 09:56:27 GMT  
		Size: 21.5 MB (21500747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d93b034203aa6544b70521722c21a1b6c1d741bb5c742a463618bbf1a028216`  
		Last Modified: Thu, 28 Mar 2019 09:56:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec63a9fc42988cffc5136759b02127212c62708bbb2e0b58baa76f3efa7518f`  
		Last Modified: Thu, 28 Mar 2019 09:56:23 GMT  
		Size: 728.9 KB (728917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec03612f6f5c4a586791bef045cda6238c70987d85326bd29a7515dc8423b9a3`  
		Last Modified: Thu, 28 Mar 2019 09:56:22 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b02e124be8509795665f96bf08d9fc1bd084535d3dc0422c510c33e274fbe126`  
		Last Modified: Thu, 28 Mar 2019 09:56:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:11c4bf773e33626bbf3e6aaff4b712fd4e861a73dc37f961ab51ec347293cf2e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259893194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667c46e450e58e93ff42231871fd7f7654138ed1071c921d768b46198840a9d6`
-	Default Command: `["irb"]`

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
# Thu, 28 Mar 2019 04:47:46 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 04:51:32 GMT
ENV JRUBY_VERSION=9.1.17.0
# Thu, 28 Mar 2019 04:51:33 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Thu, 28 Mar 2019 04:51:38 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 28 Mar 2019 04:51:39 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 04:51:41 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 28 Mar 2019 04:52:03 GMT
RUN gem install bundler
# Thu, 28 Mar 2019 04:52:04 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 28 Mar 2019 04:52:04 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 28 Mar 2019 04:52:05 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 04:52:07 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 28 Mar 2019 04:52:08 GMT
CMD ["irb"]
# Thu, 28 Mar 2019 04:52:14 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Mar 2019 04:52:15 GMT
WORKDIR /usr/src/app
# Thu, 28 Mar 2019 04:52:15 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 28 Mar 2019 04:52:16 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 28 Mar 2019 04:52:17 GMT
ONBUILD RUN bundle install --system
# Thu, 28 Mar 2019 04:52:17 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:ec9922907447b01de6c6c417ce346b87042f902f9ce9566cc92d16d5082470bf`  
		Last Modified: Thu, 28 Mar 2019 04:53:18 GMT  
		Size: 6.2 MB (6157735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984c3ef794964334960ad3169d4499119f573fc7b0db3ca464c598a2aaaf2230`  
		Last Modified: Thu, 28 Mar 2019 04:54:17 GMT  
		Size: 21.5 MB (21500728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:362a4a4b56b9ef7063e937485bcafd231b4197c8827634fd7ccbaf4f0be0ce08`  
		Last Modified: Thu, 28 Mar 2019 04:54:12 GMT  
		Size: 201.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a643a77e834c42b050ad08e2abeaa2f2226c7bbe8c75c4069c5d5caa6dd8580f`  
		Last Modified: Thu, 28 Mar 2019 04:54:13 GMT  
		Size: 728.6 KB (728635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb86456b4d8403ba6d22eff0c0ab74ecfc51e68faa0d7b20e0344a068fd6a83c`  
		Last Modified: Thu, 28 Mar 2019 04:54:12 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0e68027598ca84c60d66dc208acfb80cd695f0372687b2f844340f66c28233`  
		Last Modified: Thu, 28 Mar 2019 04:54:31 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:a75510200fd56fb3783af0a41bd17a5edd4e0fcdaf3dc227f6b78151f0510aba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.4 MB (281445201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad8fdde643d007b343bad7798e53b05f0b5a24485b21728366c5d541a72333e8`
-	Default Command: `["irb"]`

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
# Thu, 28 Mar 2019 01:24:43 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 01:25:45 GMT
ENV JRUBY_VERSION=9.1.17.0
# Thu, 28 Mar 2019 01:25:45 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Thu, 28 Mar 2019 01:25:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 28 Mar 2019 01:25:50 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:25:52 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 28 Mar 2019 01:26:06 GMT
RUN gem install bundler
# Thu, 28 Mar 2019 01:26:06 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 28 Mar 2019 01:26:06 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 28 Mar 2019 01:26:07 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 01:26:09 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 28 Mar 2019 01:26:09 GMT
CMD ["irb"]
# Thu, 28 Mar 2019 01:26:14 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Mar 2019 01:26:14 GMT
WORKDIR /usr/src/app
# Thu, 28 Mar 2019 01:26:15 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 28 Mar 2019 01:26:15 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 28 Mar 2019 01:26:16 GMT
ONBUILD RUN bundle install --system
# Thu, 28 Mar 2019 01:26:16 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:a11b9ee6598725a150d48e2f8b5ccb024c8793a1f1eeead23e7f6a0533e9696e`  
		Last Modified: Thu, 28 Mar 2019 01:26:49 GMT  
		Size: 10.2 MB (10205156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bc03bcd8503580bab88495fffdcca95a9538d577898913081499e888268a306`  
		Last Modified: Thu, 28 Mar 2019 01:27:16 GMT  
		Size: 21.5 MB (21500703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecef1a55aba2de9d7586a6805acc432895d7cab6c703271d9459a12d7f580421`  
		Last Modified: Thu, 28 Mar 2019 01:27:10 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913e7d75d69f8a36d9b6e8b2b37d5b8ddbc78715119427814ee1105d21215ba6`  
		Last Modified: Thu, 28 Mar 2019 01:27:10 GMT  
		Size: 728.6 KB (728634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84c021f3373eb5ba9c9779ad0afb77b0f53fc419332b7bb8a81284c9eee8b641`  
		Last Modified: Thu, 28 Mar 2019 01:27:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea60eb63c903f5a5535f3d15b99ca701207ef269ab529e7f116990a1701bc2cb`  
		Last Modified: Thu, 28 Mar 2019 01:27:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:3baba1130b2b5ce7bb6d5788737b33563c9027828783981cb1d0ac52989e6926
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **265.0 MB (264976468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91631177475ca241f9b78d9c557826ecc0660601ec8c5ed4780f2a73631f85e5`
-	Default Command: `["irb"]`

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
# Thu, 28 Mar 2019 09:19:10 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Thu, 28 Mar 2019 09:25:16 GMT
ENV JRUBY_VERSION=9.1.17.0
# Thu, 28 Mar 2019 09:25:20 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Thu, 28 Mar 2019 09:25:32 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Thu, 28 Mar 2019 09:25:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 09:25:43 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Thu, 28 Mar 2019 09:26:01 GMT
RUN gem install bundler
# Thu, 28 Mar 2019 09:26:08 GMT
ENV GEM_HOME=/usr/local/bundle
# Thu, 28 Mar 2019 09:26:12 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Thu, 28 Mar 2019 09:26:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 28 Mar 2019 09:26:25 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Thu, 28 Mar 2019 09:26:28 GMT
CMD ["irb"]
# Thu, 28 Mar 2019 09:26:44 GMT
RUN mkdir -p /usr/src/app
# Thu, 28 Mar 2019 09:26:47 GMT
WORKDIR /usr/src/app
# Thu, 28 Mar 2019 09:26:53 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Thu, 28 Mar 2019 09:26:56 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Thu, 28 Mar 2019 09:26:59 GMT
ONBUILD RUN bundle install --system
# Thu, 28 Mar 2019 09:27:05 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:6a84922a8a01884b4624df8889fba45d88e6cf7f21aac72364361c6e383c119a`  
		Last Modified: Thu, 28 Mar 2019 09:28:49 GMT  
		Size: 6.8 MB (6755193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59bcfcc9b3edf5c196f06bf04d95f643f6e2dccc4ec17374ba8224402bbdab81`  
		Last Modified: Thu, 28 Mar 2019 09:30:52 GMT  
		Size: 21.5 MB (21500768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:996257456519632f6d158778e8dec957f6ab86d821166d59db20eb2f033c192f`  
		Last Modified: Thu, 28 Mar 2019 09:30:20 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c2ae9aa0360fec05d921f11375d2f8c3ef2127aadbc7811e78ed3bf9025d7a`  
		Last Modified: Thu, 28 Mar 2019 09:30:22 GMT  
		Size: 728.8 KB (728763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513b59474bf71f8613e3080c1de993be043460399f178dfab6682de86f591a87`  
		Last Modified: Thu, 28 Mar 2019 09:30:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be6ea54f31a464b224fd9adfd409bc884fa148bbec44f33a78bd5ccffa4be4f`  
		Last Modified: Thu, 28 Mar 2019 09:31:06 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:e01137f85d4e85dee88c22c6b57fd5d237d060f15c8b65aabf10ede9d8a1be17
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
$ docker pull jruby@sha256:b98e6b8009c779e91019434489fc84803c56b3e61a71f548f8cac1b27faf0153
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.4 MB (274362672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d0a54442eda20dfeb9aa979305121b4b5de0c0447ec0471c7ed109fc5f5f73`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:16:27 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:18:02 GMT
ENV JRUBY_VERSION=9.1.17.0
# Sat, 29 Dec 2018 10:18:02 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Sat, 29 Dec 2018 10:18:05 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 29 Dec 2018 10:18:05 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:18:06 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 29 Dec 2018 10:18:29 GMT
RUN gem install bundler
# Sat, 29 Dec 2018 10:18:29 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 10:18:30 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 10:18:30 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:18:31 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 29 Dec 2018 10:18:31 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 10:18:41 GMT
RUN mkdir -p /usr/src/app
# Sat, 29 Dec 2018 10:18:41 GMT
WORKDIR /usr/src/app
# Sat, 29 Dec 2018 10:18:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 29 Dec 2018 10:18:42 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 29 Dec 2018 10:18:42 GMT
ONBUILD RUN bundle install --system
# Sat, 29 Dec 2018 10:18:42 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178026d2d7c41b4d969e03875a5a336b43f8d4ee347ddaac25629113f0a0825f`  
		Last Modified: Sat, 29 Dec 2018 10:19:57 GMT  
		Size: 6.8 MB (6757567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48563a3204595d50afa0ddda7737ae6c1e7abc9b40e3d54060a9a8a397c87284`  
		Last Modified: Sat, 29 Dec 2018 10:20:38 GMT  
		Size: 21.5 MB (21500672 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c4508037f88efa8673ac54c1d0c046969e23d4604e68602930c33f29845bce`  
		Last Modified: Sat, 29 Dec 2018 10:20:34 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d032bdbf8e0de65fc4d32d0bf957706808283d7ddaf9fb955dd162176ef624d`  
		Last Modified: Sat, 29 Dec 2018 10:20:35 GMT  
		Size: 728.1 KB (728094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a05a9be3a372d3951b0b70f704940a02d623a34a8852f9535a5dfc325a5d0cb`  
		Last Modified: Sat, 29 Dec 2018 10:20:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a26dbb2aa2fe9c8310c0a601a88dd9645ef245adc769b044c494fe64d246719d`  
		Last Modified: Sat, 29 Dec 2018 10:20:44 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:64a3ce4e2652250454a90f897be884d13e3531b38fd81b41d2a72939a9ff54ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.6 MB (256591822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df0ae7600a29a0313c0f757be8fbd1e3a147326b9f52b87521053d26ef7bbbed`
-	Default Command: `["irb"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Nov 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Nov 2018 10:23:10 GMT
ENV LANG=C.UTF-8
# Wed, 21 Nov 2018 10:23:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 21 Nov 2018 10:23:13 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 21 Nov 2018 10:23:16 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_VERSION=8u181
# Wed, 21 Nov 2018 10:23:17 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 09:58:47 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 11:47:02 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 11:53:44 GMT
ENV JRUBY_VERSION=9.1.17.0
# Wed, 26 Dec 2018 11:53:44 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Wed, 26 Dec 2018 11:53:49 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 26 Dec 2018 11:53:49 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 11:53:51 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 26 Dec 2018 11:55:33 GMT
RUN gem install bundler
# Wed, 26 Dec 2018 11:55:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 11:55:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 11:55:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 11:55:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 26 Dec 2018 11:55:36 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 11:55:44 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Dec 2018 11:55:44 GMT
WORKDIR /usr/src/app
# Wed, 26 Dec 2018 11:55:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 26 Dec 2018 11:55:45 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 26 Dec 2018 11:55:45 GMT
ONBUILD RUN bundle install --system
# Wed, 26 Dec 2018 11:55:45 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33d36f3d062340ef2287f87ad3b2e9e6e2709004adc5c2f1f9167f479015e195`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 884.7 KB (884721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cba9d75675ef715d2cb312d635a26a24c09e0c5c5f105b8cb952e041811fc58`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12db7e87dcb35e731ccd3d4d9779710d0ffee5b331f39ba13e1959ca80fbd8d5`  
		Last Modified: Wed, 21 Nov 2018 10:33:56 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a389ae7e6b3a9c6366feb10cecac847ced9ff22936a96c1e930819841f49a53`  
		Last Modified: Wed, 26 Dec 2018 10:06:59 GMT  
		Size: 121.4 MB (121363726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be63498f3b16cc991447a4a0b301c82e5b318a1e5a7fe4d1e29eca7e3568bd6`  
		Last Modified: Wed, 26 Dec 2018 11:56:18 GMT  
		Size: 5.8 MB (5840747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c34c6937bbd28548ab295ba0a2954231c67209f371d0890fb21b31992b9d938`  
		Last Modified: Wed, 26 Dec 2018 11:56:19 GMT  
		Size: 21.5 MB (21500677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8074330c924c72dcda7b256f1b725a345c1caa801ef363421d11a4bede945587`  
		Last Modified: Wed, 26 Dec 2018 11:56:15 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa803bdc512fce32a762a186ce938f0f7c9659eab31541ba6978ecfad3799db`  
		Last Modified: Wed, 26 Dec 2018 11:56:15 GMT  
		Size: 727.9 KB (727921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67981a019c6451a4e866a97986f791033e1cff4fbe7c3ddc88d44a6ed63d5134`  
		Last Modified: Wed, 26 Dec 2018 11:56:15 GMT  
		Size: 197.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abed0d3b14535b1ae4665871514ccfa346345a43020a43ff267514d8d4e641ae`  
		Last Modified: Wed, 26 Dec 2018 11:56:27 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:4cd4aaac77e68176b436af141f13dd4c4c7633270fe57c387fc8964518191266
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **256.5 MB (256463068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9517326af8daee7e6c3e4d917be3f03d1ac212c0d8ee0d0b3c6a8acc0c4b46af`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 16:48:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 17:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 17:05:49 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 17:05:52 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 17:05:53 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 17:05:54 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 17:05:55 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 17:11:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sun, 30 Dec 2018 03:32:00 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sun, 30 Dec 2018 03:37:16 GMT
ENV JRUBY_VERSION=9.1.17.0
# Sun, 30 Dec 2018 03:37:17 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Sun, 30 Dec 2018 03:37:26 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sun, 30 Dec 2018 03:37:28 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 03:37:31 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sun, 30 Dec 2018 03:38:13 GMT
RUN gem install bundler
# Sun, 30 Dec 2018 03:38:14 GMT
ENV GEM_HOME=/usr/local/bundle
# Sun, 30 Dec 2018 03:38:15 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sun, 30 Dec 2018 03:38:16 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 30 Dec 2018 03:38:20 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sun, 30 Dec 2018 03:38:21 GMT
CMD ["irb"]
# Sun, 30 Dec 2018 03:38:33 GMT
RUN mkdir -p /usr/src/app
# Sun, 30 Dec 2018 03:38:34 GMT
WORKDIR /usr/src/app
# Sun, 30 Dec 2018 03:38:35 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sun, 30 Dec 2018 03:38:36 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sun, 30 Dec 2018 03:38:37 GMT
ONBUILD RUN bundle install --system
# Sun, 30 Dec 2018 03:38:38 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cedf4b2485f04f7796ce3a83b666ea83c2a12d4b3083903ca2f229c058c30839`  
		Last Modified: Sat, 29 Dec 2018 17:22:35 GMT  
		Size: 877.7 KB (877728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e96100bd64d92c3e42995209cd063d9b3b289f3a3e4efe4642e9b08b85587b2`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a244fa793ad4b554313ed169a3d2e70d5dad521fd51e81d0e87359b80abaf231`  
		Last Modified: Sat, 29 Dec 2018 17:27:48 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25736c9efdc040c45d5f62aeab519a667ab62820d066a479c173a66516cb742f`  
		Last Modified: Sat, 29 Dec 2018 17:28:29 GMT  
		Size: 122.3 MB (122277446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cbd1a1be11ae80ca4d2d5ae49c7e5e33e7816c64b896f7daa6dc06eb16429e`  
		Last Modified: Sun, 30 Dec 2018 03:40:23 GMT  
		Size: 6.1 MB (6133960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6c0f831b57cd4e9dcfea3aeda26e4c9b6b97a212ee3aa49b913d87c6bf2d6`  
		Last Modified: Sun, 30 Dec 2018 03:41:36 GMT  
		Size: 21.5 MB (21500699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1508fa964bbc898ec9172e616f5c0302c5b262c7f256f3d23e0206a99347a3be`  
		Last Modified: Sun, 30 Dec 2018 03:41:27 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369afffaff852369976fb61b40e7119a9a2ecd2514c6eab52494b7bfdb2562a6`  
		Last Modified: Sun, 30 Dec 2018 03:41:28 GMT  
		Size: 728.1 KB (728102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:054ea15e000df53a04cba54ca2b8ba156117deeeae2ce094d450b8c96fc6f4b0`  
		Last Modified: Sun, 30 Dec 2018 03:41:27 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:617e9cea949b3bb0e2b95975dc629d4c8f2719b3e6149e64668fc44b1a96f642`  
		Last Modified: Sun, 30 Dec 2018 03:41:52 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:92e3f55f435e93930a7fc2212b2b0c6f1c6a83f7278047e689f798c79fd6bd3e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.4 MB (280353635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cd6dd76fb13e812ad3ff66e3e00fea461af5bfc6917c34665925c3ee180d5b`
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
# Wed, 26 Dec 2018 12:13:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 15:26:33 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 15:27:14 GMT
ENV JRUBY_VERSION=9.1.17.0
# Wed, 26 Dec 2018 15:27:14 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Wed, 26 Dec 2018 15:27:16 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Wed, 26 Dec 2018 15:27:17 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 15:27:17 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Wed, 26 Dec 2018 15:27:31 GMT
RUN gem install bundler
# Wed, 26 Dec 2018 15:27:32 GMT
ENV GEM_HOME=/usr/local/bundle
# Wed, 26 Dec 2018 15:27:32 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Wed, 26 Dec 2018 15:27:32 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 15:27:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Wed, 26 Dec 2018 15:27:33 GMT
CMD ["irb"]
# Wed, 26 Dec 2018 15:27:37 GMT
RUN mkdir -p /usr/src/app
# Wed, 26 Dec 2018 15:27:37 GMT
WORKDIR /usr/src/app
# Wed, 26 Dec 2018 15:27:38 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Wed, 26 Dec 2018 15:27:38 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Wed, 26 Dec 2018 15:27:38 GMT
ONBUILD RUN bundle install --system
# Wed, 26 Dec 2018 15:27:38 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:c1f23439f36160553ee3842b81ebdcbdddac180842067bcaee6ecbddce866039`  
		Last Modified: Wed, 26 Dec 2018 12:19:26 GMT  
		Size: 134.1 MB (134089418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccb7af59f99d0734324fc3f9376bcd360c14e6301d23f5b4e5c91eb96b877de9`  
		Last Modified: Wed, 26 Dec 2018 15:28:12 GMT  
		Size: 10.2 MB (10174508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c3f536a94602aad885356751bcf1a57de4ff8f407aa88bbe0780c7edd0850f`  
		Last Modified: Wed, 26 Dec 2018 15:28:39 GMT  
		Size: 21.5 MB (21500663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c19f040a8ec7e6cb3924880c53b7de12ccd692daf88b4b2a592c9609fba21f`  
		Last Modified: Wed, 26 Dec 2018 15:28:35 GMT  
		Size: 198.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc326f953615c3d9a9adbf070ff2807e5a5dddc041577dcbd65a9ca8b9c7f12f`  
		Last Modified: Wed, 26 Dec 2018 15:28:36 GMT  
		Size: 727.6 KB (727640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b39c3d87e86c768aceb01400a4e349ff46be0bc23f0717053f12f479fe1db73`  
		Last Modified: Wed, 26 Dec 2018 15:28:35 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237167681854f81b7442674e3262175875692941341b06a149f7bfe7542e8303`  
		Last Modified: Wed, 26 Dec 2018 15:28:44 GMT  
		Size: 134.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:b2f052900d738635f56b33437899bb5da12d0b88283799c72f863e9f8563218f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.9 MB (263915687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9d9825f0f8564b321aef34ce27cee4693239fc7a04a70cf08dd62bbe81853f`
-	Default Command: `["irb"]`

```dockerfile
# Sat, 29 Dec 2018 09:21:57 GMT
ADD file:d174fba88f1996d3c06a5efcf4fd36f16f7582239ab75871cdb55db060778359 in / 
# Sat, 29 Dec 2018 09:22:07 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:40:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:40:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:42:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:19:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:34:16 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 12:34:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 12:34:32 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 12:34:34 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 12:34:37 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 12:34:40 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 12:40:17 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 19:11:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 19:15:15 GMT
ENV JRUBY_VERSION=9.1.17.0
# Sat, 29 Dec 2018 19:15:17 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Sat, 29 Dec 2018 19:15:23 GMT
RUN mkdir /opt/jruby   && curl -fSL https://repo1.maven.org/maven2/org/jruby/jruby-dist/${JRUBY_VERSION}/jruby-dist-${JRUBY_VERSION}-bin.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 29 Dec 2018 19:15:25 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 19:15:29 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 29 Dec 2018 19:15:45 GMT
RUN gem install bundler
# Sat, 29 Dec 2018 19:15:48 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 29 Dec 2018 19:15:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 29 Dec 2018 19:15:52 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 19:15:55 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 29 Dec 2018 19:15:57 GMT
CMD ["irb"]
# Sat, 29 Dec 2018 19:16:07 GMT
RUN mkdir -p /usr/src/app
# Sat, 29 Dec 2018 19:16:08 GMT
WORKDIR /usr/src/app
# Sat, 29 Dec 2018 19:16:10 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 29 Dec 2018 19:16:12 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 29 Dec 2018 19:16:14 GMT
ONBUILD RUN bundle install --system
# Sat, 29 Dec 2018 19:16:16 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:56fd7f7cdb66a358d0b43ecb7a9cd41b96a5a490a47b12264c86878b531081c5`  
		Last Modified: Sat, 29 Dec 2018 09:28:03 GMT  
		Size: 45.6 MB (45605695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f635fa148b382c93885cce85133b6f1ba33b1a391347329805ce973d3061d42`  
		Last Modified: Sat, 29 Dec 2018 11:18:00 GMT  
		Size: 10.0 MB (9986429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c0099cf676e2655012d38610077379647258d6af103b65ff34d91637631fc6`  
		Last Modified: Sat, 29 Dec 2018 11:17:59 GMT  
		Size: 4.3 MB (4295725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac453cf9be4657ff3c6bbb021d7e64057957b45d1f84550e3655ba5cdcd0f58b`  
		Last Modified: Sat, 29 Dec 2018 11:18:38 GMT  
		Size: 50.1 MB (50064531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b146ea60af943e531634711eeb85e5f21bb365e1fac66849b36e4090cdf178a4`  
		Last Modified: Sat, 29 Dec 2018 12:53:14 GMT  
		Size: 886.0 KB (885979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc338c64611a253104b517cb49cd07208e8dbf62db0a97db83138d812d4b34`  
		Last Modified: Sat, 29 Dec 2018 12:58:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f9bbacb138a21d4dd5c24c30954f21c2ffce5a9cd4629138ae346640ac45f`  
		Last Modified: Sat, 29 Dec 2018 12:58:31 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40928f221c80dc29fa5d9b4cf70c5ad91e3b9ecab39ded05553a22a013de30f9`  
		Last Modified: Sat, 29 Dec 2018 12:59:17 GMT  
		Size: 124.1 MB (124112721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1de3ec5af2fa23fc0b4ddc5296867a5f2525f0a433fff4cc7581902fb00e9de`  
		Last Modified: Sat, 29 Dec 2018 19:17:22 GMT  
		Size: 6.7 MB (6734678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb2ff6b4bb22b7506e8f2f7d69d58b7fa997c41ae483fb82a7d3a89d10de917`  
		Last Modified: Sat, 29 Dec 2018 19:18:12 GMT  
		Size: 21.5 MB (21500742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db8605921af544bc3f47f9d1299d07146c3731c60f46a78c0d333b2cb586049`  
		Last Modified: Sat, 29 Dec 2018 19:18:08 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0baf8fbadec8521a3fc0808924fdd30582758be8b4ce692900a68cf46bbc7672`  
		Last Modified: Sat, 29 Dec 2018 19:18:09 GMT  
		Size: 728.2 KB (728222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8908bbdc601bb9d4e33253288009676bbe126e259ba24b03a21bbd99a5625fc2`  
		Last Modified: Sat, 29 Dec 2018 19:18:09 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:679d957f4d4d1f75aec0ab0cb0ed6905092f2c4e048e9492b436d8a19e7d1cd8`  
		Last Modified: Sat, 29 Dec 2018 19:18:25 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

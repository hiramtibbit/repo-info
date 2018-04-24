## `jruby:9-onbuild`

```console
$ docker pull jruby@sha256:2d125c8bb734591ffaf3b078d323959f4e5034b7f5da4b382346d3b02fc78b51
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
$ docker pull jruby@sha256:0a836b2e452099bedc2946e7fea36a317557e14f9d17227dff7f28a7cca31702
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313418278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55c2c07205bb93b1410802d98f16f38e800ebc0845519ffd49c5ebc10141f57f`
-	Default Command: `["irb"]`

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
# Tue, 20 Mar 2018 03:18:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 00:12:05 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 00:12:06 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 00:12:14 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 00:12:14 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:15 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 00:12:30 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 00:12:31 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 00:12:31 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 00:12:32 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 00:12:32 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 00:13:43 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 00:13:43 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 00:13:44 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:eae1d5de40be4cf27d08876195fbbb39aff2ce7ebfbe7191c7f1807e98a12c45`  
		Last Modified: Tue, 20 Mar 2018 03:22:13 GMT  
		Size: 6.7 MB (6723084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e497b4e04f425f048921bfb045466b57f580be00171e9bb06134e283e0bb3c`  
		Last Modified: Tue, 24 Apr 2018 00:19:52 GMT  
		Size: 21.5 MB (21500838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f0f4f35b6357c016ab07825e3757518e06bf318096db776584b47759d70ace4`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c07495c2f8822651c0a7d1fecf6aaf03d524fcae5dd250a3b4dfdc9c39426b1`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 701.6 KB (701575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea6af2af8adb63fe0b26403d30a711605dee7b00d9ac351ea8d00c098218b50b`  
		Last Modified: Tue, 24 Apr 2018 00:19:50 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb560d1846f51cc79c18009474b11394acf0dceeeef7973efa384978308e85a9`  
		Last Modified: Tue, 24 Apr 2018 00:22:52 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm variant v5

```console
$ docker pull jruby@sha256:4c4be14474aa5e77716cdf22556fd008f17dcd15073e6e976741b09db3da5575
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.2 MB (277229584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7155f5dd25acbc3809bde3cc785e2bf382cc2f3c4e0edbd3eaaf68397ec8d662`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:02 GMT
ADD file:df0457084f7e40c64d40dd7ffb2d5365160faee6f8b02c443bc3d1cb36a0f40d in / 
# Wed, 14 Mar 2018 20:01:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:46:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:46:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:49:38 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:49:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 22:49:39 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 14 Mar 2018 22:49:40 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 10:11:03 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 10:11:03 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 10:12:01 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 10:12:07 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 11:32:49 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 11:32:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 11:32:53 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 11:32:53 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:32:54 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 11:34:34 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 11:34:34 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:34 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 11:34:35 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 11:34:36 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 11:34:36 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 11:34:50 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 11:34:50 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 11:34:51 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:25301cba2d4ef04878f7296fe55faa4b0b2fafbc29758d9fca5a199350d7827c`  
		Last Modified: Wed, 14 Mar 2018 20:12:18 GMT  
		Size: 43.8 MB (43819573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0783f4694c09bab63892aa1cd19490f94750d131d57747e09ec4307e9072c2`  
		Last Modified: Wed, 14 Mar 2018 20:56:19 GMT  
		Size: 10.2 MB (10206441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47aaeaf8dbc82c078a47db8431ae04e72f7fe0ae39da82e4d92db0cc10836ffc`  
		Last Modified: Wed, 14 Mar 2018 20:56:18 GMT  
		Size: 4.2 MB (4153056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64debcbc218e3d8c57772d2bfa18b0bf274083c34858536accba655b0594a5c9`  
		Last Modified: Wed, 14 Mar 2018 20:56:55 GMT  
		Size: 48.2 MB (48233280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9fd315b1569d687c7138a41e66dccc32bf422799c8691d6400a0c71a920f31d`  
		Last Modified: Wed, 14 Mar 2018 23:13:55 GMT  
		Size: 884.4 KB (884431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a64cce274cf151b34375620786ea1d7e23287ff059f4b75d58622ebabed23de7`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3c067c4522874cd9b08c8d17c6b717878e37b855cf6fc7030e381d9b8e2c7ae`  
		Last Modified: Wed, 14 Mar 2018 23:13:51 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49357f43f509c3aa08db422b07bfa26f9b1d30e8be4da63c8c73067c54b59758`  
		Last Modified: Tue, 20 Mar 2018 10:36:57 GMT  
		Size: 141.7 MB (141672814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bea645330fa2a57a0969ca59233cdbac94c33af0cf82cff4a658ca79e979474`  
		Last Modified: Tue, 20 Mar 2018 10:36:22 GMT  
		Size: 272.2 KB (272222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2544226f5e9440be2fdbce6b3122168715f4bd796c48ff5c177dee2a7b834c82`  
		Last Modified: Tue, 20 Mar 2018 11:37:08 GMT  
		Size: 5.8 MB (5806759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa7ab8201db6b2f6f0d3f61c961c07aedcfb7c121ba6a580ff523f5e126141ea`  
		Last Modified: Tue, 20 Mar 2018 11:37:10 GMT  
		Size: 21.5 MB (21478128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e9104baad40fd99c344fd412b712f447caeffffca4464ee5e542c0df480a81`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:945826d6d790c52cb65561f444deadbb546c341d16a44c253647bef28faa6a8f`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 701.9 KB (701916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13a7f70e6c00829547283ca826e1dec048a3ce275ac1beba4bd381acce36f5c`  
		Last Modified: Tue, 20 Mar 2018 11:37:06 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa17ffa18a69cbc7b277dcdb353703e1d8185f4fef30a309bece9ee6d79ba09a`  
		Last Modified: Tue, 20 Mar 2018 11:37:55 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; arm64 variant v8

```console
$ docker pull jruby@sha256:54c0a3d530e0303f1e8304a3a0bdce8e99f7cb3ce6dd4e92945d8ea8873a1cbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.3 MB (292342290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bdb956031fb707b23dbe450c113f66f2b151f89f1d378c3301d203eae94317f`
-	Default Command: `["irb"]`

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
# Tue, 20 Mar 2018 12:55:42 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 20 Mar 2018 12:55:48 GMT
ENV JRUBY_VERSION=9.1.16.0
# Tue, 20 Mar 2018 12:55:49 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Tue, 20 Mar 2018 12:55:57 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 20 Mar 2018 12:56:08 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:11 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 20 Mar 2018 12:56:48 GMT
RUN gem install bundler
# Tue, 20 Mar 2018 12:56:49 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 20 Mar 2018 12:56:50 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 20 Mar 2018 12:56:52 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 20 Mar 2018 12:56:53 GMT
CMD ["irb"]
# Tue, 20 Mar 2018 12:58:39 GMT
RUN mkdir -p /usr/src/app
# Tue, 20 Mar 2018 12:58:40 GMT
WORKDIR /usr/src/app
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 20 Mar 2018 12:58:41 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 20 Mar 2018 12:58:42 GMT
ONBUILD RUN bundle install --system
# Tue, 20 Mar 2018 12:58:43 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:be9e3364b680633a2ad4a5b450a044ae919f5c3a4024535e35e1e85a5df2be0d`  
		Last Modified: Tue, 20 Mar 2018 13:06:01 GMT  
		Size: 6.1 MB (6100884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3fe363ca39a8ec2d72fc41daeca32abd0c82418e6627e36db543c8a4c67954`  
		Last Modified: Tue, 20 Mar 2018 13:06:03 GMT  
		Size: 21.5 MB (21478082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a41b446fd47a058f27fea5ed9cae9527b77f85a8365a6841173bd09db44d2fb3`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 199.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca80e9e2a3f1e21473f59cc4bb92f2c76c8aeb57fbf9f3d9f733c232e63d67f7`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db384845063a01498907c5a2e253efe9a56e739bd6cc9cd196213fec28b9bc4c`  
		Last Modified: Tue, 20 Mar 2018 13:05:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b583147f7ceac7e6a458db31ba2a34ff60ddd6c8ce7b7fa4131032134e1b1b0`  
		Last Modified: Tue, 20 Mar 2018 13:08:13 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; 386

```console
$ docker pull jruby@sha256:76566b69f7f56ecf90276b7b6f69f937cb3cc989ad7cfc64fca8f9428e3e9854
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.9 MB (321864077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e6d65b8e71500fe802de45247c27761b0cca41477ef51610abdd891b4c465d5`
-	Default Command: `["irb"]`

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
# Sat, 14 Apr 2018 05:45:31 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_VERSION=9.1.16.0
# Sat, 14 Apr 2018 05:45:31 GMT
ENV JRUBY_SHA256=d92c2b359e32a0afffef6982dc4730e4bdfcabd9c198e9c6075292c71ad9485a
# Sat, 14 Apr 2018 05:45:37 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Sat, 14 Apr 2018 05:45:37 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:38 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Sat, 14 Apr 2018 05:45:52 GMT
RUN gem install bundler
# Sat, 14 Apr 2018 05:45:52 GMT
ENV GEM_HOME=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Sat, 14 Apr 2018 05:45:53 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 05:45:53 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Sat, 14 Apr 2018 05:45:54 GMT
CMD ["irb"]
# Sat, 14 Apr 2018 05:46:00 GMT
RUN mkdir -p /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
WORKDIR /usr/src/app
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD RUN bundle install --system
# Sat, 14 Apr 2018 05:46:01 GMT
ONBUILD ADD . /usr/src/app
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
	-	`sha256:2b63c112dfca2e8c267a4c6d506464c8390b0fb8cc6a71d05c86d51a5dff7785`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 10.1 MB (10141338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416fa454cd6c3c3e940575807b6b5c01332a12052eab87ad6b2b6d9038a7b18b`  
		Last Modified: Sat, 14 Apr 2018 05:46:48 GMT  
		Size: 21.5 MB (21477544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5002b0a5e31c9c5d4b29348b950b84ffd0b588d78f87252d7895077031cfa7aa`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 202.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe4e49f23268c734b46d108de9a74b87b8e138c88436108bf9fc50590ccf479`  
		Last Modified: Sat, 14 Apr 2018 05:46:45 GMT  
		Size: 701.6 KB (701555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab57029739c074a462ecd52fe2cea3d3693ea0aa1c51f91b4d6af68f5e18a645`  
		Last Modified: Sat, 14 Apr 2018 05:46:44 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:226dcd0b9b35db32e6871dcd75827319fc7676ec6b4127332889c10a339c8e5a`  
		Last Modified: Sat, 14 Apr 2018 05:47:04 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `jruby:9-onbuild` - linux; ppc64le

```console
$ docker pull jruby@sha256:c0cf23652622b7b9c2e07ce341c0a4bcf3b641c4affcf694c7b46440d5acda53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.6 MB (301634518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc8f177eb590880b018b5c64f3197f28ca81119fcf1b048cfd6d630a25771a6b`
-	Default Command: `["irb"]`

```dockerfile
# Wed, 14 Mar 2018 00:34:58 GMT
ADD file:cd28b9ad859ce13c0d4fee241178bba68cc8f696eb1722a67ac3c62c2c64e087 in / 
# Wed, 14 Mar 2018 00:34:59 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 02:11:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 02:11:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 02:14:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:58:57 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 04:59:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Thu, 15 Mar 2018 04:59:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Thu, 15 Mar 2018 04:59:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 20 Mar 2018 11:50:40 GMT
ENV JAVA_VERSION=8u162
# Tue, 20 Mar 2018 11:50:41 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 20 Mar 2018 11:50:42 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 20 Mar 2018 11:57:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 20 Mar 2018 11:57:15 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 20 Mar 2018 12:47:57 GMT
RUN apt-get update && apt-get install -y libc6-dev --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Tue, 24 Apr 2018 08:35:28 GMT
ENV JRUBY_VERSION=9.1.17.0
# Tue, 24 Apr 2018 08:35:30 GMT
ENV JRUBY_SHA256=6a22f7bf8fef1a52530a9c9781a9d374ad07bbbef0d3d8e2af0ff5cbead0dfd5
# Tue, 24 Apr 2018 08:35:47 GMT
RUN mkdir /opt/jruby   && curl -fSL https://s3.amazonaws.com/jruby.org/downloads/${JRUBY_VERSION}/jruby-bin-${JRUBY_VERSION}.tar.gz -o /tmp/jruby.tar.gz   && echo "$JRUBY_SHA256 /tmp/jruby.tar.gz" | sha256sum -c -   && tar -zx --strip-components=1 -f /tmp/jruby.tar.gz -C /opt/jruby   && rm /tmp/jruby.tar.gz   && update-alternatives --install /usr/local/bin/ruby ruby /opt/jruby/bin/jruby 1
# Tue, 24 Apr 2018 08:35:51 GMT
ENV PATH=/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:35:58 GMT
RUN mkdir -p /opt/jruby/etc 	&& { 		echo 'install: --no-document'; 		echo 'update: --no-document'; 	} >> /opt/jruby/etc/gemrc
# Tue, 24 Apr 2018 08:36:24 GMT
RUN gem install bundler
# Tue, 24 Apr 2018 08:36:25 GMT
ENV GEM_HOME=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:27 GMT
ENV BUNDLE_PATH=/usr/local/bundle BUNDLE_BIN=/usr/local/bundle/bin BUNDLE_SILENCE_ROOT_WARNING=1 BUNDLE_APP_CONFIG=/usr/local/bundle
# Tue, 24 Apr 2018 08:36:29 GMT
ENV PATH=/usr/local/bundle/bin:/opt/jruby/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Apr 2018 08:36:33 GMT
RUN mkdir -p "$GEM_HOME" "$BUNDLE_BIN" 	&& chmod 777 "$GEM_HOME" "$BUNDLE_BIN"
# Tue, 24 Apr 2018 08:36:37 GMT
CMD ["irb"]
# Tue, 24 Apr 2018 08:38:38 GMT
RUN mkdir -p /usr/src/app
# Tue, 24 Apr 2018 08:38:41 GMT
WORKDIR /usr/src/app
# Tue, 24 Apr 2018 08:38:42 GMT
ONBUILD ADD Gemfile /usr/src/app/
# Tue, 24 Apr 2018 08:38:44 GMT
ONBUILD ADD Gemfile.lock /usr/src/app/
# Tue, 24 Apr 2018 08:38:46 GMT
ONBUILD RUN bundle install --system
# Tue, 24 Apr 2018 08:38:48 GMT
ONBUILD ADD . /usr/src/app
```

-	Layers:
	-	`sha256:1743854d776e01d7f49a30bb37dbbfb45e788dc99753cb027de750d2da47a89c`  
		Last Modified: Wed, 14 Mar 2018 00:42:50 GMT  
		Size: 45.4 MB (45377043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbff2499a166062800d8b7dc1a9f296fa4faea9e6fd79d6bab7f93bcc5e98a9a`  
		Last Modified: Thu, 15 Mar 2018 02:32:22 GMT  
		Size: 10.3 MB (10339816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c89f7b09fa962405ed41f0799ecc73d66a91b8ba2fde1dbd5ebd4d4e10deb8`  
		Last Modified: Thu, 15 Mar 2018 02:32:21 GMT  
		Size: 4.3 MB (4289466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb8e6651c19a7ccc1b425e4054dddb7bae76e0e0c2b27d8fd9a44fb94408f6ce`  
		Last Modified: Thu, 15 Mar 2018 02:32:53 GMT  
		Size: 50.0 MB (50029116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8229185339443bc19193ef5ba90c302d96c018a844c3bd63bdf2a946bb8fb34`  
		Last Modified: Thu, 15 Mar 2018 06:07:28 GMT  
		Size: 886.1 KB (886149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dddfd19e4e1ad45639af851b678bc8b13f2bc77c4812b94cd484a1f2784bfdfd`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0b121b24996481e8e11d09dedd0a5b46ecf04108c7396005302353b060ec187`  
		Last Modified: Thu, 15 Mar 2018 06:07:27 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:974da1069adc28b0ee6a97c45bb8a91d72c47edf8b6e16db472b7402ba058d7f`  
		Last Modified: Tue, 20 Mar 2018 12:19:58 GMT  
		Size: 161.5 MB (161538734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8572cce38bfa10a0f76bedf84d4e38a29419c60055f61b1feec19d3634756b9`  
		Last Modified: Tue, 20 Mar 2018 12:19:19 GMT  
		Size: 272.1 KB (272097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d77f2e5c1dda910e45bc2a8118d7b1f72aba8112ef8a5a0aa6aa69ee3aa9efc`  
		Last Modified: Tue, 20 Mar 2018 12:52:33 GMT  
		Size: 6.7 MB (6698464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f237e92523de392ae18438f676483835cf2c09a1bdcf0a6a050d9970dbc0266`  
		Last Modified: Tue, 24 Apr 2018 08:40:09 GMT  
		Size: 21.5 MB (21500943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:464a7b64b33db5b11cd9e3a463147111a4487e5adfb4a91e8cb2a456bc74f25b`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20b01e910677aad252c785b9dfaee63ce8713784f4a1a28f8611267e40aca3f`  
		Last Modified: Tue, 24 Apr 2018 08:40:05 GMT  
		Size: 701.7 KB (701722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44aa20bdef1ed805813411240a08bc03589550730cce52b5149b18ed0f12b0cf`  
		Last Modified: Tue, 24 Apr 2018 08:40:04 GMT  
		Size: 196.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b64012a30b29a14aa97d58b7a5451a95bfaea81a6af5141892e0be36bf307`  
		Last Modified: Tue, 24 Apr 2018 08:40:37 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

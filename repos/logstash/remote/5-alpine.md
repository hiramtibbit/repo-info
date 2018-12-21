## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:c920f1001b2f970ee375b63ca0afb600ea8060b3dca6d782b05aa9331968a953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:73a9286e4f8e67ee40dd0980f329a3f5eeead05b27a0d3f577aabec93c4da4cd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164962137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba6cdfa1c1bada1d1219193654054bf8c47478e7b8e61f8fdac2b30ecabf722e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["-e",""]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:40:53 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 00:40:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 00:41:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 00:41:18 GMT
ENV JAVA_VERSION=8u181
# Fri, 21 Dec 2018 00:41:19 GMT
ENV JAVA_ALPINE_VERSION=8.181.13-r0
# Fri, 21 Dec 2018 00:41:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 21 Dec 2018 05:53:42 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 21 Dec 2018 05:53:44 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 21 Dec 2018 05:53:45 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 05:53:45 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 21 Dec 2018 05:53:45 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 21 Dec 2018 05:53:46 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 21 Dec 2018 05:53:46 GMT
ENV LOGSTASH_VERSION=5.6.14
# Fri, 21 Dec 2018 05:53:46 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz.asc LOGSTASH_TARBALL_SHA1=1d3c03897d5ee843f60e450d3ebef0c9353dc90d
# Fri, 21 Dec 2018 05:54:00 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 21 Dec 2018 05:54:00 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Fri, 21 Dec 2018 05:54:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 05:54:01 GMT
CMD ["-e" ""]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35920a071f912ae4c16897610e8e2d514efcfd0e14ec76c4c73bf9aa7c2c55ea`  
		Last Modified: Fri, 21 Dec 2018 00:44:42 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4d568ad31b18826f29fce2a8e1643f8237b9adfbbbe1bd8073c5edfcced3b`  
		Last Modified: Fri, 21 Dec 2018 00:45:09 GMT  
		Size: 54.8 MB (54829758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b39ed6f778e9b2a2776ff4b0032187cf187736115e8c0a777733982eab84f70`  
		Last Modified: Fri, 21 Dec 2018 05:54:11 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f210d5f7296408c17aa463763ad9973727937700624360aa10137b6c518c85e`  
		Last Modified: Fri, 21 Dec 2018 05:54:10 GMT  
		Size: 1.5 MB (1548824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:521a3031e19f0f08822621fe98cd69087bf6ef4e484f39d01d6e9b7a42db85c7`  
		Last Modified: Fri, 21 Dec 2018 05:54:10 GMT  
		Size: 96.6 KB (96609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2852d8e7680b44466d371cf2b210bf5686780ad0b06b96bca21b91d8421ef896`  
		Last Modified: Fri, 21 Dec 2018 05:54:24 GMT  
		Size: 106.3 MB (106278122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d8623277156e14b56924d564bf6ca6fc85099a38d1154400f31762f33a164a`  
		Last Modified: Fri, 21 Dec 2018 05:54:10 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

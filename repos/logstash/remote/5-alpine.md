## `logstash:5-alpine`

```console
$ docker pull logstash@sha256:2ddb0c85aaa7e545ab348985237e5b9f7ce7e8c2fe6301d005e6fcc45509c30a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:5-alpine` - linux; amd64

```console
$ docker pull logstash@sha256:879e4188bf6456b88c5086cf202561612811d16b787ae1125493d41c2cb90069
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.0 MB (164999180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83fe1ff37c1e1202b0f187b780a872dad4bd31ba989e1e72ae533ab433da1524`
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
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 00:26:19 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 00:26:23 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 01:57:33 GMT
RUN addgroup -S logstash && adduser -S -G logstash logstash
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 		bash 		libc6-compat 		libzmq
# Fri, 11 Jan 2019 01:57:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 11 Jan 2019 01:57:36 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_PATH=/usr/share/logstash/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_VERSION=5.6.14
# Fri, 11 Jan 2019 01:57:36 GMT
ENV LOGSTASH_TARBALL=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz LOGSTASH_TARBALL_ASC=https://artifacts.elastic.co/downloads/logstash/logstash-5.6.14.tar.gz.asc LOGSTASH_TARBALL_SHA1=1d3c03897d5ee843f60e450d3ebef0c9353dc90d
# Fri, 11 Jan 2019 01:57:49 GMT
RUN set -ex; 		if [ -z "$LOGSTASH_TARBALL_SHA1" ] && [ -z "$LOGSTASH_TARBALL_ASC" ]; then 		echo >&2 'error: have neither a SHA1 _or_ a signature file -- cannot verify download!'; 		exit 1; 	fi; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O logstash.tar.gz "$LOGSTASH_TARBALL"; 		if [ "$LOGSTASH_TARBALL_SHA1" ]; then 		echo "$LOGSTASH_TARBALL_SHA1 *logstash.tar.gz" | sha1sum -c -; 	fi; 		if [ "$LOGSTASH_TARBALL_ASC" ]; then 		wget -O logstash.tar.gz.asc "$LOGSTASH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify logstash.tar.gz.asc logstash.tar.gz; 		rm -rf "$GNUPGHOME" logstash.tar.gz.asc; 	fi; 		dir="$(dirname "$LOGSTASH_PATH")"; 		mkdir -p "$dir"; 	tar -xf logstash.tar.gz --strip-components=1 -C "$dir"; 	rm logstash.tar.gz; 		apk del .fetch-deps; 		export LS_SETTINGS_DIR="$dir/config"; 	if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then 		cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"; 		truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"; 	fi; 		for userDir in 		"$dir/config" 		"$dir/data" 	; do 		if [ -d "$userDir" ]; then 			chown -R logstash:logstash "$userDir"; 		fi; 	done; 		logstash --version
# Fri, 11 Jan 2019 01:57:49 GMT
COPY file:ce3bf8cc5446bdbb16718eb5decb902429c53b67cd42ac64921c065e79206386 in / 
# Fri, 11 Jan 2019 01:57:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 01:57:50 GMT
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
	-	`sha256:1a5149a464dd4b435dd529c6420b1a5c12b1076cdb94d3e0c41cdcc78f9582a5`  
		Last Modified: Fri, 11 Jan 2019 00:30:16 GMT  
		Size: 54.9 MB (54866597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dfd17aeb74ed9323ce9dc44db74bdc5ed2157781bac5299cc578408895353e`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17be624d0ce925f0a49ae766253ea9b0f9cd0eea206c45c8f7a1d3784fd85c8`  
		Last Modified: Fri, 11 Jan 2019 01:57:58 GMT  
		Size: 1.5 MB (1548838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d01f3e874ab7e936ebe2087ea34a1ee717016a5097b24544f8cab5695bd02fe8`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 96.6 KB (96611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43a9c26e13e352055aba5b1333c4682f9d22255159c95793073f1f34c9530a81`  
		Last Modified: Fri, 11 Jan 2019 01:58:12 GMT  
		Size: 106.3 MB (106278312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45035cfb8d11c052f1c5dce0b1b16a154d90bebda8e92f897d6dea4cd0cf9b46`  
		Last Modified: Fri, 11 Jan 2019 01:57:57 GMT  
		Size: 303.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

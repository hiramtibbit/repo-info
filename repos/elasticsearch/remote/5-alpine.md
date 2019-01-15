## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:d0bb2576a2e6b23afab17a9751b8bffe931040d6e3b82a4e0f98f8f325698bae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:e1669deeb04d67b45411fa1cc6555b80ba07b83fc9db68468ceb76b680728c45
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.6 MB (92571450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b062d0ffd27bbbd67294cb71b7b2910cd8b90623d3f2c1bf0810e3cd3beb50`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

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
# Fri, 11 Jan 2019 01:54:33 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Fri, 11 Jan 2019 01:54:35 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Fri, 11 Jan 2019 01:54:35 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Fri, 11 Jan 2019 01:54:35 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 11 Jan 2019 01:54:35 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 01:54:36 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Fri, 11 Jan 2019 01:54:36 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Fri, 11 Jan 2019 01:54:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Fri, 11 Jan 2019 01:54:43 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Fri, 11 Jan 2019 01:54:43 GMT
VOLUME [/usr/share/elasticsearch/data]
# Fri, 11 Jan 2019 01:54:43 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Fri, 11 Jan 2019 01:54:43 GMT
EXPOSE 9200 9300
# Fri, 11 Jan 2019 01:54:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 11 Jan 2019 01:54:44 GMT
CMD ["elasticsearch"]
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
	-	`sha256:6bf1b705618fbf6ffe3b4ff86f05cb5c1108100cf8bc1d93fc6f6553c2b09c06`  
		Last Modified: Fri, 11 Jan 2019 01:54:54 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d878e233824d2e37e1ff6cce64721174d61050e76dcc0d99dd20e4b933a4ca2`  
		Last Modified: Fri, 11 Jan 2019 01:54:53 GMT  
		Size: 1.2 MB (1204722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f3c0c9bac3a8817c9e29729eb944df333e935f70d2376493761646b852dede7`  
		Last Modified: Fri, 11 Jan 2019 01:54:53 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a943a6853e69a5a89d3aef0ed4ef0ed92f0f239de421a6df8bd7e8b726ba8fe`  
		Last Modified: Fri, 11 Jan 2019 01:55:28 GMT  
		Size: 34.3 MB (34290468 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f08581f2e536b03bf77c410aac273b0f3b5430acc7ad02117cdd6313746e522`  
		Last Modified: Fri, 11 Jan 2019 01:54:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a42b9810dd0b82442c0b4fd2f93cf80d45936fbae24fd69505b040985f5e037`  
		Last Modified: Fri, 11 Jan 2019 01:54:53 GMT  
		Size: 507.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

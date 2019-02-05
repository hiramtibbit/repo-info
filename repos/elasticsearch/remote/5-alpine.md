## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:34ca4d3c358c676a5a3ff7bf97b5b561574126d4b3af4512df2dcf1078d6339f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:05fa8adae2b9b2bf044a9b70d356e5ce029465be8660098bc7dae6c2081489cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92925193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b491c41df5979683d0baad223b7ebc1d4b2455feaa904e3f10e5583c8f36e4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 21:36:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Tue, 05 Feb 2019 21:36:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Tue, 05 Feb 2019 21:36:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Tue, 05 Feb 2019 21:36:24 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 05 Feb 2019 21:36:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 21:36:24 GMT
ENV ELASTICSEARCH_VERSION=5.6.14
# Tue, 05 Feb 2019 21:36:25 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.14.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=392e98ebd549aba91f3041c59fe0d7be1abbd229
# Tue, 05 Feb 2019 21:36:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Tue, 05 Feb 2019 21:36:32 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Tue, 05 Feb 2019 21:36:33 GMT
VOLUME [/usr/share/elasticsearch/data]
# Tue, 05 Feb 2019 21:36:33 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Tue, 05 Feb 2019 21:36:33 GMT
EXPOSE 9200 9300
# Tue, 05 Feb 2019 21:36:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Feb 2019 21:36:34 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efcb164965dc09baa44c7f61fc5778a560021b07b4f1baea67e4fb34a36e3252`  
		Last Modified: Tue, 05 Feb 2019 21:36:48 GMT  
		Size: 1.3 KB (1254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e53ba232d97ebe2669868f9e843a62157ad0e0657834f04a6aea87610f54981f`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 1.2 MB (1209077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2949e9a2bc7d07b69a3035bc842ce825aaaf2c5aac12e92678951678b7f91187`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 144.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:598856d316dbddf9181cd953ba0c37da6c3a65625d674689f5f997df114289ef`  
		Last Modified: Tue, 05 Feb 2019 21:36:50 GMT  
		Size: 34.0 MB (34036018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ca90c75c49ef07c5ff4a5299e25b3cd11446d232532e5f03a9e1de7928e27a`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:236ce878d35cf886aa592c3005f18cdbe60e51483d2cecae80fe37c2c5561fed`  
		Last Modified: Tue, 05 Feb 2019 21:36:47 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

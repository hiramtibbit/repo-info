## `elasticsearch:5-alpine`

```console
$ docker pull elasticsearch@sha256:9a0b12e7371138c1787ecff96f7ff2a6db40812cd5806b2672ef0e9c20e4a1e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:5-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:94ecaedb01f2f7c79c70ad956e24c0bbc074684bb90462d6c2ce32f2f4769325
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.9 MB (92923198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e2dac90ba245b61ef764a44b811cb79f3acda1e8e8ee370a49c0cb5dd70f537`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 10 Apr 2019 01:52:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:54 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:10:11 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 10 Apr 2019 03:10:12 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 10 Apr 2019 03:10:13 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 10 Apr 2019 03:10:13 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 10 Apr 2019 03:10:13 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 10 Apr 2019 03:10:13 GMT
ENV ELASTICSEARCH_VERSION=5.6.16
# Wed, 10 Apr 2019 03:10:13 GMT
ENV ELASTICSEARCH_TARBALL=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz ELASTICSEARCH_TARBALL_ASC=https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.16.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=4ce4a1087e79d552b0d95566095827b18bcb6f67
# Wed, 10 Apr 2019 03:10:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 10 Apr 2019 03:10:20 GMT
COPY dir:3bffe8818d5cd3ce2107df97ed19ff2efc59dec260ec753e905c3d8f62c93058 in ./config 
# Wed, 10 Apr 2019 03:10:20 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 10 Apr 2019 03:10:20 GMT
COPY file:f5c8c9507bec9f28fc449c5a383b7cce7f393114dd7463ef6b8b0f971c406b5d in / 
# Wed, 10 Apr 2019 03:10:20 GMT
EXPOSE 9200 9300
# Wed, 10 Apr 2019 03:10:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 10 Apr 2019 03:10:21 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:bdf0201b3a056acc4d6062cc88cd8a4ad5979983bfb640f15a145e09ed985f92`  
		Last Modified: Tue, 09 Apr 2019 10:24:14 GMT  
		Size: 2.8 MB (2757009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e12771959adeb3408e625492accf845401aa66bcca638859a6b34176d753d62`  
		Last Modified: Wed, 10 Apr 2019 01:57:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae272eb2814b212db0ef2f5b8db4be474597598efb779c8c1c4073d507939bc6`  
		Last Modified: Wed, 10 Apr 2019 01:57:42 GMT  
		Size: 54.9 MB (54918805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e66147d45e09eee012f9b89dfba31285101c4f685cdb96ccc00e33cacff9f9`  
		Last Modified: Wed, 10 Apr 2019 03:10:31 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:402726cdf4e30c634ad77152da0941d18e77abfd674562bb3475d6deeec2781c`  
		Last Modified: Wed, 10 Apr 2019 03:10:30 GMT  
		Size: 1.2 MB (1209089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb2892c61b5bc7ce748ac7dccd0312b55690529364ea68c02b0b06af34deb5e`  
		Last Modified: Wed, 10 Apr 2019 03:10:31 GMT  
		Size: 143.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0abce02482c02df52d15adc8d36feed118b9de35d2e4d8e1844ec6fec229b20c`  
		Last Modified: Wed, 10 Apr 2019 03:10:32 GMT  
		Size: 34.0 MB (34035651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4691d420175472f0d156e650a96ed67c0dc88bd7da8a3aa9ca54f6097adfea0d`  
		Last Modified: Wed, 10 Apr 2019 03:10:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22d0d0d771d8e97dbf1f38f0b710c906c405f606a0f23068b555de39ebb3044`  
		Last Modified: Wed, 10 Apr 2019 03:10:30 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

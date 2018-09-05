## `elasticsearch:2-alpine`

```console
$ docker pull elasticsearch@sha256:06ae3a7cb0ba2882f3ce86e56ab51c9f0a875d438d6bc9b74909b8c105af7a97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:2-alpine` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1fa4955b0330c0dac71cfad339c9df8eb15ae1438e675e3d97d17597993ec85f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87220476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e78934dd1ba4513484a35f321013ab882e8d3679d77f7cf6064801eaffa863`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["elasticsearch"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 01:23:02 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 01:23:02 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 05 Sep 2018 01:24:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 05 Sep 2018 01:24:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_VERSION=8u171
# Wed, 05 Sep 2018 01:24:27 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Wed, 05 Sep 2018 01:24:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 05 Sep 2018 15:45:21 GMT
RUN addgroup -S elasticsearch && adduser -S -G elasticsearch elasticsearch
# Wed, 05 Sep 2018 15:45:23 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash
# Wed, 05 Sep 2018 15:45:24 GMT
ENV GPG_KEY=46095ACC8548582C1A2699A9D27D666CD88E42B4
# Wed, 05 Sep 2018 15:45:24 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 05 Sep 2018 15:45:24 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_VERSION=2.4.6
# Wed, 05 Sep 2018 15:46:20 GMT
ENV ELASTICSEARCH_TARBALL=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz ELASTICSEARCH_TARBALL_ASC=https://download.elastic.co/elasticsearch/elasticsearch/elasticsearch-2.4.6.tar.gz.asc ELASTICSEARCH_TARBALL_SHA1=c3441bef89cd91206edf3cf3bd5c4b62550e60a9
# Wed, 05 Sep 2018 15:46:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		ca-certificates 		gnupg 		openssl 		tar 	; 		wget -O elasticsearch.tar.gz "$ELASTICSEARCH_TARBALL"; 		if [ "$ELASTICSEARCH_TARBALL_SHA1" ]; then 		echo "$ELASTICSEARCH_TARBALL_SHA1 *elasticsearch.tar.gz" | sha1sum -c -; 	fi; 		if [ "$ELASTICSEARCH_TARBALL_ASC" ]; then 		wget -O elasticsearch.tar.gz.asc "$ELASTICSEARCH_TARBALL_ASC"; 		export GNUPGHOME="$(mktemp -d)"; 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY"; 		gpg --batch --verify elasticsearch.tar.gz.asc elasticsearch.tar.gz; 		rm -rf "$GNUPGHOME" elasticsearch.tar.gz.asc; 	fi; 		tar -xf elasticsearch.tar.gz --strip-components=1; 	rm elasticsearch.tar.gz; 		apk del .fetch-deps; 		mkdir -p ./plugins; 	for path in 		./data 		./logs 		./config 		./config/scripts 	; do 		mkdir -p "$path"; 		chown -R elasticsearch:elasticsearch "$path"; 	done; 		export ES_JAVA_OPTS='-Xms32m -Xmx32m'; 	if [ "${ELASTICSEARCH_VERSION%%.*}" -gt 1 ]; then 		elasticsearch --version; 	else 		elasticsearch -v; 	fi
# Wed, 05 Sep 2018 15:46:31 GMT
COPY dir:5ec5fadebeaa388fd27b7738b6b8d6306c5b8b7d9ef468d45d3efa4b858b338f in ./config 
# Wed, 05 Sep 2018 15:46:31 GMT
VOLUME [/usr/share/elasticsearch/data]
# Wed, 05 Sep 2018 15:46:32 GMT
COPY file:2c17a92e4308bdce9fe8a119d9cc5794f0aff8c512a55882b834e2e8404b0112 in / 
# Wed, 05 Sep 2018 15:46:32 GMT
EXPOSE 9200/tcp 9300/tcp
# Wed, 05 Sep 2018 15:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 05 Sep 2018 15:46:33 GMT
CMD ["elasticsearch"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2146c373b4668ab06b15e7bed7d009c501c752b3de4c71491e4fc1a4b5d4d71a`  
		Last Modified: Wed, 05 Sep 2018 01:41:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f005771ae04a165e2a820ee9f99b43cf227c7577761b4eb0838fde7aeccd0a1c`  
		Last Modified: Wed, 05 Sep 2018 01:42:55 GMT  
		Size: 54.8 MB (54798238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b25324fd7a84ef707ac512d60b5090f4f9b132db7c2e0a20c52636824043213`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:322a1f3c02ef12090c4b25f035a07ae84127b978e59fbe87498ae1851db46b1a`  
		Last Modified: Wed, 05 Sep 2018 15:47:18 GMT  
		Size: 1.2 MB (1204629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1be4f5eb743520361e46d9869cc92b29f815787c2a3f4d53df576c51ab461e3d`  
		Last Modified: Wed, 05 Sep 2018 15:47:17 GMT  
		Size: 142.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3edccf4d996519f720aabe898b7ce35cf5b2aa62ab4ca6e53bf5381ed321ef`  
		Last Modified: Wed, 05 Sep 2018 15:48:11 GMT  
		Size: 29.0 MB (29008372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9013255af1382b3b49a7e561350360290a2ae58025f6d576f19c74bbacae39c`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcc89675b5c024c57584097f5e0a8dfc8edac1b59378c7cab2044de1e8b36aaa`  
		Last Modified: Wed, 05 Sep 2018 15:48:08 GMT  
		Size: 506.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

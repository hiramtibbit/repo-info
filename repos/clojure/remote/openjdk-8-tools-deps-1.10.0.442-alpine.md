## `clojure:openjdk-8-tools-deps-1.10.0.442-alpine`

```console
$ docker pull clojure@sha256:0b0cbc3f00669ce63983488bdf0c7da91c186f20b21baa544a1227b0296702de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-1.10.0.442-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:f513dd9c11e8afd741c758dde436fb03c7afdbb615b0f13a8fe48e8365cdb9ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99070005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d75d224ea96dc1b0d2b3f18fc5518dc4459efd8c9a288b4bd5a5420df4b6d2e`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:52:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Wed, 10 Apr 2019 01:52:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_VERSION=8u212
# Tue, 07 May 2019 00:21:32 GMT
ENV JAVA_ALPINE_VERSION=8.212.04-r0
# Tue, 07 May 2019 00:21:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 07 May 2019 00:40:55 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Tue, 07 May 2019 00:40:55 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Tue, 07 May 2019 00:40:55 GMT
WORKDIR /tmp
# Tue, 07 May 2019 00:40:57 GMT
RUN apk add --update --no-cache bash curl
# Tue, 07 May 2019 00:40:59 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Tue, 07 May 2019 00:41:07 GMT
RUN clojure -e "(clojure-version)"
# Tue, 07 May 2019 00:41:07 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
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
	-	`sha256:018b76c3c533954c0a7fbd9e90e85f48d7240c14898e0a3b822bdc8c38ca7b50`  
		Last Modified: Tue, 07 May 2019 00:23:15 GMT  
		Size: 70.7 MB (70732830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f833779600e1c5069e6a89be79965379311759b5592d31d9cf5d77466ce6e00d`  
		Last Modified: Tue, 07 May 2019 00:41:51 GMT  
		Size: 1.7 MB (1708497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0a476dc45b57d28c0c746e93d8894c9ddc2be40117a0919e6e4df415a35866`  
		Last Modified: Tue, 07 May 2019 00:41:52 GMT  
		Size: 19.8 MB (19768719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f149f436b959a5657058798f567d921533a1a77fdcbaaae2899960a15a2b742`  
		Last Modified: Tue, 07 May 2019 00:41:51 GMT  
		Size: 4.1 MB (4102713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `clojure:openjdk-8-tools-deps-1.10.0.442-alpine`

```console
$ docker pull clojure@sha256:99b9cfe14b17f9550423263d46a042b0bace13f767d42330c47a7a5dc92ba6af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:openjdk-8-tools-deps-1.10.0.442-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:0d3a67d0d8405048ee29f9fbca404d7c228e78f2455c37a0b9d0dbed7bbac100
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99053519 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ef2ef94eb44345c9018b6d9eb7feac3ee690e453c9acaae69449e310e4ddfcc`
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
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_VERSION=8u201
# Wed, 10 Apr 2019 01:52:34 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 10 Apr 2019 01:52:39 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 10 Apr 2019 03:10:35 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Wed, 10 Apr 2019 03:10:35 GMT
ENV CLOJURE_VERSION=1.10.0.442
# Wed, 10 Apr 2019 03:10:35 GMT
WORKDIR /tmp
# Wed, 10 Apr 2019 03:10:36 GMT
RUN apk add --update --no-cache bash curl
# Wed, 10 Apr 2019 03:10:38 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Wed, 10 Apr 2019 03:10:48 GMT
RUN clojure -e "(clojure-version)"
# Wed, 10 Apr 2019 03:10:48 GMT
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
	-	`sha256:c4efe34cda6efe267747e87c1a4ab6e449a94b46df121175cc6e45c6f37c68c9`  
		Last Modified: Wed, 10 Apr 2019 01:57:26 GMT  
		Size: 70.7 MB (70716388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f45c4f8551798439a4a0d944d56aab7c6ae3285a9f07cfdef7e0e3445566755`  
		Last Modified: Wed, 10 Apr 2019 03:11:30 GMT  
		Size: 1.7 MB (1708446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b421c6cc71f374a38f4eff3a501b3fe17cd7a84eb7611a6f9114932808318f`  
		Last Modified: Wed, 10 Apr 2019 03:11:31 GMT  
		Size: 19.8 MB (19768718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eea1ed11165df62669a227c40e35ddb701c78fb74ec0a6e4bb3262d686c4cc83`  
		Last Modified: Wed, 10 Apr 2019 03:11:30 GMT  
		Size: 4.1 MB (4102721 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

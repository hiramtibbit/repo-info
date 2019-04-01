## `clojure:tools-deps-1.10.0.442-alpine`

```console
$ docker pull clojure@sha256:115dd5a10f84ac535c7b2dadf3ee60dd8b63202dc6c5314cd3bac4fdb58e7005
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `clojure:tools-deps-1.10.0.442-alpine` - linux; amd64

```console
$ docker pull clojure@sha256:7c7eb817c8f306a74e7895203909e38e041f4f4048371a278fe8ebe9e95cd7ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99077727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64db5268685415ea4bd04bb76fcad235f4c19a74a07f913030cbd7244ab7d7cc`
-	Default Command: `["sh","-c","sleep 1 && exec clj"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
# Fri, 08 Mar 2019 02:13:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:27:19 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:27:22 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:27:23 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:38:10 GMT
LABEL maintainer=Kirill Chernyshov <delaguardo@gmail.com>
# Thu, 28 Mar 2019 00:38:10 GMT
ENV CLOJURE_VERSION=1.10.0.414
# Thu, 28 Mar 2019 00:38:10 GMT
WORKDIR /tmp
# Thu, 28 Mar 2019 00:38:12 GMT
RUN apk add --update --no-cache bash curl
# Thu, 28 Mar 2019 00:38:14 GMT
RUN wget https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh     && chmod +x linux-install-$CLOJURE_VERSION.sh     && ./linux-install-$CLOJURE_VERSION.sh
# Thu, 28 Mar 2019 00:38:24 GMT
RUN clojure -e "(clojure-version)"
# Thu, 28 Mar 2019 00:38:24 GMT
CMD ["sh" "-c" "sleep 1 && exec clj"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0a34324bda0ebdff7d633cba988a61e40f464739f635ebbfaedab22788370d`  
		Last Modified: Wed, 27 Mar 2019 23:46:31 GMT  
		Size: 68.5 MB (68527031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5da56be406b88bb54da46ee8f2bc94eff5d3c17cde305aa142f4f305eaa98c91`  
		Last Modified: Wed, 27 Mar 2019 23:46:25 GMT  
		Size: 2.2 MB (2222623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02af4036d83f2c40e880dd4950a899b3ad20dc1c2470e88d9c59f1e989e5a14a`  
		Last Modified: Thu, 28 Mar 2019 00:39:20 GMT  
		Size: 1.7 MB (1708393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dbefe76e5777935c4c014e6480eb1b32dcdbdf5d290fffd01cb4e82405d3226`  
		Last Modified: Thu, 28 Mar 2019 00:39:20 GMT  
		Size: 19.8 MB (19762023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9483595e2349f62308cde1508115f3527f92769c77dec35be72e8cb7621829cd`  
		Last Modified: Thu, 28 Mar 2019 00:39:18 GMT  
		Size: 4.1 MB (4102689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

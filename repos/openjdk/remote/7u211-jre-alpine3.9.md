## `openjdk:7u211-jre-alpine3.9`

```console
$ docker pull openjdk@sha256:799ef1eaf850286d2eeaf08e8fb35a1dc5f238eda2b1c5b22b394b2a65b53104
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `openjdk:7u211-jre-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:128e52e98c41b5bf5928771a3a68e04f4b67173aa35596f8e4ac915215b35d74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64968291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f5e6c61e2c6448b7acf098696e2f76cbba880eefb2bed568b866ccf9ad767e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Apr 2019 23:20:18 GMT
ADD file:2e3a37883f56a4a278bec2931fc9f91fb9ebdaa9047540fe8fde419b84a1701b in / 
# Tue, 09 Apr 2019 23:20:18 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 01:52:32 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 01:52:33 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 01:53:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 01:53:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 00:32:18 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 00:32:19 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 00:32:28 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:fd21c20bbe6e0d9b14795f20ee8fc1d0d8d232e359eab837af71be7cec3a26a2`  
		Last Modified: Fri, 12 Apr 2019 00:36:55 GMT  
		Size: 62.2 MB (62211045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jre-alpine3.9` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:b5d5b047bf07d3b3ce78961520c5f4b315e03522aba04e2574ce320a70663792
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55167233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4fb0a02446d821ea8dc4ad96d68e0b6794ce69f1c149e07710005dfe13a8f97`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 07:49:49 GMT
ADD file:a436c215187a8aeeb53f8266f96bd40adc3856bb6dc3fe766542e69831ffa7c9 in / 
# Wed, 10 Apr 2019 07:49:49 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 08:15:59 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 08:16:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 08:16:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 08:16:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 08:04:21 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 08:04:21 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 08:04:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:9d34ec1d9f3e63864b68d564a237efd2e3778f39a85961f7bdcb3937084070e1`  
		Last Modified: Wed, 10 Apr 2019 07:50:15 GMT  
		Size: 2.5 MB (2543441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740f9654bf3d64555b0034839bc01523005f3494bc52b01109cf0ceb7de78ece`  
		Last Modified: Wed, 10 Apr 2019 08:17:28 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11b81fce624634633eb8513ed61439f94fd1731bf79c13ee3275595aa1c4bef3`  
		Last Modified: Fri, 12 Apr 2019 08:05:31 GMT  
		Size: 52.6 MB (52623553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jre-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:5c5d74c98285140b7575d1e9f3b3d632456099a37f6eeb51fa225504344dcf1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64558660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd491b4072c1bcc0de039bd92b384a77f45ecaf0863974c6cbf8141a7bad5069`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:49:11 GMT
ADD file:30e0a8ccdca70b20b8ce637f0ba5108157f4ba491447d20aafbe45d82392bd81 in / 
# Wed, 10 Apr 2019 08:49:12 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 13:49:37 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 13:49:41 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 13:51:49 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 13:51:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 09:21:34 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 09:21:35 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 09:22:00 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:6f37394be673296a0fdc21b819c5df40431baf7d3af121bee451726dd1457493`  
		Last Modified: Wed, 10 Apr 2019 08:50:38 GMT  
		Size: 2.7 MB (2688778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:262af2c613fda9d21034fdf7bbdb56296fdd19b65bdbb02d6795e631a674fa42`  
		Last Modified: Wed, 10 Apr 2019 13:54:59 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6bdfceb8a82aa40eb4781b7fbcbc05d21c78f91d9774a52d21fed56480a9795`  
		Last Modified: Fri, 12 Apr 2019 09:27:12 GMT  
		Size: 61.9 MB (61869645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jre-alpine3.9` - linux; 386

```console
$ docker pull openjdk@sha256:b9486cda635811aefab83fb1d90d856737bc78cd910038ebe92d71c5e3aabfd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67907259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e84000f2ece308c374cf985e66e88647b5f6d3b4a79b009a9f7af4707ebe63e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 10:38:55 GMT
ADD file:51f7bb95ef6cc3519317dcb7abbf6155e6bb7b73a17ad7d90cad7911e8a8933c in / 
# Wed, 10 Apr 2019 10:38:55 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:45:36 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:45:37 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:46:20 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 14:46:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 10:52:01 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 10:52:02 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 10:52:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:9a81e6a1a3b4f174d22173a96692c9aeffaefcd00f40607d508951a2b14d6f1f`  
		Last Modified: Wed, 10 Apr 2019 10:39:15 GMT  
		Size: 2.8 MB (2752162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:507150e9707de9812071bca1e05b447035474af8f628f739782f28876ce11ea7`  
		Last Modified: Wed, 10 Apr 2019 14:47:10 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63847d343802f9757415fe34b8e33564673e8e0d155845f02530e99af3d14803`  
		Last Modified: Fri, 12 Apr 2019 10:53:21 GMT  
		Size: 65.2 MB (65154858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jre-alpine3.9` - linux; ppc64le

```console
$ docker pull openjdk@sha256:fdf0cf8364afcb3e1984d4c0447986e8a3429da9e405451f5b4f8aa17071c828
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58590374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa65f5f4223266c200b257021210817dc021227ff27db6118b1ecd89db9989e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 08:27:30 GMT
ADD file:c13c1c2b4e6d71924f570a910caf6a1756ea5a28a4017c7b11305e021eacd0ee in / 
# Wed, 10 Apr 2019 08:27:33 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 10:34:07 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 10:34:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 10:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 10:36:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 12 Apr 2019 08:26:23 GMT
ENV JAVA_VERSION=7u211
# Fri, 12 Apr 2019 08:26:25 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 12 Apr 2019 08:26:36 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:fe0f92a92ee06f38abf50fefd22331ac42262e3872ecd2d7ddfa7c24ab71a53a`  
		Last Modified: Wed, 10 Apr 2019 08:28:34 GMT  
		Size: 2.8 MB (2781020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33502e4594fea19504ab3a271166aae35dc0104c699ca0bdf84559822c1c7be8`  
		Last Modified: Wed, 10 Apr 2019 10:38:58 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49f9006876cc6d7023f4b96dd0b4b72b7493bd6f04d5c091971f02e4eca177f3`  
		Last Modified: Fri, 12 Apr 2019 08:29:00 GMT  
		Size: 55.8 MB (55809117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `openjdk:7-jre-alpine3.9`

```console
$ docker pull openjdk@sha256:bdb4617e8b0b39a718726e83588b0e6447c9a702edf7da1e0b5a994db89b5ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `openjdk:7-jre-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:487a03775ee4529abf9bbec02e4ffbc69aac57f77cfcebd4b9ab682ec5b6086c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64966959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9750b73727132e952735f3d5ed45127d5b25dc35c6a8d38308ff0f19088be66`
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
# Wed, 10 Apr 2019 01:53:39 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 01:53:39 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 01:53:48 GMT
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
	-	`sha256:d6315d0416d4aaa67699f2811cd0a729bde6b5d8c4273f62d9ccd1ef80aa4471`  
		Last Modified: Wed, 10 Apr 2019 01:58:27 GMT  
		Size: 62.2 MB (62209713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:29508cc982c9ed339ef5ed767a02505cf72e21e408f1cf354a46319987606577
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55150726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf2762bff590d3091a68177bc95d407f6210a54b7c1d7665f99c24b576f25b2`
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
# Wed, 10 Apr 2019 08:16:57 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 08:16:58 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 08:17:05 GMT
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
	-	`sha256:f1c0ca3aae7ee66e94bb05faed90d624faf84409364ee94c63898bcdcb625cef`  
		Last Modified: Wed, 10 Apr 2019 08:18:46 GMT  
		Size: 52.6 MB (52607046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:15562d9f81ca4d849d3e9cba0ed1ad6be8d5ed4240eff092d25f646e12dc9543
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.6 MB (53640134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79949e0df703f2fdfad3fab90c26778d4e316cbb19012ba014b933a88286732a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:57:47 GMT
ADD file:1a27b74f23795a1f205247dcd6eff48ac56f0b8f2afe0c358199a0b60f694861 in / 
# Wed, 10 Apr 2019 11:57:48 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 12:32:33 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 12:32:34 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 12:33:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 12:33:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Apr 2019 12:33:41 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 12:33:41 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 12:33:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:c2a5cdd4aa08146b4516cc95f6b461f2994250a819b3e6f75f23fa2a8c1b1744`  
		Last Modified: Wed, 10 Apr 2019 11:58:04 GMT  
		Size: 2.4 MB (2350757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f84f012d7a2c98b878a374d23d4b8b84201bab90ec9ed1c77522e51fb0c55f8`  
		Last Modified: Wed, 10 Apr 2019 12:34:37 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b18dbe139974a5646c56d3fd800ef19934d7b3d7b3283243ebe835e677a79989`  
		Last Modified: Wed, 10 Apr 2019 12:36:02 GMT  
		Size: 51.3 MB (51289138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:92ade55289f566669907d804a84707ce694fa0ff6c892a1ce6e5fb76aab04a11
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64575719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2919ff978cf5652ad3d5086ed91b7f5ba0244ce74c1cf3d7d9dab9d48746323f`
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
# Wed, 10 Apr 2019 13:51:52 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 13:51:53 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 13:52:19 GMT
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
	-	`sha256:3bb07fce27b47f7acbf7bca0cd9a0204e33506d853b2731e8c47089638ce1c2f`  
		Last Modified: Wed, 10 Apr 2019 13:58:24 GMT  
		Size: 61.9 MB (61886704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; 386

```console
$ docker pull openjdk@sha256:dfee4e679fe1a19947fe51f68c7904dc8db54a81fe3e7444471e8624029241ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67945232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c27ca2e7648b3d9f40293ae041f789745975ed9af875fb68d8870bf2e2055e2`
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
# Wed, 10 Apr 2019 14:46:20 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 14:46:20 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 14:46:30 GMT
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
	-	`sha256:36eda691fe0c1d6c001887183d12a77c832b2a190fca82b098bfe053891a6fe9`  
		Last Modified: Wed, 10 Apr 2019 14:48:11 GMT  
		Size: 65.2 MB (65192831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; ppc64le

```console
$ docker pull openjdk@sha256:d21c961493a630bc44226b33879456cf4810c07a76afcbcf25a65a51b278cc7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58565571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471248ddec18595f3e6d60ac8ba7b096f5c5a4ef605943365f828c82ecf3e27a`
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
# Wed, 10 Apr 2019 10:36:53 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 10:36:59 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 10:37:17 GMT
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
	-	`sha256:9c4d5ed50d5d1386b5fb60a33db2928f5e31f477210b33c3b2e45e8eec93be7b`  
		Last Modified: Wed, 10 Apr 2019 10:41:00 GMT  
		Size: 55.8 MB (55784314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; s390x

```console
$ docker pull openjdk@sha256:cc72004e27c68e0920f05c1cd81cbe2870630d03d95598218dae733289ccce3b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56781471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5532851094fa48bc65b69779527e0992892ed32dcdd94e0b9b47319c6b4346`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 10 Apr 2019 11:42:23 GMT
ADD file:ab106eb2cf4bf0e1ca7861a56dc24e44dd206fd3ae8d3587684324e5c11136f4 in / 
# Wed, 10 Apr 2019 11:42:23 GMT
CMD ["/bin/sh"]
# Wed, 10 Apr 2019 14:29:54 GMT
ENV LANG=C.UTF-8
# Wed, 10 Apr 2019 14:29:58 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 10 Apr 2019 14:31:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Wed, 10 Apr 2019 14:31:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Wed, 10 Apr 2019 14:31:39 GMT
ENV JAVA_VERSION=7u201
# Wed, 10 Apr 2019 14:31:40 GMT
ENV JAVA_ALPINE_VERSION=7.201.2.6.16-r0
# Wed, 10 Apr 2019 14:31:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:5b51e37a522c2e7cd3c67e8a3e5500b45189ea6698e9fdaed7f5d48282326633`  
		Last Modified: Wed, 10 Apr 2019 11:43:06 GMT  
		Size: 2.5 MB (2543326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a5d5378375b74e61c7006a4fcd138a028ad6edff3a385f04b5ad1a15363b3ed`  
		Last Modified: Wed, 10 Apr 2019 14:34:21 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09a8536afad43314b916b4c9de3394fc582dd562348c87521e087f69663f3b4`  
		Last Modified: Wed, 10 Apr 2019 14:35:53 GMT  
		Size: 54.2 MB (54237907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

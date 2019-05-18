## `openjdk:7-jre-alpine3.9`

```console
$ docker pull openjdk@sha256:beabbab11a39353833438fe57868f96df6ebecc87420e2cc52808a6adabe7ec9
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
$ docker pull openjdk@sha256:d0f3f4f326b179c97b25bdc8461384fdef12ecd1fd8098b9f9d684325951e208
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.0 MB (64984183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a8f96503096b3842cecdf6e7583844d7420ac17707afbf8828b4546533f21a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:32:11 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 01:32:12 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 01:33:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 01:33:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 01:33:17 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 01:33:17 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 01:33:26 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f910a506b6cb1dbec766725d70356f695ae2bf2bea6224dbe8c7c6ad4f3664a2`  
		Last Modified: Sat, 11 May 2019 01:36:58 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cacbf38e30632d6e92070e3758b77023069207a3dc1b53bcbfca72218d8be3c`  
		Last Modified: Sat, 11 May 2019 01:38:24 GMT  
		Size: 62.2 MB (62226911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:6cce12e04c824ff6653051dae92dcc7db4051250dd61a53ebc340f99b2941591
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.2 MB (55167216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a6269bdb211da90e654d32c97042dd488481eb9d44dd02b21ea8a35cf86fb26`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 08:47:14 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 08:47:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 08:48:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 08:48:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 08:48:18 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 08:48:18 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 08:48:25 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2b204f0fc5c4fd136771b708ddfd60e2bdc3cc56eff6e6e3d4ee5440b4c930`  
		Last Modified: Sat, 11 May 2019 08:48:45 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:713539bc4696af474e32ecc21f06042aa242c47fcb332ba47e547546ebec6b79`  
		Last Modified: Sat, 11 May 2019 08:50:00 GMT  
		Size: 52.6 MB (52623550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:e9ad0ec24b84d41cf5c558bfec16e02fd6fa0677c38dc969ad28baedb19df700
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53659703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e5f76b3c130420aa7be6cbc311d9b430f3ea15dab5f554a51e1788da8dc67de`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:16:43 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 12:16:45 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 12:17:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 12:17:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 12:17:48 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 12:17:49 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 12:17:57 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:962e53e3f8337e63290eb26703e31f0e87d70db371afae581ad3898b1dccb972`  
		Last Modified: Sat, 11 May 2019 12:19:01 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a859c9cf40c01e62db00255b6c1fcb3a66f5d1f4a4d81919bef8d27d289dc3a`  
		Last Modified: Sat, 11 May 2019 12:20:29 GMT  
		Size: 51.3 MB (51308799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:284d438ab180a535e5c4dbb84b4eee6c615008f6d25b7ace23e08e3d33568270
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.6 MB (64559580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb41b65b69af2df8380a1721c58eb0a1599660c72e7648fb296f8144725ad832`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Fri, 17 May 2019 22:50:23 GMT
ENV LANG=C.UTF-8
# Fri, 17 May 2019 22:50:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 17 May 2019 22:52:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Fri, 17 May 2019 22:52:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Fri, 17 May 2019 22:52:58 GMT
ENV JAVA_VERSION=7u211
# Fri, 17 May 2019 22:52:59 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Fri, 17 May 2019 22:53:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:571218f61883d9b38dc66005a4777e0cf86a05d2a7c570efe58f952c28f6737a`  
		Last Modified: Fri, 17 May 2019 22:59:21 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74665694dac34d90f0b29a2992732013e427509fedb30cad25c6ef87f4a9711b`  
		Last Modified: Fri, 17 May 2019 23:01:56 GMT  
		Size: 61.9 MB (61870562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; 386

```console
$ docker pull openjdk@sha256:3a439bcc5db1571f861e04c19cc46087c7bd0e147e5a215bee42b97cc94233cb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.9 MB (67907256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6069631362d366e63d91af262d6d40670ddb0be3806dcd159d7f4068a27a305`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 15:28:39 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 15:28:39 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 15:29:23 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 15:29:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 15:29:24 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 15:29:24 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 15:29:31 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a94db5087f7f8bcd0cadca9c6d446a22a96182ec9c08d67fda830b278e8dc2`  
		Last Modified: Sat, 11 May 2019 15:30:11 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f14716de0f14969e597c94cbb4e8be9edaeeaadbcb5fe2def5ef4005a22d4446`  
		Last Modified: Sat, 11 May 2019 15:31:14 GMT  
		Size: 65.2 MB (65154929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; ppc64le

```console
$ docker pull openjdk@sha256:6838725303673bf8188f0d7842bf05ab35ad5f379541930863b141cc1014502c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.6 MB (58590482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2726794d101af9794455e241450232423bfff8047e0bdd8863e7cd7b48be3dfb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:29:33 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Sat, 11 May 2019 08:29:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:44:37 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:44:48 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:46:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 09:46:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 09:46:44 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 09:46:47 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Tue, 14 May 2019 00:20:34 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a97b7b4784d132b1e215acf6612c7852271c10c4ff9f096f9847f16559741c5e`  
		Last Modified: Tue, 14 May 2019 00:26:09 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2077a654a3c4158a59ce0aa8f3908021832005e9ca3c2c4279c57bb7a872f32e`  
		Last Modified: Tue, 14 May 2019 00:30:10 GMT  
		Size: 55.8 MB (55809225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7-jre-alpine3.9` - linux; s390x

```console
$ docker pull openjdk@sha256:c44dedc3ed85f09fe0804094a00f49ea0b2b338bc7dcdb34cf07c8ed23cd6b92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.8 MB (56821395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce51aeed2a38d20e4bfe13ff0ac508dce3aa357abdcba490fdf9a8d6a8f272f9`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 14:04:28 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:04:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 14:05:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk/jre
# Sat, 11 May 2019 14:05:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 14:05:17 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 14:05:17 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 14:05:27 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaa0ca3e410795baed0978b91dcb428e9f31c46e39a429f31aa4c833592476a`  
		Last Modified: Sat, 11 May 2019 14:06:07 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2272d3baac263ed4e7ffc23db6f71daec1c432fb4280dedfce94cb1db2b782f`  
		Last Modified: Sat, 11 May 2019 14:07:02 GMT  
		Size: 54.3 MB (54277827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

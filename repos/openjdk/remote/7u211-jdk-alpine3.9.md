## `openjdk:7u211-jdk-alpine3.9`

```console
$ docker pull openjdk@sha256:a069e34e1837f964370bb97ced137496759e65d6413bd086f52878176e7ba6e4
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

### `openjdk:7u211-jdk-alpine3.9` - linux; amd64

```console
$ docker pull openjdk@sha256:dd6f8ba3ccf5bf22b1475119f2c426e8fc83dabde805cc7b117f1eb57820845c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.3 MB (81341475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34470fd4cfb84fd5d65f532047019cab43b94afb9f3c5aab824800963be81cb9`
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
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 01:32:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 01:32:52 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 01:33:02 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:3ae69dd7029f39bbf8cf000fbbdfe51b3da20af6b1f02dc38628171f97893552`  
		Last Modified: Sat, 11 May 2019 01:37:54 GMT  
		Size: 78.6 MB (78584203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; arm variant v6

```console
$ docker pull openjdk@sha256:ef1f7eaa0da58e539f8655b69ff6c3caf38476f7ddd2f270e3ee38b4bb92fa64
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71490558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a427aa011cc5fbf700b83db846ec24dcf0fabb75d04ee5f3ff44d68c35380074`
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
# Sat, 11 May 2019 08:47:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 08:47:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 08:47:49 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 08:47:50 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 08:48:12 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:c4cdaacb9da6f826ff01b4354f3494c9beed59529cce8f3a512923b7378fb4cf`  
		Last Modified: Sat, 11 May 2019 08:49:37 GMT  
		Size: 68.9 MB (68946892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; arm variant v7

```console
$ docker pull openjdk@sha256:4e5fcfe2f346c0457a9a247019c803afe737f8cfb919134dda90ec3cb165a485
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (69959627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f850bf6652dd65256e18d5beebb050a475cff16fbfdd0506117e1ecfe2b5255`
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
# Sat, 11 May 2019 12:17:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 12:17:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 12:17:26 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 12:17:27 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 12:17:35 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:922294a51cfa16abfa3004273ba618aaf7432d18ab35c374daa30840f671ea54`  
		Last Modified: Sat, 11 May 2019 12:20:04 GMT  
		Size: 67.6 MB (67608723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull openjdk@sha256:6e48538525e0fe3363b461e5ad321d96ad59494ce96071b61e25f2bf8bc1c39d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.9 MB (80901500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c547b4ec27b524514515389c3cfbaf70d9b5921f0c816a7a48965133770b7c98`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Sat, 11 May 2019 08:43:24 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Sat, 11 May 2019 08:43:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:18:27 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:18:29 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 11 May 2019 09:19:09 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 09:19:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 09:19:11 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 09:19:12 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 09:19:29 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca2cc770c6ebbe90978672d360accf2434f83f9f0339ecd592224d794d5e35e`  
		Last Modified: Sat, 11 May 2019 09:21:04 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:766b9da0247eccf351064a4a4c555f605427261bf327756f71cd133d088444ea`  
		Last Modified: Sat, 11 May 2019 09:22:25 GMT  
		Size: 78.2 MB (78212484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; 386

```console
$ docker pull openjdk@sha256:a706f02d9a223a5e063867824dbc7e003fd85a92b284d5c2d0a7c5630f82b23d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.3 MB (84264406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9681563bccf41576334ee72c437086426366da96e15ea4b2505c3bf4c0ca45b1`
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
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 15:29:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 15:29:06 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 15:29:15 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:81a3179e84f5ec060d4c39c7fda0b13ca2f23356ef96f434316a14d9d41db23d`  
		Last Modified: Sat, 11 May 2019 15:30:55 GMT  
		Size: 81.5 MB (81512079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; ppc64le

```console
$ docker pull openjdk@sha256:081a7a39f6cb874ce2ea66a9d8da3589d1fc91608e39878b04c0859ab9184d0a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75004847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5e72720476b1ead3e6bbb08066d0f41a45803b18ad5e3342a0c64297c713f0`
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
# Sat, 11 May 2019 09:46:24 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Tue, 14 May 2019 00:19:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Tue, 14 May 2019 00:19:34 GMT
ENV JAVA_VERSION=7u211
# Tue, 14 May 2019 00:19:42 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Tue, 14 May 2019 00:20:05 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:cf2ab48685d767638ca1e4af97d6bdd804e823ec99bdee7a55e3c152df662008`  
		Last Modified: Tue, 14 May 2019 00:29:10 GMT  
		Size: 72.2 MB (72223590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `openjdk:7u211-jdk-alpine3.9` - linux; s390x

```console
$ docker pull openjdk@sha256:e07f50c2a06383dc9b5ed4c2911167027d61b7f342c8e9608364ccc09aa94a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.2 MB (73189188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3bbed25b16b440b66bb5d39e59ca201cc211f63dfe07dce1cf183e1b3e63b41`
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
# Sat, 11 May 2019 14:04:55 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.7-openjdk
# Sat, 11 May 2019 14:04:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.7-openjdk/jre/bin:/usr/lib/jvm/java-1.7-openjdk/bin
# Sat, 11 May 2019 14:04:56 GMT
ENV JAVA_VERSION=7u211
# Sat, 11 May 2019 14:04:56 GMT
ENV JAVA_ALPINE_VERSION=7.211.2.6.17-r0
# Sat, 11 May 2019 14:05:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk7="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
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
	-	`sha256:12d2318f5bbb8a7a3fb1b99300ab305ffb74ed16325080e9603133439ea79da3`  
		Last Modified: Sat, 11 May 2019 14:06:43 GMT  
		Size: 70.6 MB (70645620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

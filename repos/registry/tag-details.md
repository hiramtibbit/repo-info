<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `registry`

-	[`registry:2`](#registry2)
-	[`registry:2.5`](#registry25)
-	[`registry:2.5.2`](#registry252)
-	[`registry:2.6`](#registry26)
-	[`registry:2.6.2`](#registry262)
-	[`registry:2.7`](#registry27)
-	[`registry:2.7.1`](#registry271)
-	[`registry:latest`](#registrylatest)

## `registry:2`

```console
$ docker pull registry@sha256:76c8ad83dd5afc9a2e71f96f0dd9cdab2dce793e612e3160f8e7a09a48d0d949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:b1165286043f2745f45ea637873d61939bff6d9a59f76539d6228abf79f87774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32a97de94e13d29835a19851acd6cbc7979d1d50f703725541e44bb89a1ce91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:38 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:38 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d33bcb37f53c65d2678796a458525d291c18058ff65c137d0aea45849e3f14`  
		Last Modified: Fri, 08 Mar 2019 02:47:05 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc091c171595794b2c72071946d2e34c0ecbc00de8b5f8a80dda0f7dfc801`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4541f6d3db6307e43bad1ca823a3221d4c2689bcae8bbd8a312371815e1d1bf`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2` - linux; arm variant v6

```console
$ docker pull registry@sha256:e260d294115782db86519209ffd3d716ad117fb4634702adc29471371b1b2874
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9160088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47301c08109a7ef3b0d1ccea878cf3586e1e0d9583c3d34f0ec0a8a9c63f9ec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 08:49:43 GMT
COPY file:29c6c1625420a558a03cc7ed253192f8138cba6212b64e30217fb6488af668e2 in /bin/registry 
# Sat, 19 Jan 2019 08:49:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 08:49:44 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 08:49:45 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 08:49:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 08:49:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448571c9cbd3383de09b4eeeb40b510980e9a6dcc94077738128cb1c7a762eeb`  
		Last Modified: Sat, 19 Jan 2019 08:50:02 GMT  
		Size: 6.4 MB (6391085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1518296346a8248efa428d6c5cf19734bd90db1081f86455bacb808c808594`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4a7614d965d7a96a2e87f2d54aa7042c83b5349c10992b3c925ec37437472a`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:0ba428e5b215e9f2786809c98b5f70b64e950b0a00da26285dee17496984000f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8943741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00731f8b1297314c8355fdb858c315fc138614cb758acf32bf6c5f52b3c2f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:51a441e6eceff49ef32609e7070b64e8d5690648e4f915cc825274e6fe37aed2 in /bin/registry 
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 10:46:38 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 10:46:39 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 10:46:40 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 10:46:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 10:46:42 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e23d407034f8a514864387e2bcc99fd2909bd12a14af1d9205c62e9fa3c14`  
		Last Modified: Sat, 19 Jan 2019 10:47:00 GMT  
		Size: 6.2 MB (6240198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b1cc40711eaf8ab384010e17c517cc41cdb42c428d2b1506dc5db9508c654`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee47d89f4b8888d4b9b6955a9927affaea2a62a8063b49dad6f729cc8f3a5cf`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:0e24817489e4c7ab947f017cd234eee90c140a110d4c1dee368333ee1228bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:c64493a676d9a260677754921295e46699e1fce507459536bec61c9c7d0befe3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae2e2e45eb146fddf599a1deb2479765b6b12d8a74ec1bd01a029e5067667e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:29 GMT
ADD file:bcde2f5c6cea41907445a273914226602ad24881c612ac8ba943a88ac6b40d1c in / 
# Wed, 30 Jan 2019 22:20:30 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:14:51 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 30 Jan 2019 23:14:51 GMT
COPY file:dad1579b3d1e7e161e3ae1fad0a03290db463eccc4fa734f7bef97339056b6c5 in /bin/registry 
# Wed, 30 Jan 2019 23:14:52 GMT
COPY file:b7a0d89d5453eb08c1191ef153b7fc0361ce8e6c36737faf86141d23b0744321 in /etc/docker/registry/config.yml 
# Wed, 30 Jan 2019 23:14:52 GMT
VOLUME [/var/lib/registry]
# Wed, 30 Jan 2019 23:14:52 GMT
EXPOSE 5000
# Wed, 30 Jan 2019 23:14:52 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:14:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:14:53 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c1e54eec4b5786500c19795d1fc604aa7302aee307edfe0554a5c07108b77d48`  
		Last Modified: Wed, 30 Jan 2019 22:21:31 GMT  
		Size: 2.4 MB (2387850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606cf3574ddf5ce5a460e590784505fe88952214ca05e78ec6ab29b2f0e29f30`  
		Last Modified: Wed, 30 Jan 2019 23:15:31 GMT  
		Size: 2.0 MB (2034877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9776f61d75c4bdf922351a7678b1ba1682a73be227fdd537bf2bc4d2370d8d9e`  
		Last Modified: Wed, 30 Jan 2019 23:15:31 GMT  
		Size: 6.8 MB (6791686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602df3b64569729ed25c4e404bec3864bf437266688b154ab88a4628c0aa1c33`  
		Last Modified: Wed, 30 Jan 2019 23:15:26 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb17236f8e2eb8ee1234f222c2a5b0fe324964a3628fa02dcf61f0145e69dfe`  
		Last Modified: Wed, 30 Jan 2019 23:15:26 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:0e24817489e4c7ab947f017cd234eee90c140a110d4c1dee368333ee1228bce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:c64493a676d9a260677754921295e46699e1fce507459536bec61c9c7d0befe3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bae2e2e45eb146fddf599a1deb2479765b6b12d8a74ec1bd01a029e5067667e5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:29 GMT
ADD file:bcde2f5c6cea41907445a273914226602ad24881c612ac8ba943a88ac6b40d1c in / 
# Wed, 30 Jan 2019 22:20:30 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:14:51 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 30 Jan 2019 23:14:51 GMT
COPY file:dad1579b3d1e7e161e3ae1fad0a03290db463eccc4fa734f7bef97339056b6c5 in /bin/registry 
# Wed, 30 Jan 2019 23:14:52 GMT
COPY file:b7a0d89d5453eb08c1191ef153b7fc0361ce8e6c36737faf86141d23b0744321 in /etc/docker/registry/config.yml 
# Wed, 30 Jan 2019 23:14:52 GMT
VOLUME [/var/lib/registry]
# Wed, 30 Jan 2019 23:14:52 GMT
EXPOSE 5000
# Wed, 30 Jan 2019 23:14:52 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:14:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:14:53 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c1e54eec4b5786500c19795d1fc604aa7302aee307edfe0554a5c07108b77d48`  
		Last Modified: Wed, 30 Jan 2019 22:21:31 GMT  
		Size: 2.4 MB (2387850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606cf3574ddf5ce5a460e590784505fe88952214ca05e78ec6ab29b2f0e29f30`  
		Last Modified: Wed, 30 Jan 2019 23:15:31 GMT  
		Size: 2.0 MB (2034877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9776f61d75c4bdf922351a7678b1ba1682a73be227fdd537bf2bc4d2370d8d9e`  
		Last Modified: Wed, 30 Jan 2019 23:15:31 GMT  
		Size: 6.8 MB (6791686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602df3b64569729ed25c4e404bec3864bf437266688b154ab88a4628c0aa1c33`  
		Last Modified: Wed, 30 Jan 2019 23:15:26 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cb17236f8e2eb8ee1234f222c2a5b0fe324964a3628fa02dcf61f0145e69dfe`  
		Last Modified: Wed, 30 Jan 2019 23:15:26 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:c6f5ead280fafbd0739d14fecdba0db94568c1132e10165af0d413e5d66f8e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:fb96b4d1912de9448aed31e1725d6f2d548e5553f68c3c2b8eb8ec38e0b4d11f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9100145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ef411ad932291d7733fe7188a1515b1db7bd6e69222a13929cdc5315d21fb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:44 GMT
COPY file:8c9aab4f95afee2664d9af10e60d1e6241079c267ef6db906c1a8e4d9c327d3e in /bin/registry 
# Fri, 08 Mar 2019 02:46:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:45 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:45 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219d1d2b68397401e2f7ba6b7cf71f850172eb7773d1a66cadaa250aa7ca404f`  
		Last Modified: Fri, 08 Mar 2019 02:47:14 GMT  
		Size: 6.3 MB (6265226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f802bbc165b87e84687d4835150add901f8812c9dc5ca1d0223d2a3b3a5c90`  
		Last Modified: Fri, 08 Mar 2019 02:47:11 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d441a35a47a6860b6c8cf67e6d2f45df9663f1ab1937770dfcb28f13e32e9`  
		Last Modified: Fri, 08 Mar 2019 02:47:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.6` - linux; arm variant v6

```console
$ docker pull registry@sha256:f49cfb03f00c20108978b27d0d9585d9a778a70aea802aa83d54c75719dcead2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8489659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d071717961264862ddec0ce38066cc504bf3219b7723c6858e35785f797b86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 04 Jan 2019 08:50:48 GMT
COPY file:8302079be0274f86692a54ea96e6a85c0358d32eaff7762cad1bfd969ef3b890 in /bin/registry 
# Fri, 04 Jan 2019 08:50:49 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 08:50:49 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 08:50:50 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 08:50:50 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 08:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 08:50:51 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a274906c14ad9eafa6feccbbc0ae7c2c326c972456a0d3368f51463819f22276`  
		Last Modified: Fri, 04 Jan 2019 08:51:13 GMT  
		Size: 5.7 MB (5720658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4bccc4ea127b49ee7a03d817709ba8dc1b6b0fe922fdee7d87ab2d0c12d5e6`  
		Last Modified: Fri, 04 Jan 2019 08:51:11 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcef280cfd6870afa91deadc9f26768885d9421f73e82af39c0d049e434fca8`  
		Last Modified: Fri, 04 Jan 2019 08:51:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.6` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:ffa2476000e154e84e734b2026724e9371a06f2c48a3fb5ee1473f920fd3593a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8476256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cd40fa292a79e4c34ff8aebcb82cc6d7daca86b5628df6273f7f0150d56417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 04 Jan 2019 09:59:29 GMT
COPY file:1a8b61aae84a4d8472a425e9ca5117d848facaeb3ae652f2c7f74476ecab01ff in /bin/registry 
# Fri, 04 Jan 2019 09:59:31 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 09:59:33 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 09:59:37 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 09:59:39 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 09:59:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 09:59:41 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c496f68fd1fe33c72786e5219a2a4c6a2938b713987b962daf0e307f9404e8`  
		Last Modified: Fri, 04 Jan 2019 10:00:13 GMT  
		Size: 5.8 MB (5772710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67909357953c83e31db9b6af8f3a2eb107d0dbe7bbdc11fe460eeb7ac73bb664`  
		Last Modified: Fri, 04 Jan 2019 10:00:10 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9beda1193d797ca1343e8728a51fa094a8adeedd97ce465d3333929efdaf5c4`  
		Last Modified: Fri, 04 Jan 2019 10:00:10 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6.2`

```console
$ docker pull registry@sha256:c6f5ead280fafbd0739d14fecdba0db94568c1132e10165af0d413e5d66f8e86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:fb96b4d1912de9448aed31e1725d6f2d548e5553f68c3c2b8eb8ec38e0b4d11f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9100145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5ef411ad932291d7733fe7188a1515b1db7bd6e69222a13929cdc5315d21fb0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:44 GMT
COPY file:8c9aab4f95afee2664d9af10e60d1e6241079c267ef6db906c1a8e4d9c327d3e in /bin/registry 
# Fri, 08 Mar 2019 02:46:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:45 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:45 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:219d1d2b68397401e2f7ba6b7cf71f850172eb7773d1a66cadaa250aa7ca404f`  
		Last Modified: Fri, 08 Mar 2019 02:47:14 GMT  
		Size: 6.3 MB (6265226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f802bbc165b87e84687d4835150add901f8812c9dc5ca1d0223d2a3b3a5c90`  
		Last Modified: Fri, 08 Mar 2019 02:47:11 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f5d441a35a47a6860b6c8cf67e6d2f45df9663f1ab1937770dfcb28f13e32e9`  
		Last Modified: Fri, 08 Mar 2019 02:47:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.6.2` - linux; arm variant v6

```console
$ docker pull registry@sha256:f49cfb03f00c20108978b27d0d9585d9a778a70aea802aa83d54c75719dcead2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8489659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d071717961264862ddec0ce38066cc504bf3219b7723c6858e35785f797b86`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 04 Jan 2019 08:50:48 GMT
COPY file:8302079be0274f86692a54ea96e6a85c0358d32eaff7762cad1bfd969ef3b890 in /bin/registry 
# Fri, 04 Jan 2019 08:50:49 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 08:50:49 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 08:50:50 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 08:50:50 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 08:50:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 08:50:51 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a274906c14ad9eafa6feccbbc0ae7c2c326c972456a0d3368f51463819f22276`  
		Last Modified: Fri, 04 Jan 2019 08:51:13 GMT  
		Size: 5.7 MB (5720658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4bccc4ea127b49ee7a03d817709ba8dc1b6b0fe922fdee7d87ab2d0c12d5e6`  
		Last Modified: Fri, 04 Jan 2019 08:51:11 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcef280cfd6870afa91deadc9f26768885d9421f73e82af39c0d049e434fca8`  
		Last Modified: Fri, 04 Jan 2019 08:51:11 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.6.2` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:ffa2476000e154e84e734b2026724e9371a06f2c48a3fb5ee1473f920fd3593a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8476256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2cd40fa292a79e4c34ff8aebcb82cc6d7daca86b5628df6273f7f0150d56417`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 04 Jan 2019 09:59:29 GMT
COPY file:1a8b61aae84a4d8472a425e9ca5117d848facaeb3ae652f2c7f74476ecab01ff in /bin/registry 
# Fri, 04 Jan 2019 09:59:31 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 09:59:33 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 09:59:37 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 09:59:39 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 09:59:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 09:59:41 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c496f68fd1fe33c72786e5219a2a4c6a2938b713987b962daf0e307f9404e8`  
		Last Modified: Fri, 04 Jan 2019 10:00:13 GMT  
		Size: 5.8 MB (5772710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67909357953c83e31db9b6af8f3a2eb107d0dbe7bbdc11fe460eeb7ac73bb664`  
		Last Modified: Fri, 04 Jan 2019 10:00:10 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9beda1193d797ca1343e8728a51fa094a8adeedd97ce465d3333929efdaf5c4`  
		Last Modified: Fri, 04 Jan 2019 10:00:10 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.7`

```console
$ docker pull registry@sha256:76c8ad83dd5afc9a2e71f96f0dd9cdab2dce793e612e3160f8e7a09a48d0d949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.7` - linux; amd64

```console
$ docker pull registry@sha256:b1165286043f2745f45ea637873d61939bff6d9a59f76539d6228abf79f87774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32a97de94e13d29835a19851acd6cbc7979d1d50f703725541e44bb89a1ce91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:38 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:38 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d33bcb37f53c65d2678796a458525d291c18058ff65c137d0aea45849e3f14`  
		Last Modified: Fri, 08 Mar 2019 02:47:05 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc091c171595794b2c72071946d2e34c0ecbc00de8b5f8a80dda0f7dfc801`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4541f6d3db6307e43bad1ca823a3221d4c2689bcae8bbd8a312371815e1d1bf`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.7` - linux; arm variant v6

```console
$ docker pull registry@sha256:e260d294115782db86519209ffd3d716ad117fb4634702adc29471371b1b2874
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9160088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47301c08109a7ef3b0d1ccea878cf3586e1e0d9583c3d34f0ec0a8a9c63f9ec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 08:49:43 GMT
COPY file:29c6c1625420a558a03cc7ed253192f8138cba6212b64e30217fb6488af668e2 in /bin/registry 
# Sat, 19 Jan 2019 08:49:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 08:49:44 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 08:49:45 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 08:49:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 08:49:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448571c9cbd3383de09b4eeeb40b510980e9a6dcc94077738128cb1c7a762eeb`  
		Last Modified: Sat, 19 Jan 2019 08:50:02 GMT  
		Size: 6.4 MB (6391085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1518296346a8248efa428d6c5cf19734bd90db1081f86455bacb808c808594`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4a7614d965d7a96a2e87f2d54aa7042c83b5349c10992b3c925ec37437472a`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.7` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:0ba428e5b215e9f2786809c98b5f70b64e950b0a00da26285dee17496984000f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8943741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00731f8b1297314c8355fdb858c315fc138614cb758acf32bf6c5f52b3c2f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:51a441e6eceff49ef32609e7070b64e8d5690648e4f915cc825274e6fe37aed2 in /bin/registry 
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 10:46:38 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 10:46:39 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 10:46:40 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 10:46:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 10:46:42 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e23d407034f8a514864387e2bcc99fd2909bd12a14af1d9205c62e9fa3c14`  
		Last Modified: Sat, 19 Jan 2019 10:47:00 GMT  
		Size: 6.2 MB (6240198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b1cc40711eaf8ab384010e17c517cc41cdb42c428d2b1506dc5db9508c654`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee47d89f4b8888d4b9b6955a9927affaea2a62a8063b49dad6f729cc8f3a5cf`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.7.1`

```console
$ docker pull registry@sha256:76c8ad83dd5afc9a2e71f96f0dd9cdab2dce793e612e3160f8e7a09a48d0d949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.7.1` - linux; amd64

```console
$ docker pull registry@sha256:b1165286043f2745f45ea637873d61939bff6d9a59f76539d6228abf79f87774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32a97de94e13d29835a19851acd6cbc7979d1d50f703725541e44bb89a1ce91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:38 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:38 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d33bcb37f53c65d2678796a458525d291c18058ff65c137d0aea45849e3f14`  
		Last Modified: Fri, 08 Mar 2019 02:47:05 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc091c171595794b2c72071946d2e34c0ecbc00de8b5f8a80dda0f7dfc801`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4541f6d3db6307e43bad1ca823a3221d4c2689bcae8bbd8a312371815e1d1bf`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.7.1` - linux; arm variant v6

```console
$ docker pull registry@sha256:e260d294115782db86519209ffd3d716ad117fb4634702adc29471371b1b2874
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9160088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47301c08109a7ef3b0d1ccea878cf3586e1e0d9583c3d34f0ec0a8a9c63f9ec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 08:49:43 GMT
COPY file:29c6c1625420a558a03cc7ed253192f8138cba6212b64e30217fb6488af668e2 in /bin/registry 
# Sat, 19 Jan 2019 08:49:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 08:49:44 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 08:49:45 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 08:49:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 08:49:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448571c9cbd3383de09b4eeeb40b510980e9a6dcc94077738128cb1c7a762eeb`  
		Last Modified: Sat, 19 Jan 2019 08:50:02 GMT  
		Size: 6.4 MB (6391085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1518296346a8248efa428d6c5cf19734bd90db1081f86455bacb808c808594`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4a7614d965d7a96a2e87f2d54aa7042c83b5349c10992b3c925ec37437472a`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:2.7.1` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:0ba428e5b215e9f2786809c98b5f70b64e950b0a00da26285dee17496984000f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8943741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00731f8b1297314c8355fdb858c315fc138614cb758acf32bf6c5f52b3c2f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:51a441e6eceff49ef32609e7070b64e8d5690648e4f915cc825274e6fe37aed2 in /bin/registry 
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 10:46:38 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 10:46:39 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 10:46:40 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 10:46:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 10:46:42 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e23d407034f8a514864387e2bcc99fd2909bd12a14af1d9205c62e9fa3c14`  
		Last Modified: Sat, 19 Jan 2019 10:47:00 GMT  
		Size: 6.2 MB (6240198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b1cc40711eaf8ab384010e17c517cc41cdb42c428d2b1506dc5db9508c654`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee47d89f4b8888d4b9b6955a9927affaea2a62a8063b49dad6f729cc8f3a5cf`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:76c8ad83dd5afc9a2e71f96f0dd9cdab2dce793e612e3160f8e7a09a48d0d949
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:b1165286043f2745f45ea637873d61939bff6d9a59f76539d6228abf79f87774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f32a97de94e13d29835a19851acd6cbc7979d1d50f703725541e44bb89a1ce91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:46:37 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 08 Mar 2019 02:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 08 Mar 2019 02:46:38 GMT
VOLUME [/var/lib/registry]
# Fri, 08 Mar 2019 02:46:38 GMT
EXPOSE 5000
# Fri, 08 Mar 2019 02:46:38 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 08 Mar 2019 02:46:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Mar 2019 02:46:39 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc8e0bb44dfaefdc7f0d0ce35f7bcb5bd2b91467a0ad7501499e34de27e3ee4`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 627.2 KB (627158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d33bcb37f53c65d2678796a458525d291c18058ff65c137d0aea45849e3f14`  
		Last Modified: Fri, 08 Mar 2019 02:47:05 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8afc091c171595794b2c72071946d2e34c0ecbc00de8b5f8a80dda0f7dfc801`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 371.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4541f6d3db6307e43bad1ca823a3221d4c2689bcae8bbd8a312371815e1d1bf`  
		Last Modified: Fri, 08 Mar 2019 02:47:03 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:latest` - linux; arm variant v6

```console
$ docker pull registry@sha256:e260d294115782db86519209ffd3d716ad117fb4634702adc29471371b1b2874
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.2 MB (9160088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47301c08109a7ef3b0d1ccea878cf3586e1e0d9583c3d34f0ec0a8a9c63f9ec`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 08:50:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 08:49:43 GMT
COPY file:29c6c1625420a558a03cc7ed253192f8138cba6212b64e30217fb6488af668e2 in /bin/registry 
# Sat, 19 Jan 2019 08:49:44 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 08:49:44 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 08:49:45 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 08:49:45 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 08:49:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 08:49:46 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e70fd9979c0504a991d402def2de49e6ac43c7933fe3bbca114557ec40d394b`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 622.4 KB (622430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448571c9cbd3383de09b4eeeb40b510980e9a6dcc94077738128cb1c7a762eeb`  
		Last Modified: Sat, 19 Jan 2019 08:50:02 GMT  
		Size: 6.4 MB (6391085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1518296346a8248efa428d6c5cf19734bd90db1081f86455bacb808c808594`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4a7614d965d7a96a2e87f2d54aa7042c83b5349c10992b3c925ec37437472a`  
		Last Modified: Sat, 19 Jan 2019 08:50:00 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:latest` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:0ba428e5b215e9f2786809c98b5f70b64e950b0a00da26285dee17496984000f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8943741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00731f8b1297314c8355fdb858c315fc138614cb758acf32bf6c5f52b3c2f914`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 04 Jan 2019 09:59:14 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:51a441e6eceff49ef32609e7070b64e8d5690648e4f915cc825274e6fe37aed2 in /bin/registry 
# Sat, 19 Jan 2019 10:46:37 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Sat, 19 Jan 2019 10:46:38 GMT
VOLUME [/var/lib/registry]
# Sat, 19 Jan 2019 10:46:39 GMT
EXPOSE 5000
# Sat, 19 Jan 2019 10:46:40 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Sat, 19 Jan 2019 10:46:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 19 Jan 2019 10:46:42 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b07057daa1a5f13dc8cadd4629456cb891b0f9a6326cbc4dad7c28c13ab7e75`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 602.9 KB (602946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e23d407034f8a514864387e2bcc99fd2909bd12a14af1d9205c62e9fa3c14`  
		Last Modified: Sat, 19 Jan 2019 10:47:00 GMT  
		Size: 6.2 MB (6240198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2b1cc40711eaf8ab384010e17c517cc41cdb42c428d2b1506dc5db9508c654`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee47d89f4b8888d4b9b6955a9927affaea2a62a8063b49dad6f729cc8f3a5cf`  
		Last Modified: Sat, 19 Jan 2019 10:46:57 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

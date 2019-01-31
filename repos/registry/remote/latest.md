## `registry:latest`

```console
$ docker pull registry@sha256:870474507964d8e7d8c3b53bcfa738e3356d2747a42adad26d0d81ef4479eb1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:b3a47e8f41082f4ea57332411ba33abd743a80aced87929ffbb7e5a3098091c0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0eed8dad114db55d81c870efb8c148026da4a0f61dc7710c053da55f9604849`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Wed, 30 Jan 2019 23:14:35 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Wed, 30 Jan 2019 23:14:36 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Wed, 30 Jan 2019 23:14:36 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Wed, 30 Jan 2019 23:14:36 GMT
VOLUME [/var/lib/registry]
# Wed, 30 Jan 2019 23:14:36 GMT
EXPOSE 5000
# Wed, 30 Jan 2019 23:14:37 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Wed, 30 Jan 2019 23:14:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 30 Jan 2019 23:14:37 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:046e2d030894bf549c6d587edae9ec017659e4e32d08b82431245b3ae719bd95`  
		Last Modified: Wed, 30 Jan 2019 23:15:08 GMT  
		Size: 627.1 KB (627140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:188836fddeeb46dc9540ba4571bbac1e20021f31a0d0ed15d954c30edf450464`  
		Last Modified: Wed, 30 Jan 2019 23:15:09 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8327445377470a020be1cda0a9c0c3ee75a66cf28d2db41494db02651ecd50a7`  
		Last Modified: Wed, 30 Jan 2019 23:15:07 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceea07e80be4bb4941253cf1c886775de26101d016bd66176c8853bc00a46e1`  
		Last Modified: Wed, 30 Jan 2019 23:15:07 GMT  
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

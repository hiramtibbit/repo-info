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
$ docker pull registry@sha256:852f5715a9c8d536a052f7b123d5087a7c899433053887136790a948cb1b81ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2` - linux; amd64

```console
$ docker pull registry@sha256:adf09bd6373590fddf81e194b2ff4a5ee19d2a4e2f7ad34a16b3252460df3a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116995fd662403e7ac3fd9dd698f95a7f9c8c3c321aa34cb7090a8721d68573a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 18 Jan 2019 21:19:58 GMT
VOLUME [/var/lib/registry]
# Fri, 18 Jan 2019 21:19:58 GMT
EXPOSE 5000
# Fri, 18 Jan 2019 21:19:59 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 18 Jan 2019 21:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 21:19:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45793cf0ff93a088cfdc117193f8f718cda2d1cd701073ae94d21a5431cd82c0`  
		Last Modified: Fri, 18 Jan 2019 21:20:12 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eadb9e7675b906ca9998f8fb6cf3b110553c2fa60c1a9e25c7cb6efdbbe8d5`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2356bbbed3631077dea53b3aa269f62d14e279d24efa1df25da15cb3a281d4`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5`

```console
$ docker pull registry@sha256:ae6aa1d3a2fe55d6c3d77ab04e1c4435fa75b63ddf9b993ce67929aa2538227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5` - linux; amd64

```console
$ docker pull registry@sha256:a4bc0abdee35c998d93e04152de1262bf6d87f887d91b8317b9064f96710e275
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea7169bb77294b1024cac481ad93fe51960c6d840b673a07099d8f25506c392`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:07 GMT
ADD file:d0f86b3b008f481fa0a392252cf88a28c3405524f4f1dd184dc16efc67304dc3 in / 
# Fri, 21 Dec 2018 00:23:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 05:07:39 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 21 Dec 2018 05:07:47 GMT
COPY file:dad1579b3d1e7e161e3ae1fad0a03290db463eccc4fa734f7bef97339056b6c5 in /bin/registry 
# Fri, 21 Dec 2018 05:07:47 GMT
COPY file:b7a0d89d5453eb08c1191ef153b7fc0361ce8e6c36737faf86141d23b0744321 in /etc/docker/registry/config.yml 
# Fri, 21 Dec 2018 05:07:47 GMT
VOLUME [/var/lib/registry]
# Fri, 21 Dec 2018 05:07:47 GMT
EXPOSE 5000
# Fri, 21 Dec 2018 05:07:48 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 21 Dec 2018 05:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 05:07:48 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:456f9d0bf1d1b93787b454d26862316abc1971dc2c46007134d96dba74f611ec`  
		Last Modified: Fri, 21 Dec 2018 00:23:59 GMT  
		Size: 2.4 MB (2387861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f3f37a05d20e0e0fad9d7f7dc7fbc8246c57fe82a85b620e4e157b5ad608d7`  
		Last Modified: Fri, 21 Dec 2018 05:08:02 GMT  
		Size: 2.0 MB (2034868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e5801bde3cf2115ad8742d02776473d76a21fb0cb4c33a70f60d2463712d09`  
		Last Modified: Fri, 21 Dec 2018 05:08:16 GMT  
		Size: 6.8 MB (6791684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b697a8e9503ec4de13be6c85603b90ecfd90e22ba204d27e4143cdbc75372b67`  
		Last Modified: Fri, 21 Dec 2018 05:08:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f560a6e3ba7c3d58d4d4babb85ae2bddedd21f4704928e1a8409db98d6df44f`  
		Last Modified: Fri, 21 Dec 2018 05:08:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.5.2`

```console
$ docker pull registry@sha256:ae6aa1d3a2fe55d6c3d77ab04e1c4435fa75b63ddf9b993ce67929aa2538227a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.5.2` - linux; amd64

```console
$ docker pull registry@sha256:a4bc0abdee35c998d93e04152de1262bf6d87f887d91b8317b9064f96710e275
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11214996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aea7169bb77294b1024cac481ad93fe51960c6d840b673a07099d8f25506c392`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:07 GMT
ADD file:d0f86b3b008f481fa0a392252cf88a28c3405524f4f1dd184dc16efc67304dc3 in / 
# Fri, 21 Dec 2018 00:23:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 05:07:39 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 21 Dec 2018 05:07:47 GMT
COPY file:dad1579b3d1e7e161e3ae1fad0a03290db463eccc4fa734f7bef97339056b6c5 in /bin/registry 
# Fri, 21 Dec 2018 05:07:47 GMT
COPY file:b7a0d89d5453eb08c1191ef153b7fc0361ce8e6c36737faf86141d23b0744321 in /etc/docker/registry/config.yml 
# Fri, 21 Dec 2018 05:07:47 GMT
VOLUME [/var/lib/registry]
# Fri, 21 Dec 2018 05:07:47 GMT
EXPOSE 5000
# Fri, 21 Dec 2018 05:07:48 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 21 Dec 2018 05:07:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 05:07:48 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:456f9d0bf1d1b93787b454d26862316abc1971dc2c46007134d96dba74f611ec`  
		Last Modified: Fri, 21 Dec 2018 00:23:59 GMT  
		Size: 2.4 MB (2387861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7f3f37a05d20e0e0fad9d7f7dc7fbc8246c57fe82a85b620e4e157b5ad608d7`  
		Last Modified: Fri, 21 Dec 2018 05:08:02 GMT  
		Size: 2.0 MB (2034868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e5801bde3cf2115ad8742d02776473d76a21fb0cb4c33a70f60d2463712d09`  
		Last Modified: Fri, 21 Dec 2018 05:08:16 GMT  
		Size: 6.8 MB (6791684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b697a8e9503ec4de13be6c85603b90ecfd90e22ba204d27e4143cdbc75372b67`  
		Last Modified: Fri, 21 Dec 2018 05:08:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f560a6e3ba7c3d58d4d4babb85ae2bddedd21f4704928e1a8409db98d6df44f`  
		Last Modified: Fri, 21 Dec 2018 05:08:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.6`

```console
$ docker pull registry@sha256:ed278981c2917d5765778aaea0a9bd2ecad5935ab0eb993653fa3f2b8b405a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.6` - linux; amd64

```console
$ docker pull registry@sha256:55902cd7511f2b82deea3dddab55f79e251aed2c58a2130c804dbe7d9d169eea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9099363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0637679dad1a77bafcf75e32487642e40b6aa0b277bec429aefaa5bf39c524a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 03 Jan 2019 23:27:34 GMT
COPY file:8c9aab4f95afee2664d9af10e60d1e6241079c267ef6db906c1a8e4d9c327d3e in /bin/registry 
# Thu, 03 Jan 2019 23:27:34 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Thu, 03 Jan 2019 23:27:34 GMT
VOLUME [/var/lib/registry]
# Thu, 03 Jan 2019 23:27:35 GMT
EXPOSE 5000
# Thu, 03 Jan 2019 23:27:35 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Thu, 03 Jan 2019 23:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Jan 2019 23:27:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bfb813cb765ee546bc643414a46abcdc8b8dffe50d1e721a7cce055a8a48a1`  
		Last Modified: Thu, 03 Jan 2019 23:27:53 GMT  
		Size: 6.3 MB (6265237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765a1878533b9e08eb0c5a2cae1bcc99e6581d49b2587422fc8d8489fa2a23a`  
		Last Modified: Thu, 03 Jan 2019 23:27:51 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a088edd91310c7e4258c5e8a343b824e14fbb1b53a5298ccf513450fc6c1a4b`  
		Last Modified: Thu, 03 Jan 2019 23:27:51 GMT  
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
$ docker pull registry@sha256:ed278981c2917d5765778aaea0a9bd2ecad5935ab0eb993653fa3f2b8b405a35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:2.6.2` - linux; amd64

```console
$ docker pull registry@sha256:55902cd7511f2b82deea3dddab55f79e251aed2c58a2130c804dbe7d9d169eea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9099363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0637679dad1a77bafcf75e32487642e40b6aa0b277bec429aefaa5bf39c524a4`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 03 Jan 2019 23:27:34 GMT
COPY file:8c9aab4f95afee2664d9af10e60d1e6241079c267ef6db906c1a8e4d9c327d3e in /bin/registry 
# Thu, 03 Jan 2019 23:27:34 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Thu, 03 Jan 2019 23:27:34 GMT
VOLUME [/var/lib/registry]
# Thu, 03 Jan 2019 23:27:35 GMT
EXPOSE 5000
# Thu, 03 Jan 2019 23:27:35 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Thu, 03 Jan 2019 23:27:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Jan 2019 23:27:35 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1bfb813cb765ee546bc643414a46abcdc8b8dffe50d1e721a7cce055a8a48a1`  
		Last Modified: Thu, 03 Jan 2019 23:27:53 GMT  
		Size: 6.3 MB (6265237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6765a1878533b9e08eb0c5a2cae1bcc99e6581d49b2587422fc8d8489fa2a23a`  
		Last Modified: Thu, 03 Jan 2019 23:27:51 GMT  
		Size: 369.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a088edd91310c7e4258c5e8a343b824e14fbb1b53a5298ccf513450fc6c1a4b`  
		Last Modified: Thu, 03 Jan 2019 23:27:51 GMT  
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
$ docker pull registry@sha256:852f5715a9c8d536a052f7b123d5087a7c899433053887136790a948cb1b81ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.7` - linux; amd64

```console
$ docker pull registry@sha256:adf09bd6373590fddf81e194b2ff4a5ee19d2a4e2f7ad34a16b3252460df3a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116995fd662403e7ac3fd9dd698f95a7f9c8c3c321aa34cb7090a8721d68573a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 18 Jan 2019 21:19:58 GMT
VOLUME [/var/lib/registry]
# Fri, 18 Jan 2019 21:19:58 GMT
EXPOSE 5000
# Fri, 18 Jan 2019 21:19:59 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 18 Jan 2019 21:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 21:19:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45793cf0ff93a088cfdc117193f8f718cda2d1cd701073ae94d21a5431cd82c0`  
		Last Modified: Fri, 18 Jan 2019 21:20:12 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eadb9e7675b906ca9998f8fb6cf3b110553c2fa60c1a9e25c7cb6efdbbe8d5`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2356bbbed3631077dea53b3aa269f62d14e279d24efa1df25da15cb3a281d4`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:2.7.1`

```console
$ docker pull registry@sha256:852f5715a9c8d536a052f7b123d5087a7c899433053887136790a948cb1b81ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:2.7.1` - linux; amd64

```console
$ docker pull registry@sha256:adf09bd6373590fddf81e194b2ff4a5ee19d2a4e2f7ad34a16b3252460df3a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116995fd662403e7ac3fd9dd698f95a7f9c8c3c321aa34cb7090a8721d68573a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 18 Jan 2019 21:19:58 GMT
VOLUME [/var/lib/registry]
# Fri, 18 Jan 2019 21:19:58 GMT
EXPOSE 5000
# Fri, 18 Jan 2019 21:19:59 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 18 Jan 2019 21:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 21:19:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45793cf0ff93a088cfdc117193f8f718cda2d1cd701073ae94d21a5431cd82c0`  
		Last Modified: Fri, 18 Jan 2019 21:20:12 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eadb9e7675b906ca9998f8fb6cf3b110553c2fa60c1a9e25c7cb6efdbbe8d5`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2356bbbed3631077dea53b3aa269f62d14e279d24efa1df25da15cb3a281d4`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `registry:latest`

```console
$ docker pull registry@sha256:852f5715a9c8d536a052f7b123d5087a7c899433053887136790a948cb1b81ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:adf09bd6373590fddf81e194b2ff4a5ee19d2a4e2f7ad34a16b3252460df3a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9658053 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:116995fd662403e7ac3fd9dd698f95a7f9c8c3c321aa34cb7090a8721d68573a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:21256ff7df5369f7ad2e19c6d020a644303aded200bdbec4d46648f38d55df78 in /bin/registry 
# Fri, 18 Jan 2019 21:19:58 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 18 Jan 2019 21:19:58 GMT
VOLUME [/var/lib/registry]
# Fri, 18 Jan 2019 21:19:58 GMT
EXPOSE 5000
# Fri, 18 Jan 2019 21:19:59 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 18 Jan 2019 21:19:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 18 Jan 2019 21:19:59 GMT
CMD ["/etc/docker/registry/config.yml"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecb9b11388e6647816c02447f3a63bdec0250928a103cf7bd8420e79f4b6643`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 626.5 KB (626518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45793cf0ff93a088cfdc117193f8f718cda2d1cd701073ae94d21a5431cd82c0`  
		Last Modified: Fri, 18 Jan 2019 21:20:12 GMT  
		Size: 6.8 MB (6823927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7eadb9e7675b906ca9998f8fb6cf3b110553c2fa60c1a9e25c7cb6efdbbe8d5`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 370.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2356bbbed3631077dea53b3aa269f62d14e279d24efa1df25da15cb3a281d4`  
		Last Modified: Fri, 18 Jan 2019 21:20:11 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

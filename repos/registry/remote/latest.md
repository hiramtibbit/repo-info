## `registry:latest`

```console
$ docker pull registry@sha256:1cd9409a311350c3072fe510b52046f104416376c126a479cef9a4dfe692cf57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `registry:latest` - linux; amd64

```console
$ docker pull registry@sha256:d6df97c93a0b8db7b355e08d54fbf38e46667eaa251cd5a90ddf0e53c35375b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9127059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33fbbf4a24e52aca096ac8161eeb6963d61e734c48131ea491cf10aa32de9aae`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["\/etc\/docker\/registry\/config.yml"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Thu, 03 Jan 2019 23:27:29 GMT
RUN set -ex     && apk add --no-cache ca-certificates apache2-utils
# Thu, 03 Jan 2019 23:27:29 GMT
COPY file:42a048d6e702ca4c1849be9b2dc990ccca86c02a3edd55fc3c2baca595341cfa in /bin/registry 
# Thu, 03 Jan 2019 23:27:30 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Thu, 03 Jan 2019 23:27:30 GMT
VOLUME [/var/lib/registry]
# Thu, 03 Jan 2019 23:27:30 GMT
EXPOSE 5000
# Thu, 03 Jan 2019 23:27:30 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Thu, 03 Jan 2019 23:27:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 03 Jan 2019 23:27:31 GMT
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
	-	`sha256:918b3ddb961319c4b9e6e8b5af1e9815e028e6a2844435afad97e7d5df9e3fff`  
		Last Modified: Thu, 03 Jan 2019 23:27:47 GMT  
		Size: 6.3 MB (6292930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa847785533d4eab2abf866859152ae38f13fa47390cafad57d4d95b73d7c94`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adee6f5462691f6b6b70449069b3e2905d1170ef6673d8d749956bafeadba36d`  
		Last Modified: Thu, 03 Jan 2019 23:27:46 GMT  
		Size: 213.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:latest` - linux; arm variant v6

```console
$ docker pull registry@sha256:96c410a3684fe621a2cbed8f6ba193dd5b0a994fd239f2af6229ee4e65a6cc7b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8657451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48f88316937f8005ace5850eb8b2f9a2029e9d642739beaba77be51ed949e46`
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
# Fri, 04 Jan 2019 08:50:36 GMT
COPY file:ab495c353527b7da833fb44eed130877ae8c5d7ebe8a3afe08af1f6e31a398bf in /bin/registry 
# Fri, 04 Jan 2019 08:50:36 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 08:50:37 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 08:50:37 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 08:50:37 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 08:50:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 08:50:38 GMT
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
	-	`sha256:d2a636b6f701c90a23a0fdedb63480aa6e53a1ef028b9acf6feb2ab58a3786b4`  
		Last Modified: Fri, 04 Jan 2019 08:51:03 GMT  
		Size: 5.9 MB (5888451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97f7d0add7bbc0cc0635617b1825d76dac68382944516a8d87fb043dc16d409`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c508e005adcd61c619064ae9224e6226ea45fd0ed0cce7f52626c6739456f55d`  
		Last Modified: Fri, 04 Jan 2019 08:51:01 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `registry:latest` - linux; arm64 variant v8

```console
$ docker pull registry@sha256:32b7b2a209962b8e37e676469b2770e5e4cb7daf45dbe71952c41802f52234c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8457846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca2ddc1c5d39bf00bf02bec45fb614122956b12778bbb258c12455f6c32220e`
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
# Fri, 04 Jan 2019 09:59:15 GMT
COPY file:fd2d7bc8705402a37c3c374cba7d1465a84e20427014d8f409cd939df1ab405f in /bin/registry 
# Fri, 04 Jan 2019 09:59:16 GMT
COPY file:4544cc1555469403b322faecc1cf1ca584667c43a6a60b17300f97840c04196e in /etc/docker/registry/config.yml 
# Fri, 04 Jan 2019 09:59:17 GMT
VOLUME [/var/lib/registry]
# Fri, 04 Jan 2019 09:59:19 GMT
EXPOSE 5000
# Fri, 04 Jan 2019 09:59:20 GMT
COPY file:507caa54f88c1f3862e5876e09a108b2083630ba24c57ad124e356a2de861d62 in /entrypoint.sh 
# Fri, 04 Jan 2019 09:59:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 Jan 2019 09:59:23 GMT
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
	-	`sha256:3ed3807221bb3ad50d0f1dc6e3217dbfc736904527e889dde5c21d09f2ff0db7`  
		Last Modified: Fri, 04 Jan 2019 09:59:58 GMT  
		Size: 5.8 MB (5754299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2238f667b955bee1ccdf838007288a0833c8e3024c179c417b059990120eea35`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 372.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08a29f99d0aad4f84de5d435df85563ab96b8b90a58a92ef9ff9fec8073a3c4`  
		Last Modified: Fri, 04 Jan 2019 09:59:56 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

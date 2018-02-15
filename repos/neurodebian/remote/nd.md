## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:df13f3982a7e970bcff3c38944cbbdfcf6f8b212d8e7dbf5336ed87f4490ea62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:938294e32552c69409a8b3defcab2a3f1e2aae470be4b5b34c4c1fc8d77e9202
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.4 MB (57423100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a78e98e38a29027d17af69d860be6896501443a4883d3fd79a5dc4ceae53a0c`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:54:31 GMT
ADD file:8fa9c86e024ea7f184db6b16d250b62a03f4a3a60aaaf2bd8cc033c817e9477e in / 
# Thu, 15 Feb 2018 01:54:32 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:22:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:22:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 15 Feb 2018 07:22:20 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
```

-	Layers:
	-	`sha256:5364a50cbd6ed670b0a6d395e61526831db377e95d195e2557b2397af9773ed7`  
		Last Modified: Thu, 15 Feb 2018 02:23:04 GMT  
		Size: 47.9 MB (47869173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee658b2acc0311425f3b8a6a8f3bb4e7cb5a59ebf46eb8c2346836aa0f4705c`  
		Last Modified: Thu, 15 Feb 2018 07:48:51 GMT  
		Size: 9.6 MB (9550532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:938b1c6eb7912ec43475c79ed301196d4c3e75a4bded44b7dd087d4c329d5cc6`  
		Last Modified: Thu, 15 Feb 2018 07:48:49 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b13851849fcadeb42b3225b46599fca230395beb003f9a8f26f697aa74d9a565`  
		Last Modified: Thu, 15 Feb 2018 07:48:49 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

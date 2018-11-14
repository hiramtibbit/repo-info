## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:c3eb8abe2fde32b4333b4fe9efdd698afabf4c49ba07784372710b813c802c8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

```console
$ docker pull neurodebian@sha256:ec67dbf87c0f885cc56a4c9d87abddaba19f33d7c0e857bce3551fd9477d3ba0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52164781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54bfff400bdc6385df9a20af801a0b1587f23514666026434ed2a02977f0ca8d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:54:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:55:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 16 Oct 2018 06:55:05 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Nov 2018 02:25:51 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b323f9a9fdf6eb0b3b4a40e3e969f18def6c12bd5ec49949a0d33cc6e48d811b`  
		Last Modified: Tue, 16 Oct 2018 06:58:07 GMT  
		Size: 6.6 MB (6561859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9294e84bac26e93e46e519dec54fb88e8ef10d1845aba4c8b62d8d1f78290df9`  
		Last Modified: Tue, 16 Oct 2018 06:58:06 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:474b78678a62f392d7a8c718849bf769ea1738889df46de3275f933617d32808`  
		Last Modified: Tue, 16 Oct 2018 06:58:06 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e955ce81ae0db65ddb0957ffbb6273b241213feaf83b85598fe85c97fb618ca7`  
		Last Modified: Wed, 14 Nov 2018 02:31:18 GMT  
		Size: 289.6 KB (289592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

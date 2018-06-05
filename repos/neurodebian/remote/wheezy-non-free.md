## `neurodebian:wheezy-non-free`

```console
$ docker pull neurodebian@sha256:a210d994c5df88b7d43a1e193c2043c4aff81f1a28c8b594fc5d81cff844bcc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:4fc5b077e20211dee1acc4f4d7be0cb5ef29f0074760549539c7fd04820e48fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39343162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:977a81a9b51ea8686b4b064ae18d846ad4fc62bf98678eada73764385c087c10`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:00:35 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:00:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Jun 2018 22:00:37 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Jun 2018 22:00:39 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:044c8c59760df5b8d919986cf8edb594d1dbc118fe2474d5f0d1cea5368391b1`  
		Last Modified: Tue, 05 Jun 2018 22:04:09 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248107e7dacd8feb8fc178904ac21df15b2a6f67de6d189f9e3f021d09579508`  
		Last Modified: Tue, 05 Jun 2018 22:04:09 GMT  
		Size: 3.2 KB (3189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac25d7993f00a4b37ca21b34552fcff1778d3e309fd7c2633b60d9145149ab1`  
		Last Modified: Tue, 05 Jun 2018 22:04:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3776b17628896545bb5334d81ea535329ebc0a8ad655ffc81a057bfe6a0b6de`  
		Last Modified: Tue, 05 Jun 2018 22:04:17 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

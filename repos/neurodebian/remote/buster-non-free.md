## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:d65f3a9aa41c1400160dd60eabe9f4d85883a104a6badbe89214d8463369ffdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:3d0d4618018dea1fb99c228cd35ab1de2e68420ae770c455eff65f325a31e532
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61164285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae2b45b4f3c88a5c0c0a34ad4848c4809430e654bc313b3e262e528a91da17d8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:37 GMT
ADD file:e7b0b4ed23ac0ce3e8c4d65daa6a8896533c92b2dd167ba2c15c7181354d64b6 in / 
# Mon, 10 Jun 2019 23:21:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:58:14 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:58:15 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 11 Jun 2019 06:58:17 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 11 Jun 2019 06:58:24 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:58:32 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:478cd0aa93c0da2489a29b95d43a21a942cece28ecb0ba0f99770f52eb8ee3dc`  
		Last Modified: Mon, 10 Jun 2019 23:25:52 GMT  
		Size: 50.4 MB (50379147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56c58f323a29029c888ccea0ba8156a7df0882a0941a3c6541d4553468abbee9`  
		Last Modified: Tue, 11 Jun 2019 06:59:54 GMT  
		Size: 10.5 MB (10479728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50a5546b8606e508819c8455dd9fc22376015ac0b9ca49c080b534a198241546`  
		Last Modified: Tue, 11 Jun 2019 06:59:52 GMT  
		Size: 3.1 KB (3148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2a2503f0bcd799e6e533e4104b8a0f73cbb42aa9493dcc360b20a6c638bb33b`  
		Last Modified: Tue, 11 Jun 2019 06:59:52 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96859881fc20475566316406ae3a026f26eff289a8b655de7fddcae9978ae272`  
		Last Modified: Tue, 11 Jun 2019 06:59:52 GMT  
		Size: 301.7 KB (301651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a562660e637279ed99a311f14803ec6c8ce9d277c00522cbb700071f09aed63e`  
		Last Modified: Tue, 11 Jun 2019 06:59:58 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:jessie-non-free`

```console
$ docker pull neurodebian@sha256:7b30406a7d629340d20243c24efc7b8aa82c876d08806d498ab7b4e7359eddba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:dc4584038aa1e89eefd1797a22e068f4f01e891fcc11a214378a9296850e96f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54691353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b10ab738a9bc6cf60d55b875ef5664f92724ba11f325eed5ec49f35c3ec9caf`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:09 GMT
ADD file:6f4dbeacd2c7a48941d1b7aacc0e881df9cd6e3c2bcc54665038e0f2e29c7ac1 in / 
# Mon, 10 Jun 2019 23:22:14 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:54:06 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:54:43 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 11 Jun 2019 06:54:44 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 11 Jun 2019 06:57:06 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:57:18 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:9811207f4ebad5e666eddf6e1684e4eabe16efc94008f77fc6fd17f02c583d17`  
		Last Modified: Mon, 10 Jun 2019 23:26:18 GMT  
		Size: 54.4 MB (54385835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddfe9151b2ad2309aff17cff9cd0df1d94264beeb21df5e6dbdd2f1abaa68763`  
		Last Modified: Tue, 11 Jun 2019 06:59:33 GMT  
		Size: 297.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b04894cb2c8e62226d64c5e181433e73bc5389cd40a3c1a2a454688c7bb7a96`  
		Last Modified: Tue, 11 Jun 2019 06:59:33 GMT  
		Size: 3.2 KB (3157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4b6699f4ee952ebc5e75f32927e09d30da58669ee45898684fde7992b3a1c6`  
		Last Modified: Tue, 11 Jun 2019 06:59:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32c79320e7e05934acb378e6ee72b2a7149d215020ef96475e352ef1ab9b995`  
		Last Modified: Tue, 11 Jun 2019 06:59:33 GMT  
		Size: 301.5 KB (301473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f324198ae25da6dee6b1d217f95c2f3d6e6e8c091ad28bd3d9ab874b7904949e`  
		Last Modified: Tue, 11 Jun 2019 06:59:37 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

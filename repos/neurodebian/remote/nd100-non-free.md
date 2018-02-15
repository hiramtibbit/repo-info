## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:5a02506727f90c000e8f35ecab719cb640e90ad2503547fc5e6219e1296cac1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:70aea71e6b898adec92dddab483eeb22c1fa08f84483b2f66c988648f8f59298
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.9 MB (57912678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641eda932edb06973c952aaa71e983b0f3be073fd1861544b956d27ccb0c330b`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:40:56 GMT
ADD file:e67b507f884b4af477ee927373c5138566e09b4ced5131bf4ad6017cfe300eaf in / 
# Thu, 15 Feb 2018 01:40:56 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 07:19:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 07:21:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Thu, 15 Feb 2018 07:21:07 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Thu, 15 Feb 2018 07:21:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:727adeec79df0f1e56f928e5762e52c324beb4d7f9abdd5be910b59f8eb6fc9a`  
		Last Modified: Thu, 15 Feb 2018 00:44:09 GMT  
		Size: 47.8 MB (47761075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293fb7e14e3f8014bb167abd650d9f0f0e0a2d534607f4871083556149af090e`  
		Last Modified: Thu, 15 Feb 2018 07:34:48 GMT  
		Size: 10.1 MB (10147899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3dc3165bd99377ff786a7f055cb10a4b979db95b75cea64728e53da555e3e3d`  
		Last Modified: Thu, 15 Feb 2018 07:34:45 GMT  
		Size: 3.1 KB (3150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d3878e410de6a6685941cc579eabc779a9e8ad1b514acb9af12a6b4fc698231`  
		Last Modified: Thu, 15 Feb 2018 07:34:45 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f33398121e4177a0323ab56fb7b5f98795368605ae0c82a56e828fb27da2ec`  
		Last Modified: Thu, 15 Feb 2018 07:48:16 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

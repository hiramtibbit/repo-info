## `neurodebian:stretch-non-free`

```console
$ docker pull neurodebian@sha256:026ba538d4cf9272cb8526df0701a31c615f4914240d390e677c85c38034806f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:f80fe2cb15b8a0aa8dca8999ea2551fd5093ef58b0bd9236bf153ccf285dc024
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52200800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dac09ecc9e108023ff77ed9e659b1ee9be0430273326ac2b1a832c90c2fac9f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 06:57:37 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:57:41 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 11 Jun 2019 06:57:42 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 11 Jun 2019 06:57:50 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 06:57:55 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f439e85b03ab95e342ca87fd8f75b7c763ad04acd3401f3e1b69b919db8ee579`  
		Last Modified: Tue, 11 Jun 2019 06:59:42 GMT  
		Size: 6.6 MB (6565967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c9e0a74fd51b83540d9308a76ae44acb31a22b8c77462b60f9a865fd8b5a874`  
		Last Modified: Tue, 11 Jun 2019 06:59:41 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00f1cae7ff73f6f435d7bb98e21dfb4ab157bcca852d7103b672905cc42d113b`  
		Last Modified: Tue, 11 Jun 2019 06:59:41 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a586fc470156be049ec23ae61663cfe43bd61d8b265b3b9b375371843a4055e0`  
		Last Modified: Tue, 11 Jun 2019 06:59:41 GMT  
		Size: 291.7 KB (291723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb5a0253d754a0d97d1a28339a01fab7194d5b990effeed3b2991ff6e9ea4a4c`  
		Last Modified: Tue, 11 Jun 2019 06:59:47 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

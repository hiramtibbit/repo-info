## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:c1a80bc8c23a78ad6840422bf062bfd36d22ccb8c6f47d5691774181b9c44480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:229f96d6d87e3d079311f8356c2f47c99831a6e9a85d42694cf77cfaa196fcf3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57753091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92a6721ab33e873b9cc841eb46fe7bfb8cd59e5b68894f0764224648cf907576`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:36:23 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:36:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:36:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:36:42 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ba3dc58fe975026f98db1c96f256e66358cd6da1c76ba5ea2c8a6f74ec40f5f`  
		Last Modified: Wed, 14 Mar 2018 09:42:26 GMT  
		Size: 9.6 MB (9590416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f488fa29bb231690784e5512d15dc18513482a28af8a4f1369b88d4efd9fe6da`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c759c942996312c7d64fa65e700f56784d68f4a1aadbfb0efa82fc813cb8bb89`  
		Last Modified: Wed, 14 Mar 2018 09:42:25 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4410fb5a6423ac12eb12db18aef6cecce31c156e14581248922450f5fc4796f6`  
		Last Modified: Wed, 14 Mar 2018 09:43:04 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

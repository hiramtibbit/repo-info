## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:322c5a59923b85b6a3d978b6b870e60a3d0a77a1b167317f4f841f1aecdc1396
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:de5e17963fc91065f5cbb6389d78c668c9602795e1a1f2ac4f0ec46450de982f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a242a3caf979224afbf40e4c77928273e630adc95cb402fc3017641f00bb1f27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 09:35:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 09:35:39 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 14 Mar 2018 09:35:40 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Mar 2018 09:35:56 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ce230c9f10728a779527dfa18cac47892e9ebc04287b7ad5134fddcd9c5eea5`  
		Last Modified: Wed, 14 Mar 2018 09:40:40 GMT  
		Size: 6.9 MB (6921150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9abf4720f0fa80f453840043e3f581297f283f1ec532a06d7d032042bbf54542`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86832fe67170eeaf7fc0c58cbf37049378f87e53ee5aa3aa32628d997cf22c13`  
		Last Modified: Wed, 14 Mar 2018 09:40:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d5a36a198b304130bd32274548a7a9cdbe33a5656860fd71fdfa461174143c`  
		Last Modified: Wed, 14 Mar 2018 09:41:33 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

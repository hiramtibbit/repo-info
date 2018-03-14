## `neurodebian:stretch`

```console
$ docker pull neurodebian@sha256:21b942e5f4c21c1c977c2749524dae04c3483f0ac41ad5b03df32964bc5ad412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:stretch` - linux; amd64

```console
$ docker pull neurodebian@sha256:ec2f0dd81a8952860ad8c0d6b5e693d693cd1a38fd3e5911fe1ce6efb465bd4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 MB (52059623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62df4d54ea6a4806ebff2fe3934228c8efcfd3de0df6909037fb78be96ad926`
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

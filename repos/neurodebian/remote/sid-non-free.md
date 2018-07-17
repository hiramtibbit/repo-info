## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:b34069f8fdb4158c6a7a727e69aa87ef9de1ec136c916fdb153769dc67e6bcd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:7d9f5b5acf385ff47875801199a9d2988da49a4d0d7aad8a040a6fc10df7ba8b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.5 MB (58473421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d247a09fadf7d5dea45d5e44a6b0a78b3ecbe68cee6318c719e285adff7fb1`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:24:39 GMT
ADD file:f04b64a73c29541d70cda855be7033dbd8e0b173ab11cd93458f3400fd270d85 in / 
# Tue, 17 Jul 2018 00:24:40 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:36:04 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:36:08 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 17 Jul 2018 04:36:09 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 17 Jul 2018 04:36:22 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:e367ac4072dc48836ab52faeb39e943b075e21aa02c1a88f838651b9b384de50`  
		Last Modified: Tue, 17 Jul 2018 00:39:42 GMT  
		Size: 48.7 MB (48725588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e5e306f86fbe910dfa05ec65dd719f9e7eca06e57b472535375f99c56ff2ccc`  
		Last Modified: Tue, 17 Jul 2018 04:48:16 GMT  
		Size: 9.7 MB (9744162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ddc4c5ce1c989988dbdc1b24993f608b268f1f4d13781681cfc48c054713069`  
		Last Modified: Tue, 17 Jul 2018 04:48:15 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77e314912609f787aa03f5f1e4903293b726c94ab9d8e288b70794f817f2814b`  
		Last Modified: Tue, 17 Jul 2018 04:48:15 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211cc6718d90406ac8a94526450e3ab9be57de8cac88a0dc6dc0728e3e015d6f`  
		Last Modified: Tue, 17 Jul 2018 04:48:47 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

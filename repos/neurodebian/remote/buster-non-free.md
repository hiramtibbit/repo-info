## `neurodebian:buster-non-free`

```console
$ docker pull neurodebian@sha256:fdf4db02f4f59122dc196cde611c9f03dbc1ceffaf130254ed2a0fb6129d4da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:1412014cad5a09e60a4a2544fe50c59b240fd247d8b9833d63da2c22695dd25e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61005675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b26f841e1049b2270d9f093d17bfc653edda0386b88c5f0ad8f0a99c3be5f72e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 00:01:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Apr 2019 00:59:05 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 23 Apr 2019 00:59:06 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 23 Apr 2019 00:59:11 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 23 Apr 2019 00:59:15 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdeb00deaf2f98ef3d065670fcd92521ae5912d537d21fccc4318b16b1d02126`  
		Last Modified: Wed, 27 Mar 2019 00:03:20 GMT  
		Size: 10.5 MB (10475048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b28791479fb602b80cd4812d1720f0746e920324de1f3c3309d52fbb9ef84112`  
		Last Modified: Tue, 23 Apr 2019 01:00:33 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d417d4df9b2cf4fb9f15f1d8b220077db4a159495277eb035655625572f9b5`  
		Last Modified: Tue, 23 Apr 2019 01:00:32 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83cec516c509215895b7f6a639acf08a8caf81153c4d0506ac5d04dfeee97be9`  
		Last Modified: Tue, 23 Apr 2019 01:00:33 GMT  
		Size: 297.1 KB (297098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934d12ea6d45c9ccf4e20ca3e876a4e1fefc65f311564abe3ee2e7e6b23ce7cf`  
		Last Modified: Tue, 23 Apr 2019 01:00:38 GMT  
		Size: 367.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

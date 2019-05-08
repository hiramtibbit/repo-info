## `neurodebian:jessie`

```console
$ docker pull neurodebian@sha256:62908bd99b3c8fbbf78521f8fa1a26f2e8417b5bb76858f7a364c56cf4bd6c75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie` - linux; amd64

```console
$ docker pull neurodebian@sha256:3ba42a07c8186911ed6c45f7ce053dc1a0c8d7369c118f9c5e313b6f401138ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54690868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c91ef127b2f0befe9b191a18f130118242ddaf1f0d8e728364821f8a84c7d08b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:08:02 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:08:34 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 08 May 2019 02:08:35 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 08 May 2019 02:10:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8a3007130020bcdc6052295a3a3ab064d4b8021d6497f769115da445f78621`  
		Last Modified: Wed, 08 May 2019 02:12:05 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc1e935ef3cb3da2e6e103b8c3752b33b49b5b1fcac3942f3f654e4f6a490b1`  
		Last Modified: Wed, 08 May 2019 02:12:05 GMT  
		Size: 3.2 KB (3159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8f3376fb8a00719bb789a29101731b51e87c92ba65746973d48e36622fe4885`  
		Last Modified: Wed, 08 May 2019 02:12:05 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1235c935230d8c5f116c74348de69b46d75c44fcc8ae12128dfa2e72b73410`  
		Last Modified: Wed, 08 May 2019 02:12:06 GMT  
		Size: 301.5 KB (301466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

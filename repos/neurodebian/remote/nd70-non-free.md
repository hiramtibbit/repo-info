## `neurodebian:nd70-non-free`

```console
$ docker pull neurodebian@sha256:868a6b5d133f07fad332df1273382afcffc0888bba0806892fbe2224b62cd236
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd70-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:93bd95727caa28c31a4d0ef844361d6b0c0c2b682b98f43ded15adf6070c5bd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39343319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cf530f8224bd0386fb97b212e8ca8209ef3211e6b7cce798331de249d21a3c5`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:33:00 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:33:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 17 Jul 2018 04:33:02 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 17 Jul 2018 04:33:14 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49b1092257f227416868c509f43d573908006dd38b8dc405c8108f3307d174d7`  
		Last Modified: Tue, 17 Jul 2018 04:41:46 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a50ced13758418d776bba1805bd6cc131717f6212e2ecc67563467c1c3a361`  
		Last Modified: Tue, 17 Jul 2018 04:41:47 GMT  
		Size: 3.2 KB (3191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66ec2ef0c33dedb4bf1f9ec7b9a326a90ef09823c00bb79b3980a5bce05c189f`  
		Last Modified: Tue, 17 Jul 2018 04:41:46 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e69f50171fba89427bb3d43f79bcfb1e330723b5fc7f7ddbf90273f26139b956`  
		Last Modified: Tue, 17 Jul 2018 04:42:32 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:non-free`

```console
$ docker pull neurodebian@sha256:f21bed5241691943e6bba7ea09849afe74606cff8b41c8da6b661dee4f92b621
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:626aa26bf40e22d97679523e2d6964f552013d4b6542a1635ab5672145f6d1e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.2 MB (52203774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8541685dca13a21e17a3436f3879c2a2df6ec2366e6a346346ba35837f1c55d0`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:38:58 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:39:01 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Mar 2019 03:39:02 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian stretch main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel stretch main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Mar 2019 03:39:07 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:39:11 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc23ef0c24aba8fa12efa247ef1de9df57872af0bfbe22722a338ee4102528d5`  
		Last Modified: Tue, 05 Mar 2019 03:40:21 GMT  
		Size: 6.6 MB (6565869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3225e459eb540cffb72cb0a11cc5dddda32bbdd92409342e4ac1a678b2090b9`  
		Last Modified: Tue, 05 Mar 2019 03:40:20 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645fd6d0886f4db7abfbb7d4a80a24b0c78f3167b86c165949e8adbbbccf7582`  
		Last Modified: Tue, 05 Mar 2019 03:40:20 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480e1a7b244850a047f6eee13038f8d67737f8279019b74f472e08d3f927328`  
		Last Modified: Tue, 05 Mar 2019 03:40:20 GMT  
		Size: 291.7 KB (291668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5978cb7bb14785a99d9425949d7399ad8651087b1497d13ed44029c6b3b5a578`  
		Last Modified: Tue, 05 Mar 2019 03:40:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

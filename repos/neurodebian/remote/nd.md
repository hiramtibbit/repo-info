## `neurodebian:nd`

```console
$ docker pull neurodebian@sha256:cd23ab2fc4b43454a88f64cb13d52c3e8855cc887ad0dd88b2a9e746018ec485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd` - linux; amd64

```console
$ docker pull neurodebian@sha256:7eaab4334c8a065575caf81f34e966f3216ccd2c010f7f1574e2513800384139
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.4 MB (61414350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c6ed2870504c0b812ba9c6b19722464b74145779bf951a1ed626eb55ee74643`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:27:16 GMT
ADD file:a8b53d71a5992a0dcc8277eacfbc2320c583cb4afb386a3af91f143319dab415 in / 
# Fri, 28 Dec 2018 23:27:17 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:14:20 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:14:21 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 29 Dec 2018 01:14:22 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 29 Dec 2018 01:14:27 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d3c280df34afe0f4fab360f1675e991cbd7c97ec4d88098c1ec85ce64746aab`  
		Last Modified: Fri, 28 Dec 2018 23:35:07 GMT  
		Size: 49.8 MB (49797033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5fa9680dcf43f4c94ea786ae6105b80114cee1caa1b03a9c0314f0c1a2f04db`  
		Last Modified: Sat, 29 Dec 2018 01:15:45 GMT  
		Size: 11.3 MB (11315752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:158e0a747e065ab61c53ee66fe0bc712fd84893aa86cfd7bae7530f9fc80bad3`  
		Last Modified: Sat, 29 Dec 2018 01:15:41 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7247689ac4c8348048ae32cfff61b179fa0e0925cbd1aaf8cf65f960558dbe39`  
		Last Modified: Sat, 29 Dec 2018 01:15:41 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a22797f2ab323bb81cb96b807d2e6db8e235ad1e7980629aa0a8107f7badc99`  
		Last Modified: Sat, 29 Dec 2018 01:15:40 GMT  
		Size: 298.2 KB (298171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

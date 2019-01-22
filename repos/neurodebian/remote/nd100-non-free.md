## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:62d240bf2af6db31de17de56f3e38faef9f9d8a224d26dfa223c357a6b8e3569
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:32dd3cdc4e7fbfd8dd376603b71450fe168a4f95ec5dfbe45e82eae583fa8e8b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.9 MB (63871096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b879552424c31ea95fb59045570a98d57bde08342732fd344cafee1b6d91fc0b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:21:09 GMT
ADD file:a115ae9594d00c4e30cd53dc533d6ff73497df07db2fc8c2be475a520021fdbe in / 
# Tue, 22 Jan 2019 19:21:10 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 21:08:50 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:08:51 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 22 Jan 2019 21:08:52 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 22 Jan 2019 21:08:57 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 21:09:02 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:28a5848cd0d3a3c70f45dcd97a5eb29c40559b3cc0cf9e7c1ab839cf23f55034`  
		Last Modified: Tue, 22 Jan 2019 19:34:10 GMT  
		Size: 50.1 MB (50087426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bafeb7e5b483002940179ff222725ecea650f6c7b5a201fbf0f7c8b8e61303d`  
		Last Modified: Tue, 22 Jan 2019 21:10:14 GMT  
		Size: 13.5 MB (13468344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8df7e6c04deab1a85cab2172340b8253c7829eced996ad516ef6b0d9e5fd29`  
		Last Modified: Tue, 22 Jan 2019 21:10:11 GMT  
		Size: 3.2 KB (3151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8178b89a5bb8b86e7d1c2824b46393c293c26d0349d96c7202e8c3ebdde557ee`  
		Last Modified: Tue, 22 Jan 2019 21:10:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9c43ea609df9a4b136e9d433aa13ce0d1c4609f28bb7b41ea156fe53d2829a7`  
		Last Modified: Tue, 22 Jan 2019 21:10:12 GMT  
		Size: 311.6 KB (311615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403d7bcd0ebce359bb145337186f6deea7732f1b045c83bbfbc87ef2d1b1c0ff`  
		Last Modified: Tue, 22 Jan 2019 21:10:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

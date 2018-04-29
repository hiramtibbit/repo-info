## `neurodebian:wheezy-non-free`

```console
$ docker pull neurodebian@sha256:d24b1e06399be6f0354f9f87e862d2d2de3052640e6931e793810edc1dee1551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:wheezy-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:afa0eaa8d1d0580f624047bdbff4a98fba71e20ae77def2fd21dad8ab8c55f62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.3 MB (39343159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec33b0e5ac6bd204a5e1e3d65ae648d9268dd3aef2899296fbf925158d8d64d`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 22:17:05 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 22:17:06 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 28 Apr 2018 22:17:07 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian wheezy main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel wheezy main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 28 Apr 2018 22:17:28 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29ecfef1fbbb2d95ae6d671247091c63248df2c834ef0f9f76daa07511550a00`  
		Last Modified: Sat, 28 Apr 2018 22:54:53 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d18e92f66a8043d364db926ff9ae836173840cfbee0079fbc3460c6f4420217`  
		Last Modified: Sat, 28 Apr 2018 22:54:53 GMT  
		Size: 3.2 KB (3185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4330843644322b32f43bedcde313c18b6df17cab090776c5afd71b2c584074f`  
		Last Modified: Sat, 28 Apr 2018 22:54:53 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d5358c2bddd9ebc0311ab3e03896f68cb3b3f69eb07d7b25c22f1f106c0f374`  
		Last Modified: Sat, 28 Apr 2018 22:57:40 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

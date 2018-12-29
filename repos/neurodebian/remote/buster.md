## `neurodebian:buster`

```console
$ docker pull neurodebian@sha256:07fb2e213b195e654e117d1cf2db47164dd9c7de4f51b601d893f8057363e6cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:buster` - linux; amd64

```console
$ docker pull neurodebian@sha256:2c4e45240c6ae12770578db1fe3d8d05683ecf7d291b586a56cafa3d0ff030da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.1 MB (61110723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9825d8b6fd1056f465bf386a651cc2c103cd253ea88750329b88b75f8e052c9b`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:21:14 GMT
ADD file:fdb1ccae627d25ad35d80ed58323977e66535afffab327423f9e05a61d990d55 in / 
# Fri, 28 Dec 2018 23:21:14 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 01:13:57 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 01:13:58 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Sat, 29 Dec 2018 01:13:59 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Sat, 29 Dec 2018 01:14:04 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2d582acfc057c4ff9898258f2daf24c5e858f9d23287ff61feb2a47ca9862761`  
		Last Modified: Fri, 28 Dec 2018 23:33:21 GMT  
		Size: 49.5 MB (49487369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad09d27094d8fd88c4cc26f5d4b37965a7c47aa9ffb4055ab923406513b88ce`  
		Last Modified: Sat, 29 Dec 2018 01:15:27 GMT  
		Size: 11.3 MB (11318153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea7649882443d15e892623c342a643f8fb41ea443b451c23b784d622cd7645`  
		Last Modified: Sat, 29 Dec 2018 01:15:25 GMT  
		Size: 3.2 KB (3152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5970023f91139758d22a22616444c0090d4a481722fe4d53551d8507bb1c21`  
		Last Modified: Sat, 29 Dec 2018 01:15:25 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51434a474091682a92036d499e264431fa0b0056b1fccac9d90f8377b623bbd5`  
		Last Modified: Sat, 29 Dec 2018 01:15:25 GMT  
		Size: 301.8 KB (301802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:nd100-non-free`

```console
$ docker pull neurodebian@sha256:d71c3047a1b558cb7e6170c413b1bdbce290aa751e80a9c7fe84b411b2c8ebb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:nd100-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:520b1912ee1046bd621fdd65a84a71d25be3173ff4b4af7c8e1dc291100a7fd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **58.4 MB (58432653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6bb78653fbee1472b01ac2870e12180e0651c065fada78dcd641df0df5e3898`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:42:45 GMT
ADD file:3e44dc3efd4691d66535df49a5a805cae024578f150d8a17b801624a5b9703b5 in / 
# Sat, 28 Apr 2018 06:42:45 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 22:01:59 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 22:02:00 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Jun 2018 22:02:00 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian buster main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel buster main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Jun 2018 22:02:03 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:669cd012b9c151a1111764e66f8edf390cfc1d5c37c41f0268fa241837086cd0`  
		Last Modified: Sat, 28 Apr 2018 08:20:05 GMT  
		Size: 48.3 MB (48310892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6864ae613ae2cc29aae2bd3609fe5c58439f36203b40c0a46b6c7ea0e1c6d8b9`  
		Last Modified: Tue, 05 Jun 2018 22:05:13 GMT  
		Size: 10.1 MB (10118058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c39bcd933a184f843a8e1c9ab055e61a6dff96cbebd0fd66a7c60f6042df16`  
		Last Modified: Tue, 05 Jun 2018 22:05:10 GMT  
		Size: 3.1 KB (3149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b4c141526d39810ba9a1098971d23b44a094e8f28f34ba5dc23089e501b0ed2`  
		Last Modified: Tue, 05 Jun 2018 22:05:10 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93919137827d8831627871fa041a859e189472ac96ea4e602b966b6e2a4d3fbf`  
		Last Modified: Tue, 05 Jun 2018 22:05:22 GMT  
		Size: 310.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid`

```console
$ docker pull neurodebian@sha256:cf91ef7eb9b7960d7a2788ff4d021013d771b8c9507b342072efe6aa6befdf8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid` - linux; amd64

```console
$ docker pull neurodebian@sha256:42713b62693b6a8bed4087ec072f9fbf88dae53f9a1397d1107b54b83b1292f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61196715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a7d6e41d7a22afaf4c8dded5d3aa912c3442ec4bcfb4f5a1a50ae880fb4f1c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:31:47 GMT
ADD file:fb47fe44d1e6b6b670253c11516570b51b7f0fb8b982c3f5d384146343df5f5b in / 
# Wed, 08 May 2019 00:31:47 GMT
CMD ["bash"]
# Wed, 08 May 2019 02:11:34 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 02:11:36 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 08 May 2019 02:11:36 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 08 May 2019 02:11:42 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0e46e397f892870613903a2484edb209778048886e5d00b27f9d4393280c94f8`  
		Last Modified: Wed, 08 May 2019 00:36:58 GMT  
		Size: 50.3 MB (50340155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fa5542d9fa4a0435bab35e3d36762b4e213eb8b075d351ba4e01efa23ec697`  
		Last Modified: Wed, 08 May 2019 02:12:41 GMT  
		Size: 10.6 MB (10551618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cffe335c7508d608015f51a3bdedb70d38fb3c1e835d771c63bc724a4661c23`  
		Last Modified: Wed, 08 May 2019 02:12:39 GMT  
		Size: 3.1 KB (3146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f569657f49caf9fd31eb1d79432fd16147b6330329c8ce0d735a89629e457463`  
		Last Modified: Wed, 08 May 2019 02:12:39 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af93304b202ede24352f42fbc76227ca3d674c2d94dc0f742277f8413052138d`  
		Last Modified: Wed, 08 May 2019 02:12:39 GMT  
		Size: 301.6 KB (301556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `neurodebian:sid-non-free`

```console
$ docker pull neurodebian@sha256:75fed4d88279aa4a205e712b7e1955cf4e979dfc8a0ff46695105cb4a0ad980f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:sid-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:ba1ca58b126a907fdf02f2887f3020868b3ff30e21038a40830cb3dcc47ec2ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.5 MB (60539808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15425518fe4d74c91ab036e30ab5c7a50643d1ab281afd00ccf84d25823ce9c6`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 06:56:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 06:56:18 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 16 Oct 2018 06:56:19 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian sid main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel sid main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 14 Nov 2018 02:27:01 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Nov 2018 02:27:16 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8915df6d3cb77b346ec6878712ef6f2c1d981e691c6f5e75b1d40f2059298888`  
		Last Modified: Tue, 16 Oct 2018 06:59:45 GMT  
		Size: 11.1 MB (11127439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bc70200a46fd29f6ae7948cc71f235123f31b15a0e12eda14ca62d28cba6b4`  
		Last Modified: Tue, 16 Oct 2018 06:59:44 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef346786d76feba0f372b7f4eb10cbe39a6d6edd42791973a38ba97f859ef192`  
		Last Modified: Tue, 16 Oct 2018 06:59:44 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83d73ea2656fd98ef904db5a8b520a97d902fe6e38360e35a641085e56d1211`  
		Last Modified: Wed, 14 Nov 2018 02:33:29 GMT  
		Size: 300.8 KB (300794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd655bfbe316d83ce3f3dc4ba8221e27a431b7dba8c66ec7965c5103243e9c4`  
		Last Modified: Wed, 14 Nov 2018 02:33:56 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

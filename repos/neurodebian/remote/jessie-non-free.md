## `neurodebian:jessie-non-free`

```console
$ docker pull neurodebian@sha256:9e6014ce90434f83b2dc79de623f66400af8f330252cfe6791696fec2d3ef16d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:jessie-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:98eed69abfe5dbab389275bdd3da682d0a62891fae51ea6075e4e75b90c9d398
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.7 MB (54687071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d56c50b154d19e685f87e958653d0e7736c23df70ecf25efdb8fd63c0b81247`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:20:17 GMT
ADD file:e044496893d9e2cbf5a4b69ccfbb7d2997209962a78a52b6fc091c5b004cc33f in / 
# Mon, 04 Mar 2019 23:20:18 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:36:13 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:36:44 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 05 Mar 2019 03:36:45 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian jessie main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel jessie main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 05 Mar 2019 03:38:41 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:38:48 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list /etc/apt/sources.list
```

-	Layers:
	-	`sha256:85199fa09ec1510ee053da666286c385d07b8fab9fa61ae73a5b8c454e1b3397`  
		Last Modified: Mon, 04 Mar 2019 23:24:27 GMT  
		Size: 54.4 MB (54381658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbcb2869af2b3eece8d1e812462b2f3ebc43575e238cfb633fb2fc72fe6fbc7e`  
		Last Modified: Tue, 05 Mar 2019 03:40:13 GMT  
		Size: 299.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4808657a1abddda2768789a66e5c07825048316ecfb95e564bbf20c6dc352064`  
		Last Modified: Tue, 05 Mar 2019 03:40:13 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b1116a79125cf859a38260203b6a583b488b6e238fcf47e36e84fc0719bc85`  
		Last Modified: Tue, 05 Mar 2019 03:40:14 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca9cd30047817dcebf563f9a74b08dd28e99b15b31a5a656f197a975d3fc6c6c`  
		Last Modified: Tue, 05 Mar 2019 03:40:14 GMT  
		Size: 301.4 KB (301404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9deeb8307aafadab8f020db55c400fa5e1921994481fc010bead97880885b6d`  
		Last Modified: Tue, 05 Mar 2019 03:40:17 GMT  
		Size: 313.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

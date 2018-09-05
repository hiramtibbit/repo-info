## `neurodebian:artful-non-free`

```console
$ docker pull neurodebian@sha256:feef3964c188771e2c5989d1740b04fb22a5dfe01a3443f83010b6b292c2b641
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:artful-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:fb214c724f4f6a1366d367ee7cde0ea121cd7ec53c44c1405c9fe055257efc35
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.6 MB (42630297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eaee5e86338bb74b7269efa5a5146c33de694018a8dd8a0bd5db206115fbbd87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:51:43 GMT
ADD file:d3d5130b8f7f795c053d60902a67257290e689a661581dd3e63e52931b2d835e in / 
# Tue, 17 Jul 2018 00:51:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:51:45 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:51:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:51:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:51:47 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 00:44:22 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:44:25 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 05 Sep 2018 00:44:25 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian artful main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel artful main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 05 Sep 2018 00:44:31 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:4ccdce43d1e00fd03ac5438d39e731c16db3dfcf03c68390884b8e8c814221ca`  
		Last Modified: Mon, 09 Jul 2018 14:53:17 GMT  
		Size: 40.8 MB (40789477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c95f13c88d926e6181e0594f76953a14ab80ce002fc6dbc968084a7e18aaafe9`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82656eee95ad054e0aa75486e7c55b7666c26abbd9bf19373dd349f6e172ce9d`  
		Last Modified: Tue, 17 Jul 2018 00:54:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ff727be57a68299558bb40b737669ca5cb9a8db948411d852ec809c14e7a1f`  
		Last Modified: Tue, 17 Jul 2018 00:54:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448bb314afa553bfb1578121328bbe92d2b5ca0f411967e7a0a200f672ade92f`  
		Last Modified: Tue, 17 Jul 2018 00:54:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:261816990a775a30f88752a13a62a52bcde56bb65e4a55f197a2e9fb9bb5920e`  
		Last Modified: Wed, 05 Sep 2018 00:47:29 GMT  
		Size: 1.8 MB (1834692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a156bf966eecba13862fb10677b8de1de28b3035067116c9d285831479e64a4`  
		Last Modified: Wed, 05 Sep 2018 00:47:30 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:518254c3dbad5ed8bf16b404277faae75f3ba8bd5fcd69a217de42fbed22f250`  
		Last Modified: Wed, 05 Sep 2018 00:47:29 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d75730d7a03231c7afae38ee24f1ff0327e80e7e5b4f8893f9bce6e923ab1db`  
		Last Modified: Wed, 05 Sep 2018 00:47:38 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

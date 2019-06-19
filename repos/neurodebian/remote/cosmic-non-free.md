## `neurodebian:cosmic-non-free`

```console
$ docker pull neurodebian@sha256:9ae53591a5be29fde29d7a778796078a07bdf908166d2c8406a0f11b0e5c0d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:cosmic-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:b96aaf545027c187ecef67071870ede95b8f30f1e0b071872955388ece190dbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.2 MB (32186914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8338bbeeb702d07e4c8e2bee0c92addf80be5ebbe77424ee89dcdc34d964f9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:07 GMT
ADD file:57710235acd445085df388290be388b9b8a2edf8d7ddce2441dee90a64f2e606 in / 
# Tue, 18 Jun 2019 22:52:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:11 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:50:17 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:50:19 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --batch --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Wed, 19 Jun 2019 02:50:20 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian cosmic main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel cosmic main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Wed, 19 Jun 2019 02:50:25 GMT
RUN set -x 	&& apt-get update 	&& apt-get install -y --no-install-recommends neurodebian-freeze eatmydata 	&& ln -s /usr/bin/eatmydata /usr/local/bin/apt-get 	&& rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 02:50:31 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:7ec6d2912f0a2b3b591d5231ebfa4c5f0729414df42cb550942eea07fee552e6`  
		Last Modified: Fri, 14 Jun 2019 14:34:29 GMT  
		Size: 27.1 MB (27078061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fae9a0cb8ab2b4f17affd557ab971e49b32aeadb040316e7d73b5a92a2785c`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 35.1 KB (35145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c3e823150a973b487c60711aaa4ac2a2b67d4216dc4360a72e7ef88519eddd`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54b1b19bb4500839e8d81d4a2a09b3c8eba8d5963218769bf2422cb4adb45ff6`  
		Last Modified: Tue, 18 Jun 2019 22:54:10 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83afd436bb332fb3eee3544a2ee3f348803a8e011095eb9341cef91d3f01f017`  
		Last Modified: Wed, 19 Jun 2019 02:51:28 GMT  
		Size: 4.8 MB (4832538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfa8584ccc9740583063e632c8ed04891932570e5e0d0f1f7ef8995e3d97368`  
		Last Modified: Wed, 19 Jun 2019 02:51:27 GMT  
		Size: 3.1 KB (3148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a113223a70e4c15f2142bc25f37133692a85a0e9a9000e5ba7a5d226a66004d`  
		Last Modified: Wed, 19 Jun 2019 02:51:26 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b46bb3f06da37d7cf9da53d3814bd1578202841df1c4f461ce53c1b1b6ede55`  
		Last Modified: Wed, 19 Jun 2019 02:51:27 GMT  
		Size: 236.5 KB (236498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54eab68f589c71529d08df00a262823b62694bf9d3183864fda1164555a43c`  
		Last Modified: Wed, 19 Jun 2019 02:51:32 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

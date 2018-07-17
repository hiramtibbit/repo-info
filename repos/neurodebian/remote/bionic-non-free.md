## `neurodebian:bionic-non-free`

```console
$ docker pull neurodebian@sha256:ae51c6f1e23b88f4460fd0caa667a53dc091fa28fd6589ed7b1891cf326413c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `neurodebian:bionic-non-free` - linux; amd64

```console
$ docker pull neurodebian@sha256:63843c57f2d4c996f78c9fe739d7c65ca7ca0bb1d5f19757ab8f3fbc6c5d97c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 MB (36308302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ff35fe715bd609e865769cac80b69c05ab7be9a336a9ce3abc024c839b1d350`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:52:12 GMT
ADD file:5fabb77ea8d61e02dd5346ebbe6469eea0c2fdaf0717acc6115cd2de97755600 in / 
# Tue, 17 Jul 2018 00:52:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:52:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:52:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:52:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:52:15 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 04:32:19 GMT
RUN set -x 	&& apt-get update 	&& { 		which gpg 		|| apt-get install -y --no-install-recommends gnupg 	; } 	&& { 		gpg --version | grep -q '^gpg (GnuPG) 1\.' 		|| apt-get install -y --no-install-recommends dirmngr 	; } 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:32:20 GMT
RUN set -x 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys DD95CC430502E37EF840ACEEA5D32F012649A5A9 	&& gpg --export DD95CC430502E37EF840ACEEA5D32F012649A5A9 > /etc/apt/trusted.gpg.d/neurodebian.gpg 	&& rm -rf "$GNUPGHOME" 	&& apt-key list | grep neurodebian
# Tue, 17 Jul 2018 04:32:21 GMT
RUN { 	echo 'deb http://neuro.debian.net/debian bionic main'; 	echo 'deb http://neuro.debian.net/debian data main'; 	echo '#deb-src http://neuro.debian.net/debian-devel bionic main'; } > /etc/apt/sources.list.d/neurodebian.sources.list
# Tue, 17 Jul 2018 04:32:43 GMT
RUN sed -i -e 's,main *$,main contrib non-free,g' /etc/apt/sources.list.d/neurodebian.sources.list; grep -q 'deb .* multiverse$' /etc/apt/sources.list || sed -i -e 's,universe *$,universe multiverse,g' /etc/apt/sources.list
```

-	Layers:
	-	`sha256:7996ebd2246a962c134071d90f00119b8e4d228b66e4e2afc80991dd9ac1726a`  
		Last Modified: Wed, 11 Jul 2018 22:07:27 GMT  
		Size: 31.5 MB (31498824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de532f9a4f9fd825f8161ca40445b950884ce5995a284010d61b43952ad89bff`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 839.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de2709b2a839d0cfd1065aee221407e351472a71a31b9ed2c1ad98189662e2e`  
		Last Modified: Tue, 17 Jul 2018 00:55:29 GMT  
		Size: 471.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70b6ac64a142e5c1335571805cca61c37931070bed3d4140839a921e84178db6`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23caf550e03246e2dfdcaaa9dd3da37354e629afa9c99cd64e77dc48bae8ca66`  
		Last Modified: Tue, 17 Jul 2018 00:55:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d2fe3cdcef66652f2dddc98777c754ccefca05b2e6ba82402ea9877c0e19d9`  
		Last Modified: Tue, 17 Jul 2018 04:40:37 GMT  
		Size: 4.8 MB (4803511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0e335c2468f1d62b8fa722704a029beca9cca82d630cea89f964638c30d5bfc`  
		Last Modified: Tue, 17 Jul 2018 04:40:35 GMT  
		Size: 3.1 KB (3144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3443cc0670af18faf0e1a58e8cdffa5c4732f900d6492253e670698778414738`  
		Last Modified: Tue, 17 Jul 2018 04:40:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ead730f1ce18e4af795594997b5402c3951f4f491da1e49d2f3bb5e1e9a716`  
		Last Modified: Tue, 17 Jul 2018 04:41:11 GMT  
		Size: 256.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

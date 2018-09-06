## `buildpack-deps:cosmic`

```console
$ docker pull buildpack-deps@sha256:54bb2e92a34636c3fc0d41caabab8184d7f7eb35f19bb3bcde5717bd40b84061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:cosmic` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:1bb57f2d67193046b3ecf44644b71a0fc575603e1fb31fe97c3c7099c94f9aab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.0 MB (221012864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce17e1c34f553a4115177840adb3870386d242a1602fb9de8a8832537edcb70f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:23 GMT
ADD file:29a9c4c9a69dcc24680256e4136d12f8268131e46ff86512524056b8ea04f8ca in / 
# Wed, 05 Sep 2018 22:20:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:25 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:42:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 22:42:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:44:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0423802a3f4956844710db206c0022c8509834ec3f84659f5908c80c99dbeb10`  
		Last Modified: Wed, 05 Sep 2018 22:21:35 GMT  
		Size: 28.9 MB (28923700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c010ec7be39a0e05f16d0fb06b9d6e8a4ea62b293f47ee380033598df6dd30`  
		Last Modified: Wed, 05 Sep 2018 22:21:30 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0a1ed9583752de17fe62bb9c599d56eb7101007e97e02c473ebce5ca737a58e`  
		Last Modified: Wed, 05 Sep 2018 22:21:31 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d8062ca11ad83415399ce117c4a8de8a9f44a89ba7d908b6e6668621a57b4e`  
		Last Modified: Wed, 05 Sep 2018 22:21:30 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cecc8a5dd451fa97db99368e23e7946f0b23ed616d16390eb476becbbb2161f`  
		Last Modified: Wed, 05 Sep 2018 22:52:42 GMT  
		Size: 5.9 MB (5858832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a98cf7159862f0f204348cf4069530cea0a1d71ab75f2828be56a877d7781c3`  
		Last Modified: Wed, 05 Sep 2018 22:52:41 GMT  
		Size: 3.0 MB (2973612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33f0e4433e150b5c6620566b5bb7eb52604b2f79be36642eb6e2d977d5c9a5db`  
		Last Modified: Wed, 05 Sep 2018 22:53:01 GMT  
		Size: 48.7 MB (48669883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ac4fc96efcef6e5c58bd4c4bd0fec62e1d89676f6ab70e80748913e1bb35ce`  
		Last Modified: Wed, 05 Sep 2018 22:53:34 GMT  
		Size: 134.6 MB (134584958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9d90e28efa6f48154f47a475feab607aa264dd9449b6774f6d6a5ec13769a1df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.5 MB (190528313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4214d6816cdfcb8d85cb2c4353e2c6692a1f095f679033a8ddf88c4af2258c9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:58:29 GMT
ADD file:dc63a110cfc9a362810998efd77dd3f662fdd180a6867cab886a8426103d441c in / 
# Thu, 06 Sep 2018 11:58:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:58:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:58:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:58:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:58:44 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 12:16:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:16:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 12:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:18:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:963b2b96c6390583fe2262d2e51b6f7ccff1cd881195b58459af91358d56eca8`  
		Last Modified: Thu, 06 Sep 2018 11:59:45 GMT  
		Size: 24.5 MB (24497736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae0975fc935a7889b1698f5bd619d57a605fd614078b151ec2e64b3379d89596`  
		Last Modified: Thu, 06 Sep 2018 11:59:39 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bba4382f3dda6329644f692acdb8c01d0228ba85edaaf6cf66cdc2bad001026c`  
		Last Modified: Thu, 06 Sep 2018 11:59:40 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45c0c329fb06b7843458ea08db1a4c7f44646baad7dc4a524725ae05f80ffd8e`  
		Last Modified: Thu, 06 Sep 2018 11:59:39 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895bfd5705a721fa2f2ad44f29a14179ac3796c57f57052a1d2e18c5f0357e8c`  
		Last Modified: Thu, 06 Sep 2018 12:19:21 GMT  
		Size: 4.9 MB (4942491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e579c4c2b76ca34bbaefccfafa6cd800cfed64a660a3915a8822ff700fee1a`  
		Last Modified: Thu, 06 Sep 2018 12:19:21 GMT  
		Size: 2.5 MB (2534475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9795d86d635c5074bdcd1282f3fd34c3fb9be314e0a274c8f6dc5516577877f2`  
		Last Modified: Thu, 06 Sep 2018 12:19:55 GMT  
		Size: 43.7 MB (43650457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98c85f17078d5865e8ab250832a3d77b3b4f686d55236fac36b362e6c64599d8`  
		Last Modified: Thu, 06 Sep 2018 12:20:47 GMT  
		Size: 114.9 MB (114901249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:9aee72f0b78c637c3b35b4083aca57f2f9e873065e9d36812f38c6338753c6ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.0 MB (208023473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abe6ac46912a04655167bfdcbf2dbacc83411e25827bc706a9db07217945ca7c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:13:30 GMT
ADD file:e26106db800a0ecafb3dced9d54f8d6d610a2ecc3349d0af388822d621a29003 in / 
# Thu, 06 Sep 2018 11:13:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:13:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:13:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:13:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:13:37 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 11:34:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:35:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 11:36:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:43:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8afcf4e2d24a00d2654536c6cd4c53c770ed252a339359579e5bd9b83c1e5a0c`  
		Last Modified: Thu, 06 Sep 2018 11:16:10 GMT  
		Size: 26.6 MB (26626408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b69e476c2268d8a13378e9f3877b80b81fd224fb027a35af9f12a59a6a3b98`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9e655e8aebba26cf7d93e0a1d7a911d0852d486f7c37552909152eb62adfdc`  
		Last Modified: Thu, 06 Sep 2018 11:16:00 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6959f058270a4693c87bdb4d8a0816b66eddfec01b291f9df85564392a30c308`  
		Last Modified: Thu, 06 Sep 2018 11:16:01 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7414562e233a271f6f3cfd36fa0dbb0378b5d1e61cdb297bafe65fc802e9257e`  
		Last Modified: Thu, 06 Sep 2018 11:45:30 GMT  
		Size: 5.6 MB (5554519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6de763d81d03a2c3f540c181b27b7371c29e25cdb02209643929e751679f84c`  
		Last Modified: Thu, 06 Sep 2018 11:45:29 GMT  
		Size: 2.9 MB (2942554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8bb3e03a1de3d87a55e254872394d684a2155e89b90b5d5aba0e075c345cf5`  
		Last Modified: Thu, 06 Sep 2018 11:46:42 GMT  
		Size: 47.0 MB (47042251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6770bf25fdbdb573bc50d4b5c4bb9210448072adda9c8c7ae811c5bde27e851`  
		Last Modified: Thu, 06 Sep 2018 11:48:21 GMT  
		Size: 125.9 MB (125855859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; 386

```console
$ docker pull buildpack-deps@sha256:65aaa0ec855588846b866c7452440a2526b3d54c6a29f02e33bda2f536132076
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.9 MB (234898243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba39faa8b8484e2fe03ff0eaa4f0d38bd3ae1eb807edffd1dad73353f02e8f8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 15:52:31 GMT
ADD file:e2c73b21ea136304a9476862191f300c35f04637e95e3c014fed9299cf57b34d in / 
# Thu, 23 Aug 2018 15:52:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:52:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:52:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:52:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:53:01 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 11:21:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:21:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:22:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:25:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:67ba0e3ea69efa214839b755fb5f5685c6edbe01dd4add5c30ebe46b1336db90`  
		Last Modified: Thu, 23 Aug 2018 15:59:46 GMT  
		Size: 29.5 MB (29453570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:159808e5d4fe1b26fa365f9fe1d9df7e3ac489d9595bb33265f1012a96e6b470`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ad8b6de326ee718f2ad39b754e3a155fdf21911b75fcdb9ba1c1a1530642977`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f3ee0031f6d8726256426d889f122b8a5af5b9eea96c15e1bb604ce3693ba3`  
		Last Modified: Thu, 23 Aug 2018 15:59:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669bfcbe483def873256b6d79c46988cba15f1c763aa953908b3a68f6bebeaca`  
		Last Modified: Wed, 05 Sep 2018 12:01:09 GMT  
		Size: 11.9 MB (11935176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49192515f702bad078a65c49da1aff48d4eb72e95accbcfb708fb583d6d192a7`  
		Last Modified: Wed, 05 Sep 2018 12:01:06 GMT  
		Size: 3.5 MB (3460381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:924209126e6a8bc972385e86bd42f815fe968d81fcdcaf6a737e38042e697c0b`  
		Last Modified: Wed, 05 Sep 2018 12:01:55 GMT  
		Size: 52.3 MB (52252808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb580c7a442c0f9bc89761e4f2c18d8c0cde4709a823f083edd8cbe393f326b`  
		Last Modified: Wed, 05 Sep 2018 12:03:24 GMT  
		Size: 137.8 MB (137794431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4d916b8ada07fb226187cfed136e32369774129e2a7887f5e34b5ee3f3f9e661
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246748494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eda4cf5f76d1496115dcec0a539572700301431bf287a3b1f231d303a9b2d84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 08:28:08 GMT
ADD file:683cd35f45f566bd77a616ac6c43bf2f8db35936535c3c84e9831125e800b9e6 in / 
# Thu, 06 Sep 2018 08:28:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 08:28:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 08:28:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 08:28:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 08:28:18 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 09:17:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 09:18:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 09:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 09:24:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9fd5f88184877b4587083f632ef6bf799785e3b9c09a0488fda02ed548f07cbb`  
		Last Modified: Thu, 06 Sep 2018 08:29:24 GMT  
		Size: 33.5 MB (33489232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6e33da2b54961ca0cba882b0e2a1f56438d071a1672ba07ee8903d4760f018e`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 868.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4567f360e38ea1d042142b33a833c846a7277877e945f8c7996933ddfdd75338`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a95cac9ea3ffdbee48d4f6f871048d086ae9cb2f88347dc188ac74380188892`  
		Last Modified: Thu, 06 Sep 2018 08:29:16 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16be15113745f1a6f1cea211b507abca8a78f57e522700747949d6175217bac0`  
		Last Modified: Thu, 06 Sep 2018 09:25:50 GMT  
		Size: 6.3 MB (6335717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf4fb35c502163bfc75ffc76a390dbc3056b875f796f374312837abf57eafa1`  
		Last Modified: Thu, 06 Sep 2018 09:25:49 GMT  
		Size: 3.8 MB (3756562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc24bf805d5557cf5286c9531d77ec16b16a4c23c6dd56a5a5e2177af9b9575d`  
		Last Modified: Thu, 06 Sep 2018 09:26:29 GMT  
		Size: 57.5 MB (57469790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe3dc9ef4622d5eb343522f476389e91261c1aa0ddb0b5389849855209bbc56`  
		Last Modified: Thu, 06 Sep 2018 09:27:30 GMT  
		Size: 145.7 MB (145695283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:cosmic` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:dbd985c758e3105926071d72e7ebcfbabc6fed6061fbbae8456e360672adc70b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205811211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb3b197e2f0355a984e21ce14f3fff77d7f4e6840dd628c62e99ed81218caaa`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 06 Sep 2018 11:57:56 GMT
ADD file:7cadfa32a0925bde0826eb123c8fb82f1470c371a9a928c41311472dc33417e0 in / 
# Thu, 06 Sep 2018 11:57:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 06 Sep 2018 11:57:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 11:58:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 06 Sep 2018 11:58:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 06 Sep 2018 11:58:06 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 12:15:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:15:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 06 Sep 2018 12:16:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 12:17:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ae71e5453eeb208ef5af5e425b8272afe3cca34b68db42aa236419a2154c729b`  
		Last Modified: Thu, 06 Sep 2018 11:58:56 GMT  
		Size: 27.5 MB (27542153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dccf3d1f63ef46e472145c06f2b830bdee77fbca376175bea5359e7b53859fe8`  
		Last Modified: Thu, 06 Sep 2018 11:58:50 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5354005189c1ff9e8f69b05fd49dd15133de8b930cb8e85f1d9cde058e7947`  
		Last Modified: Thu, 06 Sep 2018 11:58:51 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f97d5d2d8fb957759f2370e82cfa74c7d9e9fe370063bd21ad3a267994f50d8`  
		Last Modified: Thu, 06 Sep 2018 11:58:51 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb7045f16da63a4e50f44a24fa9e4e8510b6f2b548aa9fe207c424d6e7c4180f`  
		Last Modified: Thu, 06 Sep 2018 12:18:15 GMT  
		Size: 5.5 MB (5528603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dfdc85a714c1cb23b7e913718957b6b1b816ee2b362c7be97642088c6ac226e`  
		Last Modified: Thu, 06 Sep 2018 12:18:16 GMT  
		Size: 2.9 MB (2914005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04878d542b1e42d13f736fe2afb3578134628f84f24afe7d6057b587f769f3f8`  
		Last Modified: Thu, 06 Sep 2018 12:18:44 GMT  
		Size: 48.1 MB (48112728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfe756dbd9fae9cdcb6ca3e580ce097f3fa80a0831ede43ba8ad40cdca2c74dc`  
		Last Modified: Thu, 06 Sep 2018 12:19:22 GMT  
		Size: 121.7 MB (121711840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

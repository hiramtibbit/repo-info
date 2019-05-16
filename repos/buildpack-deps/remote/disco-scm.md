## `buildpack-deps:disco-scm`

```console
$ docker pull buildpack-deps@sha256:b7a01360451ce4e6bff015d0b10d2db666702aa067cfadce2006dd7549cdf2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:2d812e9232fbade35989d3fb3a60e1968346533ce231e7bd764c1cd29fedcc26
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88888744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:643a8af7512a9f30992627a456a9509dc8cc4920ccca0dc1c33f287c198d6b6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:20:46 GMT
ADD file:b82101f178f1bebe33d5ac8f661a31ef8671c27500cba74a448dcb6544a6fd57 in / 
# Wed, 15 May 2019 21:20:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:49 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:47:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:47:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 21:48:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4417cd7c3ebb45585a393a0c01ef74414c31104c874b4252d7034cd416796faa`  
		Last Modified: Wed, 15 May 2019 21:22:03 GMT  
		Size: 29.7 MB (29729754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b01c082df6617a4ec1bf6043f0e270e774c843f7e974e2243090b86d5f929`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08458b88081614d856d6db8cbe030d86b31ac276e3d439b280e633cb0a9c8d6b`  
		Last Modified: Wed, 15 May 2019 21:21:58 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b1cec66520eed8f480efa1fc4d7dba9a8dab510d4b994f230fe8ad6f080ee7a`  
		Last Modified: Wed, 15 May 2019 21:58:10 GMT  
		Size: 6.7 MB (6666711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcbdb3677b640a498e2e74f6549ea3ad1dfd89fb769f67f5dc697c645aa3c84`  
		Last Modified: Wed, 15 May 2019 21:58:09 GMT  
		Size: 3.5 MB (3511163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25947863bc172a05141a2fcb74e6b69d333dfeb1eb7c66c80448f9c9c1ea9598`  
		Last Modified: Wed, 15 May 2019 21:58:24 GMT  
		Size: 49.0 MB (48980095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2a74f4622b8618f4c6eb1ae18a27ffe73f24fe59b794861c7764e13f89e4fd99
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.3 MB (78340458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71dcd0aad076b6ebb83cfbe2d69408c09326926ce2123e3ebfcd01a97cb0f27d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:59:20 GMT
ADD file:18440645fc8d6ddead3b9e20d0b152b067f21350c29b401edd0ec631ca614f31 in / 
# Wed, 15 May 2019 21:59:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:59:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:59:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:59:27 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:30:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:31:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:32:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d3dbd787eab8450a8e2ee3aecaab64565010cd3d6491c44f9e7e6d9a9532677b`  
		Last Modified: Wed, 15 May 2019 22:02:29 GMT  
		Size: 25.2 MB (25223555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:590fad1d4649fd3e05d64881659447506fa7efa161575e8f6d5db9dd77b2b1e4`  
		Last Modified: Wed, 15 May 2019 22:02:22 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97678b3103439d1e8a17cb5947209afdb2282978eca6e82e5a932118cb98dd9c`  
		Last Modified: Wed, 15 May 2019 22:02:22 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3b0e49308b487399d2ee68e8682221de98f16493ddccb88c2882e01f9e75d5e`  
		Last Modified: Wed, 15 May 2019 22:46:37 GMT  
		Size: 5.6 MB (5640205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45c12b1b6b18be22d89fccbb062ee703b5ca0ebe2573654d0922b73cbd3cb87`  
		Last Modified: Wed, 15 May 2019 22:46:36 GMT  
		Size: 3.0 MB (2975427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bfd68f33cd7f2af01365829ccfdb912f8b89cada61e4988ef66845065c2c35`  
		Last Modified: Wed, 15 May 2019 22:46:58 GMT  
		Size: 44.5 MB (44500224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:919d2ae21f5a9fcbdea22adcc938ccdb2b60e16362f0250e976beb2bf82c28ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.8 MB (87813952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0548918da2b4669d2b0f60da5504229ad5bf8df965c9763eae900a91ff238d1`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:36:54 GMT
ADD file:46d0c7536c7b2b2f997639dceb16911ce53a4c1443fe8cb284761b357e060370 in / 
# Sat, 27 Apr 2019 09:36:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:36:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:37:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:37:03 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 12:10:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:11:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 27 Apr 2019 12:12:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6f4ef9b288b3aff27ce5cfc89c07fa63622e5f9745260281096961d866c6f88`  
		Last Modified: Sat, 27 Apr 2019 09:40:26 GMT  
		Size: 28.5 MB (28523391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:305214ff3f3f45f33e3dafa1a62b682ceef5757eedbc71a63f6519fbe74dfaea`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 862.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bafc8e4e87f1adaf5e5c1dd74d0d48172ee80fc4fd5613d7e8bf2baec1c342fd`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61986756c9f477d13733af507c3a31953f49008e9343f25a5448c0bb144283b1`  
		Last Modified: Sat, 27 Apr 2019 09:40:12 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b341901d19b70236c352c87bc12b5c6574f17dae143d30dc5669d9e7ce14f45`  
		Last Modified: Sat, 27 Apr 2019 12:48:40 GMT  
		Size: 6.5 MB (6538232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000769d7ab4b3daf8a73a0937d6338757af43e483465b9f85b20d4dbef5234f2`  
		Last Modified: Sat, 27 Apr 2019 12:48:39 GMT  
		Size: 3.5 MB (3505355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0363aea04046bf67f167456474af0d0baa87a0bba49a21a8b88fe60c8517ac3`  
		Last Modified: Sat, 27 Apr 2019 12:49:09 GMT  
		Size: 49.2 MB (49245759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:aa970eab6986c8501744a1a3ae8366d795d848d68037c9bd5275e10a2bf6b69c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.7 MB (91687730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c571efdb1d0d96c0cd4624cf9fcff183ed41ff6591431cb4e7a5dab7446b69d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:39:43 GMT
ADD file:09ed0f944187a7b29d6dc700b86113b61fc64a9d691d547a404769bdf866c507 in / 
# Wed, 15 May 2019 21:39:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:39:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:39:47 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:39:47 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:06:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:06:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:07:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83b2f827047542b904878696f3dff892c94b5980f50a214b0e41f3fe132da74f`  
		Last Modified: Wed, 15 May 2019 21:41:40 GMT  
		Size: 30.4 MB (30389145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbdc11d90da438d954fdb311a52256a205b0ef2b219e98292f89e47aa832cb0`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 864.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4800b2d794cc89645815cef5131c291f8297cbdfc622589a6a6651e080bbee`  
		Last Modified: Wed, 15 May 2019 21:41:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95a61a29e8ac10cab76bb8d623d35e4c6ad101e45b30807ba3a62a9e0d7c3d12`  
		Last Modified: Wed, 15 May 2019 22:19:40 GMT  
		Size: 7.0 MB (6978986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13360a3b6b77908c816775ed4755460a67517b916982423fdaf73534705942f4`  
		Last Modified: Wed, 15 May 2019 22:19:37 GMT  
		Size: 3.8 MB (3804146 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1e4b73e2db9556a7f83b91532111d000ed99173e5cf378194ab8e86b00d73c5`  
		Last Modified: Wed, 15 May 2019 22:20:02 GMT  
		Size: 50.5 MB (50514427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:4aecb08bb1aae0b4d6365e1ac01a3a5b85cb25b2da1f2cd2e10f961c40d32aff
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104957911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6edd11030151f746e90d7f0bea771d1ec652a21ee0a881d917df6b29145be21f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 22:24:08 GMT
ADD file:7251db64bf16163a8f8801c45ea32171190655546fa46cb20e37172c43fcfe50 in / 
# Wed, 15 May 2019 22:24:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:24:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:24:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:24:33 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 23:35:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 23:35:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 23:37:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:47d856ee38522608ddbbec64fcc635e92624c734eb165ab510fd13e09e9d3a99`  
		Last Modified: Wed, 15 May 2019 22:29:58 GMT  
		Size: 35.0 MB (34993704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc72309917095b6247024302fd07d6e429f8f7014c1d8eb467792fb9ccff69c`  
		Last Modified: Wed, 15 May 2019 22:29:39 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe697411fbfb783cabd3d8f5dfc10f7f9c85fbb04c9a2e18ef99ec9feb2a6ca5`  
		Last Modified: Wed, 15 May 2019 22:29:39 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d87e0900b76c61efd506f599652025ef7949e3afa82ae902417e945086db5b`  
		Last Modified: Thu, 16 May 2019 00:03:56 GMT  
		Size: 7.7 MB (7741374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d543454b9d024fd7555be9844a024690f3b97f3da0cf8c0510059fec9ab0481`  
		Last Modified: Thu, 16 May 2019 00:03:55 GMT  
		Size: 4.5 MB (4460957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a63a5323c65471b41477cdc09c5fbdce5f1da7010966589b8d8f210965883e47`  
		Last Modified: Thu, 16 May 2019 00:04:40 GMT  
		Size: 57.8 MB (57760823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:fc7ae5d46dc34e2dad23015ab202fc8e0195c06e2c2ff063bd878005c567a3ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.6 MB (86613962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d100f2ad836675511e11d394d51bd39b9dd58d88cf67d87576bcdfd01681a4be`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 15 May 2019 21:44:12 GMT
ADD file:55482d426d6b01f5a30fad09c850530580a4c3f89ba6e461cf280caff2e66c21 in / 
# Wed, 15 May 2019 21:44:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:44:21 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 22:17:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:18:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 15 May 2019 22:19:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc71e1965cf9eb4e5add3a8c4eb00a886a7509b99535fbd04e5d609055baabd0`  
		Last Modified: Wed, 15 May 2019 21:47:39 GMT  
		Size: 28.3 MB (28313883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97fb4d5561e0031d400b2369e45ce416e91f4822620526688556cfb27fddfbd6`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddbf9545181b93ecde9425c765dfb20a94915bd58d2ef564030864927ccc13`  
		Last Modified: Wed, 15 May 2019 21:47:25 GMT  
		Size: 161.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2a6e8de0b78d54597a5bd0c477eb7290ab4307a94b87bbd2f912fb35706b8d`  
		Last Modified: Wed, 15 May 2019 22:33:34 GMT  
		Size: 6.2 MB (6228431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8c19d8d6fa92a7fc9397775b76c75f7946546ab1f5fcdbb9a59ca012e96682`  
		Last Modified: Wed, 15 May 2019 22:33:32 GMT  
		Size: 3.4 MB (3428749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4efd7232ad6785a78b7c528cd32acf63c1b7fe1234c918c0e610274af8713ef0`  
		Last Modified: Wed, 15 May 2019 22:33:57 GMT  
		Size: 48.6 MB (48641875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

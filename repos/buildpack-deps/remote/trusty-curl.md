## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:e71216fbe8221486135854fbbfc69e641e6d51783d789c205f9bec68283a2c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `buildpack-deps:trusty-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:139117e0a56ee1a409861fd2ee50fdf56568f91504b98810376a80802de8daa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71858981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c83e8701fcc208a9995a3b20e0b1cb05190739c92b8023c775cdd20a6bc90c4`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 22 Aug 2018 17:30:42 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 22 Aug 2018 17:30:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 22 Aug 2018 17:30:44 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 17:30:46 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 22 Aug 2018 17:30:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 22 Aug 2018 17:30:47 GMT
CMD ["/bin/bash"]
# Wed, 22 Aug 2018 18:08:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 22 Aug 2018 18:08:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944f9cf63457523d1b9cb2a03b24f959518a46db74340ec939cec53e6eaf4f7c`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6856614e8780c7b74fd9f5448864511a0dbb4d2d30a67c32f7b34c72dba00e50`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0e4b6507f2bfe58324cac95a2327b9d8d14465b25cb07c1973f3236bcaf6f7`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c00913272b9b1954235f892b11310c30df9a77bfad37ae48ca070bdd1ed2e0b6`  
		Last Modified: Wed, 22 Aug 2018 17:35:33 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f415eba10245727e58d4dca4a9ee140a2c8885099e7068a38e48ddb41d191f5`  
		Last Modified: Wed, 22 Aug 2018 18:28:10 GMT  
		Size: 4.7 MB (4658201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1dd2473ba904b93e794677b1f19eb887ced4cf432960016859081608f6c1d7b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65789221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c1936bb25ea5b8e588c9db1a4f7587eee60fcfa696646a3caf8a3e5151daab`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:30:08 GMT
ADD file:5e3787d44d01e9becfe5310d3247c9ce456da1b61fb73ffb2fceb5b72561387e in / 
# Thu, 23 Aug 2018 13:30:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:30:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:30:12 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:30:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:30:13 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:37:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:78b0f13252d4e60560eff60018f22190f87ec4f29f18d3f281d66f86bec021fa`  
		Last Modified: Thu, 23 Aug 2018 13:32:20 GMT  
		Size: 61.5 MB (61464922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591efdb1deaced5d70644f3f8f54e2c94d890a73853426da8f6327a3461fa7d6`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 76.8 KB (76770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47ebe67924a57050d039d595cee9862ea3ae32414d0088e1c89ba9d23eeaa534`  
		Last Modified: Thu, 23 Aug 2018 13:31:58 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f4d91398ea2ea1cdbb0a09d99c2c6ac1c774b908b4fc0cbb51cde5af760164d`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041ad5c52989d00478fe324a2d20b5ab612311651b733da1389669b89ece0811`  
		Last Modified: Thu, 23 Aug 2018 13:31:59 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de0fc1df2121fe4051ddfb35d118b77bbbd77dde581ec785e131957fbbd2a4a3`  
		Last Modified: Thu, 23 Aug 2018 14:50:05 GMT  
		Size: 4.2 MB (4246125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:35105e76811001f4d6e174e98205aaac7337dfa055280aaed65a55b400e0a49f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67634682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e5227797512dfb1a11fb6287f90f7474d0659fb4a2b8a9bbc5384cd9257448e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 17:59:01 GMT
ADD file:cba474c8099298e2ccd54e598028a9ef109aad46d4ebe2332a1a6c88a9c974aa in / 
# Thu, 23 Aug 2018 17:59:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:59:06 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:59:08 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:59:10 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:59:10 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 23:02:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 23:02:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:009b23c943b3ccf8d495aee7d89349272ca56ca58ca682495d0db2dffb778ef9`  
		Last Modified: Thu, 23 Aug 2018 18:04:50 GMT  
		Size: 63.2 MB (63202923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f161208cb4cc6e1cf698e558f854589851ec79231208eb99480071a376773994`  
		Last Modified: Thu, 23 Aug 2018 18:04:26 GMT  
		Size: 59.1 KB (59095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59560fd8b5f880553db9706165e6c4d1aea05fcbe3d1202d1e634e63cee425c6`  
		Last Modified: Thu, 23 Aug 2018 18:04:25 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece9289805c46fcda78329ba13ec10d38ab57ca201acb62c573eefadaf251ab8`  
		Last Modified: Thu, 23 Aug 2018 18:04:25 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7819f58e72a1c92860c940a8adaf8a9b293c1d149692722c16c5a4891b13c5`  
		Last Modified: Thu, 23 Aug 2018 18:04:25 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c22a936c51c4b80ca6aa54329fbe8de34fceba1552fdb2ac6ab45e9bfdb5806`  
		Last Modified: Thu, 23 Aug 2018 23:40:36 GMT  
		Size: 4.4 MB (4371287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9a9b4cdca071f123bd047fe06b4ca28a00b92b74af26864dcebf36b13707d2c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69539599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dab6b694d84f56a710632c7dc6d22a2bddd0287bef1a3bb1a51e840a912944ae`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 15:54:19 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Thu, 23 Aug 2018 15:54:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:54:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:54:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:54:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:54:42 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 19:13:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 19:13:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:201ef7e074fac0b5587ea7a9bf2e036e9caab17c7e8de4cd9263bedb4a2fbc20`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 64.9 KB (64856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:465ed05f7e2d30422f9901d52ed3dec64a25905274677c554e104d4038089b2a`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c89f95eab3debc7f57b5c7564ef31471bb26b7fdd7926949aaca3228676d8b7`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae3ecbc05f64fbee91eec275a0e74b6b87d41c595a39e1f073fdc0cdff9974f4`  
		Last Modified: Thu, 23 Aug 2018 16:01:44 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8ba1ae19415f935ce42b3e7e4481f725e27357ca2db80c5f55a8c17156122`  
		Last Modified: Thu, 23 Aug 2018 19:35:23 GMT  
		Size: 4.6 MB (4645100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:0661a42066711073f6e9e706774b46a541d26b518e1397c846a400b19a5c8ce6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74538397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cbc2c1c98c2430efa1467d47c14dc356b8dcc71d72c590b5c722a86f5a4241`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 12:49:35 GMT
ADD file:d5908c478aeceea666ea81fa646c49440fbaed8cfa7c4ba8710ae362430d0440 in / 
# Thu, 23 Aug 2018 12:49:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:49:47 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:49:49 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:49:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:49:52 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:36:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1e40164cb1d2c51c94e7388377f55681eecd13466fd1619cf4d595e561361fe1`  
		Last Modified: Thu, 23 Aug 2018 12:52:32 GMT  
		Size: 69.8 MB (69760167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69ee733da6c3cbc157d0fc0a72f9bcdd43e432f76e65c53af1ab30b1f76b7c`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 63.4 KB (63425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32241c7aeba2cbdcd5aaaf02a5a10f48766c07ab779209d3e82a88ed812dbab0`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75f0c926284230df92c50916838ad3f39a1273c26a635a77eab94e03eecf6b3b`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2daf74a81b4c67febefbbb68d6c2a5c2433d83f7717603cac8d43a66e431979`  
		Last Modified: Thu, 23 Aug 2018 12:52:13 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a446543df74e400fc5e8e9fcd1924b9c0d21a0994a0ab7453d51a08feed32c60`  
		Last Modified: Thu, 23 Aug 2018 16:58:04 GMT  
		Size: 4.7 MB (4713400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

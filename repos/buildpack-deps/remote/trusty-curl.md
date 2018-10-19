## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:321a33c11d51f2f98cfec605266be20aeb3acc212eaab6bd63e7bea2e981758e
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
$ docker pull buildpack-deps@sha256:91de0c3620262f7a5894fc09415cd4df1b3303b33c36f226d45b8cf86d5fa585
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.9 MB (71860861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af6302bfde89900b49f7561dfe6aa8e5eb8839b36666bf0ce386ce7449d01bc6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 00:48:46 GMT
ADD file:ecefeeae93e44cb420508628b869bab5361955c66d604e32ab5cb6dca0403c1c in / 
# Fri, 19 Oct 2018 00:48:47 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:48:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:48:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:48:48 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:36:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:36:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:027274c8e1113b52e886c8f515b0abe6c67b81f17881acf3e9b7f352f901110a`  
		Last Modified: Fri, 19 Oct 2018 00:51:22 GMT  
		Size: 67.1 MB (67129254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3f9339a13595d28726bb9d01196bcae9e2409d540d276ed7ba60a6a4a226654`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 72.7 KB (72651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:872f75707cf448723cfbf8bf808539676b8a612e45f8ac6f5f64f5ed30973260`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 366.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5eed9f50d581a74ed418f044c631fd0ed5afa21c12456ff33456f30321d00c`  
		Last Modified: Fri, 19 Oct 2018 00:51:09 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f71e00156fbe8ce712996101dd416eaca68aed747f0ec695a7dd4d59ff540a`  
		Last Modified: Fri, 19 Oct 2018 01:48:18 GMT  
		Size: 4.7 MB (4658428 bytes)  
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
$ docker pull buildpack-deps@sha256:2dd7feb35908636efed5fad214e733d56b6cc82526cf9080b937e50c78a00195
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69539511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbace3d0f70edb5d739addcbe46a034b0f807e3fa6f3ab2e20e3dc7bcba3c4a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 07 Sep 2018 06:07:11 GMT
ADD file:4e9973c0799caeb26c783b755acfd3611e5beaab55a0387183995b96cb859d17 in / 
# Fri, 07 Sep 2018 06:07:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 07 Sep 2018 06:07:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 06:07:14 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 07 Sep 2018 06:07:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 07 Sep 2018 06:07:14 GMT
CMD ["/bin/bash"]
# Fri, 07 Sep 2018 09:33:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 07 Sep 2018 09:33:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:248dbc652f11b84ef3950988f05dbd94c33318973aecb154a947585ca96540b8`  
		Last Modified: Thu, 23 Aug 2018 16:02:15 GMT  
		Size: 64.8 MB (64828273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:695a02f4eb38817118382895264e9d7e27a40185b903cc140d0d4a56b90cc784`  
		Last Modified: Fri, 07 Sep 2018 06:08:24 GMT  
		Size: 64.9 KB (64859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ec9ceb0d839d1150d035b82e938a4c759774003af5a7a3e01f80ba54369dbd`  
		Last Modified: Fri, 07 Sep 2018 06:08:25 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5aa80d8cfe6cdef282e81688514b902c2283496645f67517d1b6e473c85aea4`  
		Last Modified: Fri, 07 Sep 2018 06:08:25 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c867f70c68d8ae7a549fa3cd00bc0db7f4399ae4c3dd64970dd6b044b5987e91`  
		Last Modified: Fri, 07 Sep 2018 06:08:30 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34f1bcd1e5ee32d5c4a79f720bdc351b311895fc9d1baf1d302beb4b6dde6722`  
		Last Modified: Fri, 07 Sep 2018 09:42:17 GMT  
		Size: 4.6 MB (4645007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3399afb872d3b91aeb8ca76ce81529bfb5a4a943c199741b5508b361810d1638
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.5 MB (74538916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5648e689e1d6060e419e49d97ab8201454e92f89a606354c0a0e48d461d0fe95`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 19 Oct 2018 09:17:30 GMT
ADD file:9195aac3fb00d2af2dabd98e690c8a050ca4c562980ed0ccdfadd1d90645b16d in / 
# Fri, 19 Oct 2018 09:17:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 09:17:43 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 09:17:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 09:17:50 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 10:37:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 10:37:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:a33773385468341da6d94d43c2cc7260149500c8a34a07fc0b2b0dd3216795d9`  
		Last Modified: Fri, 19 Oct 2018 09:20:44 GMT  
		Size: 69.8 MB (69761704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e586b22cce8ecf22683487189ccfb9de613609427d5813bb877f0ea5e4ddeb`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 63.4 KB (63427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:078d737ef443e92e2353a9284a7093711c5c330c195107c140c268b2379a1a86`  
		Last Modified: Fri, 19 Oct 2018 09:20:26 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3a9bf6aaf5a1d3b1671c17b1309f54f1728f4ffe7eb58ea9cb96f47639e8c9`  
		Last Modified: Fri, 19 Oct 2018 09:20:27 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c17d09bc92c9324f2218b14c36e18db6f274693a1c683d112d1fb366172e5d`  
		Last Modified: Fri, 19 Oct 2018 10:58:52 GMT  
		Size: 4.7 MB (4713240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

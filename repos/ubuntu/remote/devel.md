## `ubuntu:devel`

```console
$ docker pull ubuntu@sha256:4c578105912f70088b85c5c64632fdf6dd3f32e279a802bd9145197248125b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:devel` - linux; amd64

```console
$ docker pull ubuntu@sha256:163f734471766b5ba8497b6bb16ff4cf5591f590731c2cf4fe0ea6db21c3607a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28925579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afec222415a25d23b94a56c95e74f55c128cc0cfd5a11a93bd3405521d871cfc`
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

### `ubuntu:devel` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:9cebf5367a90902aed39390770a86b067f64e5d94231fb7a1052d7e922b17a10
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.5 MB (24499641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4222ba636ff851c21e6a4e864ff7adcdb436fe6f0397ec50d87356a10f649721`
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

### `ubuntu:devel` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:9be0ac83c995b783258d079c347fb0d49d22a976abe9b0c5a81eef271fae21a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.6 MB (26628290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09eed2fed586f819b29dc5e46b1c5272e3c904becf751bb630a8a90cb6eee66`
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

### `ubuntu:devel` - linux; 386

```console
$ docker pull ubuntu@sha256:589a601e520176093e73a6bc622be876cc3cd016c4b2f5ed7647900417c85164
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29455447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75055a509896e98e7385330f5de925af50f145caa1dda08979c438580023a5a2`
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

### `ubuntu:devel` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:04cd170f77f1f6a190196755977eb63b5d36775ce3dec8e123c208778fbf935b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.5 MB (33491142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f020bc16f214b07cbe593886166dcf4ba80c47127fbfe3e9d17eda8109c2766`
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

### `ubuntu:devel` - linux; s390x

```console
$ docker pull ubuntu@sha256:49b2695e93d082a39744caf5810d19fef072f518b412fe1dfb23b90c65a2366a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.5 MB (27544035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b58107b11e6e619d3c9be6f7237c318f6ccbd44431bf308da2b5872a7ee745`
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

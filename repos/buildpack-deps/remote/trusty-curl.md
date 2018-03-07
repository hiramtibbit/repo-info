## `buildpack-deps:trusty-curl`

```console
$ docker pull buildpack-deps@sha256:c1415d0cb7b10286b8a13b4b2cb3fd4eca5f82ad74ce7ae5e2fc37336eaa606a
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
$ docker pull buildpack-deps@sha256:bb7866532d6a4b0e1a14778f7a2ebcdf614ca6ca51a361f605fb088e1dba039b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77729124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:947f721be9b84008a9c28a9d9716441bc241be4238597425bc1d1be6edcd7383`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Wed, 07 Mar 2018 00:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 00:51:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83123bf9c00650c7a422bd727b38e852478421936cc283b489cfe91f4c1e5d9`  
		Last Modified: Wed, 07 Mar 2018 01:00:36 GMT  
		Size: 4.7 MB (4657964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:784fd36e938a21cff1e4118a600e4041ad9b239661ca36e21abedf28ceab6b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70777387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:699caae3ca78ecdc9f356c5271c5718dbee03d46e9d23bce14d725112a1525d7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:31 GMT
ADD file:9a55aba437e51909cd4e0ca96ad1862ae7d9a8cc2f866ba1cc062b54948bc292 in / 
# Fri, 26 Jan 2018 13:51:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:51:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:51:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:51:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:51:35 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:22:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:22:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:7c9a6072ec6f77fe3473e75786df356ce5aeaa10797dd489b9367a5774793fff`  
		Last Modified: Fri, 26 Jan 2018 13:53:46 GMT  
		Size: 66.5 MB (66452178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2a82d91e086b7c5d9063ba974b50bf713618d6ee7fe38529a3415a679b0c16e`  
		Last Modified: Fri, 26 Jan 2018 13:53:25 GMT  
		Size: 76.8 KB (76770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf20614b7f9ff308b6313d3b72b517be4d8592793fc26b47f8c181729479f1ad`  
		Last Modified: Fri, 26 Jan 2018 13:53:25 GMT  
		Size: 627.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8764e58b5a0a43733fc0edf405f67679a283e719305b0b35ec0be14d33413e5f`  
		Last Modified: Fri, 26 Jan 2018 13:53:25 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4ccc5351d5f5222e0946ba4ca58e206d257f26ad16f64a60f2d23d9b733e72`  
		Last Modified: Fri, 26 Jan 2018 13:53:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f498040b90055c095e0f1f80dfade88b3ead16d3cca98db8fe68e96a98f65115`  
		Last Modified: Fri, 26 Jan 2018 14:35:03 GMT  
		Size: 4.2 MB (4246768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:581bfd647b4f077aa4ce5ea0443a1bb3c14b29f5236cfcde47363064c5d72a0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72167503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0328493c59405e346b9aa6aa48fd68b31669ecd280ebdcfbb865aa3d221bb15`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:00 GMT
ADD file:04cbb20d47e69b871d234d5bd85b8d39dba62730743f5e03247861f96e59f425 in / 
# Fri, 26 Jan 2018 15:02:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:07 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:57:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:57:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:27b8af0c2f2aeb49ed54bd66eaf9f5a207b2e5ea055d08da6bf714e824a9e2b1`  
		Last Modified: Fri, 26 Jan 2018 15:09:17 GMT  
		Size: 67.7 MB (67735086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dd8a5a8a3c0e7b99424d8c268f1897d424ff6bf6e3f86041762f677757a03f`  
		Last Modified: Fri, 26 Jan 2018 15:06:27 GMT  
		Size: 59.1 KB (59100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:992d404bef241dcf9f7f59df7f6772c7ecee356c87ddbded11a2b0b3e0dd7587`  
		Last Modified: Fri, 26 Jan 2018 15:06:26 GMT  
		Size: 625.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403f3703ac8373c3436f18c598d6a3078ae3d847ab14aa50f7b5b6dc4966113a`  
		Last Modified: Fri, 26 Jan 2018 15:06:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:979b84306b7249dfbdbbf3cca7c037a5133c65577706c0479dcb22db39dc2ebd`  
		Last Modified: Fri, 26 Jan 2018 15:06:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e50144d2fb6a491866335ff994a5b0fe91ba964faf33743974591c3b1d3dc9`  
		Last Modified: Fri, 26 Jan 2018 16:38:17 GMT  
		Size: 4.4 MB (4371675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:80a58568e85af1950fc475a394013001b035835e81ddfce9c1bf205eb28cd0c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.0 MB (75032054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f866256d511cc1f208c231bc2739dd05d06dc19fd7a7759612845e89797aad57`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 05:16:50 GMT
ADD file:7a8344a2b04e97af3358da605c97d8581a655bfc34c438a88e14abe765b6e585 in / 
# Fri, 26 Jan 2018 05:16:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 05:16:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 05:16:53 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 05:16:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 05:16:54 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 08:50:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 08:50:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:0d40dedc9ad91c9731eff5c8d4a274d02f886146627f400862d4bcc3143a2aa9`  
		Last Modified: Fri, 26 Jan 2018 05:53:55 GMT  
		Size: 70.3 MB (70320768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237c39b23e6f35f682e6619cb8208fcf663b1dce893ab2e2dbd88f8923ac5f34`  
		Last Modified: Fri, 26 Jan 2018 05:53:24 GMT  
		Size: 64.9 KB (64861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d0ff879bbd8db797607e80a5e01437c33eb7a182a8f65e6dc928d65e671e005`  
		Last Modified: Fri, 26 Jan 2018 05:53:24 GMT  
		Size: 597.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8b5316a267799ed65fd7af16f67173a34932936aae687acc0e1e6ef5feeb40`  
		Last Modified: Fri, 26 Jan 2018 05:53:24 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb141aa1747480d907e104f7dc83039339da9452dad2cfe9dc6fc36f0c48045`  
		Last Modified: Fri, 26 Jan 2018 05:53:24 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9732ffa88ddb9c850f799aaf348b33b122c8aee27776fdcb76c974fc3ab99cad`  
		Last Modified: Fri, 26 Jan 2018 10:24:27 GMT  
		Size: 4.6 MB (4644815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:trusty-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:e1ad534c22c9239b751e8f96cda327d890fc789941366bb543bb1ec268d8e5e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.2 MB (79176432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4229757277ad70c74d4b073e86644b1035e9512c4ec613ea540e92eeac62cf5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 26 Jan 2018 03:40:46 GMT
ADD file:f4afe2af4925ef1291d6494f66dbe0c0fd4f2b42d6befcd474676c89690cb097 in / 
# Fri, 26 Jan 2018 03:40:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 03:40:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 03:40:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 03:41:00 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 03:41:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 04:23:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 04:23:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
```

-	Layers:
	-	`sha256:1244963d0d7a14a91e9d735d6ab613257c2246c45bc29be15f18d3ff5d08c1fb`  
		Last Modified: Fri, 26 Jan 2018 03:43:14 GMT  
		Size: 74.4 MB (74398044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4417b3efb83ff600e655c0c1c75be8df5c2e422f91b364e0afd950b506c28bee`  
		Last Modified: Fri, 26 Jan 2018 03:42:55 GMT  
		Size: 63.4 KB (63422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18b7f59a9026ed70993f21e67323f627da9820093d259f36255beb6f89546f35`  
		Last Modified: Fri, 26 Jan 2018 03:42:54 GMT  
		Size: 660.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90096e216fa35b5ce7742af33f8909524bcc8e3d35a9e2c13def12c98b961432`  
		Last Modified: Fri, 26 Jan 2018 03:42:55 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1339f6c18dc0483ace01f835dfa572b4b25b9c8e2f9f7f0cae27daf1b9c2b0c4`  
		Last Modified: Fri, 26 Jan 2018 03:42:55 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a39cf9631ffcf046f1992d83b636e8b1cd9d599a0501b11092559427a4b9b1cb`  
		Last Modified: Fri, 26 Jan 2018 04:50:10 GMT  
		Size: 4.7 MB (4713261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

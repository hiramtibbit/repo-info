## `ubuntu:bionic`

```console
$ docker pull ubuntu@sha256:33436e06d9dd37ce954eb12805a351b65676333f6371e42f86a9369016c3900a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:bionic` - linux; amd64

```console
$ docker pull ubuntu@sha256:958eaeb7e33e6c4f68f7fef69b35ca178c7f5fb0dd40db7b44a8b9eb692b9bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.7 MB (31661203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:735f80812f90aca43213934fd321a75ef20b2e30948dbbdd2c240e8abaab8a28`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:20:44 GMT
ADD file:4bb62bb05874068552efeb626f8b31b4a29f26d6cc8c7d7fc7ab4c1fdece957a in / 
# Thu, 26 Jul 2018 22:20:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:20:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:20:47 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:20:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:20:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:c64513b741452f95d8a147b69c30f403f6289542dd7b2b51dd8ba0cb35d0e08b`  
		Last Modified: Thu, 26 Jul 2018 22:23:51 GMT  
		Size: 31.7 MB (31658876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01b8b12bad90b51d9f15dd4b63103ea6221b339ac3b3e75807c963e678f28624`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5d85cf7a05fec99bb829db84dc5a21cc0aca569253f45d1ea10ca9e8a03fa9a`  
		Last Modified: Thu, 26 Jul 2018 22:23:39 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6b268720157210d21bbe49f6112f815774e6d2a6144b14911749fadfdb034f0`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12192999ff18f01315563c63333d7c1059cd8e64dffe75fffe504b95eeb093c`  
		Last Modified: Thu, 26 Jul 2018 22:23:40 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:64f029ee13299b6afe4b6410e0f887e0f9b166bd7fe8eeecf689582b6a0c3fe5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.9 MB (26940207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec875438e96e947ce24fbe147e60df0baf715c4849d3524f726ec88615b316bc`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:21:57 GMT
ADD file:aeb281d640e05709f27a7bd05b850d1f13602ab63c3182df6ecbd72a215caa59 in / 
# Tue, 17 Jul 2018 13:21:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:22:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:22:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:22:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:d81ad7e8dedca0217770c02345ac2ec31105eb6a716cb40340365bf3303958ba`  
		Last Modified: Tue, 17 Jul 2018 13:24:44 GMT  
		Size: 26.9 MB (26937866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc32849e56f09e1df99922dbe9a1dc567c3ca76ce4e1d62125e8777bc177ec6b`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1a7c883e79bb9ad4f98b1fb3a1328496596cafd31e38da455f4f7a8c72cde7`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f11fb189b434d1140a14208c8be40006d7095eed8b33992ae39f66cb4fe79fc`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fa5deb5232bd1ced8a51793e85d06e1977d36b1773586481c081af034e7adf6`  
		Last Modified: Tue, 17 Jul 2018 13:24:37 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:032b913c9b0eea0ac0e6a4690b44276d21976a9329bdb71326bc5c1f93762595
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28391272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770f7eced7f1c09008dd7f3788fc7a4074f1767f93bc9488b75d54172fc3cb49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 14:16:23 GMT
ADD file:b1cfd50515c203e5b6ed84762832c4beda7184f84ca0ece4400eb81252886e18 in / 
# Tue, 17 Jul 2018 14:16:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 14:16:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:16:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 14:16:54 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 14:16:55 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:bd7c0df17ef0a0308093675a9cb4411b97842a13fa1566d351fe3ab7f775e802`  
		Last Modified: Fri, 13 Jul 2018 22:46:30 GMT  
		Size: 28.4 MB (28388946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e4f7af7eb85b844343214c70cac1867e05e53bdc188e95bc86a5293d0a7bef`  
		Last Modified: Tue, 17 Jul 2018 14:22:20 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24d321de37cd17c996a31976af04b12bd9cadeb3611933a9d79f3a2b7a2382b`  
		Last Modified: Tue, 17 Jul 2018 14:22:20 GMT  
		Size: 457.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bef98abb83f17be0c8b4bbf052e9e28ac202242b9bd702023d46a5289201895`  
		Last Modified: Tue, 17 Jul 2018 14:22:20 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2d0047933f61cf1f8f216012a04755def23e2bc2cd4af73fcc4843f0039e114`  
		Last Modified: Tue, 17 Jul 2018 14:22:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; 386

```console
$ docker pull ubuntu@sha256:50bd346089fdfa5eb3cd940ad1ac7b9bdc5b7cb199c0e07bcb69be5f2cacfcf5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.9 MB (31866506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef5511aaee66d1e904bb876f878a169fdcf7f5270f80bbfc7649c214e4a881ed`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 12:32:43 GMT
ADD file:91b8efd11811cc1350deed86bf1b596184849e7c9d0d571626e85ba5414abe16 in / 
# Tue, 17 Jul 2018 12:32:44 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 12:32:46 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 12:32:48 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 12:32:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 12:32:50 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9dd9643b519fc2fa2e9d18f89795f7eef2880b22601d4b06efef181160fc2e67`  
		Last Modified: Tue, 17 Jul 2018 12:36:00 GMT  
		Size: 31.9 MB (31864174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a12d7acfc4f3890e0c68de6b8dba6eb738e45e7a591f26869c05accc3ac18ba`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1162f4bba59b57d2902fb207fed7bf71e8823dcac713d502890264f3872ca104`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac8ff944b15a693011c2f14d971119a5686f9f78fbace70c1dfeb3cc9c278aa`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68d6d682511e89c3a3db660591b758e98fe70c36f90371a517ecc0dea26ece`  
		Last Modified: Tue, 17 Jul 2018 12:35:50 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:53b3ab5163b15b6e27d729738d3ab98dd40aa2154b50ad4321b01dbccea278bc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.0 MB (35029752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b82389bf3e5117309b9407fedd331d79960da70186455faebdf39c4e3afeeae8`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:21:44 GMT
ADD file:760e84797c21d62195e5690c1ac346e0e012c83d721b1d57365c8531c5aeef19 in / 
# Tue, 17 Jul 2018 11:21:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:21:53 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:21:56 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:21:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:00 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b9db97d251a21578f4739c155135fdef255851bf71e1d236ff50b36395f3bea6`  
		Last Modified: Tue, 17 Jul 2018 11:26:41 GMT  
		Size: 35.0 MB (35027327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958de27a231af36a292b67ccfc87cb18744f2c595e56bc130648e9a75fa398d7`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1dfbb3bcf01c584e01e3930c499e3495a1e246e5c28920885ee817a8ac18dfe`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914ba5689e73232ad03c695c45009a0bdb6bf16a1cfaeb6be99090a6a3eedc9f`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4d7ce343a96e76f3439c99dbd68ec93effecba6635e0577e140c0fa36580cc`  
		Last Modified: Tue, 17 Jul 2018 11:26:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:bionic` - linux; s390x

```console
$ docker pull ubuntu@sha256:b1e9335d4ccf6bd295606d9fda0c33c0ffbf44b68fc6ecef87384c41ba8d465e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (29955710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:092ff779378c4c2b80825b2aa0a9efd59c08647787e78578b5b6c5cfa8f78a00`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 13:07:35 GMT
ADD file:191b23714357ec3487cff15c86b283e361b080b3db44c423f202b7c38cf65673 in / 
# Tue, 17 Jul 2018 13:07:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 13:07:37 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:07:37 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 13:07:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 13:07:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:b064c47be947fe41a1287f5773233cb5cdd6de0d47f9c32bc9220114124335bf`  
		Last Modified: Tue, 17 Jul 2018 13:09:05 GMT  
		Size: 30.0 MB (29953395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:910d67305d2ef5492c2e410c5ff0313619de7e84510941a0f6e2a3b7d96e87c0`  
		Last Modified: Tue, 17 Jul 2018 13:08:58 GMT  
		Size: 843.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c7a1749f3da01f71fd1efd0b8220dd81c641bb33f221969e0595b5b20d715a7`  
		Last Modified: Tue, 17 Jul 2018 13:08:58 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35d46a8dbec19ff652195f8bbb90d50888911884e810e1009477da112bdd66fc`  
		Last Modified: Tue, 17 Jul 2018 13:08:59 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a2473622e40eeff996b0faeff2262f676c3f70acd944e341c9d427517c31330`  
		Last Modified: Tue, 17 Jul 2018 13:08:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

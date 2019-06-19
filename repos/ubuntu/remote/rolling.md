## `ubuntu:rolling`

```console
$ docker pull ubuntu@sha256:db265801d395a88e15ed4eac372693012275a1a181d1032ebb0cefdd01e5a99f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:rolling` - linux; amd64

```console
$ docker pull ubuntu@sha256:41ef647cff01d0f5990f2e22b85c393052df387cf588a39950b66fb576b21cc6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27651552 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86f1f717b6d869c9af906d8ef5ead7ae976a028203ac21821bc758997aeef726`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:52:33 GMT
ADD file:d3be43e0fdf0de92d585df42af7bfa7fab5072d1173bd42c7469fd49462cad3c in / 
# Tue, 18 Jun 2019 22:52:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:52:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:52:38 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:52:38 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:29c2f229a1281554ccce1972738cfb3232c4ace59343b4090d6e09f148fee588`  
		Last Modified: Fri, 14 Jun 2019 14:45:48 GMT  
		Size: 27.6 MB (27619579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d724aeeb8846c1a94a323f756fcf2ae6ca4e573edd64266c2c220a7951827b3`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 30.9 KB (30946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60682405dd89aa6c1621f0f2df2ba6b430402c5b59c27b6c71af92b07e535893`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b9cd020258303b6913dc8e15db14030877decb816e87cde6fc4d24b060881a4`  
		Last Modified: Tue, 18 Jun 2019 22:54:20 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:29476c35c841c7e4b3ef26bf6810db86419a3dbf161c0c031e90589a55b9e84e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.1 MB (23148839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:382de1d3f1dc27baec5ae5b257a6ba68ddaef50a8ee147f9eeacf127e94100b7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:12 GMT
ADD file:c786ecb3cca2049794dbe978427d3ba71d82f6c499e1bbce3fb6580fc0ab3ac6 in / 
# Tue, 18 Jun 2019 21:59:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:ea18fb6f0291dc0209d95d15664beb0cb15d2baf6c95b35e53d683c0c74fdd22`  
		Last Modified: Fri, 14 Jun 2019 15:05:59 GMT  
		Size: 23.1 MB (23116823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0427bce7903a82bafd6e55053eaf424abf1df065080fcddeff7a6fd8b9d847e`  
		Last Modified: Tue, 18 Jun 2019 22:02:36 GMT  
		Size: 31.0 KB (30958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26e4cbeba8d154632411315815ad759e1a46cd09a4248a286d8432554589fa3`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 869.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56838bbc842516cc29051e34f67989619b1be99791458dc5d759a1a32b81012`  
		Last Modified: Tue, 18 Jun 2019 22:02:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:59e42258cd844b24dfb4f624aff6044e5258a6e78d027fd85dfb0f311df01cca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26412400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32cbb636a987ccb1144dfbc03ef8dcf0bf13aa7c068a8a025ee403859668f7b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:51 GMT
ADD file:51d533e3c130665bdef840634216eace004cf6985ad8964387483655aa4779dc in / 
# Tue, 18 Jun 2019 21:40:53 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:56 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4488dd9973772f1f778e425ee910dc6d2321ec4e46726567d298ae48a850c49b`  
		Last Modified: Fri, 14 Jun 2019 15:00:37 GMT  
		Size: 26.4 MB (26380585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff7293bf9b79f4f8aa641bd4b3d82bd01d1ab7cd97e5f04b7802583791f9f9a3`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 30.8 KB (30762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a14d698dc993abf15832a33e640a84f658159c7fbc11e02dfa27cc96e0fab7`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 866.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63aef2f774539d4eb2f3f72e10cb76e1b902947d34054134059e4a0615435264`  
		Last Modified: Tue, 18 Jun 2019 21:42:12 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; 386

```console
$ docker pull ubuntu@sha256:d6e2313a3e978de63e5df750833f95e15d7a552af9c805c66ba742038b6db07b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.3 MB (28313256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa88d866d4892ef3a933a2bc84db54da7576c8a3f8b936063bfc51431aeba34f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:39:46 GMT
ADD file:ce5cc7fe51b6d87c2e584ba7eee2fcd877b230bce289d7ab2d5e1c7a4c2a4aaa in / 
# Tue, 18 Jun 2019 21:39:47 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:39:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:39:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:39:49 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:a3a0dc03da3aae711d76416b6ace833014f072b2c95dc7d155723f073e96aff5`  
		Last Modified: Fri, 14 Jun 2019 14:52:45 GMT  
		Size: 28.3 MB (28282006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab68a4f5e08981094ec4932772d919c9c68958cbde54434373b1330cf657e670`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 30.2 KB (30226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aba84b50f59f5e892e684a5ecfbad0a57e8aa4f1c7a8780dc21ceb7aa3cf02c`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:196ac2c35f627ece86a23d32066ae615cd58c81c5ff4477a35fc9713a458e21b`  
		Last Modified: Tue, 18 Jun 2019 21:40:54 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:f896e5b401bd7ed2ee5b699b7c7f917593cecfb20a56643e3f7a5984c2dc6518
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.9 MB (32911121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a367d887c7a4965434155e3f375f6826d0b89d326963f53dd9b74a9511d9c01f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:12 GMT
ADD file:035c9b3a2be4bc6300456ee4c0b215f0d8f493454877d89bf5e2778ec4a3f0e5 in / 
# Tue, 18 Jun 2019 22:49:19 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:49:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:49:31 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:de621b88ac71e8f3ff0b5ad60a86f0e657bd2b373db00864306fe6564297e433`  
		Last Modified: Tue, 18 Jun 2019 22:51:56 GMT  
		Size: 32.9 MB (32879271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7592d78c5bf3ac58c488cb07d787d530c6f8b89858611579fbabd7bd9c12f69e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 30.8 KB (30794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba2d1c08869c0eda4feffa6d2dd7da20bd3b8943625a5bf027d14f98fc411da3`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 867.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57ab1bd71775377d66eb3b0df9d5da7744ad65b3991094527234f23ac53b13e`  
		Last Modified: Tue, 18 Jun 2019 22:51:47 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:rolling` - linux; s390x

```console
$ docker pull ubuntu@sha256:cda5621b377fb66a817c39f8c1e091cec4ab8a059c3770f29c46eb5e74e1ee67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.2 MB (26234850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325a003592ae5ad698e75d177bf27dd4bd0e4299f9d9e21fd081ca79f1c6f634`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:55 GMT
ADD file:e987de5e550cbdf23b185c00c1148504444eace5c57dc1b69187b76fe436b153 in / 
# Tue, 18 Jun 2019 21:42:56 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:58 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:58 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:28969797777b946282ba2b657e0bdda5b3e21e53eb7cec5eadc5c3e1235161d9`  
		Last Modified: Tue, 18 Jun 2019 21:44:39 GMT  
		Size: 26.2 MB (26202274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8520ba91e006a8790a2cd4077d96a35757cbba72f08eccf09cac51047b4c4c`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 31.6 KB (31555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:942bf22444641d8df6c36a1bed04f998db82e46bafc3fa2c8459c262a5663aad`  
		Last Modified: Tue, 18 Jun 2019 21:44:34 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9f2dd675a65c49dc282ce884812f201f4bad9d8d6fb099db6bc65e0e64e940`  
		Last Modified: Tue, 18 Jun 2019 21:44:35 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

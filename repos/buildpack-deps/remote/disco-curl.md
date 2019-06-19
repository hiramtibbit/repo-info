## `buildpack-deps:disco-curl`

```console
$ docker pull buildpack-deps@sha256:7bf0c85c9ca828a9179199883feed4c5c165e7e2465a939b2069895f3cdae462
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:disco-curl` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:d45b2c0c5415966bbe60684b0137bcb6f2a47afd53ace62d09b6afa03285ce3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.9 MB (39908649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:595fb731bfa79d3db4c066d4c36b5b583468fb3b5a808c73c5a4e579cf91e77d`
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

### `buildpack-deps:disco-curl` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:420e4a8f73dcd84938f23d76dc1832545f08fcc03d74215b36276fa95484c2ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.8 MB (31767472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8f2a3b85b9f2a443c50876a0ff5477aac115441e5a5f46d80187423d4f25fb`
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
# Tue, 18 Jun 2019 22:32:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:33:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:51b346b62a23fb3bd9609273ea97e696fd323cdd21a54828c3fff6d4b8408bd9`  
		Last Modified: Tue, 18 Jun 2019 22:44:48 GMT  
		Size: 5.6 MB (5642005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7833274d62d8ae1ce712799c22f22f047ef6bd07f1d8216a6a41a45ad806cf3b`  
		Last Modified: Tue, 18 Jun 2019 22:44:47 GMT  
		Size: 3.0 MB (2976628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-curl` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:4d0fd79f1ee78100f1025e2e214ffa8ff0daa3cb260e75e95f1c9b0a01a4758b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.5 MB (36458592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:752df011cd6b373844b4c46585f5a6ad1759ded2693f1acb79d6737f292932e3`
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
# Tue, 18 Jun 2019 22:06:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:06:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:97dc06570e61d5f9601a5434611d18f3c4a66f2956713ebf772600862ee3e00c`  
		Last Modified: Tue, 18 Jun 2019 22:18:05 GMT  
		Size: 6.5 MB (6539965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237f859ace831e42f4cadd2f371d49a14493d58e67b227f78124e5eec284e380`  
		Last Modified: Tue, 18 Jun 2019 22:18:22 GMT  
		Size: 3.5 MB (3506227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-curl` - linux; 386

```console
$ docker pull buildpack-deps@sha256:62b7fd68b99a017a4123e6be7fad9d3b90519e89d84e9a5bbaacb8ab3ec1172d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **39.1 MB (39098571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53b96ffa977af5b4af25e6196be7396e16d0cfb49a1358065cf956c946192a25`
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
# Tue, 18 Jun 2019 22:16:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:17:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:50b2f204ee98219aafd53a4c5905ffdca387afe958695ceed1fd803159ed478d`  
		Last Modified: Tue, 18 Jun 2019 22:29:22 GMT  
		Size: 7.0 MB (6980226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df97a5b9fddbfc85abb8c63aedb65b0468286b5fff823a9224c3c56804f299b2`  
		Last Modified: Tue, 18 Jun 2019 22:29:20 GMT  
		Size: 3.8 MB (3805089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-curl` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:30d3adb83283a6301f57314dd1dd7ea43eaf79fc3fc02e7150fcaaae564c113b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47197887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:222f659872425110886742e554dcdefcba7ed68e1285cccb030c163e866449da`
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
# Tue, 11 Jun 2019 01:40:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:41:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:5df4c1df24d71c03b4dd1c78b51fbbf4f13599d66706b52b6583979654d085b2`  
		Last Modified: Tue, 11 Jun 2019 02:51:02 GMT  
		Size: 7.7 MB (7742015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6764f2f625b21f04ab716732bf74b03959e5b291b044b4d133091224c14dc28c`  
		Last Modified: Tue, 11 Jun 2019 02:51:01 GMT  
		Size: 4.5 MB (4461115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:disco-curl` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:4454545ed7169332fdcd0ef459da5ce8fb1ddddc10bfbc998572e478154765aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 MB (35894016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9055fe8c49d570972e9cc42e9b6db08cb443d092ccfee989088cbe64058d09bd`
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
# Tue, 18 Jun 2019 22:08:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:09:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
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
	-	`sha256:3495fdb2a124f6351e8c029c4278154054494bbca8344ff8d88a472f41878592`  
		Last Modified: Tue, 18 Jun 2019 22:23:49 GMT  
		Size: 6.2 MB (6229611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4b2f421e4c0d9176c1247661c1cae994207d71330cc42396031563fd06a23a`  
		Last Modified: Tue, 18 Jun 2019 22:23:55 GMT  
		Size: 3.4 MB (3429555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

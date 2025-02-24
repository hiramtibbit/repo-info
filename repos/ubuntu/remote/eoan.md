## `ubuntu:eoan`

```console
$ docker pull ubuntu@sha256:1f89ef5186c9da8ce0d878b039ed925c2c807ecc3aa16e7d4a4b55650faff5db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:eoan` - linux; amd64

```console
$ docker pull ubuntu@sha256:dfa784277cf14813cd6ecb23685ad7cd55eafed0e245011bc4fb793f0cd72f21
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.9 MB (27898858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76749da58329a5f2604c69a3077a89b966ce9c5004440729a552977e1eee43bf`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:01 GMT
ADD file:246898d8b8d12e32034b6f6aca04644c5a4a17ba58ab5702bd38691409b9805d in / 
# Tue, 18 Jun 2019 22:53:03 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:53:05 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:06 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:7a4ee70a93f16acda872e6732cfc91cf091d84c8816fd4e64ebaf4f702503322`  
		Last Modified: Fri, 14 Jun 2019 14:53:26 GMT  
		Size: 27.9 MB (27866734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85fed88c4f3532b04925a9a830c0736c2c578b1f60f57df7ad37fd71f9a3aef7`  
		Last Modified: Tue, 18 Jun 2019 22:54:33 GMT  
		Size: 31.1 KB (31096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742573599d90652bf5c9979a337c9acb06987b9a0e2b3e8f1c8ea1203b31d294`  
		Last Modified: Tue, 18 Jun 2019 22:54:34 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a2294e1dd850340a269438c89a97d6438d79f542d023a9ff50109b58e4a93cb`  
		Last Modified: Tue, 18 Jun 2019 22:54:33 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:e1947409e93849e56ee931477fdcc2d6e2f30b78ec4f7a82a13d7917fb025b78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23368160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a3a824942420486b9613620e045e9ff80ed1dd6b3e91f7348de892a8f7a2738`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:59:42 GMT
ADD file:13a0a5d5ac5fd9f5e744c3ade1c449714242bfd6e6d4ab5947d2654a4cb0939b in / 
# Tue, 18 Jun 2019 21:59:44 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:59:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:59:48 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:59:48 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:093b5a5be11381a9e3e16faf90484a693930952a7e61b0f407053f04572ba866`  
		Last Modified: Fri, 14 Jun 2019 15:17:34 GMT  
		Size: 23.3 MB (23336045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e53e8d9751ae42b9c4bd968302fc0e8acce303f99278c0e9da5f7696cade45`  
		Last Modified: Tue, 18 Jun 2019 22:03:40 GMT  
		Size: 31.1 KB (31065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ced319c4018dd4ecf59fc8dbcd289a8f47ce09cb0825b2cb7ba33cf23a40f9`  
		Last Modified: Tue, 18 Jun 2019 22:03:39 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1bf27384df0a97bbf29d183e55955449c05472587f6ee798440de73fdd6d099`  
		Last Modified: Tue, 18 Jun 2019 22:03:39 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:3e69dce53edd67f9c5b1ea7ac7fa0831359b96efd97e28bd3c153469d703b24f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.7 MB (26683914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5acdef155c952b67f8459923819aad0dfb820c9d028eecee8131b4727228f66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:41:06 GMT
ADD file:8ab5b89ecde7b7324ae88650ff35da0069c5a726e48d4a5a59ba5dbaa3134c35 in / 
# Tue, 18 Jun 2019 21:41:09 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:41:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:41:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:41:12 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:001b4d0e4873cd7b807ac669067dd2e419025cd286c1b1b50eaf11e02db74ea3`  
		Last Modified: Fri, 14 Jun 2019 15:19:00 GMT  
		Size: 26.7 MB (26651936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed9b320417a111a68a6d171273094d7056564a106f05e8c974cf48874614086`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 30.9 KB (30929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c69edd61e86f891e8609bc56b82bec3a0e1aefae701eb18aec645cb2376f2c2`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492a94da25f0a11fabb7cb57b281f5033e26bac97aaaead8ba5a09fffe975957`  
		Last Modified: Tue, 18 Jun 2019 21:42:26 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; 386

```console
$ docker pull ubuntu@sha256:3c5a6107388c90013d87e83a2b233747896f774750c25665cb05a1619da61b06
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.6 MB (28573045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7684828caa1a6f64d1a01ed1eb9035369f63713ed72a97213eaddeb26044cf87`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:40:00 GMT
ADD file:90b2615aa033cb9d9ad43ac3b49f05303878c6cf4987aa7eeeb2bc6a53acc72c in / 
# Tue, 18 Jun 2019 21:40:01 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:40:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:40:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:40:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:57fde61b6beb9a88f462d8121037e47ea180981359b989091c622ce4bdc20941`  
		Last Modified: Fri, 14 Jun 2019 15:01:13 GMT  
		Size: 28.5 MB (28541662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754f1a3e02e13d01a1a2ad9f839da22fa46774c6c64e917430e64760a84e23a8`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 30.4 KB (30357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16a194f726e196d64ae84004ef210797ea38de14bef0f6564ba9efe6b3d5bb5c`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283c6edb846bf0b93c11d8f761ac951f0da1d878bb87ea243a2d56f8129bbf4a`  
		Last Modified: Tue, 18 Jun 2019 21:41:06 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:69be7cea6c55c165de4d56375ae9e4e7a295d0c5e332a3cb6a7500e0c0bc6649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **33.2 MB (33182586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dad5858c20d4c68e3984f808fb3b2c364dc36863337b6096d6019d36b25f7328`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 22:49:43 GMT
ADD file:ca6fa29d3c731eb0288baac26414c077581fd1744d7382519b534e99b94c7cb1 in / 
# Tue, 18 Jun 2019 22:49:49 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:49:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:50:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:50:03 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:62b1a931ccd57b210eb4af31f71fb370eb40c649bbc81ba4f706339b1748421a`  
		Last Modified: Tue, 18 Jun 2019 22:52:21 GMT  
		Size: 33.2 MB (33150588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efadea3a433bf0169d704d389f504b18a4e6b3480f41810993db7ac0b2b76f64`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 30.9 KB (30942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c2f426f01dfcead0362f8071ad350025701b1db1c7e4a2cbded1c7d52f05c7`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 870.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19c01e21eb7820833d8d820472b4d41d2d386cc034ebd96fbbd5693a34e06614`  
		Last Modified: Tue, 18 Jun 2019 22:52:12 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:eoan` - linux; s390x

```console
$ docker pull ubuntu@sha256:77086fda05783728fac2b4417a1daa29697a35a6754fbce502dc9ca2b0087789
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26408191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74f50de9afa7003777803388cd6d8e51ef6224ff0c4fb5aeb812a11e43f7fd7e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 18 Jun 2019 21:43:13 GMT
ADD file:e1545c4c48849b8ce225e08fac0c5320b1f8f85424d54d186b2f75ceeba394fb in / 
# Tue, 18 Jun 2019 21:43:14 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:43:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:43:18 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:43:18 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:f0eee9a15e04c0e9facf6af79046b48bc1751306a8259a981f5c34e1e4c9ae1f`  
		Last Modified: Tue, 18 Jun 2019 21:44:53 GMT  
		Size: 26.4 MB (26375495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2abc3077a37fa96a7583cfb9c5c9d63f8a08cf97955cef27e5efd1ae26144ed`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 31.7 KB (31675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:225496535545d280240464cfb80daabecdd8717d619d91da24d598d332ff47b0`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267abe397d54fa8b459b1aa5a2685336a0126d5046e5075f16efe432c0ea505b`  
		Last Modified: Tue, 18 Jun 2019 21:44:48 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

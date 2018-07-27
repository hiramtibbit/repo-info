## `ubuntu:cosmic`

```console
$ docker pull ubuntu@sha256:6cff676046210a148802196c084e2edface896acd41cf923cc7abd11674cc93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ubuntu:cosmic` - linux; amd64

```console
$ docker pull ubuntu@sha256:a71973b68fb20bb859eea71e999f75b33c0c8020426052246c0c279afa5a8129
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.0 MB (29016642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f17aca1e0aaaf957d19cfbfd00be35dd4c51d60b7627790f970a66bd41ea95e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 26 Jul 2018 22:21:41 GMT
ADD file:9f51aeb71bf83f4ceaa8d08d531b543eb69f30598f238c91f039bcf7e4849cf4 in / 
# Thu, 26 Jul 2018 22:21:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:21:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:21:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:21:44 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:21:44 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:94bc1be7d76593319fde8d41d8d93f08273fd256d6ff90659454f6c43febf6d3`  
		Last Modified: Thu, 26 Jul 2018 22:25:34 GMT  
		Size: 29.0 MB (29014770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3047be2c09afb87b05bfd89770ad0d1399b1d5be52caec4ce668f38b9a317abe`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28eb6bec125e419dbc7b2e152e49003baad411abda8f4add65007609ac9f95f`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c9f08583bc24164bcb79d3a21f42e934bc8afb8ba968badb2fbf491fc0dfc35`  
		Last Modified: Thu, 26 Jul 2018 22:25:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm variant v7

```console
$ docker pull ubuntu@sha256:70e4541724e685975006c7af309538f70ad7c7da082797e887311ed3add5f5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24575347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e6b5f51901618c3538c97d7c5aba9b242193156b3b6091b0b14b180afa45c2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:43:14 GMT
ADD file:6d6d6faf7366cc26f9b3fb467990c193d890d7b7c7fc63d743f5cbc50ce5fdb6 in / 
# Fri, 27 Jul 2018 12:43:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:43:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:43:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:43:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:43:27 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:223edca7d108400eb184eda52ad1c74c3ffa7669318b6d6a56246b80ce1c9020`  
		Last Modified: Fri, 27 Jul 2018 12:46:03 GMT  
		Size: 24.6 MB (24573445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a76a04e15a74d044073e2856e003f5ed96b77212c0c0455809b9d12b38e8e1`  
		Last Modified: Fri, 27 Jul 2018 12:46:00 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0ec01e51e513f7ef2d78fd575ae734e4a34458874f839e2ad0be948e3548168`  
		Last Modified: Fri, 27 Jul 2018 12:45:56 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:348e72bc25d5fcae2a9a8463b84b3a7f8fbae1e3758e20bbb96736c1d9466dca`  
		Last Modified: Fri, 27 Jul 2018 12:45:57 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; arm64 variant v8

```console
$ docker pull ubuntu@sha256:727a247158515ffe5d8fb808d0cc2926036eb66bb1080885131e3de8893410a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.1 MB (26075065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5ec9984207cedbeb19d3e3411a05399f3ab5f9246dafcca3a2f3af7594d8fca`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:09:58 GMT
ADD file:a0ef649aa573d5183e1b8ed78b5cb0e396420715c5d9b36b5400b637114c9ed3 in / 
# Fri, 27 Jul 2018 12:10:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:10:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:10:04 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:10:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:10:06 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:764d692f68fc6918edf65e2b3717b5c020758bb66b2f54f35c7f6683da7855fb`  
		Last Modified: Fri, 27 Jul 2018 12:13:46 GMT  
		Size: 26.1 MB (26073183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d6f15e4fc9beb0827fe37d54407eb55255321d406aa462877eb775601f77e34`  
		Last Modified: Fri, 27 Jul 2018 12:13:38 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b24b8d4eb5cfb2fee1731423cab6c6dd71af24ffcff123a15f7c7331f607b4`  
		Last Modified: Fri, 27 Jul 2018 12:13:37 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f6fe413b3557ad68112312c94991724d3e90c2b723b9b4c3f57eedf6ffa989e`  
		Last Modified: Fri, 27 Jul 2018 12:13:38 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; 386

```console
$ docker pull ubuntu@sha256:15711827ebb25b265890f14c7ce9cd30c7cf6ec84959f754695a689763796da2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.4 MB (29427679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:057c12362bd2caa489adac24ce0e76529ecee68b47302f6057b1a069d7ff936c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 11:03:12 GMT
ADD file:e6bf0df5451e3b55cd4319c6398b8d33aa56c63ac38d1265dc0caf17b2fa3245 in / 
# Fri, 27 Jul 2018 11:03:13 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 11:03:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 11:03:15 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 11:03:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 11:03:16 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:4ba4efd6989f76364156cfe5c4476d4b3472b917635c19d9075d4cf0bf203f1b`  
		Last Modified: Fri, 27 Jul 2018 11:06:37 GMT  
		Size: 29.4 MB (29425806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d841a8d2107bedfb67c6e301b656a42eea50fb718b07d3db32479b287c97a54`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 859.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9046aebf445dd4f78d444b1775b7538b847c140a10b6df2e8c37419f0211498`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:966ff83306ede63af38adee7a693b743373dcb3273a3a8b2ce76ea43764cd467`  
		Last Modified: Fri, 27 Jul 2018 11:06:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; ppc64le

```console
$ docker pull ubuntu@sha256:126e3ca03179473412af471a754cbf224c28537eae8ab52d309cf0ccbb3a1b76
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **32.7 MB (32716770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a20b25a66b50ceac628d25b57cb03f8b690277e1ec74dd4f6b64e16288a58de`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Jul 2018 11:22:20 GMT
ADD file:37c0c48b0f302939d0acfbd9bd05f1b8f5f3754350ddbac01b5f7f6228cd524f in / 
# Tue, 17 Jul 2018 11:22:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 11:22:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:22:32 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 11:22:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 11:22:36 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:15865920a7de90e2ab21bc983b0fbce3bcd5022bc6087adbc3b0418ee8235273`  
		Last Modified: Tue, 17 Jul 2018 11:27:30 GMT  
		Size: 32.7 MB (32714865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145d279ec60b7680440564372a81250262e8e4773819a9ad63f321023f256b09`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 863.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c8ea0a1bc371343ba0c2a34e55a3d68ba9a508b9aaef16ff387b98aba56b899`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6091389178d590f17408cc7be695b01e12ac3a51f31c8dc836687563d2e905e`  
		Last Modified: Tue, 17 Jul 2018 11:27:20 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ubuntu:cosmic` - linux; s390x

```console
$ docker pull ubuntu@sha256:b400ad68835b1fb395181efb6fb9a8651d42bedd4daa5bc059844760082adf6b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **27.7 MB (27662628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7abb698a1a5e212eeffa6362a211d5b4259726e26a130b3ae1c9f498d8fad913`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 27 Jul 2018 12:59:25 GMT
ADD file:48017b0ab01f8980fd8ebfd8c5c6e0e5d22b63c4854045edb9dd6d855d060da4 in / 
# Fri, 27 Jul 2018 12:59:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Jul 2018 12:59:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 12:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Jul 2018 12:59:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Jul 2018 12:59:28 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:61116a870ed3705821e672d98265864409d7d34f3d448c983437666f22566217`  
		Last Modified: Fri, 27 Jul 2018 13:00:32 GMT  
		Size: 27.7 MB (27660753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1874fc2d357c631f761f335e63893740a1604f6ef167c66f0e0f1e762d7c3eed`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ceffdd4c65b0e399ef70f1e5d6b07a4d14fe5a4c3b4cd774f7c84a7de117cd`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2919bf5e092a307c8270472daeec23afa904aae520a2f680e10d0a80ede4410`  
		Last Modified: Fri, 27 Jul 2018 13:00:27 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

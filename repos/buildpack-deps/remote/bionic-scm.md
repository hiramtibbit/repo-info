## `buildpack-deps:bionic-scm`

```console
$ docker pull buildpack-deps@sha256:0bb6ece2bedc29bf6dd1fa94e3b38aa375991d5fe7615058731c39ad9b39c2f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:bionic-scm` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:6f6ea88fe82d7e392a019fac57addef2669217673bf39b2e4fd3af834203fea0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88603945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48361f2788612f92d266816014928c0f508fc3e58da2a667f50936032ed199db`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 22:38:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:38:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 22:38:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f6f148dc2948b9c13e5a168dc8bbac1ebf0c1f68df3ef91061ffe90d60e9ff`  
		Last Modified: Wed, 05 Sep 2018 22:51:36 GMT  
		Size: 5.8 MB (5825927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8851622959231a9cc652be5f929464abca5654a1693c73e7d83f4e48c2079c3e`  
		Last Modified: Wed, 05 Sep 2018 22:51:36 GMT  
		Size: 3.0 MB (2958438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f0e17ede42dd0855cebabb697629a92449a6fe82295af08c81da00d5bbd5e8`  
		Last Modified: Wed, 05 Sep 2018 22:51:56 GMT  
		Size: 48.1 MB (48059874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fbf814a4ff1266a79d7d5f4daf6c68c1ca92b6712512dfcfef114e10862bdf7e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77892159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d6c1097e086305d708baa3da00df34a82b43cdcfbf69b41784515239bea238f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 13:29:21 GMT
ADD file:f15cbff8d74891f1401f6e7f27502f7bf45c8a4c30054a8c23224b3e9629314d in / 
# Thu, 23 Aug 2018 13:29:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 13:29:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 13:29:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 13:29:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 13:29:25 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 14:26:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:26:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 14:27:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bca6ec5b89c4a31091b27541e4838ef3a204105cebb544ce3600b2584811540e`  
		Last Modified: Thu, 23 Aug 2018 13:30:55 GMT  
		Size: 27.2 MB (27167440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eadf4d1c3fab0bf807227d06f578e81cbc58c72f389da721bdf67e95c4e23a6e`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 840.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38ba9e49ecf13fa83d77d03bac48fbd2d506ca32d3d581df8995e1024f085203`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 455.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a29fd3e166029462053d78de0dd5ef15dfbb542ff4b0374c82ad3281bb49231d`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a08f32902ceef3d4e1453674ac9c0fa5f849aaeaefcff172299842d95f88207`  
		Last Modified: Thu, 23 Aug 2018 13:30:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1ca7b706815f2f968a2d55ddd6138da9c4a88f5698814b4f0073e94ba70d53`  
		Last Modified: Thu, 23 Aug 2018 14:46:51 GMT  
		Size: 4.9 MB (4921708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b7320f98b4c92a1112182275b50308bb86d021e968f83075a8bc97b1f452c1`  
		Last Modified: Thu, 23 Aug 2018 14:46:51 GMT  
		Size: 2.5 MB (2520596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5dd463de9afa9323e0e1d67c36c3b99ce18d913f1bbfc141e2fffd8dee91c9`  
		Last Modified: Thu, 23 Aug 2018 14:47:21 GMT  
		Size: 43.3 MB (43280081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8248695d06054afcd77019a77c93b7c83771f164040ec6f0c4d42b5c5e41fe80
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82506293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f6336dad59a4b676f288d39cc82fecc29a2e284a1483e6578f4a0655ed37741`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 17:56:54 GMT
ADD file:7a7f37f1518282b188a2e6efd752b806e74a3e03b89d4a9fa9c9f152f0a18cf5 in / 
# Thu, 23 Aug 2018 17:56:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 17:56:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 17:57:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 17:57:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 17:57:04 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 22:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 22:28:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 22:30:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7dc40899884ddfbc2c46bcb408eadac218094356ce47c086c70055a9a5106232`  
		Last Modified: Thu, 23 Aug 2018 18:00:56 GMT  
		Size: 28.6 MB (28621029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c3b1bd6c6b34662a55b82dcdb1dad925a66d4c5dce47cb9a24dd87d574980df`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b826692f9ce0816877c9f77c87684866283f1301ea97b908f2e09472b2f8f3`  
		Last Modified: Thu, 23 Aug 2018 18:00:54 GMT  
		Size: 458.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:836583884d3ec17820ebc8e13f6cc8cf47ebb1346b54355d68021a4c22fcab11`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27ede898dd26221aa350a0643dade517c27f7abf43a01b35713188fbeb5600ce`  
		Last Modified: Thu, 23 Aug 2018 18:00:46 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bbad0f657b6f034a0e3b1508a887153a89390027d65b80d7729d988bec9ebfd`  
		Last Modified: Thu, 23 Aug 2018 23:32:49 GMT  
		Size: 5.3 MB (5287463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23c0d0cdbb7bf3937321983e0a90f25ab718f11887ed1246ddb46694222d9b2`  
		Last Modified: Thu, 23 Aug 2018 23:32:44 GMT  
		Size: 2.7 MB (2720035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d99094da2567984c3ec2df125b6ddbef715dd800b033d0f1810c6b7b5d6c29f`  
		Last Modified: Thu, 23 Aug 2018 23:34:22 GMT  
		Size: 45.9 MB (45875444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; 386

```console
$ docker pull buildpack-deps@sha256:1a373e2cea0b942da2a01988f2686c27ab105c3d86488e97b9d4ba51182952c7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.1 MB (91056736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724ea5e219c44439d289deac3fc0dd905e5647b2dbd20cf05f671626e52134e0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 15:51:22 GMT
ADD file:9ad44f301f5a2aa2ac0225577ddbab49e2d1aa6786beddb1124daad9d1b50166 in / 
# Thu, 23 Aug 2018 15:51:32 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 15:51:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:51:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 15:51:35 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 15:51:35 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 11:11:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:11:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:12:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cadd553e30fe0683ef6f75828d84fcaf22e6bbba0cec71cbca740aef1040aa5c`  
		Last Modified: Thu, 23 Aug 2018 15:56:54 GMT  
		Size: 32.1 MB (32094821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d07eed6ce6b981b33b08185cf3f96fc413cbe2f6937deff67730a7f8070d7a`  
		Last Modified: Thu, 23 Aug 2018 15:56:42 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e0d50cb9af80a5937abb44509aea5c98cdcac3b198437f3ce13116273d7815e`  
		Last Modified: Thu, 23 Aug 2018 15:56:42 GMT  
		Size: 462.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:649e0059989a48fa3725226529eb6860971f9737508ff42b9c4fd55cd5ff0cf3`  
		Last Modified: Thu, 23 Aug 2018 15:56:42 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b935a0359a4ef1177474ee419209650e27c0d31489290420feceb38703637f`  
		Last Modified: Thu, 23 Aug 2018 15:56:42 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4baeab5b01c11df5a0ec0b5782c7b07269c480604d33b1fc1518f53aff75dee0`  
		Last Modified: Wed, 05 Sep 2018 11:56:02 GMT  
		Size: 6.1 MB (6102718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a57066f377a2ed87c26a31983a8aa28002a316ad675460e58f5220e2c5aa4f1`  
		Last Modified: Wed, 05 Sep 2018 11:56:01 GMT  
		Size: 3.2 MB (3189324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5eb19c39f13a83e7e5107123952e82d597d00a8ee007b85c99ee5b8810e40d0`  
		Last Modified: Wed, 05 Sep 2018 11:56:46 GMT  
		Size: 49.7 MB (49667556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:91e1465c6da51af7f02e3ebbb7a7f7fcca41381cf6e3c81ead916b5a575e5e0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.2 MB (101249109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2a71033c87a96deca09620e63c79f943863a28784a0ba618477e9eb526932f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 12:48:10 GMT
ADD file:f4ad8439ac930eb074774281cda34ea4735fbe8912b291656608f9612633fe51 in / 
# Thu, 23 Aug 2018 12:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 12:48:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 12:48:24 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 12:48:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 12:48:32 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 16:12:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 16:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 16:16:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9966a1cbe6a604683180faf8c26d7967e212858e3822eeadb4efe87092f1e5a3`  
		Last Modified: Thu, 23 Aug 2018 12:50:58 GMT  
		Size: 35.3 MB (35255048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ab8351b8ccdddb963c9ccba37b828f0aad7e70cb9580573cd51c1b79433eaf`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f556f1e7497b3378c8a0fcebeb19757a181803cb88714de74ae45b9af26f76c7`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52fbca384794dc6e5ef2556ae5b50f56dd1371ac44d52835093023f0788059be`  
		Last Modified: Thu, 23 Aug 2018 12:50:49 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb493492ef317758bdf1610927e686717d217e461ab6592e066dea21bb18746`  
		Last Modified: Thu, 23 Aug 2018 12:50:50 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b315635238c518dde3fc5ce3ec0856f3e8171390e1d680d476868d43b4ed6c`  
		Last Modified: Thu, 23 Aug 2018 16:53:56 GMT  
		Size: 6.0 MB (6015571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a4deecfd8832483483d7fdce94b2e1f7ac9fc6ce5d8cc15a4166989f685cf3`  
		Last Modified: Thu, 23 Aug 2018 16:53:55 GMT  
		Size: 3.7 MB (3656214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:063812cd591abf3d12bb08ff95e7f7e94f3e2941088b6f6bb10d45664b46d822`  
		Last Modified: Thu, 23 Aug 2018 16:54:37 GMT  
		Size: 56.3 MB (56319859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:bionic-scm` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:043536903be01669c39115607f7ca930db1e931f670389bc950b885bd65a0b9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.2 MB (86219873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe427b2a4913f68bbf5f92549ea206f7399b2da5fa3e730e8b7fc4db6f0d4d6a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 23 Aug 2018 14:48:37 GMT
ADD file:3990672df51fc410ebddab7932cef3c63b06bea3f26003024261f61195a74a05 in / 
# Thu, 23 Aug 2018 14:48:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 23 Aug 2018 14:48:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 14:48:39 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 23 Aug 2018 14:48:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 23 Aug 2018 14:48:40 GMT
CMD ["/bin/bash"]
# Thu, 23 Aug 2018 15:43:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 23 Aug 2018 15:43:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 23 Aug 2018 15:45:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:213032d1faaaff5fb9402fe0a528fc8bbafe650dfe7f333e32a458a25113eb1b`  
		Last Modified: Thu, 23 Aug 2018 14:49:54 GMT  
		Size: 30.2 MB (30178864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:416a03beb604024f3521d349771d3d9b0ec332e7d32206e3c98b935996656c37`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 842.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2cd337e0a2efa5443590c9c9f0fbe35462069ebd9af719a199bd33281f51f6a`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 456.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:633d6706494e2f5816b96d90eb1457556553c2550cf3f07bef856399483c538a`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72ea06e618fb2d026d027f2e64a0e0a43878122074f7674a0ccec8a2c6cced8d`  
		Last Modified: Thu, 23 Aug 2018 14:49:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37bfe5429c1ab4a742642201eff0c5bf6da36d715e3dffdb50c0a59d4828621d`  
		Last Modified: Thu, 23 Aug 2018 15:57:03 GMT  
		Size: 5.5 MB (5511995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8449b8868b0156b5d29e17d80ff083f4355a0cccd2806857680e0a1677eae939`  
		Last Modified: Thu, 23 Aug 2018 15:57:01 GMT  
		Size: 2.9 MB (2911573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf7a4773238e30269433296a30f7418a63999901be5cd00aa6df418cb01e10e`  
		Last Modified: Thu, 23 Aug 2018 15:58:07 GMT  
		Size: 47.6 MB (47615128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

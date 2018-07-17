## `ros:lunar-perception`

```console
$ docker pull ros@sha256:8c77e791d2043b1cc43d689ee367244f51a225e752b6edcd24cdf40f697aeb6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:91636f56d4e4a846ebce8a094f8a526046a566d2a00c9e038cb110c51d2c01a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **723.5 MB (723488106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2cddeeffdb2abb7f58e7796f757c225259503c81546becd4436dc470f989f57`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:53:59 GMT
ADD file:7b8419bb9079c6d91ceeb2d0f35c46bcb8083d9d666eb21fda765ed755a07840 in / 
# Tue, 17 Jul 2018 00:54:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 17 Jul 2018 00:54:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 00:54:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 17 Jul 2018 00:54:02 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 17 Jul 2018 00:54:02 GMT
CMD ["/bin/bash"]
# Tue, 17 Jul 2018 08:00:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:00:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 17 Jul 2018 08:00:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 17 Jul 2018 08:01:28 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:01:28 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 08:01:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 17 Jul 2018 08:01:42 GMT
RUN rosdep init     && rosdep update
# Tue, 17 Jul 2018 08:17:07 GMT
ENV ROS_DISTRO=lunar
# Tue, 17 Jul 2018 08:18:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:18:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 17 Jul 2018 08:18:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 17 Jul 2018 08:18:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 08:19:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 08:23:25 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3620e2d282dce98978bc2ae770aa43121cfa88cafdb8888d552bfd96ade2c857`  
		Last Modified: Mon, 09 Jul 2018 15:05:32 GMT  
		Size: 43.2 MB (43190074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef22f5e4b3b2cfcefabf6ae23afc6eec160c1a9ab32ba72f9117feee454a6dc5`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99f229f854da0ebac56b80462718952353fe22745701123dee20cbd24dede33d`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe433abe16a89c38c06a4e91d1db85448407c4783d6cfbde3a03c4d71481d24`  
		Last Modified: Tue, 17 Jul 2018 00:59:22 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9b72a16d85e58632c1b2114dd92916b5c923f697a667ae56fd14a9a9a33869b`  
		Last Modified: Tue, 17 Jul 2018 00:59:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4ac0968772017a321c34ac2de9536091f6df6f88d87a1c3056ece71e9f2896`  
		Last Modified: Tue, 17 Jul 2018 09:15:24 GMT  
		Size: 16.7 MB (16658309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d6a45c25bc8bfd73d4dc83f769a4b863eaf4b2a7cea821bd2071d0d669c34fe`  
		Last Modified: Tue, 17 Jul 2018 09:15:17 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51a1762779f20e169ed3359f3ea12c921ffbb7303cf55e9c73d0ad353a6a041`  
		Last Modified: Tue, 17 Jul 2018 09:15:14 GMT  
		Size: 5.5 KB (5511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9187a286073e442c6a5de8dfb47c816e2a43bc129bafd8a5e39c4d24cdf0109f`  
		Last Modified: Tue, 17 Jul 2018 09:15:36 GMT  
		Size: 44.9 MB (44859639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f0aeac08a392c2a4c90b35beef881b63af4a377000080024e9bb3605bbe161`  
		Last Modified: Tue, 17 Jul 2018 09:15:14 GMT  
		Size: 794.1 KB (794125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6518dd97b0f87cf6a67aa325a5a305810e3b3faba18eb204e19f043b0ea695cc`  
		Last Modified: Tue, 17 Jul 2018 09:24:28 GMT  
		Size: 193.3 MB (193258725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2254e6e5ca8ec52a4a3d25cc9472dfded0b307511aaaa933463dfeb56535db4`  
		Last Modified: Tue, 17 Jul 2018 09:23:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15ac805bf7a9e4992ce053fb21df09fa32e2e5e475599aeacf64dc0e9e1bb7a7`  
		Last Modified: Tue, 17 Jul 2018 09:25:41 GMT  
		Size: 85.6 MB (85612275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc6c6f6bad28deca64de67c77bc20b8e4f26e90240b4747b46cd5e33d0bfb8a`  
		Last Modified: Tue, 17 Jul 2018 09:30:23 GMT  
		Size: 339.1 MB (339093684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:81ce40b7833c2a0c713a85da29b7d7d73141cde1af6a54c6c2eeb3911f27a893
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.5 MB (614526555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d90e25c1077fdbee8a3f1da71ce6554f61bc96132cd7ac6ef0ad3afa6b42dae2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:19:23 GMT
ADD file:ebb70be07ed2417685cf8fcc903c02e4ea1b2cd43b2079972f51387fd5d682a8 in / 
# Wed, 06 Jun 2018 12:19:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:19:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:19:55 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:19:56 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:19:56 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 12:43:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:43:54 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:43:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:47:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:47:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:47:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:47:41 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 13:17:46 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 13:26:07 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:26:09 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 13:26:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 13:26:10 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 13:31:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 13:50:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:def78db8dd6eeda307f0912ed21381f873a350dc5e83fc9da97f2149a5408587`  
		Last Modified: Wed, 06 Jun 2018 12:25:38 GMT  
		Size: 38.2 MB (38193200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ae3b359f19b988b0fd94d8fd642bea7f9059fa41b71f1971de6ce894fdccf2`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eaeb5577ed9a8fdbb407ac0c59910c8bf0a9130f7557666c3d1079c069a06a`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05712d47a0127c57d51f06b72e586c61a54928b7f8d84d32591a42795dc89437`  
		Last Modified: Wed, 06 Jun 2018 12:25:28 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e8f88b7af950fde58a7f447e4de0272d0c59d2e7db951c507afb5ee025b96a`  
		Last Modified: Wed, 06 Jun 2018 12:25:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f58f8a821fadd33acd07d4fae676ffe25178652774e3f5394a9189d6542dea`  
		Last Modified: Tue, 12 Jun 2018 14:34:30 GMT  
		Size: 15.0 MB (14951635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb755ef6d5373edc4625f9225306b8b263f039756d1a0c592987ed8711257aa3`  
		Last Modified: Tue, 12 Jun 2018 14:34:24 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d596a59dda552327990c2d6d243c38ff58809183d95b9684239017c3d175654`  
		Last Modified: Tue, 12 Jun 2018 14:34:23 GMT  
		Size: 5.5 KB (5536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00b69698218eabf535d59046e766c58a3bfbf8ef8296464c765fe4a491465f8`  
		Last Modified: Tue, 12 Jun 2018 14:34:38 GMT  
		Size: 40.9 MB (40921006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25cb91e2e7d1d287f30ea9db6d2d8f06ba134773267d6a2a2ecd9fc659fa5567`  
		Last Modified: Tue, 12 Jun 2018 14:34:23 GMT  
		Size: 868.5 KB (868469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:233da47c4965c9ffcadc5b352da8756b25040bb5bf896660f648a3aa11b0101a`  
		Last Modified: Tue, 12 Jun 2018 14:39:12 GMT  
		Size: 164.6 MB (164626104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89513329763f8ce08a172749f4684f91d40caec949cf7c47027554a86b9dfb54`  
		Last Modified: Tue, 12 Jun 2018 14:38:23 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6f327cc59fe21f5dc298f8dc6855f9c0a06ff703e82c55195dc2943fcd0ba0`  
		Last Modified: Tue, 12 Jun 2018 14:39:48 GMT  
		Size: 75.0 MB (75016644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bea7529b745b86f067308f4763b3d794ab108c68057e3f58549388fbd7f83ec0`  
		Last Modified: Tue, 12 Jun 2018 14:42:15 GMT  
		Size: 279.9 MB (279928203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:420c0cc5248ca296db494acd3127ad989086628576c37fff0b7f88a46b66ddd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.9 MB (637948816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946fa23508d1915bdf3fffd1272dc4171efa311b50e511e3cb121b66bcd393ae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 09:38:27 GMT
ADD file:4d66a098626c376a1c073e0332a6c8d18aa8cc0dbadb329fd506fdfa59793143 in / 
# Wed, 06 Jun 2018 09:38:30 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 09:38:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 09:38:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 09:38:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 09:38:37 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 10:23:22 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 10:23:26 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 10:23:29 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 10:25:19 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 10:25:20 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 10:25:25 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 10:26:08 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 11:08:31 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Jun 2018 11:16:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:17:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 11:17:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 11:17:02 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 11:21:17 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 11:43:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21707c5c72669fddc5511cbdced3327d864e1cb7aa4d1d273beb008be29c82dc`  
		Last Modified: Mon, 28 May 2018 14:58:41 GMT  
		Size: 39.3 MB (39283293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b2716544889f4e40c0d32347e352b47046e2b8f272a78cd166f50462a2010a`  
		Last Modified: Wed, 06 Jun 2018 09:43:13 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3396a4a881d875be937f4b13c557a03aca52cb7d058d39395da1f896f8feda23`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f138533abd45add28f8a1ca64239b68a83458387b0d2b1066002ca9b94f6215`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7992862215acd8daf7477cdc3dea5fbf67934989b013a18828f88e64ea00d70a`  
		Last Modified: Wed, 06 Jun 2018 09:43:12 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ef6c3a1ce4b806d76c97f5acd7cb14529276e65e78ffef0b1ce7d4677958e0c`  
		Last Modified: Tue, 12 Jun 2018 14:24:33 GMT  
		Size: 15.0 MB (15049711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2cdaea1a17879ddec1e51e2ee558f2e27e3fd57e9996a50ae2c7466c989d17`  
		Last Modified: Tue, 12 Jun 2018 14:23:50 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7391648ac961acdf01f234d655554dceeadcdc012d6b4169f9ee70d222c56ed0`  
		Last Modified: Tue, 12 Jun 2018 14:23:47 GMT  
		Size: 5.5 KB (5514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f598396215e6f003a8359535d98b378844586ee21df2324980cfe59aa5dd210`  
		Last Modified: Tue, 12 Jun 2018 14:25:14 GMT  
		Size: 42.8 MB (42793872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:453c6b1fa24efff7cf6752050e9fb329904e591aa7acc67ef4634d0c8addb32a`  
		Last Modified: Tue, 12 Jun 2018 14:23:50 GMT  
		Size: 868.3 KB (868294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52068f34ecc1bed2ad982d0fa91ab25e092d5bd165f68470d188035ad79e8f3c`  
		Last Modified: Tue, 12 Jun 2018 14:31:55 GMT  
		Size: 173.9 MB (173880189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b2ab078308043db7fedec99eefb210b75ebea5b7130cdc4e40a4e70070a492`  
		Last Modified: Tue, 12 Jun 2018 14:30:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1b7c41c92d901b497e9a08b09c49fc14dd7eecffe0cf8bf4a6a661db12aa29a`  
		Last Modified: Tue, 12 Jun 2018 14:32:45 GMT  
		Size: 76.5 MB (76464842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1ba122a85f4e991215819878b8913e461fdeca2e250a4caeb9285e91596dab6`  
		Last Modified: Tue, 12 Jun 2018 14:36:11 GMT  
		Size: 289.6 MB (289587335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

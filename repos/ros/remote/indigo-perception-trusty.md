## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:bfa8bd152fe82a2f087271b49b1edd575a869e9041e5fe800cfa76041b4ff3ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:60f1b38a5b53ef67bbf492efbe1fd3139d58bac2b5dc89f20e3e6ae0b1c1d9fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.2 MB (555172806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7326efe3b4789c95c5e736bd4088b767730536db94cc99d08f758601bc9204de`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Wed, 07 Mar 2018 04:03:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 07 Mar 2018 04:03:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 07 Mar 2018 04:03:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LANG=C.UTF-8
# Wed, 07 Mar 2018 04:03:52 GMT
ENV LC_ALL=C.UTF-8
# Wed, 07 Mar 2018 04:04:01 GMT
RUN rosdep init     && rosdep update
# Wed, 07 Mar 2018 04:04:01 GMT
ENV ROS_DISTRO=indigo
# Wed, 07 Mar 2018 04:05:50 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:05:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 07 Mar 2018 04:05:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 07 Mar 2018 04:05:52 GMT
CMD ["bash"]
# Wed, 07 Mar 2018 04:06:46 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 07 Mar 2018 04:10:56 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:56ee1ad18a6a8c6aa9c8a3974633ba9a9048e4111d788fb2fe41ef1edcb6df4b`  
		Last Modified: Wed, 07 Mar 2018 05:18:03 GMT  
		Size: 16.5 MB (16501179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37ca88b3fa6f5d03dc031fc0d764f2ed6acfd18199d652eb6b1b59e86c059202`  
		Last Modified: Wed, 07 Mar 2018 05:17:52 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdacb750aa7b70c3fbf7079c1c6a1902d065fa3ef835efe25765fcc92b63a988`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a01be126f4a4148eb3e6dc481c49acbcbe30043f44edaea10d8cbfc9d4ac39`  
		Last Modified: Wed, 07 Mar 2018 05:18:10 GMT  
		Size: 31.8 MB (31775722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19ce85bdc526cf83b49104a096f24004f215831aa8ee5a6f5cf4f131ce3e9912`  
		Last Modified: Wed, 07 Mar 2018 05:17:50 GMT  
		Size: 788.0 KB (787957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5662b40c0986c55d64cf0492fbc9296b1d84bba06aaa12c8ba5fac1e4589da81`  
		Last Modified: Wed, 07 Mar 2018 05:18:45 GMT  
		Size: 149.9 MB (149927082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a38357435884bb41e041a99cfac5e51d31d9d514ca9f5a04c81d68c9aa524`  
		Last Modified: Wed, 07 Mar 2018 05:17:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bce99665a9281248bf0a2a3969ff5343108acca7c4551209a327d5cc27c685`  
		Last Modified: Wed, 07 Mar 2018 05:19:36 GMT  
		Size: 46.8 MB (46765789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbeca1c9d1b11527992c01c746d4b2bbd4790c05ad8a6e62d5174e83e3ed742`  
		Last Modified: Wed, 07 Mar 2018 05:22:21 GMT  
		Size: 236.3 MB (236330418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:2a473583535220b57df5d6a7dde78bc13b6359dca58955e0ff22a10f010a985d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **500.8 MB (500810011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e234cfb40f0a33b43e7527b1cb1b100ea4e49e87020f7cacc734304c221bfa3a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

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
# Fri, 26 Jan 2018 14:11:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:11:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:11:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:12:38 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:12:38 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:12:38 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:12:58 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:12:58 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Jan 2018 14:15:29 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:15:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:15:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:15:32 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:19:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:22:59 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:c410ace9214634a8109f957c81152dc886a033789bf6aedec8210b9983e429be`  
		Last Modified: Fri, 26 Jan 2018 15:01:36 GMT  
		Size: 14.5 MB (14475462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20e3debb05fc4d5d4b4d70bcbc0be38c029c8f666d4e3992d21e4d980a99460b`  
		Last Modified: Fri, 26 Jan 2018 15:01:29 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967c6432333a645d1256a3365f5035230cdb0b74c3ebdf4daf340688210611cd`  
		Last Modified: Fri, 26 Jan 2018 15:01:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab8cd8504cebb7a22ca34dbd75496380a3b2921f8ec2504befcfb1177d0cb2e`  
		Last Modified: Fri, 26 Jan 2018 15:01:40 GMT  
		Size: 29.2 MB (29231856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b66535aea34134796ce640b7316a2017c59efa99725d627cead6894688da83`  
		Last Modified: Fri, 26 Jan 2018 15:01:28 GMT  
		Size: 771.6 KB (771630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d9c83bceb9a4051e324a1c2513c6ac780889ed53d7fdd3678a3ca7859246886`  
		Last Modified: Fri, 26 Jan 2018 15:02:11 GMT  
		Size: 137.6 MB (137563116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36b0ff4b209173c636d4e83356fc218e543f095f2dcfdd441dfaa15daf189e`  
		Last Modified: Fri, 26 Jan 2018 15:01:28 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c08b6e121aaf867ae189a96b1c2760d02f3af7b199bfcaf7dd6dfb039cc8c4`  
		Last Modified: Fri, 26 Jan 2018 15:02:39 GMT  
		Size: 40.3 MB (40344731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf835fea13241d54eb82d40852c6c1614a1ff61745ce043a9144c0bca6536408`  
		Last Modified: Fri, 26 Jan 2018 15:04:18 GMT  
		Size: 211.9 MB (211879102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

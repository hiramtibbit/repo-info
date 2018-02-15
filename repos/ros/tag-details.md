<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:indigo`](#rosindigo)
-	[`ros:indigo-perception`](#rosindigo-perception)
-	[`ros:indigo-perception-trusty`](#rosindigo-perception-trusty)
-	[`ros:indigo-robot`](#rosindigo-robot)
-	[`ros:indigo-robot-trusty`](#rosindigo-robot-trusty)
-	[`ros:indigo-ros-base`](#rosindigo-ros-base)
-	[`ros:indigo-ros-base-trusty`](#rosindigo-ros-base-trusty)
-	[`ros:indigo-ros-core`](#rosindigo-ros-core)
-	[`ros:indigo-ros-core-trusty`](#rosindigo-ros-core-trusty)
-	[`ros:kinetic`](#roskinetic)
-	[`ros:kinetic-perception`](#roskinetic-perception)
-	[`ros:kinetic-perception-jessie`](#roskinetic-perception-jessie)
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-jessie`](#roskinetic-robot-jessie)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-jessie`](#roskinetic-ros-base-jessie)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
-	[`ros:kinetic-ros-core-jessie`](#roskinetic-ros-core-jessie)
-	[`ros:kinetic-ros-core-xenial`](#roskinetic-ros-core-xenial)
-	[`ros:latest`](#roslatest)
-	[`ros:lunar`](#roslunar)
-	[`ros:lunar-perception`](#roslunar-perception)
-	[`ros:lunar-perception-stretch`](#roslunar-perception-stretch)
-	[`ros:lunar-perception-xenial`](#roslunar-perception-xenial)
-	[`ros:lunar-robot`](#roslunar-robot)
-	[`ros:lunar-robot-stretch`](#roslunar-robot-stretch)
-	[`ros:lunar-robot-xenial`](#roslunar-robot-xenial)
-	[`ros:lunar-ros-base`](#roslunar-ros-base)
-	[`ros:lunar-ros-base-stretch`](#roslunar-ros-base-stretch)
-	[`ros:lunar-ros-base-xenial`](#roslunar-ros-base-xenial)
-	[`ros:lunar-ros-core`](#roslunar-ros-core)
-	[`ros:lunar-ros-core-stretch`](#roslunar-ros-core-stretch)
-	[`ros:lunar-ros-core-xenial`](#roslunar-ros-core-xenial)

## `ros:indigo`

```console
$ docker pull ros@sha256:239f1ce4d85f5a26af0e5b29bd5eee3465c380e9966e580a1591b79c2dd36eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:7d5f05e6b60fb6ebeefcca7952f22604ceae8f479f10cd04ad0fdf36781a1b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.7 MB (318748690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6851e8ce7b45a96badf12a44d2fcac461ff0d82c32749d214b1ce0f49137ddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:1278b42c0a671e6fdf0e922177620470a34a4c9ea49ef074ce5b1fff0057787c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288930909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6f4754f88633705a49600936f07a5e6421dbd90a23bf061dd0a5bf1e465856`
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

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:0c6e6900cf8f0649e90b19e1c43820fc4a5ecad8abd09357bd67b980d7c5d594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:009cbf9835e309fbfa3f822cde911a4dad882f32a4c6391d18db548e431a1e0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.1 MB (555084515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1a3d29cf47215d1efb701859196c13ce6cbb61a374c93f73bf4dbe8e55bee3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:23:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da9706c7861917dcbbdb20c54089de8c6a1814a2d3dbeb3a7f205da127086d2`  
		Last Modified: Thu, 25 Jan 2018 22:16:37 GMT  
		Size: 236.3 MB (236335825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

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

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:0c6e6900cf8f0649e90b19e1c43820fc4a5ecad8abd09357bd67b980d7c5d594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:009cbf9835e309fbfa3f822cde911a4dad882f32a4c6391d18db548e431a1e0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.1 MB (555084515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f1a3d29cf47215d1efb701859196c13ce6cbb61a374c93f73bf4dbe8e55bee3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:23:01 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da9706c7861917dcbbdb20c54089de8c6a1814a2d3dbeb3a7f205da127086d2`  
		Last Modified: Thu, 25 Jan 2018 22:16:37 GMT  
		Size: 236.3 MB (236335825 bytes)  
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

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:74ab0f8e472b8809c83ac5c21f4c0b9203d5cd0c28c0218e81606897006d96ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:19ffcf9a0268b3351986e4b1c64cca7bd4722a8ac98208fc2e1d5228595d85d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337769402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722301b1fdc5bcf276fd14fb7044b13f99a5d7b31c3ef326d598158fab5730bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:20:13 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a1f8bb4f37251fe003fc112d278a7416bc02b9ee4806088cbccf2c38473432`  
		Last Modified: Thu, 25 Jan 2018 22:14:56 GMT  
		Size: 19.0 MB (19020712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:70d64e57b96d8970c1b5f1c825bc760a152a0c4245725e40a1f3a612f72a5272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306646035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68652d4ebf8413fc5c2765254b9d6fe3bd4aebd68208f215ebbe013092889c0a`
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
# Fri, 26 Jan 2018 14:20:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2212ea4ceebddde30a1c3d2885dafa97d59f955ee4c357b799dfb0b7bf7954ca`  
		Last Modified: Fri, 26 Jan 2018 15:03:07 GMT  
		Size: 17.7 MB (17715126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:74ab0f8e472b8809c83ac5c21f4c0b9203d5cd0c28c0218e81606897006d96ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:19ffcf9a0268b3351986e4b1c64cca7bd4722a8ac98208fc2e1d5228595d85d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.8 MB (337769402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:722301b1fdc5bcf276fd14fb7044b13f99a5d7b31c3ef326d598158fab5730bd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:20:13 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67a1f8bb4f37251fe003fc112d278a7416bc02b9ee4806088cbccf2c38473432`  
		Last Modified: Thu, 25 Jan 2018 22:14:56 GMT  
		Size: 19.0 MB (19020712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:70d64e57b96d8970c1b5f1c825bc760a152a0c4245725e40a1f3a612f72a5272
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.6 MB (306646035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68652d4ebf8413fc5c2765254b9d6fe3bd4aebd68208f215ebbe013092889c0a`
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
# Fri, 26 Jan 2018 14:20:22 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:2212ea4ceebddde30a1c3d2885dafa97d59f955ee4c357b799dfb0b7bf7954ca`  
		Last Modified: Fri, 26 Jan 2018 15:03:07 GMT  
		Size: 17.7 MB (17715126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:239f1ce4d85f5a26af0e5b29bd5eee3465c380e9966e580a1591b79c2dd36eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:7d5f05e6b60fb6ebeefcca7952f22604ceae8f479f10cd04ad0fdf36781a1b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.7 MB (318748690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6851e8ce7b45a96badf12a44d2fcac461ff0d82c32749d214b1ce0f49137ddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1278b42c0a671e6fdf0e922177620470a34a4c9ea49ef074ce5b1fff0057787c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288930909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6f4754f88633705a49600936f07a5e6421dbd90a23bf061dd0a5bf1e465856`
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

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:239f1ce4d85f5a26af0e5b29bd5eee3465c380e9966e580a1591b79c2dd36eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:7d5f05e6b60fb6ebeefcca7952f22604ceae8f479f10cd04ad0fdf36781a1b0f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.7 MB (318748690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6851e8ce7b45a96badf12a44d2fcac461ff0d82c32749d214b1ce0f49137ddb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 19:19:24 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68969afad5493c9551183965c6bf6c1a409e65ecf5bb7926973c4fc12761891d`  
		Last Modified: Thu, 25 Jan 2018 22:04:11 GMT  
		Size: 46.7 MB (46744609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:1278b42c0a671e6fdf0e922177620470a34a4c9ea49ef074ce5b1fff0057787c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **288.9 MB (288930909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6f4754f88633705a49600936f07a5e6421dbd90a23bf061dd0a5bf1e465856`
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

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:4503bad4947c7e6b16140fb9e29b1e710eaedf6b68cfbdfad8a0fbcf23825a7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:bd6b11280f860db99bc9f7e3e5ea63b286249ed3735eb06c80e610f878d0e0c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272004081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdfb34d82759775eda9f44c6d19f216f75014582635a5d99f9d9c94f8a40dc0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:48c46bc9a731821b0cf053a2299c35c7edd60778e941cb46ae64f733b244ed45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248586178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5218b5923df3d4e08a334dfc0a55f135ba17ead5c4e9a5b942c935a52a7cc2cc`
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

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:4503bad4947c7e6b16140fb9e29b1e710eaedf6b68cfbdfad8a0fbcf23825a7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:bd6b11280f860db99bc9f7e3e5ea63b286249ed3735eb06c80e610f878d0e0c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (272004081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abdfb34d82759775eda9f44c6d19f216f75014582635a5d99f9d9c94f8a40dc0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:22:16 GMT
ADD file:636a7d1b374fb6ccd672a92e56b1e811652a0bf56d64a2d08282850110db548f in / 
# Thu, 25 Jan 2018 18:22:22 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:22:23 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:22:34 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:22:34 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:22:45 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 19:01:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:01:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 19:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 19:02:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:02:26 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 19:02:27 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 19:02:36 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 19:02:36 GMT
ENV ROS_DISTRO=indigo
# Thu, 25 Jan 2018 19:04:14 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 19:04:15 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 19:04:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 19:04:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c954d15f947c57e059f67a156ff2e4c36f4f3e59b37467ff865214a88ebc54d6`  
		Last Modified: Thu, 25 Jan 2018 18:26:39 GMT  
		Size: 73.0 MB (72952953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3688624ef2b94ab3981564e23e1f48df8f1b988519373ccfb79d7974017cb85`  
		Last Modified: Thu, 25 Jan 2018 18:26:29 GMT  
		Size: 72.6 KB (72649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848fe4263b3b44987f0eacdb2fc0469ae6ff04b2311e759985dfd27ae5d3641d`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 629.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23b4459d3b04aa0bc7cb7f7021e4d7bbb5e87aa74a6a5f57475a0e8badbd9a26`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab3b56c8f1a3188464886cbe41f42a969e6f9374e040f13803d796ed27b0ec`  
		Last Modified: Thu, 25 Jan 2018 18:26:28 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:536e424a748214e9f855aa3c9b19f244594effb2ae82942277e3dbf2a98fe4ff`  
		Last Modified: Thu, 25 Jan 2018 21:59:29 GMT  
		Size: 16.5 MB (16501216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b6f7d6e01e048742a8ec43b2b07dff326d304d0a5309753312b5269d733f3b`  
		Last Modified: Thu, 25 Jan 2018 21:59:15 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a492c162e52f861155df163d311bcddf3027aca727ed238cdcd399cf4afa71`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d669d07f98e38fcc61174c8371c33a19a4c2a147ef59bc4956b989832e6a189d`  
		Last Modified: Thu, 25 Jan 2018 21:59:35 GMT  
		Size: 31.8 MB (31776122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701f4eb21d2ce39e377c48dacc4f2852e2ac42aa9e944a0ced5253512cadefe8`  
		Last Modified: Thu, 25 Jan 2018 21:59:13 GMT  
		Size: 771.5 KB (771506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6390fe1b4c5782bb1529915ac43e0131d8af2f4aa51def40ce1f10f7276de51f`  
		Last Modified: Thu, 25 Jan 2018 22:00:35 GMT  
		Size: 149.9 MB (149914496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c07aeb857f51bd794b22ce0b255194465f28034d83cc8bb77a550941cef546`  
		Last Modified: Thu, 25 Jan 2018 21:59:12 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:48c46bc9a731821b0cf053a2299c35c7edd60778e941cb46ae64f733b244ed45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.6 MB (248586178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5218b5923df3d4e08a334dfc0a55f135ba17ead5c4e9a5b942c935a52a7cc2cc`
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

## `ros:kinetic`

```console
$ docker pull ros@sha256:f8895a4cb46c674a74088aac5e72293b6b7adabdd4fc510e6c0f4080862400f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:8eaa67fedf4dbd22c9d2713fc53c8ac148c916ca40f5f944869cc62905f8f499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381829845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674644c9bd3adb2ac77d07290f5df29487eddb4876f6e6c8273b5f37fdc69fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bee174caddf7183f150982793dc3ddea5b259b7b46934b99dffb0bfd13d2367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333872574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd40b9f48474d459690ee8af05cefde4ffb4ea5d7093887d3f509a9d02d1f60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e78a6bab3edb479ea1527414ce0b25633be7faa79748a27a743d432aaf052aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347605212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0030b678f952cf0f7661a7812f7f53c931a9578ec79078bbc4853138350d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:818595a6a1d0abf3d55fd044cb795c58bceed2d97fe1ebdca146bb889f85a83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:2debcb0ace19a288dc73521e4de96dfce04bf74f2d956214a8a521ba649355f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.1 MB (753115435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12c7f2a9360268d6d557ea27e58caeca9c866e7a3dfeea74259d20df0e363bc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:46:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01114af00af35d3140e3b131781932710b6f6528cb26d580b0eeeef9950d6554`  
		Last Modified: Thu, 25 Jan 2018 22:51:10 GMT  
		Size: 371.3 MB (371285590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:0f7ee2114a5f83b809d9040fe8ac0fdb54c150129d0ab78fa6b65b1a56ef60dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (639973580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da315f158c18c6b920c86932c7ad95878e68d18f056ba74ecb7457a1d47f0f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:47:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967df0d46eae28203dab39744fb6be99f235183a68aea356ae3322d1da26284b`  
		Last Modified: Fri, 26 Jan 2018 15:11:43 GMT  
		Size: 306.1 MB (306101006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4c5f6c928362ab3e843e9301a48cb94c294873e31affbd41e14032bb14633bd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.8 MB (667846167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f621d7c80d5c0845fc4e16fb327c4d371977d04a2f08987c9d38e353286b0b39`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:15:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397f2ef100c39cdfed55b2757426df9286ef3d642e637cb8177c3087474591d6`  
		Last Modified: Fri, 26 Jan 2018 16:56:23 GMT  
		Size: 320.2 MB (320240955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:e44b8927f5940ad93ca5a18476a64765ce4e7a7cc31bd4bb836d8283205f35ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:7bddd1c5cd99fe4763fb82789305cfbfadde4eeb46177d31aca5f75897ed4773
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.8 MB (650755292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7bc4133a3dd814edb740acabd78287039f55be2981fc998f66e771feb227635`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:08:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52d7bafcbf03393c848e93f191cccfbcf280864d35bd8f0d2d11cda80407f575`  
		Last Modified: Tue, 12 Dec 2017 03:37:00 GMT  
		Size: 275.8 MB (275757518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b7d50c13ec8057296af3ca55d66893cfab61b9d5771204a85565516af2372a45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.4 MB (563375625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70ae309ee6cb96f881a293ebc1bda4310e1630fefb82c2ae6a6e880ecc1e2491`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:59:21 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f107674d22076a42cd0beed16d277cb7a48b01bbdf47a46563410773dcba97c`  
		Last Modified: Fri, 15 Dec 2017 20:33:45 GMT  
		Size: 236.8 MB (236849147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:818595a6a1d0abf3d55fd044cb795c58bceed2d97fe1ebdca146bb889f85a83c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:2debcb0ace19a288dc73521e4de96dfce04bf74f2d956214a8a521ba649355f2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.1 MB (753115435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12c7f2a9360268d6d557ea27e58caeca9c866e7a3dfeea74259d20df0e363bc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:46:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01114af00af35d3140e3b131781932710b6f6528cb26d580b0eeeef9950d6554`  
		Last Modified: Thu, 25 Jan 2018 22:51:10 GMT  
		Size: 371.3 MB (371285590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:0f7ee2114a5f83b809d9040fe8ac0fdb54c150129d0ab78fa6b65b1a56ef60dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **640.0 MB (639973580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da315f158c18c6b920c86932c7ad95878e68d18f056ba74ecb7457a1d47f0f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:47:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:967df0d46eae28203dab39744fb6be99f235183a68aea356ae3322d1da26284b`  
		Last Modified: Fri, 26 Jan 2018 15:11:43 GMT  
		Size: 306.1 MB (306101006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4c5f6c928362ab3e843e9301a48cb94c294873e31affbd41e14032bb14633bd2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.8 MB (667846167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f621d7c80d5c0845fc4e16fb327c4d371977d04a2f08987c9d38e353286b0b39`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:15:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397f2ef100c39cdfed55b2757426df9286ef3d642e637cb8177c3087474591d6`  
		Last Modified: Fri, 26 Jan 2018 16:56:23 GMT  
		Size: 320.2 MB (320240955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:7ab99c9f3b2c7f9ba83439ff2abaf4ea27bf5fa890badceb5a18f95a1b88f44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:c1720b7ac2d7380c78dda21fb8c8ebc8caa8aef93e4848a09a6419d966419327
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485427973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a55f61bc1bed301d952f0d6fbb1432dc0db523a1d1b75b0ce69f1f6c2af7c3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:29:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc8b2d6f0d72ae0da0fbe3a11e1886e061dcdd861ceec9d4c7f7b39461dba8c`  
		Last Modified: Thu, 25 Jan 2018 22:48:59 GMT  
		Size: 103.6 MB (103598128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:0856b138e035dc4d7b7dd74d77eac0911154207a16c817fe7a52765134bc02bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423894175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54708a35b0239bc479c6a683408fc62e690e73222d5e66bdfaf7418cf2203`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:39:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd228a7b357e4880b7b26cd7fe38762df722a4dd4d8413820b3cd7e76dfa8f9`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 90.0 MB (90021601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:439437a1d9aab61c0db344da38c51fa328cbe7511524c4bbf8d832da7b5dd33a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441473756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21184ea6bda0466ad4b1f26f3201f744043c01cfb142fed15b21a64dd1fc242e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:57:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2368f5f0d7cfd6b211851eda9b17fbfd215db80c81efa589358544e6efd9ef`  
		Last Modified: Fri, 26 Jan 2018 16:54:00 GMT  
		Size: 93.9 MB (93868544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:bb69c6e0aa39ece2342f4b9f41267cb0251530f32ac65b16ef1c97b2825dd102
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:c2f172c637bd51d6a4fdbe1299e3249f0cadf8230238e620bd4dd3b59cf777bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.5 MB (436517312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cedd94c4314f29ce588dab8c52924efe7e81671d34677cf299cfdeff6e672a86`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:01:19 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86af87308f0f5990e37f8ef8ac8b27691a8822c8c67b236f0b422c20bff8c5a3`  
		Last Modified: Tue, 12 Dec 2017 03:35:50 GMT  
		Size: 61.5 MB (61519538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3c821583a5e314b8a82ac21891a5c17e96809201149c56299eca37c68f4cfe3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.9 MB (383900048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e62ec7c8a9b73106bf3f75a51f16a3960e9f8a85fc7c13307d07c0a6012193b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:47:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043cdedb3e449c57d35e07831ebb5d002099ef2c94e31f5b1efc85de78238ea`  
		Last Modified: Fri, 15 Dec 2017 20:31:49 GMT  
		Size: 57.4 MB (57373570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:7ab99c9f3b2c7f9ba83439ff2abaf4ea27bf5fa890badceb5a18f95a1b88f44b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c1720b7ac2d7380c78dda21fb8c8ebc8caa8aef93e4848a09a6419d966419327
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485427973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50a55f61bc1bed301d952f0d6fbb1432dc0db523a1d1b75b0ce69f1f6c2af7c3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:29:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc8b2d6f0d72ae0da0fbe3a11e1886e061dcdd861ceec9d4c7f7b39461dba8c`  
		Last Modified: Thu, 25 Jan 2018 22:48:59 GMT  
		Size: 103.6 MB (103598128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:0856b138e035dc4d7b7dd74d77eac0911154207a16c817fe7a52765134bc02bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423894175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aab54708a35b0239bc479c6a683408fc62e690e73222d5e66bdfaf7418cf2203`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:39:31 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcd228a7b357e4880b7b26cd7fe38762df722a4dd4d8413820b3cd7e76dfa8f9`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 90.0 MB (90021601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:439437a1d9aab61c0db344da38c51fa328cbe7511524c4bbf8d832da7b5dd33a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441473756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21184ea6bda0466ad4b1f26f3201f744043c01cfb142fed15b21a64dd1fc242e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:57:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2368f5f0d7cfd6b211851eda9b17fbfd215db80c81efa589358544e6efd9ef`  
		Last Modified: Fri, 26 Jan 2018 16:54:00 GMT  
		Size: 93.9 MB (93868544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:f8895a4cb46c674a74088aac5e72293b6b7adabdd4fc510e6c0f4080862400f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:8eaa67fedf4dbd22c9d2713fc53c8ac148c916ca40f5f944869cc62905f8f499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381829845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674644c9bd3adb2ac77d07290f5df29487eddb4876f6e6c8273b5f37fdc69fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bee174caddf7183f150982793dc3ddea5b259b7b46934b99dffb0bfd13d2367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333872574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd40b9f48474d459690ee8af05cefde4ffb4ea5d7093887d3f509a9d02d1f60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e78a6bab3edb479ea1527414ce0b25633be7faa79748a27a743d432aaf052aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347605212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0030b678f952cf0f7661a7812f7f53c931a9578ec79078bbc4853138350d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:609d6c13b7b2dcca42d87b3179f126f21654acece7f45b2590927a44e856a31c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:8d2f9e842331463025165b7eed3148489b8c1448182c528d99b675a515c48d08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.0 MB (374997774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ebe00c019da0e886dae77ab256e684a24ef25e805b1cd4902f581630e97cef`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 03:00:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9139254201b5e0fe18542150786ef9cb1b4b3ef115063991bd12d091c72b8a84`  
		Last Modified: Tue, 12 Dec 2017 03:35:17 GMT  
		Size: 84.2 MB (84211781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:183a596bc6fe8b844828dda592568a0708432e91da825457eddc9a0689c62e0b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.5 MB (326526478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13df140b125045bb8222e0585fb1e0a544ad68fe3b5c908556abc51794dd0d66`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:43:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bf06225b1ae881c933dae637e9ee474feb708830a66b66b4aebc92f4fb7aa78`  
		Last Modified: Fri, 15 Dec 2017 20:31:17 GMT  
		Size: 69.0 MB (69044508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:f8895a4cb46c674a74088aac5e72293b6b7adabdd4fc510e6c0f4080862400f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:8eaa67fedf4dbd22c9d2713fc53c8ac148c916ca40f5f944869cc62905f8f499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381829845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674644c9bd3adb2ac77d07290f5df29487eddb4876f6e6c8273b5f37fdc69fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bee174caddf7183f150982793dc3ddea5b259b7b46934b99dffb0bfd13d2367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333872574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd40b9f48474d459690ee8af05cefde4ffb4ea5d7093887d3f509a9d02d1f60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e78a6bab3edb479ea1527414ce0b25633be7faa79748a27a743d432aaf052aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347605212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0030b678f952cf0f7661a7812f7f53c931a9578ec79078bbc4853138350d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:05bcb22533e475ac35192b55feadf7953a79409b4bd4d77f653568b1937e3ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:11e0beed5a94cb0c57b49f544702b8c0b60691517f3331708f185b05e68cb352
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.9 MB (297923707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36be7bf1f0b9eb1a2e6b4014ecfd8d982c680525272d449ba9ac31f180fd4b6f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:bf44e720782426f57acf9c73dc9685dca9c5eff64fd29de2d2fea99d89e2e1cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258781234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452eb1f1a893fd713a962848d65386573deb9cf8c1a0a84589272b6e39ffc579`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0bec2b44bbe35285b6ec2cbf02bdb9cc6ae70b7bff6b1b4646fe7605806a140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271071389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8907ed8d1f9ada01fb824d324ae08c163fe8ca794a5c1f99e23e01170b8485d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:3cd0fd0f3ed4d85173f79c601db9d9c56900bc6e86abd55405c9ff9941ec84db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:9c7ed2ad39c8e023295234a76f798e41ea6dd81a77d0ea626c6909509fb1d755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.8 MB (290785993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e646882f480109c697b88ec75bc39c233c3db202f6cc155299e5698ae7512f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:51:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:16 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Dec 2017 02:51:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Dec 2017 02:51:56 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 02:51:56 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Dec 2017 02:52:06 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Dec 2017 02:52:07 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Dec 2017 02:53:35 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:53:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Dec 2017 02:53:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Dec 2017 02:53:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebfdcacb3eb2a6e14de6ff02deedf419772045e7dfca28ac49c09d65b153f39d`  
		Last Modified: Tue, 12 Dec 2017 03:31:00 GMT  
		Size: 33.8 MB (33770772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c2692ca7c2d913f8b2f578acf79acb2391a52afe02beec43c67f416dd48eeb`  
		Last Modified: Tue, 12 Dec 2017 03:30:42 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15e84e13aa65d6a131bc52b118ce12e08b9355933cd5fbb6c6076385b207346b`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2789d6c07bffcfec4807025ffc451a01cae5f2518e102b07ef2d1cc3cab91bd`  
		Last Modified: Tue, 12 Dec 2017 03:31:07 GMT  
		Size: 46.4 MB (46366197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2417c2abd7b6a2938769d8787425c26a428cdc4e3bb7e6d2bdd2565d32b37414`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 776.9 KB (776928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a794e02032dbbd05c006e82528474cd42e14b880c8d3fbc7694a2db7d4aa748`  
		Last Modified: Tue, 12 Dec 2017 03:31:36 GMT  
		Size: 157.3 MB (157270555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:916f9d9d07229ff53bcc32dd6d6a4058f0682f30d2a61d99e1fb48a20ba7d5cd`  
		Last Modified: Tue, 12 Dec 2017 03:30:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13efd1c5c773251f1a90b2d1b6918fb3cd5976cf18d7e4b03dfd633bc30607c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257481970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f34c212dda672fb91d458e1f935888aa31e459371344eff16ce86464758eab11`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 18:28:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:28:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 18:28:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 18:31:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 18:31:49 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 18:32:31 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 18:32:31 GMT
ENV ROS_DISTRO=kinetic
# Fri, 15 Dec 2017 18:39:12 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 18:39:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 18:39:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 18:39:17 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3dd0875f4aee4fe8ad6a3dd9048277ecc67b31684f68dcf88250ad001f606`  
		Last Modified: Fri, 15 Dec 2017 20:29:49 GMT  
		Size: 32.1 MB (32145451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9abe37fea91e192d4c0838f7cf8485c61f282ebf6db303b4fb4ceea68f31c6`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12dee50035ad289c033a148db661fdf88e9ae0a40b0dab98c3e5147c0f1b72d3`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4977f1bb59857da64dc510ff11dd266329ba2fae77ed25e141d7fa953794d6`  
		Last Modified: Fri, 15 Dec 2017 20:29:56 GMT  
		Size: 44.1 MB (44074869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb2d1275276e05799eda03f5a53d0da1380f36d1ab6b853211fb2765cf380d62`  
		Last Modified: Fri, 15 Dec 2017 20:29:37 GMT  
		Size: 777.3 KB (777314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1091850eeb32791c2d201900c3e8e0c798ef3afb47838405060f744bd4cb6292`  
		Last Modified: Fri, 15 Dec 2017 20:30:41 GMT  
		Size: 130.6 MB (130555820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ed0c4b3181d461489cd6ad3e7d239daec67d95051c54a0cc7d28aef5e55c61`  
		Last Modified: Fri, 15 Dec 2017 20:29:35 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:05bcb22533e475ac35192b55feadf7953a79409b4bd4d77f653568b1937e3ce8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:11e0beed5a94cb0c57b49f544702b8c0b60691517f3331708f185b05e68cb352
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.9 MB (297923707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36be7bf1f0b9eb1a2e6b4014ecfd8d982c680525272d449ba9ac31f180fd4b6f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:bf44e720782426f57acf9c73dc9685dca9c5eff64fd29de2d2fea99d89e2e1cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258781234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452eb1f1a893fd713a962848d65386573deb9cf8c1a0a84589272b6e39ffc579`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0bec2b44bbe35285b6ec2cbf02bdb9cc6ae70b7bff6b1b4646fe7605806a140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271071389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8907ed8d1f9ada01fb824d324ae08c163fe8ca794a5c1f99e23e01170b8485d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:f8895a4cb46c674a74088aac5e72293b6b7adabdd4fc510e6c0f4080862400f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:8eaa67fedf4dbd22c9d2713fc53c8ac148c916ca40f5f944869cc62905f8f499
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381829845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a674644c9bd3adb2ac77d07290f5df29487eddb4876f6e6c8273b5f37fdc69fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 20:05:18 GMT
ENV ROS_DISTRO=kinetic
# Thu, 25 Jan 2018 20:06:53 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:16:12 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 20:16:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 20:16:12 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 20:17:20 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b67164e0c614f0094747781aefbf2f9e306426e6b58d7c9d7ec003fdd633b664`  
		Last Modified: Thu, 25 Jan 2018 22:38:06 GMT  
		Size: 193.4 MB (193350452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c71b1b816f62a9829375c1fbbb8f6da48f954fdb7462e7ae0ecf8c052338be`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d2cc5251033e85f0b548cc936cb4d21ace1bd64f708e77e0f8aa6b0f17c4b8`  
		Last Modified: Thu, 25 Jan 2018 22:47:21 GMT  
		Size: 83.9 MB (83906138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:6bee174caddf7183f150982793dc3ddea5b259b7b46934b99dffb0bfd13d2367
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.9 MB (333872574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd40b9f48474d459690ee8af05cefde4ffb4ea5d7093887d3f509a9d02d1f60`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:34:33 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 14:35:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:35:51 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:35:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:35:51 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:38:00 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c3820826b5e1ac48f76e3ae34bd72c35b6a17e6a31e0f5823e06a92a8939dc3`  
		Last Modified: Fri, 26 Jan 2018 15:08:36 GMT  
		Size: 164.7 MB (164718632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abec6ecaefac68d29f7ed2a5191f372a8805670292ca8a5d07674a48894821d`  
		Last Modified: Fri, 26 Jan 2018 15:07:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdab8c340439854777ce2f9f8b028f8a5f7700a667214841ffc72d324cf21896`  
		Last Modified: Fri, 26 Jan 2018 15:09:13 GMT  
		Size: 75.1 MB (75091340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e78a6bab3edb479ea1527414ce0b25633be7faa79748a27a743d432aaf052aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.6 MB (347605212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef0030b678f952cf0f7661a7812f7f53c931a9578ec79078bbc4853138350d12`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 15:30:47 GMT
ENV ROS_DISTRO=kinetic
# Fri, 26 Jan 2018 15:44:17 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:44:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 15:44:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 15:44:24 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 15:51:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c61c6bf3449fd51be34efca042de3d3a658c30a4a43802ec622318e50484caa`  
		Last Modified: Fri, 26 Jan 2018 16:51:32 GMT  
		Size: 173.9 MB (173937534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8f94e5fe3a6de5622d1dbb3931e445bea6c589200b82523a2a7cf3c2977d7e`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51458a6b0bfc83fb7fddd1f168576a8737586cc5df61c1416f3229d8f0cbea31`  
		Last Modified: Fri, 26 Jan 2018 16:52:33 GMT  
		Size: 76.5 MB (76533823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:5d66b1b3142e3c42d3e46126f61bb1803b74a26ef86a86fc499d7c5d2db59625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:6f1845c0598658c34f3f3913afc6a229e678741f924ea7dee0734050eab9f681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381754220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee1e0a757a908511935cf57217b9c6501de1745fed03a083c0da9dbf535516c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:abccea26d357e16b5d2d97e98d989654bb8fdca987ca4e066bdb2b6e0b270139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333776439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309f6aa52ea10a8aeab82b1e1e70e599250cb376282f3a72619595f63eb61a7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:31226fc471af7f5d92d9e0241adf5ecff29fef59d148cf3b096bd6169610ac0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347535198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f99e7a37f47d13987f0a9475662e6e773e4c95cfd17e42d449cdab0d5bd0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:6418a16b38b8be1b1cebf5630bae4fa18ae2687be13c21c100f9cb83f1f7b556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:dde1d7c252dfc96719bece011c205228838139cd092233a87c07cb0541a6e7cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.1 MB (753078012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e5a75fb30f45502c05c0306a2946a3910f1ab971604c04a7a30201621af682`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:36:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba44e85c584beefdd438989cf7c240eb59bc218afd79144c1a0d3958837bbea`  
		Last Modified: Thu, 25 Jan 2018 23:09:53 GMT  
		Size: 371.3 MB (371323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:fc9cbeb4020dcc3288296883733da060d75362ce608799e9658b0613b9994aa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639879668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365aa74cc470d9670285c1c4451dd086df0fc3665ecc6a37f37efc0cd791c396`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:00:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481eb4326335df5735408e49d8c6931295188db13a973783d61b9c7ad8a528c`  
		Last Modified: Fri, 26 Jan 2018 15:15:47 GMT  
		Size: 306.1 MB (306103229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cb27c5977d17eb511009a81a5f970937d6847ce12d7a8201ce2e519f360035f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.8 MB (667810942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42d7759419941923b4ef81f4d14573cf0577eafdb8d1c113b63eade5dc10195`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:49:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0f0ba9407073f5bf5aac2adb7e6e3b4350bf334b6c96fcba6123e5c89bec2b`  
		Last Modified: Fri, 26 Jan 2018 17:18:46 GMT  
		Size: 320.3 MB (320275744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:253204cfc55eec494f67ce43b8c0426db095d743e222a4b52ec3dc82305e7b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:71698778ecbe559ff1e9d4b67b4c335bbd2e3517f363df401965ba9956fca1a3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **925.5 MB (925467428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42eff6b516567c9c852697a5101a5ec0730a34a398b9a3f1d656dcb8c59bb2cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 12:05:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f533a80daa444088849a020d0d7c29071cba486e66f59cc4ff582dbcf5e708`  
		Last Modified: Thu, 15 Feb 2018 12:36:52 GMT  
		Size: 433.5 MB (433454320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5bd3f14e0af146ea2745dae22ac38923e0952a096de3ab200b9ca65989e59963
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.7 MB (808676416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34649457cb77697e528dda66c6b7f80ab6e361c7ee36429893a153d6c95eb6a5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:22:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:376de498fa77216683e6ce7bcc969b0269214050bfa143fce9529c6e448094f4`  
		Last Modified: Fri, 15 Dec 2017 20:44:36 GMT  
		Size: 373.6 MB (373638126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:6418a16b38b8be1b1cebf5630bae4fa18ae2687be13c21c100f9cb83f1f7b556
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:dde1d7c252dfc96719bece011c205228838139cd092233a87c07cb0541a6e7cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.1 MB (753078012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3e5a75fb30f45502c05c0306a2946a3910f1ab971604c04a7a30201621af682`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:36:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba44e85c584beefdd438989cf7c240eb59bc218afd79144c1a0d3958837bbea`  
		Last Modified: Thu, 25 Jan 2018 23:09:53 GMT  
		Size: 371.3 MB (371323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:fc9cbeb4020dcc3288296883733da060d75362ce608799e9658b0613b9994aa6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.9 MB (639879668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:365aa74cc470d9670285c1c4451dd086df0fc3665ecc6a37f37efc0cd791c396`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:00:56 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7481eb4326335df5735408e49d8c6931295188db13a973783d61b9c7ad8a528c`  
		Last Modified: Fri, 26 Jan 2018 15:15:47 GMT  
		Size: 306.1 MB (306103229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:9cb27c5977d17eb511009a81a5f970937d6847ce12d7a8201ce2e519f360035f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.8 MB (667810942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a42d7759419941923b4ef81f4d14573cf0577eafdb8d1c113b63eade5dc10195`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:49:15 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0f0ba9407073f5bf5aac2adb7e6e3b4350bf334b6c96fcba6123e5c89bec2b`  
		Last Modified: Fri, 26 Jan 2018 17:18:46 GMT  
		Size: 320.3 MB (320275744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:d3c9cb41b9a6ee16de570d2374d018a5e054f9f297448aae4e037ed02ed2d3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:be9cf73253769ca16a83c2f857053ae0bc1354fae1bbad6a52b070dda2cb2705
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485449658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b72304f7e2161772f4868fc31da2c84da63a681461400d6b90a99416159ec0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:32:27 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3c25ecd6f29f163c198fb6f393bb2e57d3226026ae153e9dae8f0638bb8f52`  
		Last Modified: Thu, 25 Jan 2018 23:07:51 GMT  
		Size: 103.7 MB (103695438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a1b949b0acfe38b17643d7edba40fb5e3642e091e17b9a0735c56695c639776b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423885161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b18a828453ee9f85d8b7ed5bdb001142b6ea0072ee475410b4102058cab177`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:56:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c585320b6e7a0e40366f3f79f28d91681444f3bd6b89df9db91b8d483a876861`  
		Last Modified: Fri, 26 Jan 2018 15:14:13 GMT  
		Size: 90.1 MB (90108722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bd93df7a9a615ed88ea933134d12936eb565b60aead514de4b8872dd8ecfe550
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441503661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e527a7f967064a6ac3549befff8fea078d6d8c2e07da9c8293474b9a3ea909`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:34:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dd370adb38fe4fe231fcc4f4c195e4cb29834ad3a11fbdbe9616ddb67a9faf`  
		Last Modified: Fri, 26 Jan 2018 17:03:30 GMT  
		Size: 94.0 MB (93968463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:7c0b5e35d46d93156f8407fcdc663b87b12679f36b66fc63767f53190e877761
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:c623e894f4056afe1910e37551498a6a82b24780bfe4aee53a3c29386270811c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552440262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01fecc5b2c2afff84bc34636138427c13d758973a17b5f3aa5bf8cee96981979`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:46:44 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4103a252750ef6d4b9dadf6d5f02e640e88b40794ffece1e4df5eca6fe6d5fd`  
		Last Modified: Thu, 15 Feb 2018 12:34:50 GMT  
		Size: 60.4 MB (60427154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:afc0dd12e1d8ecc9743533b6d07ad5c6151f93b48b2f3f0cea686f61ef4c2b82
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492537217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359517d50ffc19ab84049b5c55cca1e4d78580cd4d2850a7fd47bfa61a4d62c4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 20:05:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb8962fce1bd9df59c74a224d844ef6e32ed6cda3dfa3a7338403c9a4a533ec`  
		Last Modified: Fri, 15 Dec 2017 20:42:11 GMT  
		Size: 57.5 MB (57498927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:d3c9cb41b9a6ee16de570d2374d018a5e054f9f297448aae4e037ed02ed2d3b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:be9cf73253769ca16a83c2f857053ae0bc1354fae1bbad6a52b070dda2cb2705
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.4 MB (485449658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85b72304f7e2161772f4868fc31da2c84da63a681461400d6b90a99416159ec0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:32:27 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc3c25ecd6f29f163c198fb6f393bb2e57d3226026ae153e9dae8f0638bb8f52`  
		Last Modified: Thu, 25 Jan 2018 23:07:51 GMT  
		Size: 103.7 MB (103695438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a1b949b0acfe38b17643d7edba40fb5e3642e091e17b9a0735c56695c639776b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **423.9 MB (423885161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39b18a828453ee9f85d8b7ed5bdb001142b6ea0072ee475410b4102058cab177`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:56:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c585320b6e7a0e40366f3f79f28d91681444f3bd6b89df9db91b8d483a876861`  
		Last Modified: Fri, 26 Jan 2018 15:14:13 GMT  
		Size: 90.1 MB (90108722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bd93df7a9a615ed88ea933134d12936eb565b60aead514de4b8872dd8ecfe550
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.5 MB (441503661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e527a7f967064a6ac3549befff8fea078d6d8c2e07da9c8293474b9a3ea909`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:34:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5dd370adb38fe4fe231fcc4f4c195e4cb29834ad3a11fbdbe9616ddb67a9faf`  
		Last Modified: Fri, 26 Jan 2018 17:03:30 GMT  
		Size: 94.0 MB (93968463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:5d66b1b3142e3c42d3e46126f61bb1803b74a26ef86a86fc499d7c5d2db59625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6f1845c0598658c34f3f3913afc6a229e678741f924ea7dee0734050eab9f681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381754220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee1e0a757a908511935cf57217b9c6501de1745fed03a083c0da9dbf535516c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:abccea26d357e16b5d2d97e98d989654bb8fdca987ca4e066bdb2b6e0b270139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333776439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309f6aa52ea10a8aeab82b1e1e70e599250cb376282f3a72619595f63eb61a7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:31226fc471af7f5d92d9e0241adf5ecff29fef59d148cf3b096bd6169610ac0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347535198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f99e7a37f47d13987f0a9475662e6e773e4c95cfd17e42d449cdab0d5bd0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:b8b16817f3979b58342ff46b3166d78f16d221885cb726bd3f346b47b72f967f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:f9ac0c647987d6b57833233e7a00de1d0709bd89641fc3d4f3945b39171e584a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.0 MB (492013108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8adb9e2b82b59285e3218972362b883fad3f16cc7a414547aeb6f9ff0006590`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:45:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca81767dc349c71990259c0d871cea8bada6fbe94774c901a28e5867ce7ebe69`  
		Last Modified: Thu, 15 Feb 2018 12:34:10 GMT  
		Size: 122.2 MB (122213973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fc85ba8d23d1dc4c67dd11bedb4cba5b6e45c0b9c3dade630b19a7b9f454158e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 MB (435038290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c4c05ac254ae628e601fb724d91d894af70523d365352964f391a149dfc9f00`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 20:02:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:645eb3ea882edb3f22ca411234a79187bc609fe3016dbe4b4db17f50f580e5e7`  
		Last Modified: Fri, 15 Dec 2017 20:41:39 GMT  
		Size: 116.0 MB (116023415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:5d66b1b3142e3c42d3e46126f61bb1803b74a26ef86a86fc499d7c5d2db59625
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:6f1845c0598658c34f3f3913afc6a229e678741f924ea7dee0734050eab9f681
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381754220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee1e0a757a908511935cf57217b9c6501de1745fed03a083c0da9dbf535516c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
# Thu, 25 Jan 2018 21:17:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e89b5596ef55931ee6028cbb98f8cf534ad239fd901fa5664dc29021a94c37f9`  
		Last Modified: Thu, 25 Jan 2018 23:06:34 GMT  
		Size: 83.8 MB (83832408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:abccea26d357e16b5d2d97e98d989654bb8fdca987ca4e066bdb2b6e0b270139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.8 MB (333776439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309f6aa52ea10a8aeab82b1e1e70e599250cb376282f3a72619595f63eb61a7f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 14:54:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87570103b038cd918b681df1d5287b79f51cf14aa0fb1ef64db5b468a750db08`  
		Last Modified: Fri, 26 Jan 2018 15:13:24 GMT  
		Size: 75.0 MB (75017096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:31226fc471af7f5d92d9e0241adf5ecff29fef59d148cf3b096bd6169610ac0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.5 MB (347535198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b0f99e7a37f47d13987f0a9475662e6e773e4c95cfd17e42d449cdab0d5bd0a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
# Fri, 26 Jan 2018 16:29:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d430a2bb12dfb3b8335bb305b21b66766df6b05d7699f75f60a2948cf464a9c1`  
		Last Modified: Fri, 26 Jan 2018 17:02:04 GMT  
		Size: 76.5 MB (76460287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:03a8712a8ee526cca5b32e9d4df57c3caf6de61920e412634396ea8704bef667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d5a5215755e55d74292c6498c2ad76dc43fa45641e0c0dd4767310d71c87ce7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.9 MB (297921812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52d53b25838b60b75160d301531a7e4936f1f49303f50dc80f0899cbec040aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:d4196098eb78e5a48580a18a54a5c9b87d6c03734ad307123ed37b9bd1d918df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258759343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2508490696452b7859992e04680f25f8284ffcb9ffbf2daaa72ce6b32e455d94`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:12b5af2b4f5b3f1192096bf0fe7d1e5278d8a774657f228a29d3d484723c5aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271074911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a6cd9dd46123a78915e89647a5e5debdd970abcc944acb3bbbafebeca4b4fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:49dcc62928237982a01fe40fc5a961105ebc642784d15d898d855d1efe6f4c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:43a5f858e5ecff181a9ad87d024d72ed4561ba5603fb4eca9db5956ac57bd5c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369799135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:058705272507cfe8bfc61f5ed55cd8873e791a7d1c072454d9825764663a78a9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 11:20:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:20:34 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Feb 2018 11:20:35 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Feb 2018 11:21:02 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 11:21:02 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Feb 2018 11:21:14 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Feb 2018 11:28:36 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Feb 2018 11:29:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 11:29:44 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Feb 2018 11:29:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Feb 2018 11:29:44 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb14acca8d65ad05789e233407120e85cf0f21961f0b94903de9d247414b099`  
		Last Modified: Thu, 15 Feb 2018 12:19:00 GMT  
		Size: 7.2 MB (7218589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75bf89e98ae9ae236e5651477b7f552f1fd93eb80c540ca1d556f55a3a54c4a1`  
		Last Modified: Thu, 15 Feb 2018 12:18:59 GMT  
		Size: 1.4 KB (1381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0133cdbda8cfcd7d48bff26b47f06ae150eb3366312a532e3cbb7a9c685d2894`  
		Last Modified: Thu, 15 Feb 2018 12:18:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98bdc778e2b826e86430e4a36846fcf85c5e91ea83aba2dc5b343e79be82f3f9`  
		Last Modified: Thu, 15 Feb 2018 12:19:22 GMT  
		Size: 64.9 MB (64857352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080b068b9ace72b2bb7ac5eaa09ec3dd11286fa3e6cf6bf0d7838be9ab5dc349`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 785.4 KB (785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:217073277a97b42b2864b504ef889c91101281e6d315185e1602e49a30b38b7e`  
		Last Modified: Thu, 15 Feb 2018 12:20:07 GMT  
		Size: 251.8 MB (251803399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1cec17f6cca3ced994b8fe9f82f1b0fecb557d3b5e25f9b2f338a390623862`  
		Last Modified: Thu, 15 Feb 2018 12:18:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bb80da4301529d5050c1ca70b29a2733a02ae9420ed079dbd218af7957e5c452
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (319014875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddbe902637c8c5d9e710f812a64b045d7976a1b9d976e492fee6a4e040155731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Dec 2017 18:33:14 GMT
ADD file:ae07a2e0bd59c986cf9cec3d7ce9a3db8f8034bac7b69938557e472980c70cdc in / 
# Tue, 12 Dec 2017 18:33:14 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 19:45:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:45:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 15 Dec 2017 19:46:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 15 Dec 2017 19:47:58 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:47:59 GMT
ENV LANG=C.UTF-8
# Fri, 15 Dec 2017 19:48:00 GMT
ENV LC_ALL=C.UTF-8
# Fri, 15 Dec 2017 19:48:43 GMT
RUN rosdep init     && rosdep update
# Fri, 15 Dec 2017 19:48:44 GMT
ENV ROS_DISTRO=lunar
# Fri, 15 Dec 2017 19:58:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 19:58:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 15 Dec 2017 19:58:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 15 Dec 2017 19:58:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91ea0aed359111bf5beb30e4bebd50fac25bc40a69e1bb3bf0f8e3c6dcd5fa7f`  
		Last Modified: Tue, 12 Dec 2017 18:47:08 GMT  
		Size: 42.9 MB (42912813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e272421d4fa382096a753a46b1201fe50a09ce0d2b4468d6c73a099b199664`  
		Last Modified: Fri, 15 Dec 2017 20:39:25 GMT  
		Size: 6.8 MB (6793608 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878ab039dbb2c928beef9e7f9226eb8b84e1adbbc02ea9a2a4a76d0bf412a942`  
		Last Modified: Fri, 15 Dec 2017 20:39:23 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c82f83576c5524602f010212b462fa2d0ba44fe6d532fdf273cddbf2689eef4`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f217f55ee2b5747d50addaca5b5a92cab3b5697902645097d17b3a5f7fb06e0`  
		Last Modified: Fri, 15 Dec 2017 20:39:48 GMT  
		Size: 61.8 MB (61787107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5626de059d072de8099f1b1b8f94426c434848e86c5156e5ac9121a6f3fd363`  
		Last Modified: Fri, 15 Dec 2017 20:39:21 GMT  
		Size: 777.3 KB (777309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dcfa45d361fa4e884f29fb67c8bb453a02e6c7ca30dc69bac00763bcbc0422d`  
		Last Modified: Fri, 15 Dec 2017 20:40:44 GMT  
		Size: 206.7 MB (206742243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:506ecef279fa7fdc0068381e2e355e1032b853ca9f4ded9bc2ae73127d049355`  
		Last Modified: Fri, 15 Dec 2017 20:39:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:03a8712a8ee526cca5b32e9d4df57c3caf6de61920e412634396ea8704bef667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d5a5215755e55d74292c6498c2ad76dc43fa45641e0c0dd4767310d71c87ce7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.9 MB (297921812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52d53b25838b60b75160d301531a7e4936f1f49303f50dc80f0899cbec040aa`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 25 Jan 2018 18:23:30 GMT
ADD file:a3344b835ea6fdc5692df23826c970403656c6947342e117b2ac1a05956679af in / 
# Thu, 25 Jan 2018 18:23:39 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 25 Jan 2018 18:23:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 18:23:50 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 25 Jan 2018 18:23:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 25 Jan 2018 18:23:51 GMT
CMD ["/bin/bash"]
# Thu, 25 Jan 2018 20:04:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:04:38 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 25 Jan 2018 20:04:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 25 Jan 2018 20:05:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LANG=C.UTF-8
# Thu, 25 Jan 2018 20:05:08 GMT
ENV LC_ALL=C.UTF-8
# Thu, 25 Jan 2018 20:05:18 GMT
RUN rosdep init     && rosdep update
# Thu, 25 Jan 2018 21:00:42 GMT
ENV ROS_DISTRO=lunar
# Thu, 25 Jan 2018 21:02:41 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 25 Jan 2018 21:15:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 25 Jan 2018 21:15:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 25 Jan 2018 21:15:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1be7f2b886e89a58e59c4e685fcc5905a26ddef3201f290b96f1eff7d778e122`  
		Last Modified: Wed, 24 Jan 2018 23:46:22 GMT  
		Size: 42.9 MB (42863496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fbc4a21b806838b63b774b338c6ad19d696a9e655f50b4e358cc4006c3baa79`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71a6f8e13782fed125f2247931c3eb20cc0e6428a5d79edb546f1f1405f0e49`  
		Last Modified: Thu, 25 Jan 2018 18:27:27 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4be3072e5a37392e32f632bb234c0b461ff5675ab7e362afad6359fbd36884af`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06c6d2f5970057aef3aef6da60f0fde280db1c077f0cd88ca33ec1a70a9c7b58`  
		Last Modified: Thu, 25 Jan 2018 18:27:26 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f9e352239bc1ad72242844794c6459a35aaeb3d6a0131e5d726bafbde457d0`  
		Last Modified: Thu, 25 Jan 2018 22:37:08 GMT  
		Size: 5.4 MB (5362534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b90c51000a9ff2d791eec3254f29933b09b3b681a1ba219122c75c9d9385f70`  
		Last Modified: Thu, 25 Jan 2018 22:37:05 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bd2cf5c211204ae1f0b08957780038b619c2a4b8c78ccf4bb0b4257d475273`  
		Last Modified: Thu, 25 Jan 2018 22:37:03 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f38de71eb6a1e1fd5a3ddd1589c3b5ca3bdecde0c48c335ceed3aa04c33eef5`  
		Last Modified: Thu, 25 Jan 2018 22:37:33 GMT  
		Size: 55.6 MB (55559729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bba12de9bd6919e0a5b59f86e23b08f6aa4766d9294c4b9b429bf0b03d76d18`  
		Last Modified: Thu, 25 Jan 2018 22:37:04 GMT  
		Size: 771.5 KB (771508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44627ab347a7f41c446c8408eb580e2a33eb2b84d9822a128cf97d1362b2adcd`  
		Last Modified: Thu, 25 Jan 2018 23:05:25 GMT  
		Size: 193.3 MB (193348557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d90482120e7ddb9427f3f1614916aa3b14c420fee56354e0a73d1717b8c135`  
		Last Modified: Thu, 25 Jan 2018 23:04:24 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:d4196098eb78e5a48580a18a54a5c9b87d6c03734ad307123ed37b9bd1d918df
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.8 MB (258759343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2508490696452b7859992e04680f25f8284ffcb9ffbf2daaa72ce6b32e455d94`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 13:51:58 GMT
ADD file:9112e35921c3b641ad47919bdc8714a0d0be15bdbdc15a1e207432a25744d35d in / 
# Fri, 26 Jan 2018 13:51:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 13:52:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 13:52:01 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 13:52:01 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 13:52:01 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 14:33:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:33:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 14:33:23 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 14:34:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 14:34:12 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 14:34:32 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 14:48:11 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 14:52:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 14:52:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 14:52:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 14:52:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:12d2fa1549d508f00ed32951a1fcd8b191e6bec2784877898d41941206da2060`  
		Last Modified: Fri, 26 Jan 2018 13:54:16 GMT  
		Size: 38.0 MB (37987982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b66e47c4b68f45f59db81ad00e6d6cb9de49eb7f597c5034c1aae41f9315e88`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039f9b32d330c6e3d372892b5b40329172b2a2cf520afc1d081b9d5381eadf5c`  
		Last Modified: Fri, 26 Jan 2018 13:54:07 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabb4c40729a408cc528ca027a0569f1ff71b2b1c3bc48ec87492749fb6fbbd2`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c83576329d6df4a4e78e211f037e1845fd4442a3b5a0cf1249d4454eb58aa514`  
		Last Modified: Fri, 26 Jan 2018 13:54:06 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d720a30311e083a1f285264bd9af1efc0ad3c8fe025b909cd02d23e902fd815`  
		Last Modified: Fri, 26 Jan 2018 15:07:49 GMT  
		Size: 4.6 MB (4614956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e14b1e46e45b5b957b6cc383f8863db183b73ffd4685a3e944b30a2326a90`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 13.1 KB (13077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbf654a7ac0e6ff43a2f0b46d5c2f4df5c8b9e203f5db7e2a87b43362a31e1f`  
		Last Modified: Fri, 26 Jan 2018 15:07:46 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:603bfecd298f00863ad86a94241753345d02a44b23fc08d56b072f045c92abef`  
		Last Modified: Fri, 26 Jan 2018 15:08:04 GMT  
		Size: 50.7 MB (50672049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aefcc9d6498e44346d3304188eeeee7b088f9cbf20d6a913c20ccbd600a6df2`  
		Last Modified: Fri, 26 Jan 2018 15:07:50 GMT  
		Size: 771.6 KB (771635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64dce781c1451dd53a75a758a6f272070a74b388d0579b47ecdba04834b7debc`  
		Last Modified: Fri, 26 Jan 2018 15:12:48 GMT  
		Size: 164.7 MB (164696741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76cccb40f58a0b360a01ed6dc9bb42acfbb2ed0a417ccff5996da8f68d5650ea`  
		Last Modified: Fri, 26 Jan 2018 15:11:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:12b5af2b4f5b3f1192096bf0fe7d1e5278d8a774657f228a29d3d484723c5aa2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.1 MB (271074911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30a6cd9dd46123a78915e89647a5e5debdd970abcc944acb3bbbafebeca4b4fb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Jan 2018 15:02:39 GMT
ADD file:e04bf6e1348fb097d26dea59aaf0d5ac0b1170308bb8353b7254aa7c54d7819a in / 
# Fri, 26 Jan 2018 15:02:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Jan 2018 15:02:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:02:43 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 26 Jan 2018 15:02:46 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Jan 2018 15:02:47 GMT
CMD ["/bin/bash"]
# Fri, 26 Jan 2018 15:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:27:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Jan 2018 15:27:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Jan 2018 15:30:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 15:30:07 GMT
ENV LANG=C.UTF-8
# Fri, 26 Jan 2018 15:30:08 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Jan 2018 15:30:46 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Jan 2018 16:16:15 GMT
ENV ROS_DISTRO=lunar
# Fri, 26 Jan 2018 16:24:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Jan 2018 16:24:55 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 26 Jan 2018 16:24:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Jan 2018 16:24:56 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:b6adc04a2846320a64314d833bb574036dbf4aa0e1bbb914f0bcd239976045e7`  
		Last Modified: Fri, 26 Jan 2018 15:10:06 GMT  
		Size: 39.1 MB (39084753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de45d28e972d3860b04d73866c077e771c9b22cf4fe4ebd2c235e6d510c4c8d`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864bba4e2970b8c748ea1e340ef75b9948dd2c9e0ddd7544cbd5d12e333255a`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 613.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dc3798f09feef983af07612cd2b730406ca0c08e290855a68fced7acacad4bd`  
		Last Modified: Fri, 26 Jan 2018 15:09:53 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0f97e9df2e9b78e9635dcdbc851cc5d6ab6a3d47493e58398e37142c159f25`  
		Last Modified: Fri, 26 Jan 2018 15:09:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab503a44cf37d9545e9c90e5eeb5af93ea4ba5c1c2555c345ead0f730035440`  
		Last Modified: Fri, 26 Jan 2018 16:50:11 GMT  
		Size: 4.8 MB (4820087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3235c4141ebe575ddf895318098060c76fabeedc0b6cff30c4d75372b0b7b63a`  
		Last Modified: Fri, 26 Jan 2018 16:49:59 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac7a7780f4fe73e065039a41192d58d8a9909d2d0090d096a639253fcb2d736`  
		Last Modified: Fri, 26 Jan 2018 16:49:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6470c9eca85f68fa36ac456f5b4e69eead1ec40a7131b308dffa534e97e1b9be`  
		Last Modified: Fri, 26 Jan 2018 16:50:42 GMT  
		Size: 52.4 MB (52441508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da6c9a52c1622547395a30ff83c9e4918860ba2139be4d53bb9a365effaa63b2`  
		Last Modified: Fri, 26 Jan 2018 16:49:57 GMT  
		Size: 771.5 KB (771518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:685281da0ef4999f1f4ec4bb41dd7916fc0b3d7e3caf2c881d2a1c6a586ecd2d`  
		Last Modified: Fri, 26 Jan 2018 16:57:58 GMT  
		Size: 173.9 MB (173941056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d35152793f899fae169e428c081779b2c8dff14b89ab9f3245defda5300c5e82`  
		Last Modified: Fri, 26 Jan 2018 16:56:52 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

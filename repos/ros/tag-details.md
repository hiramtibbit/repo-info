<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ros`

-	[`ros:bouncy`](#rosbouncy)
-	[`ros:bouncy-ros-base`](#rosbouncy-ros-base)
-	[`ros:bouncy-ros-base-bionic`](#rosbouncy-ros-base-bionic)
-	[`ros:bouncy-ros-core`](#rosbouncy-ros-core)
-	[`ros:bouncy-ros-core-bionic`](#rosbouncy-ros-core-bionic)
-	[`ros:crystal`](#roscrystal)
-	[`ros:crystal-ros-base`](#roscrystal-ros-base)
-	[`ros:crystal-ros-base-bionic`](#roscrystal-ros-base-bionic)
-	[`ros:crystal-ros-core`](#roscrystal-ros-core)
-	[`ros:crystal-ros-core-bionic`](#roscrystal-ros-core-bionic)
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
-	[`ros:kinetic-perception-xenial`](#roskinetic-perception-xenial)
-	[`ros:kinetic-robot`](#roskinetic-robot)
-	[`ros:kinetic-robot-xenial`](#roskinetic-robot-xenial)
-	[`ros:kinetic-ros-base`](#roskinetic-ros-base)
-	[`ros:kinetic-ros-base-xenial`](#roskinetic-ros-base-xenial)
-	[`ros:kinetic-ros-core`](#roskinetic-ros-core)
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
-	[`ros:melodic`](#rosmelodic)
-	[`ros:melodic-perception`](#rosmelodic-perception)
-	[`ros:melodic-perception-bionic`](#rosmelodic-perception-bionic)
-	[`ros:melodic-perception-stretch`](#rosmelodic-perception-stretch)
-	[`ros:melodic-robot`](#rosmelodic-robot)
-	[`ros:melodic-robot-bionic`](#rosmelodic-robot-bionic)
-	[`ros:melodic-robot-stretch`](#rosmelodic-robot-stretch)
-	[`ros:melodic-ros-base`](#rosmelodic-ros-base)
-	[`ros:melodic-ros-base-bionic`](#rosmelodic-ros-base-bionic)
-	[`ros:melodic-ros-base-stretch`](#rosmelodic-ros-base-stretch)
-	[`ros:melodic-ros-core`](#rosmelodic-ros-core)
-	[`ros:melodic-ros-core-bionic`](#rosmelodic-ros-core-bionic)
-	[`ros:melodic-ros-core-stretch`](#rosmelodic-ros-core-stretch)

## `ros:bouncy`

```console
$ docker pull ros@sha256:491e877bc66fabb6e57fd945afe5e440992b73d675ec7d59ee2d90beb92a3629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23e760b89262b3ab7a96150976772700400ff7291aa1775d0062fdbf0744fa9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204795680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19218d189cd55499595d1d1300a875060b6b061b6faa3d1204d859b59a0a0d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:17:37 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f533a8a7ecea9a63a2dcf7e0744583a98760db6bf059bcf6a5c6dc05f3227e`  
		Last Modified: Thu, 07 Feb 2019 01:51:06 GMT  
		Size: 2.9 MB (2892884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base`

```console
$ docker pull ros@sha256:491e877bc66fabb6e57fd945afe5e440992b73d675ec7d59ee2d90beb92a3629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23e760b89262b3ab7a96150976772700400ff7291aa1775d0062fdbf0744fa9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204795680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19218d189cd55499595d1d1300a875060b6b061b6faa3d1204d859b59a0a0d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:17:37 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f533a8a7ecea9a63a2dcf7e0744583a98760db6bf059bcf6a5c6dc05f3227e`  
		Last Modified: Thu, 07 Feb 2019 01:51:06 GMT  
		Size: 2.9 MB (2892884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-base-bionic`

```console
$ docker pull ros@sha256:491e877bc66fabb6e57fd945afe5e440992b73d675ec7d59ee2d90beb92a3629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:50a0884283ff95b04e2272965ae1b302f8c0c5e73ffa9dc653bf48b2e48f3300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274610808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cb952de3c0ad1243436060d4a89db7269692ad93e58b9ce87cb4703a84c1f7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:25:55 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ee6805609a058fceae7f700bf9564371d0fb0f2397f1b04fdc9e74d3cdf78a`  
		Last Modified: Tue, 12 Mar 2019 01:40:15 GMT  
		Size: 3.1 MB (3134424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:23e760b89262b3ab7a96150976772700400ff7291aa1775d0062fdbf0744fa9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204795680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19218d189cd55499595d1d1300a875060b6b061b6faa3d1204d859b59a0a0d3b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:17:37 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-base=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6f533a8a7ecea9a63a2dcf7e0744583a98760db6bf059bcf6a5c6dc05f3227e`  
		Last Modified: Thu, 07 Feb 2019 01:51:06 GMT  
		Size: 2.9 MB (2892884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core`

```console
$ docker pull ros@sha256:5eea87c3a4e3b325a0cee30fa948555b9cbcc91b0f239ae130a7825de7d99826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a7ece1fe93d6730f635fb84d50ce2b756d6e21aca43d9bc8f3448c2fd2e7606a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271476384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814cb2c9be12de15baeba0ddb66cf7d68b997b8b11c103b29ad39e5738d23256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:15f210a973eb62e97f7045103628a62ce924c1168d7ac8ff6abebdb8b59397af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201902796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb0ce870925249391e4db16d328b0b76d7ebb1a0c44ae219874bd7c8465e6f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:bouncy-ros-core-bionic`

```console
$ docker pull ros@sha256:5eea87c3a4e3b325a0cee30fa948555b9cbcc91b0f239ae130a7825de7d99826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:bouncy-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a7ece1fe93d6730f635fb84d50ce2b756d6e21aca43d9bc8f3448c2fd2e7606a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271476384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814cb2c9be12de15baeba0ddb66cf7d68b997b8b11c103b29ad39e5738d23256`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:24:41 GMT
ENV ROS_DISTRO=bouncy
# Tue, 12 Mar 2019 01:25:32 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:25:33 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:25:33 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:25:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2145329786b7f67d5b6d395fb5fef8f6385a32d1c09eb20f09f5ded6e5301f7`  
		Last Modified: Tue, 12 Mar 2019 01:39:50 GMT  
		Size: 47.6 MB (47647701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1c853455a7d51b13ff45a9ac30d125204c4c6e75dbafe8e6befb6d098075856`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:bouncy-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:15f210a973eb62e97f7045103628a62ce924c1168d7ac8ff6abebdb8b59397af
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201902796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbb0ce870925249391e4db16d328b0b76d7ebb1a0c44ae219874bd7c8465e6f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:12:01 GMT
ENV ROS_DISTRO=bouncy
# Thu, 07 Feb 2019 01:16:46 GMT
RUN apt-get update && apt-get install -y     ros-bouncy-ros-core=0.5.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:16:52 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:16:54 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:16:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d404aa64ffa7aeb5a0f77d674a10f5d4927a281aa8bba62d0e472adadefe87`  
		Last Modified: Thu, 07 Feb 2019 01:50:33 GMT  
		Size: 37.6 MB (37646590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c84d23e436b782bcd9bb2072d752b609338226de26f15e5908f62c7775580b`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal`

```console
$ docker pull ros@sha256:7bb1666ad2546dd1a18b0fb576b786de4364a8b73d2edb19c143dd4c3b562819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0ff7a061d6d3cd15dc35439e8b0e3e93e96f3914f21e74286fa927e449b38aa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207205989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f651828fce070a678a22ee21910d9cffb29cbd15ac171005668e50b9655d756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:17:44 GMT
ENV ROS_DISTRO=crystal
# Thu, 07 Feb 2019 01:23:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:23:18 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:23:20 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:24:10 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fef3f86128597eb6385e6786f61d8633071b5cb7add591ab9571af11840dfc8`  
		Last Modified: Thu, 07 Feb 2019 01:51:39 GMT  
		Size: 40.0 MB (40011105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39f74b99c2682ee32fb582edc1cc56e39f80469f9f490cc8b09a831d9b467b2`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0a4e3d9461e6e9ff1d5445e24087ed7109b3d6081e4965c5b855420d67a73`  
		Last Modified: Thu, 07 Feb 2019 01:51:50 GMT  
		Size: 2.9 MB (2938677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base`

```console
$ docker pull ros@sha256:7bb1666ad2546dd1a18b0fb576b786de4364a8b73d2edb19c143dd4c3b562819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0ff7a061d6d3cd15dc35439e8b0e3e93e96f3914f21e74286fa927e449b38aa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207205989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f651828fce070a678a22ee21910d9cffb29cbd15ac171005668e50b9655d756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:17:44 GMT
ENV ROS_DISTRO=crystal
# Thu, 07 Feb 2019 01:23:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:23:18 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:23:20 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:24:10 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fef3f86128597eb6385e6786f61d8633071b5cb7add591ab9571af11840dfc8`  
		Last Modified: Thu, 07 Feb 2019 01:51:39 GMT  
		Size: 40.0 MB (40011105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39f74b99c2682ee32fb582edc1cc56e39f80469f9f490cc8b09a831d9b467b2`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0a4e3d9461e6e9ff1d5445e24087ed7109b3d6081e4965c5b855420d67a73`  
		Last Modified: Thu, 07 Feb 2019 01:51:50 GMT  
		Size: 2.9 MB (2938677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-base-bionic`

```console
$ docker pull ros@sha256:7bb1666ad2546dd1a18b0fb576b786de4364a8b73d2edb19c143dd4c3b562819
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:6d63f01873c47c4619e500e227bc604f6fabdcf38aba0627337fa14060beb569
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.1 MB (277100817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01e3637eed09676a9554ac27367ebc9feee9473a7b45151f48c6aece02e55f5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:26:58 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a8888358fc52fabdbf818f595b904da49503d19ebc0aba977904de5ca3e36b`  
		Last Modified: Tue, 12 Mar 2019 01:40:43 GMT  
		Size: 3.2 MB (3174600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0ff7a061d6d3cd15dc35439e8b0e3e93e96f3914f21e74286fa927e449b38aa1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.2 MB (207205989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f651828fce070a678a22ee21910d9cffb29cbd15ac171005668e50b9655d756`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:17:44 GMT
ENV ROS_DISTRO=crystal
# Thu, 07 Feb 2019 01:23:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:23:18 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:23:20 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:24:10 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fef3f86128597eb6385e6786f61d8633071b5cb7add591ab9571af11840dfc8`  
		Last Modified: Thu, 07 Feb 2019 01:51:39 GMT  
		Size: 40.0 MB (40011105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39f74b99c2682ee32fb582edc1cc56e39f80469f9f490cc8b09a831d9b467b2`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49e0a4e3d9461e6e9ff1d5445e24087ed7109b3d6081e4965c5b855420d67a73`  
		Last Modified: Thu, 07 Feb 2019 01:51:50 GMT  
		Size: 2.9 MB (2938677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core`

```console
$ docker pull ros@sha256:ab418d6269eb8620b7449c52c6e44138e736aab6c5d60a1a42209f7e973ac273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:90945c4880efde97a91893b7050efb4e3846910dcfafa38213b9670b0f3a4a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273926217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae7a055d7b6395822e369d5b492a159b767789c0ffe732c3c9099775280acfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5f3eab76ad5ebf79a82cfbb8b299f107e28fce44fccbda8da33f7f51d6f7224
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b321e8879bf95a4485804b95d82c569dd0c39a1173d4a32fc0ae1042242196ed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:17:44 GMT
ENV ROS_DISTRO=crystal
# Thu, 07 Feb 2019 01:23:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:23:18 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:23:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fef3f86128597eb6385e6786f61d8633071b5cb7add591ab9571af11840dfc8`  
		Last Modified: Thu, 07 Feb 2019 01:51:39 GMT  
		Size: 40.0 MB (40011105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39f74b99c2682ee32fb582edc1cc56e39f80469f9f490cc8b09a831d9b467b2`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:crystal-ros-core-bionic`

```console
$ docker pull ros@sha256:ab418d6269eb8620b7449c52c6e44138e736aab6c5d60a1a42209f7e973ac273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:90945c4880efde97a91893b7050efb4e3846910dcfafa38213b9670b0f3a4a1b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273926217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cae7a055d7b6395822e369d5b492a159b767789c0ffe732c3c9099775280acfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:35 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:23:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:23:43 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Tue, 12 Mar 2019 01:24:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:24:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:24:39 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:24:41 GMT
RUN pip3 install -U     argcomplete
# Tue, 12 Mar 2019 01:25:58 GMT
ENV ROS_DISTRO=crystal
# Tue, 12 Mar 2019 01:26:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:26:42 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Tue, 12 Mar 2019 01:26:42 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:26:43 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb977d0f5d6ef93abd7ba875e15007fde95ec312df3b5a7adb64a03ec335af7`  
		Last Modified: Tue, 12 Mar 2019 01:40:04 GMT  
		Size: 151.6 MB (151582840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d87d1f9fdefbbe3fe841c742d0cd8fb1d83f96314df24f68b6a032be5fcaf41b`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fee6c791997a2083658b9d3fd0cf7cd32793db03b78977c9e06f39f93407ea`  
		Last Modified: Tue, 12 Mar 2019 01:39:31 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12f1ff83333572bf76d3a0890ab624b232ab9bcc1d288eec39a512ab886a6e9b`  
		Last Modified: Tue, 12 Mar 2019 01:39:43 GMT  
		Size: 38.2 MB (38228353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85228b93af889cf4de7365d018e5fd7f38076a125429030726fde3b627df498c`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 611.9 KB (611856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2b96ac01896c80dcbd69856013f82c926490a7b2a173b4b55429c77c34ab51`  
		Last Modified: Tue, 12 Mar 2019 01:39:30 GMT  
		Size: 93.9 KB (93858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6c0248f193033900889788c6039e78025cbb55318e2f28a28aae34494c4c1d`  
		Last Modified: Tue, 12 Mar 2019 01:40:38 GMT  
		Size: 50.1 MB (50097534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514b2053abc6f5136ae82fd1627051a2eb2312bf3686bf825fefad2aead0fded`  
		Last Modified: Tue, 12 Mar 2019 01:40:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5f3eab76ad5ebf79a82cfbb8b299f107e28fce44fccbda8da33f7f51d6f7224
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.3 MB (204267312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b321e8879bf95a4485804b95d82c569dd0c39a1173d4a32fc0ae1042242196ed`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:10 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:08:14 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 01:08:17 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Thu, 07 Feb 2019 01:10:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:10:59 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 01:11:00 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 01:11:50 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 01:12:00 GMT
RUN pip3 install -U     argcomplete
# Thu, 07 Feb 2019 01:17:44 GMT
ENV ROS_DISTRO=crystal
# Thu, 07 Feb 2019 01:23:16 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:23:18 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Thu, 07 Feb 2019 01:23:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 01:23:20 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87b532a3c2dac876db4304a4ecb095bc22db287f0a0731f8e12da2a0c4e4b19`  
		Last Modified: Thu, 07 Feb 2019 01:50:55 GMT  
		Size: 97.0 MB (96999850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5ae486b257f9a45ca76b53938da11076906aa2d8fd7a96f93de3e0a319795ab`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56fd298cb78d7687ec9178d2db7ea2c46183cf760bbd04bb21d37978d295a073`  
		Last Modified: Thu, 07 Feb 2019 01:50:13 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915382865cb0e31bf55bde7beb27efa65b3d1b276fc1e76670e3dade9b97f620`  
		Last Modified: Thu, 07 Feb 2019 01:50:28 GMT  
		Size: 36.6 MB (36605938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b5861485a537988e98170021b77a03551431e5132f74a0c65b30a508f8fd089`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 598.2 KB (598233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8a204a6b4431703ed6b5f52bd0366e843fbfd6eba8b2e242fb55825c69069c`  
		Last Modified: Thu, 07 Feb 2019 01:50:11 GMT  
		Size: 93.9 KB (93866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fef3f86128597eb6385e6786f61d8633071b5cb7add591ab9571af11840dfc8`  
		Last Modified: Thu, 07 Feb 2019 01:51:39 GMT  
		Size: 40.0 MB (40011105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e39f74b99c2682ee32fb582edc1cc56e39f80469f9f490cc8b09a831d9b467b2`  
		Last Modified: Thu, 07 Feb 2019 01:51:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:dfb315432c4dea01f373052decdb210523402178850e0cf53b50e9f376d2ed8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:a6b17743d87d885269d7817755aa4138524081a6480f97e81fb2eb8d06333a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549845070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c540b2e25c45ba15b7bcca2c03e15de17c3bb4404fb4ebade0788a49ae0249`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a9208730a786dac868290b8d54d2cc3da387ddf75884b97d31cdc5b154a48`  
		Last Modified: Tue, 12 Mar 2019 01:29:29 GMT  
		Size: 236.3 MB (236257569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:84a948bee479eb280efdc2f68d9864a6bf1f51d26b0c4cc94c1360a8a549c038
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 MB (496420126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17373deb47f31e4401f58e35e7f3bef1aaa0453ad3851fe4ba2784d7d39bf55a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:28:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe269711f25b55ef76c9c280161c8e3ca6a8b76c32a5275f707bc0e7c3fcb2a0`  
		Last Modified: Wed, 23 Jan 2019 14:07:48 GMT  
		Size: 211.8 MB (211836311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:dfb315432c4dea01f373052decdb210523402178850e0cf53b50e9f376d2ed8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:a6b17743d87d885269d7817755aa4138524081a6480f97e81fb2eb8d06333a32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.8 MB (549845070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c540b2e25c45ba15b7bcca2c03e15de17c3bb4404fb4ebade0788a49ae0249`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7a9208730a786dac868290b8d54d2cc3da387ddf75884b97d31cdc5b154a48`  
		Last Modified: Tue, 12 Mar 2019 01:29:29 GMT  
		Size: 236.3 MB (236257569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:84a948bee479eb280efdc2f68d9864a6bf1f51d26b0c4cc94c1360a8a549c038
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.4 MB (496420126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17373deb47f31e4401f58e35e7f3bef1aaa0453ad3851fe4ba2784d7d39bf55a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:00 GMT
ADD file:51b604021d796dee1313a61c26c4f065858dbd788f2c463978b825df16be4ff1 in / 
# Wed, 23 Jan 2019 13:00:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:06 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:19:07 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:19:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:19:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:20:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:20:13 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:20:33 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:20:33 GMT
ENV ROS_DISTRO=indigo
# Wed, 23 Jan 2019 13:22:52 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:22:56 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:22:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:22:58 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:24:00 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:28:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e9118bc533947665798062be61a0607d724a753f486eb9d549d016dcb07265e3`  
		Last Modified: Wed, 23 Jan 2019 13:02:23 GMT  
		Size: 61.5 MB (61488502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b03bc69e69a31cc8f908a36fc1c1bcd198b7faa4f9fa0344ea6efcbb2b2a07b3`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 76.8 KB (76774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066d95ac01fd9c0cb3af0be101b48a5bf661c838d651595b921e68d1006b8e73`  
		Last Modified: Wed, 23 Jan 2019 13:02:02 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc84edb6c6d164dae9612234906986e26d3dff4eea8017301ecd0eaec5004c9c`  
		Last Modified: Wed, 23 Jan 2019 13:02:03 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f692c619585c74abe2b671bf89e13b380a844408d196e7a1cf0f449359783a32`  
		Last Modified: Wed, 23 Jan 2019 14:05:12 GMT  
		Size: 16.0 MB (15995539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bc63812ea86dbc48fab25f648a1653abbcea7cde060d7ecc8b96574514084f`  
		Last Modified: Wed, 23 Jan 2019 14:05:07 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f520983d858ef93919dcbce1ecc7dfaaa7e62b9ea45a82e7e40850a379fa84e8`  
		Last Modified: Wed, 23 Jan 2019 14:05:06 GMT  
		Size: 260.4 KB (260367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad7cec52d01391857b42001a8b09c007423786c28c275ab37ec52ed2e48ced3b`  
		Last Modified: Wed, 23 Jan 2019 14:05:16 GMT  
		Size: 28.4 MB (28421653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f8e603c35ec8ef2224edb1e6fdb1adac0c5ebbe4b4c1832014b97d137012c5`  
		Last Modified: Wed, 23 Jan 2019 14:05:05 GMT  
		Size: 601.5 KB (601491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8f8f400616542752cbee6813a34d48b19a93dc108a28f5046a02728d0a6b88e`  
		Last Modified: Wed, 23 Jan 2019 14:05:53 GMT  
		Size: 137.3 MB (137336713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5a31e18def021ce3c4826f11d28a0518516fe8ecc16ded9a16ab3361ba4a9e`  
		Last Modified: Wed, 23 Jan 2019 14:05:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64e6fa907b4e0ded729d4e4595d004783bf1fc4bbb60c9aae21906a8db0fa7a`  
		Last Modified: Wed, 23 Jan 2019 14:06:19 GMT  
		Size: 40.4 MB (40388949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe269711f25b55ef76c9c280161c8e3ca6a8b76c32a5275f707bc0e7c3fcb2a0`  
		Last Modified: Wed, 23 Jan 2019 14:07:48 GMT  
		Size: 211.8 MB (211836311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:70805cbb44c1f3f53169dae87aa6f9b26700a7417fd490e5e7a8fb056b80819c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:60f3ecd35afd2bf953d67d8728d2aa02a10499f182500bc7deca18833a1b028d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332618696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b89b8993940b64c403bcbaf4cfd78035cf00dc5c1b0b2969ba84404c1abf849`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:51:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd34038eab2a745f3f09b15bfbdf8d0c82867d47c319562c31e785cfb6e2708`  
		Last Modified: Tue, 12 Mar 2019 01:28:28 GMT  
		Size: 19.0 MB (19031195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:332ea7acdf0a98c006092242bfefa55f109cc1debe00c2d8a3fb2a16dd642bf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302289589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b247a4771406d5946c03d3e0fc0d8ab12963aeab4f57c87e749b20d69f99c87c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c1160c8ec565980d9fd7ea2e7cb074965b24b47c82aa68c8ff54434b1df1bc`  
		Last Modified: Tue, 12 Mar 2019 13:47:16 GMT  
		Size: 17.7 MB (17688033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:70805cbb44c1f3f53169dae87aa6f9b26700a7417fd490e5e7a8fb056b80819c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:60f3ecd35afd2bf953d67d8728d2aa02a10499f182500bc7deca18833a1b028d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.6 MB (332618696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b89b8993940b64c403bcbaf4cfd78035cf00dc5c1b0b2969ba84404c1abf849`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:51:03 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dd34038eab2a745f3f09b15bfbdf8d0c82867d47c319562c31e785cfb6e2708`  
		Last Modified: Tue, 12 Mar 2019 01:28:28 GMT  
		Size: 19.0 MB (19031195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:332ea7acdf0a98c006092242bfefa55f109cc1debe00c2d8a3fb2a16dd642bf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.3 MB (302289589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b247a4771406d5946c03d3e0fc0d8ab12963aeab4f57c87e749b20d69f99c87c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16c1160c8ec565980d9fd7ea2e7cb074965b24b47c82aa68c8ff54434b1df1bc`  
		Last Modified: Tue, 12 Mar 2019 13:47:16 GMT  
		Size: 17.7 MB (17688033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:1f562d1ad27b325b949c6d855bf444c2bb303a258b7a131db863bc6f52e2c4f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:317e6d4c43b6c820025e0e2811b4bef744b02bfc5f743c8a4029aeca180acb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.6 MB (313587501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64d85ce4f50396791857e191d34a8f98601cf7d30e1e70b1f8d106d254a12c4f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:50:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e94057b895bc071250e4171051fbbb6d85711c239f21b8c20d47dc0fccf2741e`  
		Last Modified: Tue, 12 Mar 2019 01:28:18 GMT  
		Size: 46.8 MB (46776616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b3b04795a3c3d8d3f1e3cbaacc0cb8a5d4a7688c3a660b4425ce962a7417612
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.6 MB (284601556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3a8896cd3a785a6e06af96b865d0089446c86930492cc463c55f7527e076d2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 13:07:35 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41480f6f12aca5b50b6357577705643b738c99c832e76a306bb3de32c8ad5f1`  
		Last Modified: Tue, 12 Mar 2019 13:47:03 GMT  
		Size: 40.4 MB (40388873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:021fa21a112f515cbc53c62cf485c73663943ff821e39260039d749c29e7d807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3e3b6fddefc1cfc3b1d0e4aa9affbe1b381869cd8043b70de48f63fa4577ff5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266810885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd615d654c9fb5581f86d2631ff2ae0f5e204b8f2e33962fbae5b3a6323513f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:64bed390752e46486ff24f1e5be291106ea452e59c801cfbd94d74692709f4e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244212683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8bdf6b3b7396f7d4fbb5cbc13ae52fead24adb7ef67fe83128c00d8eed72fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:021fa21a112f515cbc53c62cf485c73663943ff821e39260039d749c29e7d807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:3e3b6fddefc1cfc3b1d0e4aa9affbe1b381869cd8043b70de48f63fa4577ff5b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.8 MB (266810885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbd615d654c9fb5581f86d2631ff2ae0f5e204b8f2e33962fbae5b3a6323513f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:46:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:46:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:46:47 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:47:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:47:29 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:47:40 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:47:40 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 00:49:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:49:41 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:49:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:49:41 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b42646acf54557c93168a422cdf66d2c0774c2beddc9c633fe647a80fa5d43e`  
		Last Modified: Tue, 12 Mar 2019 01:27:27 GMT  
		Size: 18.0 MB (18038930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa24d4d924609c2d6447d9677d1fe24903b3755b6f365a3fee451ec12e0250`  
		Last Modified: Tue, 12 Mar 2019 01:27:22 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90cd24644315a98c4717e295ea144c47de487fa6292b9c5845c36d8c2116c141`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 260.4 KB (260351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688cfd9ab607255616b8393a217a0b8986d2fb90edd3e44a1a7467fc1c99d98e`  
		Last Modified: Tue, 12 Mar 2019 01:27:31 GMT  
		Size: 31.0 MB (30952528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ab8e0f1dc66c76153ea69a9940ad00c064c0890e04cf0ad2fbc23c7594082a0`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 621.1 KB (621124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:039eca2c6af1d893657570c57cfb55363928afffb329b381a1dfa62b0a13ae6e`  
		Last Modified: Tue, 12 Mar 2019 01:28:02 GMT  
		Size: 149.7 MB (149702673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e504dda098f1193119f9eddab82fedf7eeb7e086c187bae04ebd3de2cb05eea6`  
		Last Modified: Tue, 12 Mar 2019 01:27:21 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:64bed390752e46486ff24f1e5be291106ea452e59c801cfbd94d74692709f4e4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.2 MB (244212683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df8bdf6b3b7396f7d4fbb5cbc13ae52fead24adb7ef67fe83128c00d8eed72fe`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 12:44:14 GMT
ADD file:90a973e794494d63a330b31c285599343776962704a683c434551d819ab1a79e in / 
# Tue, 12 Mar 2019 12:44:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 12:44:18 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 12:44:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 12:44:20 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 13:03:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:03:02 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 13:03:04 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 13:04:04 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 13:04:05 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 13:04:24 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 13:04:24 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Mar 2019 13:06:40 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 13:06:44 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 13:06:44 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 13:06:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:91b349320ea3ce98ee662e7a170794bd1357034b708243b8183beb3cfac8194b`  
		Last Modified: Mon, 11 Mar 2019 15:20:46 GMT  
		Size: 61.5 MB (61488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c0f69366f52c7c4bb008b7359854fa75744278293d4ca7aa71f56c46e18ca6`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 76.8 KB (76778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c675d4aed10d8bb382f7bd42c25b2401794ce970fc909d1709d0b5a0872d70b9`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01b3703bf2b4688044b1f12d0b608c6c27b1141775a92de870a89964ce78381`  
		Last Modified: Tue, 12 Mar 2019 12:45:56 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9e375acbc0dbb9976f98d60cb4140b0c69d24e2e79fdcaa22f6b813fb6d488`  
		Last Modified: Tue, 12 Mar 2019 13:46:05 GMT  
		Size: 16.0 MB (15995429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c737047ca45158321b0f522745ff896f169f9d14f7b881d36e2d659bd278c4fe`  
		Last Modified: Tue, 12 Mar 2019 13:46:01 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:579b7e11f5c13b4e73d59e91349d8288ae8d2e82b931954a552fc8c6919a98d6`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 260.4 KB (260352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fce57a2e3f6e58977641695c94977419a6f4206d6c56376f9ea0845130a3271e`  
		Last Modified: Tue, 12 Mar 2019 13:46:10 GMT  
		Size: 28.4 MB (28421415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b43a8863e4debae220be073dabb47f4b8653b58847bfd0ca7bc203753c31cb95`  
		Last Modified: Tue, 12 Mar 2019 13:46:00 GMT  
		Size: 621.2 KB (621197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10a5da61e12fc830f2f774fc73f7cb8b405da487e781c2a9a35f7ee53ee1ad0e`  
		Last Modified: Tue, 12 Mar 2019 13:46:44 GMT  
		Size: 137.3 MB (137335455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2faa59f01c442beb043d21d4cf46a7a501a445d0346f26fdf31e96a5e73329a7`  
		Last Modified: Tue, 12 Mar 2019 13:45:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:5e18537eb69552687261682c5c0ef77088a573dfb712ce4bdd6e5c49d6fa545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:d7ec0d6624d0c26f0d9bb8f4cf6ff4e9f9baecdc47c2e93b7ece8c3c809459e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:66107467cdca69bc363230b40a74a70c8e5347706907c44ee2ab4e601d38fe1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.7 MB (733715073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b242545239e9fa262942e671b8fd31b559bc83fda433dc0b91eaa7127efe8a1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67860c008c974c7a528149e19d184a33d0a7651cbe13b58e387cd00613571f7f`  
		Last Modified: Tue, 12 Mar 2019 01:32:48 GMT  
		Size: 340.7 MB (340702632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:179e251b0e849335c52827ec3a6055bf0facb158be30b3f102a4bfc87d643901
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.8 MB (616782246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af112e8abe3a99f085554dc2ba30ad434e94e83423948f6865e03756b2330c5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14359b3769201aca84e733346c5d87ae07042da25847bdea2f366c9b744a51ea`  
		Last Modified: Wed, 23 Jan 2019 14:11:42 GMT  
		Size: 280.7 MB (280741416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f12ddaa3080d23c00fff065d0abb68f8faf215ffafa1eb60f905c889d36fdcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641109682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1906e78f01302214a2f8b6d4d7adf8ad15fadf648f4be50fde866924b727f97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:20:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803780a92105baa3ce667ae4afd56ae5d8c5aebc877dd0f9b6ad183cd097a0c8`  
		Last Modified: Tue, 29 Jan 2019 19:01:10 GMT  
		Size: 291.2 MB (291239827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:d7ec0d6624d0c26f0d9bb8f4cf6ff4e9f9baecdc47c2e93b7ece8c3c809459e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:66107467cdca69bc363230b40a74a70c8e5347706907c44ee2ab4e601d38fe1a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.7 MB (733715073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b242545239e9fa262942e671b8fd31b559bc83fda433dc0b91eaa7127efe8a1c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67860c008c974c7a528149e19d184a33d0a7651cbe13b58e387cd00613571f7f`  
		Last Modified: Tue, 12 Mar 2019 01:32:48 GMT  
		Size: 340.7 MB (340702632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:179e251b0e849335c52827ec3a6055bf0facb158be30b3f102a4bfc87d643901
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.8 MB (616782246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af112e8abe3a99f085554dc2ba30ad434e94e83423948f6865e03756b2330c5c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:41:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14359b3769201aca84e733346c5d87ae07042da25847bdea2f366c9b744a51ea`  
		Last Modified: Wed, 23 Jan 2019 14:11:42 GMT  
		Size: 280.7 MB (280741416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f12ddaa3080d23c00fff065d0abb68f8faf215ffafa1eb60f905c889d36fdcf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641109682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1906e78f01302214a2f8b6d4d7adf8ad15fadf648f4be50fde866924b727f97`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:20:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:803780a92105baa3ce667ae4afd56ae5d8c5aebc877dd0f9b6ad183cd097a0c8`  
		Last Modified: Tue, 29 Jan 2019 19:01:10 GMT  
		Size: 291.2 MB (291239827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:d7ff8d4edc9fe54740a22e86d690fdf319adc96380ab5763b6eb91855bfb5d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:913181cc33b1a927f2af7dc458682b0aa54480cfbbec5efc7445ccc51c84cd63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496707335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cc7b624ec3dc18d8b2d5fbc6f81ce3d9ef7a37a4c4600d9fbebf0d8ab9d7f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c770475ccb55ee441dd84ad2c25d3ebf5d8f2e21d04b8469e36e0cf82a1e443`  
		Last Modified: Tue, 12 Mar 2019 01:31:23 GMT  
		Size: 103.7 MB (103694894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a975ec7907124fae3888b0d9f417fa445d34b9da21842f57393d2ef54069f9ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426058393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7082641429e066e0d45412fb8c3f4e173be6fb7505175b2717a90b3193cefea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:37:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bf1445ce8b95712f288d30042c4c2b87e14d67525c689871936f209682ae4e`  
		Last Modified: Wed, 23 Jan 2019 14:10:05 GMT  
		Size: 90.0 MB (90017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13c2f9db76d83b5daf5bf2786623cfe5a1ddeee32ec13c0da47e525bf3918b05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443770712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62a26c4fb02de832a4bf9989aedc3f284028da83452206f84888c708e57da0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672c9b9d4ea2b67b2e6265ff33fdc61eb29065499e846461b31576b369b65ac`  
		Last Modified: Tue, 29 Jan 2019 18:58:57 GMT  
		Size: 93.9 MB (93900857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:d7ff8d4edc9fe54740a22e86d690fdf319adc96380ab5763b6eb91855bfb5d3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:913181cc33b1a927f2af7dc458682b0aa54480cfbbec5efc7445ccc51c84cd63
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496707335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49cc7b624ec3dc18d8b2d5fbc6f81ce3d9ef7a37a4c4600d9fbebf0d8ab9d7f5`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c770475ccb55ee441dd84ad2c25d3ebf5d8f2e21d04b8469e36e0cf82a1e443`  
		Last Modified: Tue, 12 Mar 2019 01:31:23 GMT  
		Size: 103.7 MB (103694894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a975ec7907124fae3888b0d9f417fa445d34b9da21842f57393d2ef54069f9ec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426058393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7082641429e066e0d45412fb8c3f4e173be6fb7505175b2717a90b3193cefea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:37:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3bf1445ce8b95712f288d30042c4c2b87e14d67525c689871936f209682ae4e`  
		Last Modified: Wed, 23 Jan 2019 14:10:05 GMT  
		Size: 90.0 MB (90017563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:13c2f9db76d83b5daf5bf2786623cfe5a1ddeee32ec13c0da47e525bf3918b05
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443770712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62a26c4fb02de832a4bf9989aedc3f284028da83452206f84888c708e57da0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:08:40 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b672c9b9d4ea2b67b2e6265ff33fdc61eb29065499e846461b31576b369b65ac`  
		Last Modified: Tue, 29 Jan 2019 18:58:57 GMT  
		Size: 93.9 MB (93900857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:5e18537eb69552687261682c5c0ef77088a573dfb712ce4bdd6e5c49d6fa545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:5e18537eb69552687261682c5c0ef77088a573dfb712ce4bdd6e5c49d6fa545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:912144787df7fe2cc5593a2daffc8acd5637ada84e9e7c8aa5ff140a10c176e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393012441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b3c241a5439921a7728c371076de683866c723ef0e606fa548f191f14a0c26e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 00:58:52 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80d23f7d0afe41583b0a45d4898ada048da574e0390910148b5ea34c85b30d30`  
		Last Modified: Tue, 12 Mar 2019 01:30:53 GMT  
		Size: 94.0 MB (94040046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:b3bb94c248f3bacef87ce7ca7ae50af684f19d92e5c35f12e7bcaa8f9e390cb2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (336040830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67f2b67a98b306117051bd36f8883e4121cf1e1641f8604c7fce89403b34ad99`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95db571a4c87e5b6b45700ed87f3a47edca5818a0f2829217b28570e71a7ce03`  
		Last Modified: Wed, 23 Jan 2019 14:09:26 GMT  
		Size: 76.5 MB (76469148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:19166518f9c7675020ff683e734d778508856fa8d83b6314ea807b02f120e163
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.9 MB (349869855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:549f7368fa82894408d374109ff2e5625f1d7ab634bf70340cfc2f7c60798bfb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:03:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d4a419afafc40c2018a1b0b1c9ac2646c3dfd16a22279205c2c1aec1d8305b`  
		Last Modified: Tue, 29 Jan 2019 18:58:05 GMT  
		Size: 78.0 MB (77964533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:8705270de3ac628ee86f59c5c575c003ab5c41629714033e8caa27cc80a3c010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:3ae4b6884b8a9e98fed567dc12d6a2d6f8639394cc1c33d74c47a5c9ad910c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298972395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839d728ffc58a82583f10ed00d06e0d204f74112256bc57672f8c1a1c8a93752`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:8e1230b5d6c195044356fbd1ba0c8b54783ceb58f4b3fadea2e80a29342dbe30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259571682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39688ce114582aa061bb1d7d457f2ccd2f3032a3a38110087fb93b76df8c1731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:693c700a1bea95627deb0487a05dacf28b2e4fad03b4bba426e28dbaed6e9a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271905322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe510d23f73e8179e38790d0c30930bb5cbfcacbd3711500095e58846e3d83a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:8705270de3ac628ee86f59c5c575c003ab5c41629714033e8caa27cc80a3c010
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:3ae4b6884b8a9e98fed567dc12d6a2d6f8639394cc1c33d74c47a5c9ad910c36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298972395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839d728ffc58a82583f10ed00d06e0d204f74112256bc57672f8c1a1c8a93752`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 00:55:32 GMT
ENV ROS_DISTRO=kinetic
# Tue, 12 Mar 2019 00:57:28 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:57:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 00:57:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 00:57:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826ee89684e99d046e26bf645ba176deea9ee04575926d0c81e3f9ad7444d646`  
		Last Modified: Tue, 12 Mar 2019 01:30:22 GMT  
		Size: 193.2 MB (193232548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bdccefa251338bd41030083f904f52a50cac544e9d7d8ae66d136ee9af6d0f8`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:8e1230b5d6c195044356fbd1ba0c8b54783ceb58f4b3fadea2e80a29342dbe30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259571682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39688ce114582aa061bb1d7d457f2ccd2f3032a3a38110087fb93b76df8c1731`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:30:49 GMT
ENV ROS_DISTRO=kinetic
# Wed, 23 Jan 2019 13:33:27 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:33:30 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:33:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:33:32 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f5fbfb538564e2a0434cb3f01ace36bc806278b0f63e2e2fb9422efe343e0d`  
		Last Modified: Wed, 23 Jan 2019 14:08:52 GMT  
		Size: 164.6 MB (164585001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45a9741596831a2127701c02a75df3ced69741533ea44f44bae08b21fc4c53b`  
		Last Modified: Wed, 23 Jan 2019 14:07:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:693c700a1bea95627deb0487a05dacf28b2e4fad03b4bba426e28dbaed6e9a39
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271905322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:efe510d23f73e8179e38790d0c30930bb5cbfcacbd3711500095e58846e3d83a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 15:51:38 GMT
ENV ROS_DISTRO=kinetic
# Tue, 29 Jan 2019 15:58:57 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:59:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 15:59:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 15:59:12 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2c4c52814e449d5f16dbbf45902e857ed757b0fc806f99704b2ee2c52712ad`  
		Last Modified: Tue, 29 Jan 2019 18:57:05 GMT  
		Size: 173.9 MB (173867031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6534128a37c17c5e67572e04e9d2d3f5a82dbe123a712512001754b5d5c32`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:2ec0e54b1b395c37f95fffaa171f68ff5067b69a166bdade74a58326393823f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:93e4124906e60cb0112d0c1508ae9864abe5068eb62666863865f3012dea4475
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381813099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0421838164361ff557dbe08e544b949cceec9e7f7609dbbd8c384f6e81f2aad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:60d9e9357315f258cfc0b0f9fd8c71b6b8302762b3af171c0792fad6954850c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:b3f1861d00414638ec10b0975e713ec4242e4851fca81e5a8a11cce930f81577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:368641fe65c364440d3674db1cb1eb6395b9dba6d3d1efa2ea3237cae661172e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.1 MB (732091642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8472ccb311673f572bde994d413a98d5e0a12034d81b97180ca0fb7ae8c90cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32401600f57c93b535282d3aeb0d76ddff4a76971a4bb7cff452d0c55d3779d`  
		Last Modified: Tue, 12 Mar 2019 01:36:08 GMT  
		Size: 339.2 MB (339162972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:a654c731f0d74cad7df7415e8a288f5789f8e0692ba305066ebe152e10356d0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 MB (616284769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44de5ef4c7ec41248777c09ad33a359c7ac95dbee91a0b12b927e25262219788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2b1b52f3f4bef3b4d00bf53c06b074996ec90a20f4bdd9629c63c877a3c1a2`  
		Last Modified: Wed, 23 Jan 2019 14:15:46 GMT  
		Size: 280.3 MB (280297752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:143a7be2d620e7ad0c711e1dd4cbd7b29bce91ddbd88af9e11e62415d8189315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 MB (639792004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abee8ae8790d0abe40f6a6a4b93edc4c0048d0ace3791773a16e520c0ce564`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:48:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1739c356b931c81aeb860d64136da400bec6d5ee319beed16544fa53e61cbb8`  
		Last Modified: Tue, 29 Jan 2019 19:06:30 GMT  
		Size: 290.0 MB (290006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:2d61b87f0fd06a8b9c0922755dd7733fe57c2a7bce88b38c6a7f519adaaf6ad0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:778e31683ec92f74bb875f37557f7d08f5c87e2b19a9764d10b834354944370f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **933.3 MB (933297429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f10b74167828fa5e5c145edcc2b83112b63b87c76c30dcbf1468fc39e86ad47e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 04:55:54 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 04:57:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:57:36 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 04:57:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 04:57:36 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:59:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:04:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f80b3ec16752db166378062ae90173e9acd8495b300351690140b9cd92251`  
		Last Modified: Tue, 05 Mar 2019 05:12:46 GMT  
		Size: 251.2 MB (251157193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020be26b35c1318e3ad7799a0613444a18d6dd05591f4c5575560f6f2c28f0d`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712e413ddcb53df5734ce6ab98ecd95d730cb3592b70282590845314ad23c544`  
		Last Modified: Tue, 05 Mar 2019 05:13:24 GMT  
		Size: 123.1 MB (123069114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7183bb93eeb75e2b7630e6ed345b22eefe02ab7dc01823bd2892a01a249fedc4`  
		Last Modified: Tue, 05 Mar 2019 05:15:46 GMT  
		Size: 438.5 MB (438474340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c94ab0f55a462641304b8c276ce0b6f31ec617ecd2e8521cc7fa49bc3790a369
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **816.5 MB (816453068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae09837e1890e304719f6d1fc5f4b01f5e1048ef8e1b37664ce1fbc709bbcfdb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:58:36 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f769a2f84224e62300ad61fc4f0e0e28691c6c7231a1bb95fa65dfa938725b40`  
		Last Modified: Tue, 05 Mar 2019 13:38:43 GMT  
		Size: 378.5 MB (378522034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:b3f1861d00414638ec10b0975e713ec4242e4851fca81e5a8a11cce930f81577
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:368641fe65c364440d3674db1cb1eb6395b9dba6d3d1efa2ea3237cae661172e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.1 MB (732091642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8472ccb311673f572bde994d413a98d5e0a12034d81b97180ca0fb7ae8c90cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:01 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32401600f57c93b535282d3aeb0d76ddff4a76971a4bb7cff452d0c55d3779d`  
		Last Modified: Tue, 12 Mar 2019 01:36:08 GMT  
		Size: 339.2 MB (339162972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a654c731f0d74cad7df7415e8a288f5789f8e0692ba305066ebe152e10356d0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **616.3 MB (616284769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44de5ef4c7ec41248777c09ad33a359c7ac95dbee91a0b12b927e25262219788`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2b1b52f3f4bef3b4d00bf53c06b074996ec90a20f4bdd9629c63c877a3c1a2`  
		Last Modified: Wed, 23 Jan 2019 14:15:46 GMT  
		Size: 280.3 MB (280297752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:143a7be2d620e7ad0c711e1dd4cbd7b29bce91ddbd88af9e11e62415d8189315
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **639.8 MB (639792004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88abee8ae8790d0abe40f6a6a4b93edc4c0048d0ace3791773a16e520c0ce564`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:48:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1739c356b931c81aeb860d64136da400bec6d5ee319beed16544fa53e61cbb8`  
		Last Modified: Tue, 29 Jan 2019 19:06:30 GMT  
		Size: 290.0 MB (290006709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:7469e25fbb4ae97ea5658904e99292bf93931edf5b8cbb35ca75456407bb4781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:b5f9e10447b9ec821d10102c91345f4de772d40008e59d0e6eaa40d435e415c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496727538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f066bda8fb0ffe314a02e5dedfd1fada67957b8dd0ce26866346cef46580dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:07:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84556321426e981d570ab6a6f1a60a4449970ba3e0370255b8fadfbe14dc9ee1`  
		Last Modified: Tue, 12 Mar 2019 01:34:41 GMT  
		Size: 103.8 MB (103798868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:dba5778952e1ca664cc9dd6cb04a652d2ff5a683a893123704cfa4d7adef5a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426081614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7d1e0c7b5dc80bd91302ed55ef353a861a9bf4ebb28aa2398f82ebccb95009`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd0c94a8ac3300c8597c27dd1287b166338975802c60936228460c02327b8b`  
		Last Modified: Wed, 23 Jan 2019 14:14:03 GMT  
		Size: 90.1 MB (90094597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2add07021411a2eadcbff965cd6f59cd0f6ed4b841fdec28b1a25d13d7c47e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443786237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa331758c8de3b6e77754a3627348978eaa436baf0ff3f3bb387eb5d298e56f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:37:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b05dc84130040e9b8d3917e6604f450f8057c645d27a634bbe37755ba1dea`  
		Last Modified: Tue, 29 Jan 2019 19:04:15 GMT  
		Size: 94.0 MB (94000942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:f6c73184f223524b1f2a1c014d67c58af2d8faaf57d77946dc60c11b75f6179a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9ce9ceab709685018c6ea81c2125fb041526f6347918bb70509f16b651d42c68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555258261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ac057e4f75cbff3b74f60a60e4825532a38f481cf970a35251d0f1a2e36a61`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 04:55:54 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 04:57:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:57:36 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 04:57:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 04:57:36 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:59:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:00:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f80b3ec16752db166378062ae90173e9acd8495b300351690140b9cd92251`  
		Last Modified: Tue, 05 Mar 2019 05:12:46 GMT  
		Size: 251.2 MB (251157193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020be26b35c1318e3ad7799a0613444a18d6dd05591f4c5575560f6f2c28f0d`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712e413ddcb53df5734ce6ab98ecd95d730cb3592b70282590845314ad23c544`  
		Last Modified: Tue, 05 Mar 2019 05:13:24 GMT  
		Size: 123.1 MB (123069114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afc60ca42eb28fbc2862d522b6183ba7e418aa96f318749b92bbdb8f620d44d`  
		Last Modified: Tue, 05 Mar 2019 05:13:45 GMT  
		Size: 60.4 MB (60435172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f957dd592516d691aac6a2b9fc71ee4d15a816f09514aa7f0b522f42b2042b9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495446541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dda8383fb14cdc4b59c752616437909d4eb4516f194d27d2f4327584696936`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:40:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d468960e7411dbb16d2763ad98d1eaae7d0bb67ab341a7bd2735f7cc91be7c`  
		Last Modified: Tue, 05 Mar 2019 13:35:46 GMT  
		Size: 57.5 MB (57515507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:7469e25fbb4ae97ea5658904e99292bf93931edf5b8cbb35ca75456407bb4781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b5f9e10447b9ec821d10102c91345f4de772d40008e59d0e6eaa40d435e415c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.7 MB (496727538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f066bda8fb0ffe314a02e5dedfd1fada67957b8dd0ce26866346cef46580dd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:07:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84556321426e981d570ab6a6f1a60a4449970ba3e0370255b8fadfbe14dc9ee1`  
		Last Modified: Tue, 12 Mar 2019 01:34:41 GMT  
		Size: 103.8 MB (103798868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:dba5778952e1ca664cc9dd6cb04a652d2ff5a683a893123704cfa4d7adef5a52
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **426.1 MB (426081614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7d1e0c7b5dc80bd91302ed55ef353a861a9bf4ebb28aa2398f82ebccb95009`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbd0c94a8ac3300c8597c27dd1287b166338975802c60936228460c02327b8b`  
		Last Modified: Wed, 23 Jan 2019 14:14:03 GMT  
		Size: 90.1 MB (90094597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b2add07021411a2eadcbff965cd6f59cd0f6ed4b841fdec28b1a25d13d7c47e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **443.8 MB (443786237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa331758c8de3b6e77754a3627348978eaa436baf0ff3f3bb387eb5d298e56f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:37:26 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:048b05dc84130040e9b8d3917e6604f450f8057c645d27a634bbe37755ba1dea`  
		Last Modified: Tue, 29 Jan 2019 19:04:15 GMT  
		Size: 94.0 MB (94000942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:60d9e9357315f258cfc0b0f9fd8c71b6b8302762b3af171c0792fad6954850c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:cc6330f47117faefc1cb8ba3f23df38b27691458909a12e62bf0ebe677659855
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b3fc18086ed7a768fad5b7c696c597b13a42ae0e3455c5f0ada2754293532f65
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494823089 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9656543dd6994e22f0f158c9243a3c5568b349a86c0a3d349fd544a83c482a4c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 04:55:54 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 04:57:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:57:36 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 04:57:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 04:57:36 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 04:59:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f80b3ec16752db166378062ae90173e9acd8495b300351690140b9cd92251`  
		Last Modified: Tue, 05 Mar 2019 05:12:46 GMT  
		Size: 251.2 MB (251157193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020be26b35c1318e3ad7799a0613444a18d6dd05591f4c5575560f6f2c28f0d`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712e413ddcb53df5734ce6ab98ecd95d730cb3592b70282590845314ad23c544`  
		Last Modified: Tue, 05 Mar 2019 05:13:24 GMT  
		Size: 123.1 MB (123069114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a6dadba18fd3fc73d4076f946f885aa49334bce9c17ac05570ceb5aec833aa47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.9 MB (437931034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1524a005592ab883a02838ec9ea03d10f5382dfcd7ea6ba47df848f8dd84ac`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:60d9e9357315f258cfc0b0f9fd8c71b6b8302762b3af171c0792fad6954850c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:1f2298ca9dcef83a706d105d4b4f361b72a9bff1b12ebc497738a13ae5862f47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **392.9 MB (392928670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:413d0e2a7900d0975b72d40fad5dbfb1b6689697c37f2e772f933f9ee0ea26a1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:06:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee7c275397090aac647f132969c8f6fbb0a9d6d7663cd80632cc1da0935fd7f1`  
		Last Modified: Tue, 12 Mar 2019 01:34:09 GMT  
		Size: 94.0 MB (93953790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:463947e36ed665cfd74f5be3e0e60e0da6ffd2b36b0e1be32004960cc253b414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.0 MB (335987017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74cf7ba0436385cdd85be546287268467a2e442a963719b732e9da0ef0f33948`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:45:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c619a9d69c75c8ca30ccdf586e1080bb48605c9613ac70d1559dc9789ad8943`  
		Last Modified: Wed, 23 Jan 2019 14:13:23 GMT  
		Size: 76.4 MB (76395922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5f99a5c06890ce73d7f66c574c6f551b57b10322cfe860bf878b84c4444e8918
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.8 MB (349785295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ebc660ead5ddec6cc536668102dc34a21f003d320f988ebab28f853060ab7dc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 16:32:18 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b388ccf291eb0b61acdf218b7ab1f74be37cea4e5ced1496f6f233c12bbca0a`  
		Last Modified: Tue, 29 Jan 2019 19:03:22 GMT  
		Size: 77.9 MB (77886832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:85f6cb208a876a828ddcc74b6bd0fa481c6cb7a6f4bc0b12b4721ecb89f53b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:75a17bae61b34da4c9f4bc74cfad0748d9b147ae99d1d1925acbbb98e7e1f99c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e02dfbf19114af6e5ee0f71bf66fa1ac681c5c14f47877b6de205e51853eae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:63cdd5be345496ed18b3d62314c9657733230ab7dd80b025ac9f28d18a0cf25a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259591095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395477a84dc63e7e188e7b6acd3231bb99d7613aa972f14a4c5408ffa300a57a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5a8cbcfed21940249b2a629532cc5e9fcd3f5173297a51463e5fd79368d5a19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adf75f56badd95366325bc9e4de1b50e9be87355934d6bf59079ae5a60477cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:555c1fa6765ed5194808b5db74137c8420114368f9f569bdf8b9d339da7f53d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e1f097f43288b49734c8c7e3308fec493e4d3e3ba603c55ee0a2b6caf75cc05a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.8 MB (371753975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45de87bd3b17f2bc3f8a6df00a4ed6fcd89bf6801fab679381c4290d5499397a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 04:55:54 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 04:57:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:57:36 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 04:57:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 04:57:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b92f80b3ec16752db166378062ae90173e9acd8495b300351690140b9cd92251`  
		Last Modified: Tue, 05 Mar 2019 05:12:46 GMT  
		Size: 251.2 MB (251157193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020be26b35c1318e3ad7799a0613444a18d6dd05591f4c5575560f6f2c28f0d`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:dbf6a872d83f65092a50722410995ecee87306e1cda95b57bd2f00861e524ccf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.1 MB (321057175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72d6475f6fa9712d4f7354bfdcf8fe73b19d535be758097119ab18dd0d0d3f46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:85f6cb208a876a828ddcc74b6bd0fa481c6cb7a6f4bc0b12b4721ecb89f53b19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:75a17bae61b34da4c9f4bc74cfad0748d9b147ae99d1d1925acbbb98e7e1f99c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 MB (298974880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98e02dfbf19114af6e5ee0f71bf66fa1ac681c5c14f47877b6de205e51853eae`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:54:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 00:54:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 00:55:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 00:55:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 00:55:32 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:04:30 GMT
ENV ROS_DISTRO=lunar
# Tue, 12 Mar 2019 01:05:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:05:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:05:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ae18dff6ff08b03d7c1f288737132079b6630e7ef7a0bb869fdda31ee02ee8`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a1f7d02fbc48c0d55efdc0f8dd8cbe84472a20ebc14b4aff4e7058739b902f`  
		Last Modified: Tue, 12 Mar 2019 01:29:34 GMT  
		Size: 5.5 KB (5509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6721473f3fc2fe5a7d7bda571fa77148e7e24a4e5ef65f4466a438318aed9876`  
		Last Modified: Tue, 12 Mar 2019 01:29:47 GMT  
		Size: 44.9 MB (44871902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f35a6933912ea444d9403e2d27662315f74b420d9acedc5e055e2fe1f54c4bea`  
		Last Modified: Tue, 12 Mar 2019 01:29:35 GMT  
		Size: 621.1 KB (621125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faeb8efa48debe84d96bd62ac7855a00c6f9c7ff2f25ba92caee67ec0c6f7188`  
		Last Modified: Tue, 12 Mar 2019 01:33:41 GMT  
		Size: 193.2 MB (193235033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a883f25a79d168c7aba224468075bb9ba663fbf9303d1f4f255bc080ee30bd95`  
		Last Modified: Tue, 12 Mar 2019 01:32:53 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:63cdd5be345496ed18b3d62314c9657733230ab7dd80b025ac9f28d18a0cf25a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259591095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:395477a84dc63e7e188e7b6acd3231bb99d7613aa972f14a4c5408ffa300a57a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:00:39 GMT
ADD file:18419a29666d16dc719ea46ce806f8c62ce1aaa8fb8b4be852c80430cb533b4e in / 
# Wed, 23 Jan 2019 13:00:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 13:00:51 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:00:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 13:00:54 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:29:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:29:25 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:29:27 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:30:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:30:28 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:30:29 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:30:48 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:41:19 GMT
ENV ROS_DISTRO=lunar
# Wed, 23 Jan 2019 13:44:02 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:05 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:44:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:44:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:29ff06089553e503948df40c21e20fea5cab6315f9d6bae2254f41a57c9e3854`  
		Last Modified: Wed, 23 Jan 2019 13:02:42 GMT  
		Size: 38.5 MB (38479053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:209fcb263aac1c4e427fbb3fb29ab0ffbdad945f4c6c7d2d09d772056d0b79c1`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a296909621d0830ec940baa0e5abc918f3891df1a07841e4ca81dc769c907d06`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 509.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82e86336e1a38073dd14045d73320fa19e9e15efc4c83e3bf261145a668fff3d`  
		Last Modified: Wed, 23 Jan 2019 13:02:31 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bbd9ce225440332e6a9641824dc1349ffdfd646a01bdc22d4b5110a56e5634a`  
		Last Modified: Wed, 23 Jan 2019 14:08:03 GMT  
		Size: 15.0 MB (14954825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc221fe5e1ae0b323d918f22e2bb4bc24e82dc44c20d2dcd9975e8a6f9ff41d0`  
		Last Modified: Wed, 23 Jan 2019 14:07:57 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e6d7d4a068b8464f95e7d1accab979247e448e37ea98d34957f6918db85150`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 5.5 KB (5541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6c88320fa215a5f44e351cdfe9365f973a9f4f1b32807292417547d0c9a5c3`  
		Last Modified: Wed, 23 Jan 2019 14:08:11 GMT  
		Size: 40.9 MB (40930952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a73db51c3ae9d17342173bc0c300fc9b4b0dba60c0ff09e6735ccfb09f8480`  
		Last Modified: Wed, 23 Jan 2019 14:07:56 GMT  
		Size: 601.5 KB (601503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5518b529f6d0468ea507138bea713537aa5bbb2da5e65f819ebffbe8ca1abbeb`  
		Last Modified: Wed, 23 Jan 2019 14:12:51 GMT  
		Size: 164.6 MB (164604414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04acb4a138871d1392e92721fa82d90051521cbb8a18d714aca30fc6920184f5`  
		Last Modified: Wed, 23 Jan 2019 14:11:48 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:a5a8cbcfed21940249b2a629532cc5e9fcd3f5173297a51463e5fd79368d5a19
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.9 MB (271898463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0adf75f56badd95366325bc9e4de1b50e9be87355934d6bf59079ae5a60477cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 15:49:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:49:29 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 15:49:31 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 15:51:01 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 15:51:02 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 15:51:03 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 15:51:37 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 16:21:04 GMT
ENV ROS_DISTRO=lunar
# Tue, 29 Jan 2019 16:28:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 16:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 16:28:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 16:28:07 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd62429335f1e33c7a873963d55d428d92d2b03d152b038149b9a778a2dcd4f0`  
		Last Modified: Tue, 29 Jan 2019 18:55:18 GMT  
		Size: 15.1 MB (15050635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca747cfc51c64439c5ac67a9cb06db509d8d568e1194a1698e0a0dbad961c5a5`  
		Last Modified: Tue, 29 Jan 2019 18:54:42 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee885819a43027c3dff525802af7c204cc4d774f4dc16c847e020f29fcaf676d`  
		Last Modified: Tue, 29 Jan 2019 18:54:40 GMT  
		Size: 5.5 KB (5510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76f5b667c6a089e616f79426fb567702ead89c63a2048ed2aeaef16e48048ae3`  
		Last Modified: Tue, 29 Jan 2019 18:55:49 GMT  
		Size: 42.8 MB (42804021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5133c81b55c9437c49ea992170ee5bdc58f7a23c49f8e1da83d9eff037d64ca3`  
		Last Modified: Tue, 29 Jan 2019 18:54:41 GMT  
		Size: 605.2 KB (605159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5359a7ba4dc0aff1cf0b2abd40d490f49a83988fc8f27765fc820f7012428e`  
		Last Modified: Tue, 29 Jan 2019 19:02:38 GMT  
		Size: 173.9 MB (173860171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3341722f8e47adbcbf37efee2fa74d10404a96052188ff71880522da726fc371`  
		Last Modified: Tue, 29 Jan 2019 19:01:25 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:2ec0e54b1b395c37f95fffaa171f68ff5067b69a166bdade74a58326393823f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:93e4124906e60cb0112d0c1508ae9864abe5068eb62666863865f3012dea4475
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381813099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0421838164361ff557dbe08e544b949cceec9e7f7609dbbd8c384f6e81f2aad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:1195c250f23858e3044f88fd0690be90242a38e84aeb22b0b08a767c6b0ba868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:365e3190bbfb55d4a6f0edb39e7be8faf3a45a45981108406ceb9a06128e7cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.0 MB (788953930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906bf719db128cdb89bfefe4515b23ec25941928192b2f1a00cd5c458ca9880c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:21:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f5af86ce9d4b8be722c2d0e5748a36e25cbd80d4c09b8b901d7a1feda273`  
		Last Modified: Tue, 12 Mar 2019 01:39:25 GMT  
		Size: 359.3 MB (359314086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:c43ad4d377381f317d667b7077b841a6e4703d516e99fb16464b962f81e9aa13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.0 MB (691010103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e728507e5b8f7bdb412d8f0a49c979506bd59ae4772cfc6718df1266e941331`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:13:44 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347513885a1852944f9abd7682102099cbbd646af586df6961ce6f2e38efe076`  
		Last Modified: Thu, 07 Feb 2019 18:18:24 GMT  
		Size: 309.2 MB (309197004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d59fb60dbf8e2a413e40e4aaf153a40275348d28f9f5755e078b2ac41de3587f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702358784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115e5408e3840d3000f8c73546b0c80ebcc1e8c3ae7aa826d39b90751f68ae2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:14:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd0260faa3c016758d29864f93caf45678e743b9165ee41986cc585fbc3baf6`  
		Last Modified: Thu, 07 Feb 2019 01:43:29 GMT  
		Size: 341.7 MB (341733057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:1195c250f23858e3044f88fd0690be90242a38e84aeb22b0b08a767c6b0ba868
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:365e3190bbfb55d4a6f0edb39e7be8faf3a45a45981108406ceb9a06128e7cd0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **789.0 MB (788953930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:906bf719db128cdb89bfefe4515b23ec25941928192b2f1a00cd5c458ca9880c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:21:53 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b305f5af86ce9d4b8be722c2d0e5748a36e25cbd80d4c09b8b901d7a1feda273`  
		Last Modified: Tue, 12 Mar 2019 01:39:25 GMT  
		Size: 359.3 MB (359314086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:c43ad4d377381f317d667b7077b841a6e4703d516e99fb16464b962f81e9aa13
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **691.0 MB (691010103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e728507e5b8f7bdb412d8f0a49c979506bd59ae4772cfc6718df1266e941331`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:13:44 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347513885a1852944f9abd7682102099cbbd646af586df6961ce6f2e38efe076`  
		Last Modified: Thu, 07 Feb 2019 18:18:24 GMT  
		Size: 309.2 MB (309197004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d59fb60dbf8e2a413e40e4aaf153a40275348d28f9f5755e078b2ac41de3587f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **702.4 MB (702358784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:115e5408e3840d3000f8c73546b0c80ebcc1e8c3ae7aa826d39b90751f68ae2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 00:14:24 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd0260faa3c016758d29864f93caf45678e743b9165ee41986cc585fbc3baf6`  
		Last Modified: Thu, 07 Feb 2019 01:43:29 GMT  
		Size: 341.7 MB (341733057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:abaae8346e8ed0160ebc873d40a0573d8aa70ca38d002129b6a9cec337ed89b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:ff90a69f6dbd78a59a3fe120e967e8c81c1f40e9f374d755279660262ae88779
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **879.2 MB (879241776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfdd0d348469205ac9c4b4df5bf72ed96555b352febe4840524e44490b66ee1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:07:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:10:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318310d7b90622cb646022f7895951ee24797e44b337f3c4805d04cdbcd0478f`  
		Last Modified: Tue, 05 Mar 2019 05:17:35 GMT  
		Size: 108.5 MB (108461343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c5edf9e6fb3696fd0e273ab4d1ec98e52d3c12d8044f69aea4d03ac94c2cff`  
		Last Modified: Tue, 05 Mar 2019 05:19:24 GMT  
		Size: 380.8 MB (380764332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:cb09c96545aa65444eaf687304dffeac7e6522e9ec4011c2f0ba30429f278c01
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.9 MB (796932132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4898733dd3aa2df1497233e7d0501be4de7b40c5209ddefc6f6aa50ea34b1f6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:30:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52b87592d681eb1713e12d55f53ffcdf8b738ffe5853ebad69a743c8ad965d83`  
		Last Modified: Tue, 05 Mar 2019 13:44:35 GMT  
		Size: 355.4 MB (355378154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:d6ba4000aabe28127c502161e8d3a8ff35dae9673088fde2664483dff6725f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:0b5d7dc8a3043c54081a4bdfd511efb22f7274787316462d2d97217c0297fa3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467449561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdf653b26f28f7c110df1b85d5af181d88604ddfdfa31b619b20177b06f1ac0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:16:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efbfd747bc71a913e29cd7179ce55dd353eb34a3f69c4806ea7c0d9dbf33bde`  
		Last Modified: Tue, 12 Mar 2019 01:37:54 GMT  
		Size: 37.8 MB (37809717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:4dd6b5d67988bf7bb579684d5f74f320ec678a1ce1a81543691dfd5491ac890e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.0 MB (415038100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25064acb6fbe83d353982f1a14321e3672243ad554b4e81e01fd95b0e6739f16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:09:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401dd666af0e5b99d41a3adbef5cbd50d3cbdba85c95ed6cf5a9cc1948ac172`  
		Last Modified: Thu, 07 Feb 2019 18:16:36 GMT  
		Size: 33.2 MB (33225001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d2866aff3a3085fe6c80017e01b3739804123e2d41af5bf6f2620f444a31b0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396001652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c686e9cf11fe3b0761c6a878ff3acc9edbe7e4a13b2c60bfde2f1ed662677ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:46:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f938f305309d2dea84d286b5d61f1fa75fdb7dcdb32bc02ca32691d71c786`  
		Last Modified: Thu, 07 Feb 2019 01:40:31 GMT  
		Size: 35.4 MB (35375925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:d6ba4000aabe28127c502161e8d3a8ff35dae9673088fde2664483dff6725f56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:0b5d7dc8a3043c54081a4bdfd511efb22f7274787316462d2d97217c0297fa3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.4 MB (467449561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdf653b26f28f7c110df1b85d5af181d88604ddfdfa31b619b20177b06f1ac0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:16:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efbfd747bc71a913e29cd7179ce55dd353eb34a3f69c4806ea7c0d9dbf33bde`  
		Last Modified: Tue, 12 Mar 2019 01:37:54 GMT  
		Size: 37.8 MB (37809717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:4dd6b5d67988bf7bb579684d5f74f320ec678a1ce1a81543691dfd5491ac890e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.0 MB (415038100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25064acb6fbe83d353982f1a14321e3672243ad554b4e81e01fd95b0e6739f16`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:09:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401dd666af0e5b99d41a3adbef5cbd50d3cbdba85c95ed6cf5a9cc1948ac172`  
		Last Modified: Thu, 07 Feb 2019 18:16:36 GMT  
		Size: 33.2 MB (33225001 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d2866aff3a3085fe6c80017e01b3739804123e2d41af5bf6f2620f444a31b0b4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **396.0 MB (396001652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c686e9cf11fe3b0761c6a878ff3acc9edbe7e4a13b2c60bfde2f1ed662677ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:46:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887f938f305309d2dea84d286b5d61f1fa75fdb7dcdb32bc02ca32691d71c786`  
		Last Modified: Thu, 07 Feb 2019 01:40:31 GMT  
		Size: 35.4 MB (35375925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:3c79ee90948e8f48ac96714ba91d7b72f3e4d4788abde6d344f8aeb8ba08098d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b6b8d07b24072ec7706e652aeef1b9e28b56a945f9c026cd464c11b687aef59e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.8 MB (553793729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3384c5c266550d14e69086ba9d93f53dc9859995c311a6120e6fbf1d2311c517`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:07:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:07:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318310d7b90622cb646022f7895951ee24797e44b337f3c4805d04cdbcd0478f`  
		Last Modified: Tue, 05 Mar 2019 05:17:35 GMT  
		Size: 108.5 MB (108461343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5b03ef9e2fa0edd59426560b93c3d0f55a9bab4b0ee3150f1fd1fdd7b645a8e`  
		Last Modified: Tue, 05 Mar 2019 05:17:53 GMT  
		Size: 55.3 MB (55316285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ef4b439db9e27a2de52f5886a63545e870391c93c207cd275e53cce9134e02e7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.2 MB (494155660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f403527178b7abcbb04fdb1b788b5642fdfbee23c88c1688a5103d3dd22b1870`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:15:58 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ee2d590bbd0b66a359b4f2e9c6c15c41beff76b51955c67df18aa2c40f44dc`  
		Last Modified: Tue, 05 Mar 2019 13:42:12 GMT  
		Size: 52.6 MB (52601682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:2ec0e54b1b395c37f95fffaa171f68ff5067b69a166bdade74a58326393823f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:93e4124906e60cb0112d0c1508ae9864abe5068eb62666863865f3012dea4475
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381813099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0421838164361ff557dbe08e544b949cceec9e7f7609dbbd8c384f6e81f2aad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:2ec0e54b1b395c37f95fffaa171f68ff5067b69a166bdade74a58326393823f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:f9ca36b1a920baf07e7fc5d2c693a452710aa2ba9964e618d1c3f736554a142a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **429.6 MB (429639844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd8c5889f3b354a918ff3f988cf5fac6b0b0625818a39ee7148eca1ef2bbd7fc`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
# Tue, 12 Mar 2019 01:15:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c82d2e2e5b10323f3e0258a60ec56a1f143211140cea6bc56e7fbf283a65057`  
		Last Modified: Tue, 12 Mar 2019 01:37:39 GMT  
		Size: 70.6 MB (70613243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:93e4124906e60cb0112d0c1508ae9864abe5068eb62666863865f3012dea4475
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.8 MB (381813099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0421838164361ff557dbe08e544b949cceec9e7f7609dbbd8c384f6e81f2aad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 18:07:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a5579493607c6d24a0fd7a11249b720a57f40e56a19be09fdd93ed7ae87123d`  
		Last Modified: Thu, 07 Feb 2019 18:16:11 GMT  
		Size: 62.3 MB (62256967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f5ab96a87ceecd700ab237af21fdcb44913ee93bac5b7958ece60d90e0004abc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.6 MB (360625727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:768eab6f19882db07ee21ef472a431d677248c502c6b039cb35d685ed0fd81f1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 23:43:07 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9aaabeb9c6ecbb29ccf9c721bb35eee00c815f23ee8ffc384bc168c94f212bb9`  
		Last Modified: Thu, 07 Feb 2019 01:39:51 GMT  
		Size: 65.8 MB (65760607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:7bce9af5ad60856d0ecba7897ec7f810c38d45a9e5569eccfbaff76901714c1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:3a90f1497764447a3f245d197eec52b49af19179292606c45c03c8d138c339cf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **498.5 MB (498477444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bde1cc4ee8552f8a35b3e1adf7298a63dafa8ba857fb5113e1bb9513c50bd20f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 05:07:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318310d7b90622cb646022f7895951ee24797e44b337f3c4805d04cdbcd0478f`  
		Last Modified: Tue, 05 Mar 2019 05:17:35 GMT  
		Size: 108.5 MB (108461343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ee751a0a80e32c126a33c77c02c9e3733ef0cecdab7215e5577ad1e6ab23a7cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.6 MB (441553978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d48cf08e7b39de50e9dae96f1409273c7230bbf7977d685df1c1c4441c4ace`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:12:57 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e616c8fae5cfc173ff0876bc517da5002d9ef008d23e6c2fd4dcbe6e65aaddd`  
		Last Modified: Tue, 05 Mar 2019 13:41:42 GMT  
		Size: 102.9 MB (102940321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:f245858eaaf8152684b4b8bf918f66dfbaf923363f3d0f12198af1b0fc2290b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:a54234cfcfc1645e1ca58f5acd008316dc839a7cec8fc475f09a6692037305ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359026601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52e4108afbf385d824fa9821fcb0cf52b918d18c3fe9ca7f7eb4fbb24dc2c81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:beea05a18d517aa1dece2be579b355119f2d88d5d38cd8fb7463f98e8b33bb6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319556132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eeed5860c907707daaa1279f00d8e5a020ceb836e960750d36db702ce4914a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1003a4e08ebd1675a1cda52ecb645dcce0c8c6e48d537a648cd457ea073f8c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294865120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c6da4610a00b67e29ac1d71c14820d42ddc35fba706dd4b5c48143366a57f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:f245858eaaf8152684b4b8bf918f66dfbaf923363f3d0f12198af1b0fc2290b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:a54234cfcfc1645e1ca58f5acd008316dc839a7cec8fc475f09a6692037305ca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **359.0 MB (359026601 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b52e4108afbf385d824fa9821fcb0cf52b918d18c3fe9ca7f7eb4fbb24dc2c81`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:09:26 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:09:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Mar 2019 01:09:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Mar 2019 01:10:34 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LANG=C.UTF-8
# Tue, 12 Mar 2019 01:10:35 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Mar 2019 01:10:45 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Mar 2019 01:10:45 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Mar 2019 01:13:56 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:13:57 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 12 Mar 2019 01:13:58 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Mar 2019 01:13:58 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10919d32ef8c7fb29d9b741c2fb1da6f67ed0cc1b1e01391dccc85fb48c37f9e`  
		Last Modified: Tue, 12 Mar 2019 01:36:19 GMT  
		Size: 836.6 KB (836625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eb57d992df7ab8d5f1ffdb374b8e682ee43bd9d1366000f895e4868287bbf72`  
		Last Modified: Tue, 12 Mar 2019 01:36:22 GMT  
		Size: 14.9 MB (14912527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ab15ff6826b643238d8665bd13f80186d2d198b243be06bfa1b4be99a8ba7da`  
		Last Modified: Tue, 12 Mar 2019 01:36:15 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e991e401fe9119ef846f9fb4d08cf9d24f4277d01181e6fedca190770582ad9`  
		Last Modified: Tue, 12 Mar 2019 01:36:14 GMT  
		Size: 5.4 KB (5416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c480623e718ff16f17675d972c62943bd854d15672742e47cc97bfa50e98d61a`  
		Last Modified: Tue, 12 Mar 2019 01:36:32 GMT  
		Size: 49.4 MB (49409855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1631db7515a9c7c62f6c3747d9256ebf6b0430af01a20f6d38412941e9d68b04`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 621.1 KB (621136 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5e8853cd2e749c12034dfdd71836e9075f8f0b3014ada1808e7b514eac93fa1`  
		Last Modified: Tue, 12 Mar 2019 01:37:14 GMT  
		Size: 260.8 MB (260771324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd7336f76ae5ee3d5dbb987cc5fdcafead8cfad6bc319776c447ce594fdebb78`  
		Last Modified: Tue, 12 Mar 2019 01:36:13 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:beea05a18d517aa1dece2be579b355119f2d88d5d38cd8fb7463f98e8b33bb6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319556132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eeed5860c907707daaa1279f00d8e5a020ceb836e960750d36db702ce4914a0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 14:56:33 GMT
ADD file:7fa4afa33b899acbfff8b13de217461072573310dbb0b51dd7c2a9e7beaa1b08 in / 
# Thu, 07 Feb 2019 14:56:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 07 Feb 2019 14:56:38 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 14:56:39 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 07 Feb 2019 14:56:40 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 15:23:17 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:23:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:01:46 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 07 Feb 2019 18:01:48 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 07 Feb 2019 18:02:46 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:02:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 18:02:49 GMT
ENV LC_ALL=C.UTF-8
# Thu, 07 Feb 2019 18:03:08 GMT
RUN rosdep init     && rosdep update
# Thu, 07 Feb 2019 18:03:09 GMT
ENV ROS_DISTRO=melodic
# Thu, 07 Feb 2019 18:06:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 18:06:29 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Thu, 07 Feb 2019 18:06:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 07 Feb 2019 18:06:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:48cb104a58ab4bd8aabe399e32c584321c2b488a815a0242a471e9888ea1c5d2`  
		Last Modified: Thu, 07 Feb 2019 14:58:40 GMT  
		Size: 27.7 MB (27659486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5010f922d7826f46b44c0c2b0e563171224b66058e5f993e08044c835004ea32`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b93c416a0aa71d8bfd59c538293a483f2a9f74ed601cbe5c216b035cbe5eb6f`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 495.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffa8bb6d25016c46054b2633ad03a1c240107c69f4f26b9637f5f4bf44b6a7f1`  
		Last Modified: Thu, 07 Feb 2019 14:58:33 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54379fc66721f19bf514cfdb9cb914474cd5219609cac9f36660d48a249265ce`  
		Last Modified: Thu, 07 Feb 2019 15:36:11 GMT  
		Size: 836.8 KB (836843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c886d41fc84815c2f26fd8ca2c4b2ffee65b53982ccd415e90c47748960a03e9`  
		Last Modified: Thu, 07 Feb 2019 15:36:14 GMT  
		Size: 13.2 MB (13240261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a6b38798880a1b2d871d6744f4e4212c6ee4601a00fb2ecb3660de86f9ce46`  
		Last Modified: Thu, 07 Feb 2019 18:14:32 GMT  
		Size: 1.4 KB (1402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:addf91d41d874e247b5dcef9ebc1d229badcabb60ed22cb09f620fa619fe9a51`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 5.5 KB (5453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17cac4a9b8f956ccd88470e6541976ef957ac54e62d0e57dcfc883cadddf48b2`  
		Last Modified: Thu, 07 Feb 2019 18:14:48 GMT  
		Size: 45.0 MB (45021501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45bbcf1ca67cbbdbbeb03bfb2dc527c028dfab8387b3c318e85815dafb74938`  
		Last Modified: Thu, 07 Feb 2019 18:14:31 GMT  
		Size: 606.8 KB (606832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7cc3d6304637aa55be91ed62f3be0768be135f6987a88bf727240fb3bf4400`  
		Last Modified: Thu, 07 Feb 2019 18:15:40 GMT  
		Size: 232.2 MB (232182626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ff29ffe1f826523baf6e93da8b34ce17e4c14f89a114a52d80d720698659117`  
		Last Modified: Thu, 07 Feb 2019 18:14:30 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1003a4e08ebd1675a1cda52ecb645dcce0c8c6e48d537a648cd457ea073f8c87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294865120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5c6da4610a00b67e29ac1d71c14820d42ddc35fba706dd4b5c48143366a57f3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Wed, 06 Feb 2019 20:40:54 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:41:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:25:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 06 Feb 2019 23:25:19 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 06 Feb 2019 23:28:11 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:28:14 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:28:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 06 Feb 2019 23:28:54 GMT
RUN rosdep init     && rosdep update
# Wed, 06 Feb 2019 23:28:59 GMT
ENV ROS_DISTRO=melodic
# Wed, 06 Feb 2019 23:39:04 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:39:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 06 Feb 2019 23:39:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 06 Feb 2019 23:39:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e0430669192d066aae552606ab79f4e5a652bbfa9c297ba60121d8f194b86d3`  
		Last Modified: Wed, 06 Feb 2019 21:40:13 GMT  
		Size: 837.3 KB (837252 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3e83e2bf02f5095e0624384b3bdc3e796c7bbd4b1c1f9042461f548e1a01ba`  
		Last Modified: Wed, 06 Feb 2019 21:40:22 GMT  
		Size: 13.8 MB (13842430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b38d3022065f758c9e7d312ea38d47c574fce65d1fcd7f0403f666f4c3042cb`  
		Last Modified: Thu, 07 Feb 2019 01:35:04 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be818d543bcd1548cba984ba32215d93e3c89a263949d38c7396f89cd5bbc6f5`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 5.4 KB (5420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08c781ae5d1ec197a69ae8d93715d0b21b55ce61739c93dd1cd71ba49bc6384f`  
		Last Modified: Thu, 07 Feb 2019 01:36:50 GMT  
		Size: 47.6 MB (47611249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e23025f2bdad793f2fe4fd22d6e3146d216ec40a7af4136da4b22338f3a05003`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 606.7 KB (606656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e9ea5322240bf989c07fd08405b97268681da4d70127cb11a172ed5fae7bb71`  
		Last Modified: Thu, 07 Feb 2019 01:38:56 GMT  
		Size: 202.8 MB (202846474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da963ed8314839c01a0bc28057bd4fb1c18c348f3e693f469cae1e6d2ef0c8c`  
		Last Modified: Thu, 07 Feb 2019 01:35:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:faef6f6ca0d4994a448f001886b4da460096c0d6576bbb398d92ecc68f89e604
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:777eeddd843787c0972bd168f012b17a543ad386b3bd425d72d133452d161299
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390016101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94203c732375765c167facb9772578bad2901711478e6146dd31b9fe6ec3c023`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:46:15 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:54:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 04:54:56 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 04:55:39 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:55:39 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:55:40 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 04:55:54 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 05:04:39 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 05:06:12 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 05:06:13 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 05:06:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 05:06:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cf3ccf167266b9fe9ed95a296cf36c71c5328236d6cf99143cb3cf9d46ac2d`  
		Last Modified: Tue, 05 Mar 2019 03:50:18 GMT  
		Size: 21.1 MB (21090956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbf04bf072f949e6b658624a0852db5ed213adcf41d560ae9e74db880d9138c`  
		Last Modified: Tue, 05 Mar 2019 05:11:53 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9645b190879c433284609e5a27932a02ba2111e2ea02d05bc8ad6c7cf3432a75`  
		Last Modified: Tue, 05 Mar 2019 05:11:56 GMT  
		Size: 5.0 KB (4977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972d6cc8af240b1a39bf256ec1656bc1c1e8cd51ce5db7be87ac46bc29b268df`  
		Last Modified: Tue, 05 Mar 2019 05:12:07 GMT  
		Size: 53.5 MB (53540016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b2b0c6392f893a9829435db8abf13f55f3d8f2f7b72f0a040b2d1addc28f2f3`  
		Last Modified: Tue, 05 Mar 2019 05:11:52 GMT  
		Size: 616.7 KB (616734 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179f44b37fa9655ba208e384c7dda5be2e700ef43323725b91b2177bb5fa50b8`  
		Last Modified: Tue, 05 Mar 2019 05:17:01 GMT  
		Size: 269.4 MB (269419318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25e195d50183855faa4f2c4366116011f1fb11e092f27ca631aeb2627b30f0f4`  
		Last Modified: Tue, 05 Mar 2019 05:15:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:913b50487aa43be66d3b67d5bf073e6acd9e85acff0f21956db75929ee995c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338613657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5a47864e30ad0cf0a8dca719fcb50f965af744c4a9da75c5f7d5651c094c48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

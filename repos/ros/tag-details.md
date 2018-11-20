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

## `ros:indigo`

```console
$ docker pull ros@sha256:c98241188f1f03016f4399f27b3ebd624c55dbca526cbc6299252c6321263320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:fc4e12a6142e229ce318c7390c568807a2b7778aad82b0a48116cd567e035784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313796003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9707c2374bd428a2ede8b17bf5070854e6357f77c7c5464bac9aace7bff742f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:1e62b46b785c6a858af9afcf48e9f89ccf1e4288d159db1fd52921431d4e313c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284803010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e457692d81e064778c9c307e6c6b41d7a504c0fc0c3a663519d837b175b40cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:6729869e9dc96287dd2ccb878aa423cac1a891d96b2b19fd7a3c5599141c8fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:1e2418359f473aa7cb6e072df5d7888c6e2bf810c68496ac0a14bf6a047fdc0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.0 MB (550047587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e5047c61611f38b038436b26e471c875dbe93713cdaa27d255547e157513f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec689aaf3a6a9dcd436a4da9fc49b771972ec49590ebf364c623b5ca455b44db`  
		Last Modified: Mon, 19 Nov 2018 23:37:32 GMT  
		Size: 236.3 MB (236251584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:4aec4112c0e700240cc039e69384a5a72a7d89fe0dbf3b7a07f12f87ba129213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496638807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae501807ab31c9bc6f7b3933dc51704b7a4cb2f2e0a34ba58576f2fa838698b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:37:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba05526911c304288fb2b363b031f00a458498169a2aa062019b2c349c93b1`  
		Last Modified: Tue, 20 Nov 2018 14:15:34 GMT  
		Size: 211.8 MB (211835797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:6729869e9dc96287dd2ccb878aa423cac1a891d96b2b19fd7a3c5599141c8fbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:1e2418359f473aa7cb6e072df5d7888c6e2bf810c68496ac0a14bf6a047fdc0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **550.0 MB (550047587 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e5047c61611f38b038436b26e471c875dbe93713cdaa27d255547e157513f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:02:18 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec689aaf3a6a9dcd436a4da9fc49b771972ec49590ebf364c623b5ca455b44db`  
		Last Modified: Mon, 19 Nov 2018 23:37:32 GMT  
		Size: 236.3 MB (236251584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:4aec4112c0e700240cc039e69384a5a72a7d89fe0dbf3b7a07f12f87ba129213
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496638807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae501807ab31c9bc6f7b3933dc51704b7a4cb2f2e0a34ba58576f2fa838698b3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:37:42 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ba05526911c304288fb2b363b031f00a458498169a2aa062019b2c349c93b1`  
		Last Modified: Tue, 20 Nov 2018 14:15:34 GMT  
		Size: 211.8 MB (211835797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:db3575c7cabd6a47c229f94c04c7ca446312d6ef631bbe39701fec6bd1d712ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:fc5a3326104746c62be465219593d791237251d5f106938a63f4daf22e9527f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332826762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b7d67d82e9dd0a18d892ecbeb7973e7f78020b5995a4a2a7aa306c6eb14fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:58:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365482fe6ea6518b10f277463eb7e30da5995203b8bb0ee17bbb5cdd519910db`  
		Last Modified: Mon, 19 Nov 2018 23:36:04 GMT  
		Size: 19.0 MB (19030759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:65063cc77a9a58ab7756f0ace8995a6306ce11abe51296b365deeb31355c4ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302490007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c832d2387f045ad335d59e48907a87805be0967378d54f756cd6f523cf90842d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:34:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc3e7c12c6509ce21cf0453b43ee2999b64e739ec03f4444bc91fb683a4bc38`  
		Last Modified: Tue, 20 Nov 2018 14:14:19 GMT  
		Size: 17.7 MB (17686997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:db3575c7cabd6a47c229f94c04c7ca446312d6ef631bbe39701fec6bd1d712ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:fc5a3326104746c62be465219593d791237251d5f106938a63f4daf22e9527f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.8 MB (332826762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de6b7d67d82e9dd0a18d892ecbeb7973e7f78020b5995a4a2a7aa306c6eb14fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:58:19 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:365482fe6ea6518b10f277463eb7e30da5995203b8bb0ee17bbb5cdd519910db`  
		Last Modified: Mon, 19 Nov 2018 23:36:04 GMT  
		Size: 19.0 MB (19030759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:65063cc77a9a58ab7756f0ace8995a6306ce11abe51296b365deeb31355c4ee7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.5 MB (302490007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c832d2387f045ad335d59e48907a87805be0967378d54f756cd6f523cf90842d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:34:26 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfc3e7c12c6509ce21cf0453b43ee2999b64e739ec03f4444bc91fb683a4bc38`  
		Last Modified: Tue, 20 Nov 2018 14:14:19 GMT  
		Size: 17.7 MB (17686997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:c98241188f1f03016f4399f27b3ebd624c55dbca526cbc6299252c6321263320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:fc4e12a6142e229ce318c7390c568807a2b7778aad82b0a48116cd567e035784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313796003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9707c2374bd428a2ede8b17bf5070854e6357f77c7c5464bac9aace7bff742f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:1e62b46b785c6a858af9afcf48e9f89ccf1e4288d159db1fd52921431d4e313c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284803010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e457692d81e064778c9c307e6c6b41d7a504c0fc0c3a663519d837b175b40cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:c98241188f1f03016f4399f27b3ebd624c55dbca526cbc6299252c6321263320
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:fc4e12a6142e229ce318c7390c568807a2b7778aad82b0a48116cd567e035784
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.8 MB (313796003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9707c2374bd428a2ede8b17bf5070854e6357f77c7c5464bac9aace7bff742f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 22:57:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1a1fad2668d43a7c84972bbe7c234f9a4a05cc72e8c8e34e9a076f6e9648b72`  
		Last Modified: Mon, 19 Nov 2018 23:35:11 GMT  
		Size: 46.8 MB (46777062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:1e62b46b785c6a858af9afcf48e9f89ccf1e4288d159db1fd52921431d4e313c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284803010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e457692d81e064778c9c307e6c6b41d7a504c0fc0c3a663519d837b175b40cf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:33:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e82ffed67686319df4410b6401ab599c9026710a4d6fe37854766ece1783de`  
		Last Modified: Tue, 20 Nov 2018 14:13:52 GMT  
		Size: 40.4 MB (40388012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:4313164cfb17bb99e9732290a5f0e015d4735b98bade9ab087512da1fcc72815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d50101b060ff13e8c3d87a71bf68a0453d31f2e6a4f664d3602520d80afd7a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267018941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d7268fb0b827f8f7ead59ef9d6a116b04823c25e26ed02490d02da6744a090`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:452fd03653cdc38c32a52f8f7cb91992e8cb0ac2614275ece0ed13284f90de34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244414998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f27875e3a60f530088129d8770fd5a0ce63705a341cc0b28fa5bce7b99f4e8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:4313164cfb17bb99e9732290a5f0e015d4735b98bade9ab087512da1fcc72815
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:d50101b060ff13e8c3d87a71bf68a0453d31f2e6a4f664d3602520d80afd7a40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.0 MB (267018941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4d7268fb0b827f8f7ead59ef9d6a116b04823c25e26ed02490d02da6744a090`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:15 GMT
ADD file:8921935f38cde7b92d4bd627249b58572d76f05b6b1beb19cde07d6266e98dff in / 
# Mon, 19 Nov 2018 21:23:16 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:18 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:53:00 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 22:53:14 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 22:53:54 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 22:53:54 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 22:54:09 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 22:54:22 GMT
ENV ROS_DISTRO=indigo
# Mon, 19 Nov 2018 22:56:15 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:56:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 22:56:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 22:56:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:aa1a66b8583aebb7079effdfe4f95e93dbad248eb4016d1204b28a1b4daf0be1`  
		Last Modified: Mon, 19 Nov 2018 15:07:10 GMT  
		Size: 67.1 MB (67148042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaccc2e362b2a0d1730104c2ec458779bf780014de00161d1844f910e41adbfd`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a53116a2808f001c7a5ca43153ddc0ba788204142fe6fd928761d94d6c8e66bb`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a7298e318c5e03f94da0eb1a7d1aba5c973086135a2063a3088b4035d4d933`  
		Last Modified: Mon, 19 Nov 2018 21:27:28 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e92cce34e116b6518e1c51dbabfb9d1998d886049c846bcfba3df5d311d0`  
		Last Modified: Mon, 19 Nov 2018 23:33:55 GMT  
		Size: 18.0 MB (18037830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36edd9a6bcd421fbd13e41276882c043da645bf0bd071b7dc7385275ba81fa4c`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0474ae1e8be19d60744808ec632c393a63eb256f8dd3d849861c6551f09033cf`  
		Last Modified: Mon, 19 Nov 2018 23:33:48 GMT  
		Size: 260.4 KB (260353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18070653d6b89055dcc73b12c2358dff6732e2c756f01410d209428747a8dcbe`  
		Last Modified: Mon, 19 Nov 2018 23:34:02 GMT  
		Size: 30.9 MB (30949932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:758fde943fa1bdd2dad748fbbeb2026bfce9ae84bf9c873dc433e5c14a923976`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 835.4 KB (835395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97b28af555437529fd1b7e515caae30819cbba95c5999b44b37030332bb917c2`  
		Last Modified: Mon, 19 Nov 2018 23:34:25 GMT  
		Size: 149.7 MB (149700927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248a02b6f012d2d67f0349917ec8b25288c8319c5dc1b4a46bd868a92855bda2`  
		Last Modified: Mon, 19 Nov 2018 23:33:49 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:452fd03653cdc38c32a52f8f7cb91992e8cb0ac2614275ece0ed13284f90de34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244414998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5f27875e3a60f530088129d8770fd5a0ce63705a341cc0b28fa5bce7b99f4e8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:07:29 GMT
ADD file:b65c968ad3f55b81882f9b6e722ee967f0404525c7ed13cff0dd2a3e668fd077 in / 
# Tue, 20 Nov 2018 13:07:31 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:07:32 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:07:33 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:07:33 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:29:09 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:29:11 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:29:12 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:30:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:30:07 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:30:08 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:30:30 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:30:31 GMT
ENV ROS_DISTRO=indigo
# Tue, 20 Nov 2018 13:32:34 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:32:38 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:32:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:32:39 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:d17d4e152eb35c16b1edfe48495abb0c1c83026df1ee62d294f585e99fe5a131`  
		Last Modified: Tue, 20 Nov 2018 13:10:15 GMT  
		Size: 61.5 MB (61490728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c4c2ca6bcf93e6488fb05e178240e1710eb74d81507938e1f771dc650d84616`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 76.8 KB (76768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:749b266e074ecb714b357f0d5387bef72993df0adab2929fb0222857615ff059`  
		Last Modified: Tue, 20 Nov 2018 13:09:55 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f704248d31b8e22a8fede54e24377839ff939d5e3b5db92a7a1caf87047ba16e`  
		Last Modified: Tue, 20 Nov 2018 13:09:54 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56cd3c0e64b357de750edb9b4606f0edb2c2992b44d932b7fe3334b4bbd8d7f`  
		Last Modified: Tue, 20 Nov 2018 14:12:47 GMT  
		Size: 16.0 MB (15995485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e55c6156584433b71a5c969f881fcaf82309a208116d58bf68550433ac681`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5220c6742e25176dbe23e2fa29d2782478dc195fff4484b52244ccf920629ff`  
		Last Modified: Tue, 20 Nov 2018 14:12:41 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e792fee32b7b48e81a2ad0f5668a2bc474e265e07b05831bd8b6227d90f01d`  
		Last Modified: Tue, 20 Nov 2018 14:12:50 GMT  
		Size: 28.4 MB (28409100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aaea753fa6b9720f01e9eb835b5f7f59be50884f1a140323b2de2d84e474c9`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 835.4 KB (835441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c5543024228af93f583714928172dd7905e4e4ef0d9a2643d4d1b452a9dd6d`  
		Last Modified: Tue, 20 Nov 2018 14:13:25 GMT  
		Size: 137.3 MB (137333306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa94b32cae867e131584d18940f848c812b202178d3442e70d00c1707b089c7`  
		Last Modified: Tue, 20 Nov 2018 14:12:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:24af98f94ac338552cc12db3abc3330bd02264adf187dac8f6c0134fee4af5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:7139d17b289be8072727ce3f658d7ddf6912de4f8d11b3941ef2144eaefb36ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393073123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa13ed65d92db81e4722fee72c657f9d9b42f5d96e19f9b58baeab6041e2fd43`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:85df31d593051c3dd7e841c53fe8eed70d5d7d237da406fc694d28ec57e36aee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343604571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a730e745aef170390e760de612cc21521d7a30db1924ef5c257df68e8e099cd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:1b59bc852b3f9220814aec6b9b0cd3e77ee63708f56c804b36fd8b2413bb89a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:75325a077da61dd04e4d81c0096c3d6ddf0aefccb3962424a95bb7c80ec6bda7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.8 MB (733781556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d87ae183002c010acc5631c07fe5cae0a06073d4b3b97e98b9cee9b26f45ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:13:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb85660fa0a00739e0d06ced7647cff461f29588b98fa4ef3483c36b50f51a8`  
		Last Modified: Mon, 19 Nov 2018 23:43:49 GMT  
		Size: 340.7 MB (340708433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:ff9cace88add965219d75b1861a16cafc29d2f68b304ea8cc5da8bd8a457a9c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.3 MB (624349226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1d24b51b9a876965a222115e99f90fedbcc1350474c4746032b9b8a7891d67`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:49:36 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bde8efdc7544837696813bdad9275afd4b6174f160759214fb6ad8321ff22a`  
		Last Modified: Tue, 20 Nov 2018 14:19:47 GMT  
		Size: 280.7 MB (280744655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ab2d5bae861996908344ce2817d8c6021c9fc69639f6fb1047ff13df543b7a50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.6 MB (648603917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067517fb150ea588d9437d53ec22f811ac21370cc862d78960adbc6ac554d87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:32:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f93df4d0bf77311b0369e82e6fe2cabe81c4afff5b7b1624d9239762d70e37`  
		Last Modified: Tue, 20 Nov 2018 12:45:16 GMT  
		Size: 291.2 MB (291239909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:1b59bc852b3f9220814aec6b9b0cd3e77ee63708f56c804b36fd8b2413bb89a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:75325a077da61dd04e4d81c0096c3d6ddf0aefccb3962424a95bb7c80ec6bda7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **733.8 MB (733781556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04d87ae183002c010acc5631c07fe5cae0a06073d4b3b97e98b9cee9b26f45ea`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:13:02 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cb85660fa0a00739e0d06ced7647cff461f29588b98fa4ef3483c36b50f51a8`  
		Last Modified: Mon, 19 Nov 2018 23:43:49 GMT  
		Size: 340.7 MB (340708433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:ff9cace88add965219d75b1861a16cafc29d2f68b304ea8cc5da8bd8a457a9c4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **624.3 MB (624349226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba1d24b51b9a876965a222115e99f90fedbcc1350474c4746032b9b8a7891d67`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:49:36 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bde8efdc7544837696813bdad9275afd4b6174f160759214fb6ad8321ff22a`  
		Last Modified: Tue, 20 Nov 2018 14:19:47 GMT  
		Size: 280.7 MB (280744655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ab2d5bae861996908344ce2817d8c6021c9fc69639f6fb1047ff13df543b7a50
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **648.6 MB (648603917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4067517fb150ea588d9437d53ec22f811ac21370cc862d78960adbc6ac554d87`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:32:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67f93df4d0bf77311b0369e82e6fe2cabe81c4afff5b7b1624d9239762d70e37`  
		Last Modified: Tue, 20 Nov 2018 12:45:16 GMT  
		Size: 291.2 MB (291239909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:cf1c6e0834340495ac4cff7357acf46a9f49f432a6b8a28878fe993c88524e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:01d1c8ed4d799651c4b21299c471b90e710fb119666ff252334da5496c5aa137
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 MB (496768031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4482bc47ba7652dc3fd05bd798b9230e43823602cb5b7b3499429ba8553b36ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:09:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8488a0661d2cd7b6cdc5924db556af0f74c405a58d3ee5b3d6a5d35ea974cbf`  
		Last Modified: Mon, 19 Nov 2018 23:41:44 GMT  
		Size: 103.7 MB (103694908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:db5eee895d1150e2b92d736eaf8ad8a2258ee6ac87ef578871f796bbdb6d4399
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433695005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3d34d15437fb7dcf01bf938b82db1531ffbae9698b555f9b78813d1b6d1cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:45:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c4c3444f0cd4c31efd464d328b636df6befd36bc714aabe6b87a77868e4848`  
		Last Modified: Tue, 20 Nov 2018 14:18:10 GMT  
		Size: 90.1 MB (90090434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11ef2a0eb7c0e4a04ea63b4d2399315520ba1caa8059496ec1630cd6fe351426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451336794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af2c6d8a213c88cd88f9a0a4f966657eb448366b782ed94d422a50b81cafe7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:20:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7d2df65811894cf924a03d9f8296199d336b352462784c66b077f7c853d2c`  
		Last Modified: Tue, 20 Nov 2018 12:42:55 GMT  
		Size: 94.0 MB (93972786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:cf1c6e0834340495ac4cff7357acf46a9f49f432a6b8a28878fe993c88524e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:01d1c8ed4d799651c4b21299c471b90e710fb119666ff252334da5496c5aa137
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 MB (496768031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4482bc47ba7652dc3fd05bd798b9230e43823602cb5b7b3499429ba8553b36ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:09:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8488a0661d2cd7b6cdc5924db556af0f74c405a58d3ee5b3d6a5d35ea974cbf`  
		Last Modified: Mon, 19 Nov 2018 23:41:44 GMT  
		Size: 103.7 MB (103694908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:db5eee895d1150e2b92d736eaf8ad8a2258ee6ac87ef578871f796bbdb6d4399
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433695005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31a3d34d15437fb7dcf01bf938b82db1531ffbae9698b555f9b78813d1b6d1cd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:45:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21c4c3444f0cd4c31efd464d328b636df6befd36bc714aabe6b87a77868e4848`  
		Last Modified: Tue, 20 Nov 2018 14:18:10 GMT  
		Size: 90.1 MB (90090434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:11ef2a0eb7c0e4a04ea63b4d2399315520ba1caa8059496ec1630cd6fe351426
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.3 MB (451336794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2af2c6d8a213c88cd88f9a0a4f966657eb448366b782ed94d422a50b81cafe7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:20:05 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2f7d2df65811894cf924a03d9f8296199d336b352462784c66b077f7c853d2c`  
		Last Modified: Tue, 20 Nov 2018 12:42:55 GMT  
		Size: 94.0 MB (93972786 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:24af98f94ac338552cc12db3abc3330bd02264adf187dac8f6c0134fee4af5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:7139d17b289be8072727ce3f658d7ddf6912de4f8d11b3941ef2144eaefb36ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393073123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa13ed65d92db81e4722fee72c657f9d9b42f5d96e19f9b58baeab6041e2fd43`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:85df31d593051c3dd7e841c53fe8eed70d5d7d237da406fc694d28ec57e36aee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343604571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a730e745aef170390e760de612cc21521d7a30db1924ef5c257df68e8e099cd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:24af98f94ac338552cc12db3abc3330bd02264adf187dac8f6c0134fee4af5b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7139d17b289be8072727ce3f658d7ddf6912de4f8d11b3941ef2144eaefb36ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.1 MB (393073123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa13ed65d92db81e4722fee72c657f9d9b42f5d96e19f9b58baeab6041e2fd43`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0feef6aff2af43e4d9b564a59b5c1c445d5eeb2f45cfe5c89a3ec2f4684fdcd`  
		Last Modified: Mon, 19 Nov 2018 23:40:16 GMT  
		Size: 94.0 MB (94010866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:85df31d593051c3dd7e841c53fe8eed70d5d7d237da406fc694d28ec57e36aee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343604571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a730e745aef170390e760de612cc21521d7a30db1924ef5c257df68e8e099cd6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:44:03 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb4e9a9ecdf15e659045dbf91ba7a5bd4d011c7695138db095f3cdfab9f6893`  
		Last Modified: Tue, 20 Nov 2018 14:17:24 GMT  
		Size: 83.9 MB (83861095 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:694d9c4f68fca92238f063a35002acc22fa885dcc5fbf594ecc4dfec63d60a02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.4 MB (357364008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5046cd4c1c7f04274f4eb6d0ad6dcda2841352d9d8f871c44f2f586b62ec5db3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:13:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db597bed91d0fdfc53441bb97747feaba13f63d609a045cc5ce52821f1bd4877`  
		Last Modified: Tue, 20 Nov 2018 12:41:34 GMT  
		Size: 85.3 MB (85289599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:1aab6cad28ba031484107a54f979ca06cdaa69e42d3b7b0e41ab5eb519d9240a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:893f18f0383251148d987fba05ec02867eb187e62295545fca53fe948e815b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299062257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b5811b8a102ff68e6d3efe9132f1698d99fd15ccd21b9b1d5a439c34a3bb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:9eea662aa6343d83d526d140689daef0cd3f1dcb9f3269e7d368b3081fb49024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259743476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa39d9aa566549743e7951557a963078ee4367e6ee8fda3d07874e0e63d71d21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865ef18c64514ccf1baead6d848261c5f15f3f34f3079329a45df9bfed44062f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272074409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b285e6b0f980aff733a2aaaa5c3cf20ea1a1d44e5941a83df3914ef407d3aeb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:1aab6cad28ba031484107a54f979ca06cdaa69e42d3b7b0e41ab5eb519d9240a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:893f18f0383251148d987fba05ec02867eb187e62295545fca53fe948e815b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299062257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e7b5811b8a102ff68e6d3efe9132f1698d99fd15ccd21b9b1d5a439c34a3bb3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:04:21 GMT
ENV ROS_DISTRO=kinetic
# Mon, 19 Nov 2018 23:06:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:06:16 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:06:16 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:06:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89dcfc38675675ed19aa60f96e83e5d03ad5fef6a5751125e816390c46e35e55`  
		Last Modified: Mon, 19 Nov 2018 23:39:14 GMT  
		Size: 193.3 MB (193255511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91adea7fed051852b0967399f1a4fc92c236b137adc64ba54fe218d8bf9a5abd`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:9eea662aa6343d83d526d140689daef0cd3f1dcb9f3269e7d368b3081fb49024
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.7 MB (259743476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa39d9aa566549743e7951557a963078ee4367e6ee8fda3d07874e0e63d71d21`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:39:51 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 13:42:18 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:42:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:42:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:42:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:850852082cbfbf78eb5863bc420ca0a9075810e88126b08d4672e4d5f9f9c2ee`  
		Last Modified: Tue, 20 Nov 2018 14:16:46 GMT  
		Size: 164.6 MB (164591996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:295f5e0033614ec38c39cda63beb1080f7ebfb26c0dfa6657da999ccb717fd0e`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:865ef18c64514ccf1baead6d848261c5f15f3f34f3079329a45df9bfed44062f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272074409 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b285e6b0f980aff733a2aaaa5c3cf20ea1a1d44e5941a83df3914ef407d3aeb4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:00:03 GMT
ENV ROS_DISTRO=kinetic
# Tue, 20 Nov 2018 11:07:46 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:07:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:07:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:07:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b82c036d62a61835d5badad20fb7a876c80e1a8f003951f8f160489873321eef`  
		Last Modified: Tue, 20 Nov 2018 12:40:40 GMT  
		Size: 173.9 MB (173881320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b349952ed0fed00f1d5c65c1fd10afd0576b956d1637153a7c56f2ca2506442`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:1c67d73fb7ce9e63f5c832d698465b1f832d8d1ad7bed9df09dd52ac88dd8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:1072ed7484b9787b53a999f8d7bd1fb87ada312bc96c794b3ef1551f6f80c79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427036617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0a245020377ed5a2022d29e4fef0d64e9949ae60f1fe1b67e7c837809793e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:44b175d482e781bbf0b0191e80da46f9f46ca8d0f3f0ac42317197947d5e2f46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379564651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647197dc5878ccdfa94e05696e4531f356cfdc870e7fddda204385411f754049`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:1c97cd6b49283cad7878e4b4b14e7134310a7572b1388d7905e75fecc7a27512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:51837b975f4323ebedbfb9461d3c4ea562adf05f3f8d6e31191277e63ab34758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393039129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ec558b9799b030e10f6fc5735f7367cb4f1b6507b58aa69ab7b15389dae805`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:6134c2d66fa07d6304bc7cf4b4b8ad42e154a5222b8c73a7b2615d710c3cc165
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343562016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adc048ae8dfc567f85bb9ad2e071d39067f46ff7d26eb14d13a408807da3b54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:cca41161812edad849b532639edf602500ce0efa6748cb0cbdf767a4ba67cc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:485cfde55a55bf3222dde0fbeaffaabcc22770ba1fb4bfff0245a673b7bf798d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732180355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47a05e9b894a39913dad1e1c343ff5d98640f3b3d6063572f6b9bb79741d2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:19:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773bf5b44fc815e2cf2933858c9205cd70926dfb9e882b4cd2b9e96f77c7e42`  
		Last Modified: Mon, 19 Nov 2018 23:51:09 GMT  
		Size: 339.1 MB (339141226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:6a4e211ab5f6c63692cd2b736f98caae3cbcd08727a9e71895182989f77c1861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.9 MB (623858900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e433716b012cfb72cd0aa1119ce6e6b6731a7a25fd9b46aa8ad1e114c40260c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:59:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4559225baa7e9099a56d01744e4feb503e3487ef9f3d89c17ca278153f78ce`  
		Last Modified: Tue, 20 Nov 2018 14:23:56 GMT  
		Size: 280.3 MB (280296884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:33b5bffa68662935fa04e83e32863848eaa3fa2df2380694e39a82d6918ee3e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647278127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d851b544c7248efbf7878a3740696b17778da2342c7503ef0f76c5e9e67de7b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:02:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e02f598954fc6af78e568afc166f1e5109e24d2d831b32a6309f5dde0a7552f`  
		Last Modified: Tue, 20 Nov 2018 12:51:13 GMT  
		Size: 290.0 MB (289992952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:099520c176a5c786fcab7c603dd5ee81c0c1b8a1b4015d32ab35ef5323beeb6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:a379f278dfcc7946b815348d480fd840741620f14aaa6abbdd9b46bb9585b7f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **932.5 MB (932537903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510c5d76533bbae8bfb96c8e7bc0ce952da439d5700f8efbd8a55f9d9589345e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 16:55:37 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Nov 2018 16:58:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:58:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 16:58:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 16:58:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:00:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:06:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7794fec4ccc81d56dc065af958e32b9c8388f7275955dfb9b29e3d20c857a74`  
		Last Modified: Fri, 16 Nov 2018 17:22:00 GMT  
		Size: 251.1 MB (251113917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2010fde5c93c72a9816ab00bedb264a0dfb53d628c0b12090e8026b599656`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b48e893d80b3e88a45214db5aa520305e8ddf5d38a21f3d639559c10ffef2c`  
		Last Modified: Fri, 16 Nov 2018 17:23:08 GMT  
		Size: 122.2 MB (122229177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edbd68e350a3a1b0e077240a0e4ace711123ffd8b81d855beefd4278c3b6142`  
		Last Modified: Fri, 16 Nov 2018 17:26:46 GMT  
		Size: 438.5 MB (438454137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b6fc5a09a09a0a199655635a6ccdb04f29161bb1f88804a5fd4a542f138f8f58
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **815.8 MB (815774021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08712611ad801aff23aa144c0265e354ec9dc79986c0987e73957c68b5dbe507`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:37:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959f2d0f26f5a9152344d9fcb831b31e27a22300cab898e332a33cbe6acd6a19`  
		Last Modified: Sat, 17 Nov 2018 07:14:12 GMT  
		Size: 378.5 MB (378530518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:cca41161812edad849b532639edf602500ce0efa6748cb0cbdf767a4ba67cc06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:485cfde55a55bf3222dde0fbeaffaabcc22770ba1fb4bfff0245a673b7bf798d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **732.2 MB (732180355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e47a05e9b894a39913dad1e1c343ff5d98640f3b3d6063572f6b9bb79741d2b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:19:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d773bf5b44fc815e2cf2933858c9205cd70926dfb9e882b4cd2b9e96f77c7e42`  
		Last Modified: Mon, 19 Nov 2018 23:51:09 GMT  
		Size: 339.1 MB (339141226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6a4e211ab5f6c63692cd2b736f98caae3cbcd08727a9e71895182989f77c1861
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.9 MB (623858900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e433716b012cfb72cd0aa1119ce6e6b6731a7a25fd9b46aa8ad1e114c40260c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:59:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4559225baa7e9099a56d01744e4feb503e3487ef9f3d89c17ca278153f78ce`  
		Last Modified: Tue, 20 Nov 2018 14:23:56 GMT  
		Size: 280.3 MB (280296884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:33b5bffa68662935fa04e83e32863848eaa3fa2df2380694e39a82d6918ee3e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **647.3 MB (647278127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d851b544c7248efbf7878a3740696b17778da2342c7503ef0f76c5e9e67de7b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:02:14 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e02f598954fc6af78e568afc166f1e5109e24d2d831b32a6309f5dde0a7552f`  
		Last Modified: Tue, 20 Nov 2018 12:51:13 GMT  
		Size: 290.0 MB (289992952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:d433ab4832988dde485c4f5cc8ba85ef00df18f37d416fc6145a2444a82ec084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:7ec7e1ca4f5c33e6da318f8516e9562f25cc0104d47f1c849a2d02498f734e52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 MB (496832896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7738a20ffbdc5578f871ce3781e04fba0e67a26a138b3631db35994e8df55e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:17:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac883eacced3a036544e4b732e032f4a5fb3e6a9eed97c8f20e71fe68c45c155`  
		Last Modified: Mon, 19 Nov 2018 23:49:04 GMT  
		Size: 103.8 MB (103793767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:a873727d4170a677da6422399ab0cd7ef194c4a8bf1958e5aeec2a81ae6b2997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433744789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cf685807b2daed48a6e0992b326d0276af72020f66675cf1c658bef4762f67`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64151b934c05b8c42bd95d8669d97bef7877f81896fceb88c9cb3a3e4d488c8`  
		Last Modified: Tue, 20 Nov 2018 14:22:17 GMT  
		Size: 90.2 MB (90182773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:90c863d70719998b7c3bf0fde386ed8ef4d30650bcb5148fa75c4999ec7a9568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.4 MB (451362152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d337df1b410cfb179f2d6829c965514f731eb51839bad222b51b8e5b5942bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:51:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878892e2470bc4790dc82298db5336ad0b35e0f240f87b6ae46a98b1724b455b`  
		Last Modified: Tue, 20 Nov 2018 12:48:50 GMT  
		Size: 94.1 MB (94076977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:9729820e7633eacde60e2eb69ce85949f0a3020d67e76342d4a5361f634db312
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e46ff0f875769726fb8a4e082e612d19e3d3d9f1d631f6db062a54413170afb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554525900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090ec376014d943970385d28bf546eed84c2c4f5f89308d45cea0eab6e945d15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 16:55:37 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Nov 2018 16:58:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:58:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 16:58:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 16:58:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:00:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:02:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7794fec4ccc81d56dc065af958e32b9c8388f7275955dfb9b29e3d20c857a74`  
		Last Modified: Fri, 16 Nov 2018 17:22:00 GMT  
		Size: 251.1 MB (251113917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2010fde5c93c72a9816ab00bedb264a0dfb53d628c0b12090e8026b599656`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b48e893d80b3e88a45214db5aa520305e8ddf5d38a21f3d639559c10ffef2c`  
		Last Modified: Fri, 16 Nov 2018 17:23:08 GMT  
		Size: 122.2 MB (122229177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afff833e36d517989b3461b77f6af673db61fdb015dae502460486c268de60a`  
		Last Modified: Fri, 16 Nov 2018 17:23:59 GMT  
		Size: 60.4 MB (60442134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:41d89ae5b391a090e09281a2947a80f44e9c7b9a668bb3c082fb5e435708f83d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.8 MB (494766656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f1d2360f448430aef2b1cfed945d87e472e06f1eedf9bb6c28f1482cee1f956`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:20:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b22d2c9adcfa8a7ffd5955f440a8fed6e9956c19ad037100d4ea9785b350e4`  
		Last Modified: Sat, 17 Nov 2018 07:11:31 GMT  
		Size: 57.5 MB (57523153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:d433ab4832988dde485c4f5cc8ba85ef00df18f37d416fc6145a2444a82ec084
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:7ec7e1ca4f5c33e6da318f8516e9562f25cc0104d47f1c849a2d02498f734e52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.8 MB (496832896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd7738a20ffbdc5578f871ce3781e04fba0e67a26a138b3631db35994e8df55e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:17:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac883eacced3a036544e4b732e032f4a5fb3e6a9eed97c8f20e71fe68c45c155`  
		Last Modified: Mon, 19 Nov 2018 23:49:04 GMT  
		Size: 103.8 MB (103793767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:a873727d4170a677da6422399ab0cd7ef194c4a8bf1958e5aeec2a81ae6b2997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **433.7 MB (433744789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88cf685807b2daed48a6e0992b326d0276af72020f66675cf1c658bef4762f67`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:55:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f64151b934c05b8c42bd95d8669d97bef7877f81896fceb88c9cb3a3e4d488c8`  
		Last Modified: Tue, 20 Nov 2018 14:22:17 GMT  
		Size: 90.2 MB (90182773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:90c863d70719998b7c3bf0fde386ed8ef4d30650bcb5148fa75c4999ec7a9568
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **451.4 MB (451362152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d337df1b410cfb179f2d6829c965514f731eb51839bad222b51b8e5b5942bf`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:51:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:878892e2470bc4790dc82298db5336ad0b35e0f240f87b6ae46a98b1724b455b`  
		Last Modified: Tue, 20 Nov 2018 12:48:50 GMT  
		Size: 94.1 MB (94076977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:1c97cd6b49283cad7878e4b4b14e7134310a7572b1388d7905e75fecc7a27512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:51837b975f4323ebedbfb9461d3c4ea562adf05f3f8d6e31191277e63ab34758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393039129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ec558b9799b030e10f6fc5735f7367cb4f1b6507b58aa69ab7b15389dae805`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:6134c2d66fa07d6304bc7cf4b4b8ad42e154a5222b8c73a7b2615d710c3cc165
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343562016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adc048ae8dfc567f85bb9ad2e071d39067f46ff7d26eb14d13a408807da3b54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:008a92995a20439b7485aa2127316396b358cd20780867afe89fdd080bbf632e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:d98ebc41ea91fe29c516b60d47c11a74e5b2a9bde675d274a2658910d09de943
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.1 MB (494083766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3abbb1fe95e4fbcf2a77081c7d4b6462985163c3673a1aed5958f3954bcba31`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 16:55:37 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Nov 2018 16:58:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:58:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 16:58:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 16:58:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:00:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7794fec4ccc81d56dc065af958e32b9c8388f7275955dfb9b29e3d20c857a74`  
		Last Modified: Fri, 16 Nov 2018 17:22:00 GMT  
		Size: 251.1 MB (251113917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2010fde5c93c72a9816ab00bedb264a0dfb53d628c0b12090e8026b599656`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b48e893d80b3e88a45214db5aa520305e8ddf5d38a21f3d639559c10ffef2c`  
		Last Modified: Fri, 16 Nov 2018 17:23:08 GMT  
		Size: 122.2 MB (122229177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:e3ca77b2bad1d835d05b62cc3b1421b6c4f840595168334d2152c48d7272f174
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.2 MB (437243503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcd1f5792ab16e8f5489989269a9a199b141f075bb5acf16f924c35354b11c7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:16:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7136b4c81bea52dd4c17a8e03de70d50d5ddb35ac619b5d7e7fddfcce70156b8`  
		Last Modified: Sat, 17 Nov 2018 07:10:45 GMT  
		Size: 116.0 MB (116026783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:1c97cd6b49283cad7878e4b4b14e7134310a7572b1388d7905e75fecc7a27512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:51837b975f4323ebedbfb9461d3c4ea562adf05f3f8d6e31191277e63ab34758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.0 MB (393039129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ec558b9799b030e10f6fc5735f7367cb4f1b6507b58aa69ab7b15389dae805`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:16:11 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:298b1a78b2a42f8426012b49bf9552a80846f335cd0e4f82dcade4fc4b1a265a`  
		Last Modified: Mon, 19 Nov 2018 23:47:21 GMT  
		Size: 93.9 MB (93946547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6134c2d66fa07d6304bc7cf4b4b8ad42e154a5222b8c73a7b2615d710c3cc165
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.6 MB (343562016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9adc048ae8dfc567f85bb9ad2e071d39067f46ff7d26eb14d13a408807da3b54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 13:53:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdd8f1e9cc61c278b55be0413f2e7f2b2ed8b3017641794412660a3c40b1c83`  
		Last Modified: Tue, 20 Nov 2018 14:21:31 GMT  
		Size: 83.8 MB (83796565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:79375bccf0494549fed369215998175b2ba431fd8691e6fac0b31727383525ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.3 MB (357285175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee20ac58f060c9d119c1fabf108d4e68343698291d3b54cbb7441e5d1c6778a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 11:46:13 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed369af82ab718a37f5007e5a457307f5d223708864835e685e232507979da11`  
		Last Modified: Tue, 20 Nov 2018 12:47:42 GMT  
		Size: 85.2 MB (85223114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:c2e04251f81ec125dd4d7c09785b6c0b04b3beb3b6a35f7998f06c897eb1916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:d0ece90f514553ede2dd464a89016134d211c73f8239fd4cb2d9afc3c9c3ad68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299092582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7491b27d3a7dfaeb9a83de4a17977d9ab9bcbb7345a1cab63ad957fe693f9b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:51f2e1f1c7858e11d75f243a82a41a399d804bb886681089e54cb8985aa4835b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259765451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cdb2880eaa1f1d176bdffc546ee3f0245c22b5ebfbbea1d0dfcc56f3577123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4350bc075d9d5ecfeadc8076208ea08a998f8349f71eea19442a07397a108d8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62ed66d8597176fc4f8e6b2e46616bd09a0714794c44ac0f870e2b544c2074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:39e0d617e5c5f01df4491a1883143aa08aa41581253ac4e0b5bce465ff0786a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:2cd424fbfece5cdd55a5cfdbee45c85a89d3f89cb61b673ea3602454a613aa31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.9 MB (371854589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00545e0afba8b1a3b2beddd969f6322bb2b6bb176fa4fe4a296b16f25ab67a36`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 16:55:37 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Nov 2018 16:58:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:58:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 16:58:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 16:58:08 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7794fec4ccc81d56dc065af958e32b9c8388f7275955dfb9b29e3d20c857a74`  
		Last Modified: Fri, 16 Nov 2018 17:22:00 GMT  
		Size: 251.1 MB (251113917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2010fde5c93c72a9816ab00bedb264a0dfb53d628c0b12090e8026b599656`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7e392caeb2abfc75ebb71a450c821f7427a4b95750a47ee77bfaf52018f40369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.2 MB (321216720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c217755a7b45c1b30dcf054d45ddb58577b7c987442388598206cea8ee1fbd6e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:02:51 GMT
ENV ROS_DISTRO=lunar
# Sat, 17 Nov 2018 06:12:16 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:12:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:12:50 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:12:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dbd9965893daff269efa9854e4915e81eeedccb28885bea5351e089566d60f`  
		Last Modified: Sat, 17 Nov 2018 07:09:30 GMT  
		Size: 206.1 MB (206058703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:956455f470af9c9e304bdcea21658b9e346ce89c7e6eeb2589fbedf41174513e`  
		Last Modified: Sat, 17 Nov 2018 07:08:13 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:c2e04251f81ec125dd4d7c09785b6c0b04b3beb3b6a35f7998f06c897eb1916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:d0ece90f514553ede2dd464a89016134d211c73f8239fd4cb2d9afc3c9c3ad68
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.1 MB (299092582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7491b27d3a7dfaeb9a83de4a17977d9ab9bcbb7345a1cab63ad957fe693f9b8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:23:51 GMT
ADD file:efec03b785a78c01a6ade862d9a309f500ffa9f5f9314be26621f7fda0d5dfb8 in / 
# Mon, 19 Nov 2018 21:23:51 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:23:52 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:23:53 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:23:53 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 21:55:23 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:03:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:03:33 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:04:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:04:07 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:04:21 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:13:49 GMT
ENV ROS_DISTRO=lunar
# Mon, 19 Nov 2018 23:14:43 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:14:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:14:45 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:14:45 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:7b8b6451c85f072fd0d7961c97be3fe6e2f772657d471254f6d52ad9f158a580`  
		Last Modified: Wed, 14 Nov 2018 00:24:36 GMT  
		Size: 43.4 MB (43412182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab4d1096d9ba178819a3f71f17add95285b393e96d08c8a6bfc3446355bcdc49`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 848.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6797d1788acd741d33f4530106586ffee568be513d47e6e20a4c9bc3858822e`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e25c5c290bded5267364aa9f59a18dd22a8b776d7658a41ffabbf691d8104e36`  
		Last Modified: Mon, 19 Nov 2018 21:28:24 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f72e8e9d1e469cd8cb070e8393dc0e9213b13c66ed43d86e5f4dad863eac9a34`  
		Last Modified: Mon, 19 Nov 2018 22:15:52 GMT  
		Size: 16.7 MB (16660724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383af768f2533668d9bac98c8af45e53fe4c617372b2423da17643297509b218`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 13.1 KB (13080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e29024532290aecfd067b0e2b7a4598b993fbc45ba6c7f3045410dafc9aab4b`  
		Last Modified: Mon, 19 Nov 2018 23:38:20 GMT  
		Size: 5.5 KB (5508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff123d3e0cdd24e20d92ea31d61ec62f9464e3bcdf37d4e6a25099288745625d`  
		Last Modified: Mon, 19 Nov 2018 23:38:34 GMT  
		Size: 44.9 MB (44878026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d9c867c9a32db5bf14df36feda565b33f76a70c4e8c362963715befa00190e1`  
		Last Modified: Mon, 19 Nov 2018 23:38:21 GMT  
		Size: 835.4 KB (835396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e7814615cbdf5d8f72517ec36502e1acb848b7f18e37dfa5f80c2ebe3b2f0e`  
		Last Modified: Mon, 19 Nov 2018 23:46:02 GMT  
		Size: 193.3 MB (193285836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631316f0307194846a62db58b4e1d657e4c99c31bdc66d731f1562eb6d6c889f`  
		Last Modified: Mon, 19 Nov 2018 23:45:14 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:51f2e1f1c7858e11d75f243a82a41a399d804bb886681089e54cb8985aa4835b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.8 MB (259765451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3cdb2880eaa1f1d176bdffc546ee3f0245c22b5ebfbbea1d0dfcc56f3577123`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:08:07 GMT
ADD file:efc0c6422e29f0d38182c338248f502a6abd270c11c9e4bb7c3f7e6c471b2602 in / 
# Tue, 20 Nov 2018 13:08:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:08:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:08:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:08:14 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 13:38:25 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:38:28 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 13:38:30 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 13:39:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:39:27 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 13:39:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 13:39:50 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 13:49:50 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 13:52:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:52:14 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 13:52:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 13:52:14 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a1c8a864185868ed08c586a9e20c5bc7d3faf36b5fb1351eb32e2a1a2fc8eaa6`  
		Last Modified: Tue, 20 Nov 2018 13:10:44 GMT  
		Size: 38.4 MB (38409835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0139e28d7e9b2e2c171985e1b1d4ff149f370bb28d4a63b7dd2118fbb0cec560`  
		Last Modified: Tue, 20 Nov 2018 13:10:36 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd884e52459703abb3f1c4bbaa41ec6e4306ad723f6acbe8f0dcd0840a3fbfd1`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28ce3ad5b3aded00e6a4c8fbe01c980b8c457f2083cf310cdcb10122eac363dd`  
		Last Modified: Tue, 20 Nov 2018 13:10:35 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d5c54de7ac36867b9730d5293efad1f0113ac4ab81de9518aea4572ee27a810`  
		Last Modified: Tue, 20 Nov 2018 14:15:56 GMT  
		Size: 15.0 MB (14952720 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af8868b9f9657a120a270498ae60532cff66f051b5dd7523152fc48322ed928c`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 13.1 KB (13079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98f056d41fa70e352dc5457999918ed7fcf60b1a1fc9fe56206937b7d6bc78c`  
		Last Modified: Tue, 20 Nov 2018 14:15:49 GMT  
		Size: 5.5 KB (5544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:901ef18851b583d279ee2981fc6cc99ad540fa61385ba890739f84a70f321354`  
		Last Modified: Tue, 20 Nov 2018 14:16:06 GMT  
		Size: 40.9 MB (40933037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2371c0e060ebfeaccfe226ae507ffca90471230f3ae6f0f92d39ac28b81940ce`  
		Last Modified: Tue, 20 Nov 2018 14:15:50 GMT  
		Size: 835.4 KB (835444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1deeefb1e60dedd4a4e53d61145889258ad88f48adccd1cfccf553256af62133`  
		Last Modified: Tue, 20 Nov 2018 14:20:52 GMT  
		Size: 164.6 MB (164613971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba5ef31c86c4a0d2d2428fc39e57f68a9c568753412c1fdc5b5012a5a9518838`  
		Last Modified: Tue, 20 Nov 2018 14:20:01 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:4350bc075d9d5ecfeadc8076208ea08a998f8349f71eea19442a07397a108d8f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.1 MB (272062061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec62ed66d8597176fc4f8e6b2e46616bd09a0714794c44ac0f870e2b544c2074`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:53:54 GMT
ADD file:c92cd888ac9be21ca6d8248f006bae07765ef40524503ae7e73865da4e3cd6e4 in / 
# Tue, 20 Nov 2018 09:53:57 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:54:00 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:54:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:54:04 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 10:56:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:56:58 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 10:57:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 10:59:16 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 10:59:17 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 10:59:18 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 11:00:02 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 11:32:45 GMT
ENV ROS_DISTRO=lunar
# Tue, 20 Nov 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 11:40:02 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 11:40:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 11:40:03 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a2b02821f60f1c540a3cf947ed7586253cf8d96198589f28d126f554803f8554`  
		Last Modified: Fri, 16 Nov 2018 23:11:32 GMT  
		Size: 39.5 MB (39482459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119d586c333792712e2d4332c4da1b4848b67e733169b775d9f315ba025a8cf1`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6746d149cca8f00fc7fb440cd992129199cf908c27cb712924356eac7569234f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6440c1f82f61bb74cb7fad70c354c65e9ca351e4c4d8a00e8f2e4eec0ba415f`  
		Last Modified: Tue, 20 Nov 2018 09:58:04 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cf422a9ac7b2bc3dccf2ac7afe7481ca58624edded02b87d4fac525a6c6e06a`  
		Last Modified: Tue, 20 Nov 2018 12:39:10 GMT  
		Size: 15.0 MB (15048355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c577cfd06c8c41432d9ab89ac7381258e6a1a3a13a9efe476a2189af4f789`  
		Last Modified: Tue, 20 Nov 2018 12:38:45 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ae917071e4aaf0d8482a4606fa42aa5595dcced6302af20f96279c351dfc03`  
		Last Modified: Tue, 20 Nov 2018 12:38:43 GMT  
		Size: 5.5 KB (5513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f52c2f9bd9cbfce81156207f3ecc58aea187b3dbc640a6e2b40fd5cd846d6df8`  
		Last Modified: Tue, 20 Nov 2018 12:39:39 GMT  
		Size: 42.8 MB (42806516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fc1b16755fa2b86f58e9d4d44a00eaa3e7594d4209848a137197763d48f9a8`  
		Last Modified: Tue, 20 Nov 2018 12:38:44 GMT  
		Size: 835.4 KB (835406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1f7f4845d89c728ce2117d2b4c6b7873237e553c73bed5b92e28dd6055b074`  
		Last Modified: Tue, 20 Nov 2018 12:46:47 GMT  
		Size: 173.9 MB (173868973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ddfb7029f0c18ec55391d0332bf6682ccb69735f5e9e831285bda2c6da5f2b`  
		Last Modified: Tue, 20 Nov 2018 12:45:38 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic`

```console
$ docker pull ros@sha256:1c67d73fb7ce9e63f5c832d698465b1f832d8d1ad7bed9df09dd52ac88dd8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic` - linux; amd64

```console
$ docker pull ros@sha256:1072ed7484b9787b53a999f8d7bd1fb87ada312bc96c794b3ef1551f6f80c79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427036617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0a245020377ed5a2022d29e4fef0d64e9949ae60f1fe1b67e7c837809793e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm variant v7

```console
$ docker pull ros@sha256:44b175d482e781bbf0b0191e80da46f9f46ca8d0f3f0ac42317197947d5e2f46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379564651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647197dc5878ccdfa94e05696e4531f356cfdc870e7fddda204385411f754049`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception`

```console
$ docker pull ros@sha256:dd92889828c3bfa03f193442e9671f34eb4d81cb4e66fed00f4c6a95f9b115a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception` - linux; amd64

```console
$ docker pull ros@sha256:b3bee0cb120340c6c6165d069a2952123601e7ba26a200a67249fc6f5eeebedb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.0 MB (786044576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4eead9b6f29d46e5c2e8263918420166c9202c1b1bd56aebd0c77932ac59df6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:33:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30c47ea82208831ff0e454f6182f8261be1d1b8a8da1ff7aa389e438a6c294`  
		Last Modified: Mon, 19 Nov 2018 23:57:51 GMT  
		Size: 359.0 MB (359007959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:2bba873a6b584235944d12dbbfc78e27bb143d27d04f852a96c2c7eaedf218f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.6 MB (688615710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d5427193b74dc314f8f5832b1277743fc3553fb1dad82e2d8d613959674f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:12:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a3b4fabcf2113badf4b9b173d3430655fed71a6e3e3db95785b241cb6f4192`  
		Last Modified: Tue, 20 Nov 2018 14:28:16 GMT  
		Size: 309.1 MB (309051059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066f66131e145b43ca0018ee214a274ae1e08e219d5a3b65ef7acb48efc1ec56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.8 MB (699840357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893d05a875c1e5d54b7c624585aca24f499265f831800067968269f7d403bc54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aea313e16e75fbf6ebf3c9b314914e45f58f5657c3222a6112eb639d598b7a`  
		Last Modified: Tue, 20 Nov 2018 12:57:28 GMT  
		Size: 341.6 MB (341589330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-bionic`

```console
$ docker pull ros@sha256:dd92889828c3bfa03f193442e9671f34eb4d81cb4e66fed00f4c6a95f9b115a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-perception-bionic` - linux; amd64

```console
$ docker pull ros@sha256:b3bee0cb120340c6c6165d069a2952123601e7ba26a200a67249fc6f5eeebedb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **786.0 MB (786044576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4eead9b6f29d46e5c2e8263918420166c9202c1b1bd56aebd0c77932ac59df6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:33:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb30c47ea82208831ff0e454f6182f8261be1d1b8a8da1ff7aa389e438a6c294`  
		Last Modified: Mon, 19 Nov 2018 23:57:51 GMT  
		Size: 359.0 MB (359007959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:2bba873a6b584235944d12dbbfc78e27bb143d27d04f852a96c2c7eaedf218f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **688.6 MB (688615710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26d5427193b74dc314f8f5832b1277743fc3553fb1dad82e2d8d613959674f4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:12:06 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a3b4fabcf2113badf4b9b173d3430655fed71a6e3e3db95785b241cb6f4192`  
		Last Modified: Tue, 20 Nov 2018 14:28:16 GMT  
		Size: 309.1 MB (309051059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:066f66131e145b43ca0018ee214a274ae1e08e219d5a3b65ef7acb48efc1ec56
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **699.8 MB (699840357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:893d05a875c1e5d54b7c624585aca24f499265f831800067968269f7d403bc54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26aea313e16e75fbf6ebf3c9b314914e45f58f5657c3222a6112eb639d598b7a`  
		Last Modified: Tue, 20 Nov 2018 12:57:28 GMT  
		Size: 341.6 MB (341589330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:b88ed7696ee6411997e3c62e65b237a6ece7be452a100732dede43b72dcd22d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:efbc40590c9c686e0fa9f2eff8ca483bb0ec5de80d1374bb009e317ac98987a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.5 MB (878524749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d61a05e71e681dff6370d58a56817897e085b78dd8ef73901b2c81f39d704994`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 17:10:34 GMT
ENV ROS_DISTRO=melodic
# Fri, 16 Nov 2018 17:12:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:12:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 17:12:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 17:12:30 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:13:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:18:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90517b71b48df9d9f4a64a51edfeb790d045ae509b7f0582129e0940cd3b98`  
		Last Modified: Fri, 16 Nov 2018 17:28:42 GMT  
		Size: 268.5 MB (268547403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15271305688a561e9013dac9af49ce9ae6f3c6ff87b2a5927a732e0166308bc5`  
		Last Modified: Fri, 16 Nov 2018 17:27:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8ce1d41297f182e14457f0301f108ba05d4f00e96e7dd37c933ee5202e17aa`  
		Last Modified: Fri, 16 Nov 2018 17:29:37 GMT  
		Size: 108.5 MB (108462645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d120cd63bd86a2bf8bb244573f2ceaa5140f840e787bce431cddaeeef9358d8`  
		Last Modified: Fri, 16 Nov 2018 17:33:00 GMT  
		Size: 380.8 MB (380774029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:1ba0683a44eaac6567b80144aa40da363f8cbd49f28f42a9041792b8cd20a09f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **796.2 MB (796161073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb25c2245d577d87e8eed1ad0cd7ad1a68844089b5437fc3ac56285c2438a8f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 07:07:16 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e609d5deee22e0ccc6048140c08bc9abe328d30cda5275403c27a88d25b481f`  
		Last Modified: Sat, 17 Nov 2018 07:20:43 GMT  
		Size: 355.3 MB (355332922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:35f28b21dd63b1f5b797de9e6a1a83a3731fbf11e6d20b53c24f3192b97223cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:1056518e9d79b897f66cb41159640ffc85628e58a4136ca019463067f464740d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464627691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81048f258c473aaacc87e8d190208e6b5bc1a0b1c7ccf0766edc9252b10818e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:27:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c92c6c3fddd6895d04805e205b01b37d3cf1c95c6eab74a7ba4851e61a2af6b`  
		Last Modified: Mon, 19 Nov 2018 23:55:35 GMT  
		Size: 37.6 MB (37591074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:593110d73eff0f078bbc7f0c9397e8ed99aded021ee8f0ec67f0df8fcba25717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.8 MB (412786747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94bce435fb1d04db4fb1e8d528aee606b7581b082d800d9582a37d53f76e602`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:07:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4c100065a67646488e58716ae04c6349538e21e823eb9fbdbbb74352a68dd6`  
		Last Modified: Tue, 20 Nov 2018 14:26:29 GMT  
		Size: 33.2 MB (33222096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d74e8fe7c0b5bb18e39fe88fcef310595ceca4b694ecbae434aec536a87776a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393623946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cf187146ff4cb06c77077a3a75a26702d38bdc7ac89c601ff702a9d29c1bd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:25:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcf67552c7847fdc01daa29f26f4b53796e56530191b326002a73a649dde503`  
		Last Modified: Tue, 20 Nov 2018 12:54:51 GMT  
		Size: 35.4 MB (35372919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:35f28b21dd63b1f5b797de9e6a1a83a3731fbf11e6d20b53c24f3192b97223cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:1056518e9d79b897f66cb41159640ffc85628e58a4136ca019463067f464740d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464627691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81048f258c473aaacc87e8d190208e6b5bc1a0b1c7ccf0766edc9252b10818e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:27:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c92c6c3fddd6895d04805e205b01b37d3cf1c95c6eab74a7ba4851e61a2af6b`  
		Last Modified: Mon, 19 Nov 2018 23:55:35 GMT  
		Size: 37.6 MB (37591074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:593110d73eff0f078bbc7f0c9397e8ed99aded021ee8f0ec67f0df8fcba25717
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.8 MB (412786747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b94bce435fb1d04db4fb1e8d528aee606b7581b082d800d9582a37d53f76e602`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:07:41 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4c100065a67646488e58716ae04c6349538e21e823eb9fbdbbb74352a68dd6`  
		Last Modified: Tue, 20 Nov 2018 14:26:29 GMT  
		Size: 33.2 MB (33222096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5d74e8fe7c0b5bb18e39fe88fcef310595ceca4b694ecbae434aec536a87776a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393623946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63cf187146ff4cb06c77077a3a75a26702d38bdc7ac89c601ff702a9d29c1bd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:25:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bcf67552c7847fdc01daa29f26f4b53796e56530191b326002a73a649dde503`  
		Last Modified: Tue, 20 Nov 2018 12:54:51 GMT  
		Size: 35.4 MB (35372919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:f3361b4e2f5210c6c56395afc3812f876ebf7b269344bfc1f0e9eb7c806135dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:605b60912da322b6b3672dd08deec101d66b2d9ec2b452940ff153312088d414
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **553.1 MB (553064116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f4be2902024efe08da0b63447a91e1d0c670680e732e94db22ad29ce54bb46`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 17:10:34 GMT
ENV ROS_DISTRO=melodic
# Fri, 16 Nov 2018 17:12:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:12:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 17:12:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 17:12:30 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:13:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:15:00 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90517b71b48df9d9f4a64a51edfeb790d045ae509b7f0582129e0940cd3b98`  
		Last Modified: Fri, 16 Nov 2018 17:28:42 GMT  
		Size: 268.5 MB (268547403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15271305688a561e9013dac9af49ce9ae6f3c6ff87b2a5927a732e0166308bc5`  
		Last Modified: Fri, 16 Nov 2018 17:27:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8ce1d41297f182e14457f0301f108ba05d4f00e96e7dd37c933ee5202e17aa`  
		Last Modified: Fri, 16 Nov 2018 17:29:37 GMT  
		Size: 108.5 MB (108462645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c175aa0de22214d8a99c67a10b87fbb5128015c160cfa5febf992f1320997ae`  
		Last Modified: Fri, 16 Nov 2018 17:30:30 GMT  
		Size: 55.3 MB (55313396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:eb039ececeaefa26ebe2447bd8669fd5a9e965137ea64fd338d905b48d1cd543
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.4 MB (493406214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7937e0cb99f35019247884eb64f6dba1e68d20ec5548c9758d583a598cc24d8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:56:17 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04d2b89f00b6ab9266d3f12e4c541ed13843cf5e8daa00af9ac127319b37dac4`  
		Last Modified: Sat, 17 Nov 2018 07:17:40 GMT  
		Size: 52.6 MB (52578063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base`

```console
$ docker pull ros@sha256:1c67d73fb7ce9e63f5c832d698465b1f832d8d1ad7bed9df09dd52ac88dd8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:1072ed7484b9787b53a999f8d7bd1fb87ada312bc96c794b3ef1551f6f80c79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427036617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0a245020377ed5a2022d29e4fef0d64e9949ae60f1fe1b67e7c837809793e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:44b175d482e781bbf0b0191e80da46f9f46ca8d0f3f0ac42317197947d5e2f46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379564651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647197dc5878ccdfa94e05696e4531f356cfdc870e7fddda204385411f754049`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-bionic`

```console
$ docker pull ros@sha256:1c67d73fb7ce9e63f5c832d698465b1f832d8d1ad7bed9df09dd52ac88dd8557
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-bionic` - linux; amd64

```console
$ docker pull ros@sha256:1072ed7484b9787b53a999f8d7bd1fb87ada312bc96c794b3ef1551f6f80c79e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **427.0 MB (427036617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d0a245020377ed5a2022d29e4fef0d64e9949ae60f1fe1b67e7c837809793e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
# Mon, 19 Nov 2018 23:26:26 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4478cdad51c632688226442e6c6037431f0f3b7f2a6a20ad4e805800bebaaefa`  
		Last Modified: Mon, 19 Nov 2018 23:54:08 GMT  
		Size: 68.2 MB (68176671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:44b175d482e781bbf0b0191e80da46f9f46ca8d0f3f0ac42317197947d5e2f46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **379.6 MB (379564651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:647197dc5878ccdfa94e05696e4531f356cfdc870e7fddda204385411f754049`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 14:06:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b8d20df1a2033724c90867248bebb0bbce9e525c4cec596652ec02b944961d`  
		Last Modified: Tue, 20 Nov 2018 14:25:55 GMT  
		Size: 60.0 MB (59985053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bf4c58c2ed04665f68f538b5f889c9bf80bb0bac76e22d64edd76a417f4aed8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.3 MB (358251027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e51e84870e42b5c7d84a7797a5b1756d892291b5425e6b6c3f2acd099adf06c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
# Tue, 20 Nov 2018 12:22:11 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bc50b68808001ad58f5e8a916faf21165438c9f28e0a08417f21c551c3b93c`  
		Last Modified: Tue, 20 Nov 2018 12:54:00 GMT  
		Size: 63.4 MB (63393189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:e55f347acf697408131bce1a08dd5ca90fea35075c59ef5c5c42ccb9cb1e5b12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5b6022173cf9f4ee6a23b3a73d7bee85dc380c8852f0ad7ce20aeca1a81779dd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.8 MB (497750720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0e10d758a24162e0035fff6e2d7008a3f07a0d7a4d68d7100183cd9139f8141`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 17:10:34 GMT
ENV ROS_DISTRO=melodic
# Fri, 16 Nov 2018 17:12:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:12:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 17:12:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 17:12:30 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:13:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90517b71b48df9d9f4a64a51edfeb790d045ae509b7f0582129e0940cd3b98`  
		Last Modified: Fri, 16 Nov 2018 17:28:42 GMT  
		Size: 268.5 MB (268547403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15271305688a561e9013dac9af49ce9ae6f3c6ff87b2a5927a732e0166308bc5`  
		Last Modified: Fri, 16 Nov 2018 17:27:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad8ce1d41297f182e14457f0301f108ba05d4f00e96e7dd37c933ee5202e17aa`  
		Last Modified: Fri, 16 Nov 2018 17:29:37 GMT  
		Size: 108.5 MB (108462645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:67a55803c6f7c201418aca6895389035dbc567d12ad947332fb89d63898032e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.8 MB (440828151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e96c8b706dc87d5fa18369b87ab31dc54f9f8c3d6f76a7724aed8c3403bab78`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:50:39 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f97ab40b2f0ff0bb8a3529bba7c732c2a9fd3c78fe3cdad14e0fb15a84597c9`  
		Last Modified: Sat, 17 Nov 2018 07:16:59 GMT  
		Size: 102.9 MB (102939373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:9f1683275228d79ae07ad173a1573fd515b90fe8b2ce3ece1f97679b8acdce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:e1d36a61e8f09f2c43e96e1237da75e01f6cb0a037bc4b21815f65a1a917a323
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358859946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120258206e78be9510cc7409f9b30f1ff1223b5169bbd16ac175b506196da52`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:a3cb9f4fb4ab3b8acaa320de65625b438576006d91a6c4efb422692674535794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319579598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6b89a6d2960b77e6f635671b590defbaa571065072a3fa8fac9e534ab332ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2bb58334f7604fbbed83398fa041d1212c5d9e29324a2aeaf3b8d795ab860b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294857838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c00f068091287c652f5ecd04bd533ee0a709b325f75e39cafb28c7dea82f21e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-bionic`

```console
$ docker pull ros@sha256:9f1683275228d79ae07ad173a1573fd515b90fe8b2ce3ece1f97679b8acdce54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-bionic` - linux; amd64

```console
$ docker pull ros@sha256:e1d36a61e8f09f2c43e96e1237da75e01f6cb0a037bc4b21815f65a1a917a323
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **358.9 MB (358859946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c120258206e78be9510cc7409f9b30f1ff1223b5169bbd16ac175b506196da52`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 19 Nov 2018 21:20:39 GMT
ADD file:39e5bc157a8be63bbb36a142e18b644b0cfff07a8a02b42f7d0c4ee4ba75a5bc in / 
# Mon, 19 Nov 2018 21:20:40 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Mon, 19 Nov 2018 21:20:41 GMT
RUN rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 21:20:42 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Mon, 19 Nov 2018 21:20:42 GMT
CMD ["/bin/bash"]
# Mon, 19 Nov 2018 22:07:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 22:07:58 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:20:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Mon, 19 Nov 2018 23:20:22 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Mon, 19 Nov 2018 23:21:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LANG=C.UTF-8
# Mon, 19 Nov 2018 23:21:11 GMT
ENV LC_ALL=C.UTF-8
# Mon, 19 Nov 2018 23:21:24 GMT
RUN rosdep init     && rosdep update
# Mon, 19 Nov 2018 23:21:24 GMT
ENV ROS_DISTRO=melodic
# Mon, 19 Nov 2018 23:24:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Mon, 19 Nov 2018 23:24:21 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Mon, 19 Nov 2018 23:24:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Mon, 19 Nov 2018 23:24:35 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:32802c0cfa4defde2981bec336096350d0bb490469c494e21f678b1dcf6d831f`  
		Last Modified: Tue, 13 Nov 2018 08:24:33 GMT  
		Size: 32.1 MB (32102249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da1315cffa03c17988ae5c66f56d5f50517652a622afc1611a8bdd6c00b1fde3`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa83472a3562898caaf8d77542181a473a84039376f2ba56254619d9317ba00d`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 556.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85999a86bef2603a9e9a4fa488a7c1f82e471cbb76c3b5068e54e1a9320964a`  
		Last Modified: Mon, 19 Nov 2018 21:24:18 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e382f7508b8d36f9ec94df8f13c4d28fde57004adc8b5530f7770ab8437227aa`  
		Last Modified: Mon, 19 Nov 2018 22:24:04 GMT  
		Size: 833.4 KB (833385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d1dfc85356889358b7533b43d33d52477fc468a0f74b82e7646bf4b604c6cde`  
		Last Modified: Mon, 19 Nov 2018 22:24:07 GMT  
		Size: 14.9 MB (14909246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0d19cf2d8ff5c2180acc5716b520dc52cb957eb7b28514fa073e3e3fd06326`  
		Last Modified: Mon, 19 Nov 2018 23:52:06 GMT  
		Size: 1.4 KB (1390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fb287efaa64107d47bc438bc4ed6cd30652bb7bd8fbb89e3832acc38477d`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 5.4 KB (5414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fb5233a70ae0f4c658a5e531b6f449e9ed17db79753785316fb8eced9df28f5`  
		Last Modified: Mon, 19 Nov 2018 23:52:18 GMT  
		Size: 49.4 MB (49402869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddaca33be12e6910850d6157d765e5b91e4b36685cca3c02b7b9461bafcc655`  
		Last Modified: Mon, 19 Nov 2018 23:52:05 GMT  
		Size: 835.4 KB (835394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:253da1852d06277b23156e8a0e5b78f5e51eacc0554a096ef2981f6203717185`  
		Last Modified: Mon, 19 Nov 2018 23:52:59 GMT  
		Size: 260.8 MB (260768239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674e41a50dfe92e70c357c9829516f1dbd5cff2ddddef5f024b7f8b5b1a8b6c0`  
		Last Modified: Mon, 19 Nov 2018 23:52:04 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm variant v7

```console
$ docker pull ros@sha256:a3cb9f4fb4ab3b8acaa320de65625b438576006d91a6c4efb422692674535794
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.6 MB (319579598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a6b89a6d2960b77e6f635671b590defbaa571065072a3fa8fac9e534ab332ee`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 13:05:44 GMT
ADD file:0b53ffb024f9f01a10ebb0831142ae3450b661e3757c4936ede7f6a748150a7f in / 
# Tue, 20 Nov 2018 13:05:46 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 13:05:48 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 13:05:49 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 13:05:49 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 14:00:10 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:38 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:00:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 14:00:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 14:01:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:01:38 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 14:01:39 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 14:02:05 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 14:02:06 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 14:05:18 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 14:05:23 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 14:05:23 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 14:05:23 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:0a8b647e51f44dcf9d7ed02148cb87c5db06d6b413002d6ce14abec615c17120`  
		Last Modified: Tue, 20 Nov 2018 13:08:37 GMT  
		Size: 27.5 MB (27455618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a571fde31afa3e43991a1defe06c7840e3b4cc7f4cfcb0fce9709b98bebe8e75`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce4cf04bb04adf18110128c75166262590b366904c597c9b1636add316731388`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 560.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf40350077702ab5d298adacee052b0f95372f4f2924dc16daeaf802c34108d2`  
		Last Modified: Tue, 20 Nov 2018 13:08:30 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a06ca85c2f4fcf5e6d3fdc303eb3d9e233c02e83886168277340ff12e96145`  
		Last Modified: Tue, 20 Nov 2018 14:24:13 GMT  
		Size: 833.4 KB (833408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6e8711f27b878b7bc11b5ff3a162d321c23b8eb1a3edf3541fc40e2bf7996c9`  
		Last Modified: Tue, 20 Nov 2018 14:24:21 GMT  
		Size: 13.2 MB (13239632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37fba16c59e9782a3c7c259bbf8789e0fe9f532cf6b05a2c675c09981bc16456`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e56d311a861c5b6d22abef23eaa67775a60ce9d631ba3d721dc6d5b116fe9d3`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 5.5 KB (5451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9680346213469f35c1d64972e0e478d93ecd5e3dbf64ee861999a1d43039d9a4`  
		Last Modified: Tue, 20 Nov 2018 14:24:26 GMT  
		Size: 45.0 MB (45016070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa2b315c772b5538a3091484fd8e840c2ae59c8cea36534a0052082cae48f50c`  
		Last Modified: Tue, 20 Nov 2018 14:24:11 GMT  
		Size: 835.4 KB (835443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc271745e97d16bf904b503209a3bfb45594b87f2d5a450d3e710faaa3393a4b`  
		Last Modified: Tue, 20 Nov 2018 14:25:15 GMT  
		Size: 232.2 MB (232190794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1848f6e2be123de86ba48f49c1aeaed55b5676805b40ed06f0c5902f1b5f1eab`  
		Last Modified: Tue, 20 Nov 2018 14:24:10 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-bionic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:2bb58334f7604fbbed83398fa041d1212c5d9e29324a2aeaf3b8d795ab860b71
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.9 MB (294857838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c00f068091287c652f5ecd04bd533ee0a709b325f75e39cafb28c7dea82f21e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 20 Nov 2018 09:51:08 GMT
ADD file:128b9847a0d262859b295dc33eb7ccd42d713b79ee9a546a677fe5a35f351021 in / 
# Tue, 20 Nov 2018 09:51:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 20 Nov 2018 09:51:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 09:51:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 20 Nov 2018 09:51:19 GMT
CMD ["/bin/bash"]
# Tue, 20 Nov 2018 12:03:59 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:04:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 20 Nov 2018 12:05:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 20 Nov 2018 12:06:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:06:32 GMT
ENV LANG=C.UTF-8
# Tue, 20 Nov 2018 12:06:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 20 Nov 2018 12:07:15 GMT
RUN rosdep init     && rosdep update
# Tue, 20 Nov 2018 12:07:15 GMT
ENV ROS_DISTRO=melodic
# Tue, 20 Nov 2018 12:18:51 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 20 Nov 2018 12:19:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 20 Nov 2018 12:19:12 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 20 Nov 2018 12:19:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:70501f3dea5b8ca0cc22abe481f82bfd0aa11c2946f5501c3fbe0e1c2e8bac7f`  
		Last Modified: Mon, 19 Nov 2018 15:03:03 GMT  
		Size: 28.9 MB (28893861 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06014aa28438b2da9b829e83bc4985144c62aea560bbbfa917f81ac56e2cd459`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84068dac1f08cfa0bd4cf9fdf97cbdc73c974864b5e35529aaeb3e79c65ced15`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 566.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84038226ea67b44613bc0accc5277ed1ce959608c856085152a3aec6c289cac3`  
		Last Modified: Tue, 20 Nov 2018 09:54:26 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cc3ab4250df68a117e60e76acbfa48b3f7e9579e7be4727b50a2b1a3bc44d7f`  
		Last Modified: Tue, 20 Nov 2018 12:51:40 GMT  
		Size: 833.1 KB (833126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcbb0d04c2fe8d45073e7e09d93f4d890963da4407bdc2987f8a2458ea6e68c`  
		Last Modified: Tue, 20 Nov 2018 12:51:45 GMT  
		Size: 13.8 MB (13835925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df2fe63443518d55cb1cf8802ef75e8155d57a660901bac6b7c21a86b01195e5`  
		Last Modified: Tue, 20 Nov 2018 12:51:36 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d8ec4c61ab5951763620e2b6ea609b58d602324d2416870cb045885bf0876ef`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 5.4 KB (5421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bc8fb6226cdf08ce1618ed9e88e1b7fc1485ea5403876af44ad067f152f56`  
		Last Modified: Tue, 20 Nov 2018 12:52:03 GMT  
		Size: 47.6 MB (47612207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15cacac74417f1c724362873606c45f5b473dec16ddc5cfb49aea76abebb029d`  
		Last Modified: Tue, 20 Nov 2018 12:51:35 GMT  
		Size: 835.4 KB (835401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:508331c6872539dbdae86448f6f8f74fafc48e38e68e3aadaa3bd5e4e24f27e6`  
		Last Modified: Tue, 20 Nov 2018 12:53:05 GMT  
		Size: 202.8 MB (202838728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c81ddd026ca070256f778bd84d7713128b7760ee9b9b46ae5a4926589d92d0dd`  
		Last Modified: Tue, 20 Nov 2018 12:51:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:2838365501748543ee2fd0c92bc4d177a3a8c35b21959e95670e16c14ad2dbfa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:626047636337cb5bba7cc5450e75503a5e84e4379765e58832af91a453d84cbb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **389.3 MB (389288075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71848d1243c90c1156d204fed253540370205e9033f8db2e10778625f8a77b03`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 17:10:34 GMT
ENV ROS_DISTRO=melodic
# Fri, 16 Nov 2018 17:12:27 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:12:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 17:12:30 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 17:12:30 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd90517b71b48df9d9f4a64a51edfeb790d045ae509b7f0582129e0940cd3b98`  
		Last Modified: Fri, 16 Nov 2018 17:28:42 GMT  
		Size: 268.5 MB (268547403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15271305688a561e9013dac9af49ce9ae6f3c6ff87b2a5927a732e0166308bc5`  
		Last Modified: Fri, 16 Nov 2018 17:27:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:6a58f9f1cad157d31e5be01ccee34c3ed904009da3f36cc077d032199607bed7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.9 MB (337888778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:327ab9c3de3b521a15054e72cfb228650e03e2b6fc4ce4be12d18f0e1ecb223a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 06:00:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:00:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 17 Nov 2018 06:00:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 17 Nov 2018 06:01:57 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:01:58 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 06:01:59 GMT
ENV LC_ALL=C.UTF-8
# Sat, 17 Nov 2018 06:02:50 GMT
RUN rosdep init     && rosdep update
# Sat, 17 Nov 2018 06:39:10 GMT
ENV ROS_DISTRO=melodic
# Sat, 17 Nov 2018 06:46:20 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 06:46:36 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 17 Nov 2018 06:46:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 17 Nov 2018 06:46:42 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bc7a2896dd3d1bef868286a7e6b01a7cc8d151f4b4877d1db9f6595e2253bf9`  
		Last Modified: Sat, 17 Nov 2018 07:08:22 GMT  
		Size: 19.7 MB (19734311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1775d9e8d21db0160ade38db9d3b8c18b924a9d9bcbb2daca50833a88b046c8`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d21e889c3afca225a3e9a8d3bf728b3653f5b798e6aa674425eec280a80b94`  
		Last Modified: Sat, 17 Nov 2018 07:08:12 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44161b3fa9c54efa5d9cd7bb81fb840e8281337e0997a2b11053bd35846aa5`  
		Last Modified: Sat, 17 Nov 2018 07:08:34 GMT  
		Size: 51.5 MB (51465067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138b03811c4f975e258128be660362b486a2e5b755d0fbff0814dd927212440c`  
		Last Modified: Sat, 17 Nov 2018 07:08:14 GMT  
		Size: 835.4 KB (835399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13c9dbae05908d343eb2792c34291a3d578becc04d21d65d3c1fe695420f87db`  
		Last Modified: Sat, 17 Nov 2018 07:16:01 GMT  
		Size: 222.7 MB (222730761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2843ba6f04b15521ad2275ca8fbf573c124e491d5fa248881cded8c29ac062b2`  
		Last Modified: Sat, 17 Nov 2018 07:14:36 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

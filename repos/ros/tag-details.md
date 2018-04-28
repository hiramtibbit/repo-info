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
$ docker pull ros@sha256:0e5be6882498fea32fe9d7605b442e126662df157bad8ea0ce002cac4bd3c9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo` - linux; amd64

```console
$ docker pull ros@sha256:80471b9871832afbc35350955703fa0bded48041f7cee98b33e6aa39e34c98d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318987447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175e6f54d843fac81c6412793ad7c5f43800098dc9acf4590a95a934b1ad489b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo` - linux; arm variant v7

```console
$ docker pull ros@sha256:72970f9145feb31bad702ba1ed903a938115926f73ce88345cc50f07e8bfb2e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289122675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471c74bf28bc8519a20ff44e8f609839d012fa7a1c10a2ec5fd71bcacbb77fb6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:71b2a113c0a6ddca82608e835c5a177a84543b14be684a5c132f1db3331e17ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:1fea1e5952abd3caab18fc697d9c2c4b223f8cae087c8b3e706dcde41783b953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555322774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b82be8d757b4a09f24524abcd5e283dea42e816218c7f43f99d5e7fd16eb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:12:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae028cd442a2c04606e8471f0074d4b5d9c8ed587c6eb9fac6a91d9e6ddb0cea`  
		Last Modified: Sat, 28 Apr 2018 03:44:53 GMT  
		Size: 236.3 MB (236335327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:8d4ffe8de44aaf747769017163012d9d0234871bf4cacf786cc0bda8d899ca17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.0 MB (501006740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067cbee7c2b6fd1aae7e10d3dd12bc2d638f3d8db1c5305dc9be2a7eea48582f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:25 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28aec6e8823f1d54ca2ea11d72c36ac635fd8ab48a9dfdb13db08fccfafce89`  
		Last Modified: Fri, 13 Apr 2018 12:45:27 GMT  
		Size: 211.9 MB (211884065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:71b2a113c0a6ddca82608e835c5a177a84543b14be684a5c132f1db3331e17ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:1fea1e5952abd3caab18fc697d9c2c4b223f8cae087c8b3e706dcde41783b953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555322774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b82be8d757b4a09f24524abcd5e283dea42e816218c7f43f99d5e7fd16eb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:12:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae028cd442a2c04606e8471f0074d4b5d9c8ed587c6eb9fac6a91d9e6ddb0cea`  
		Last Modified: Sat, 28 Apr 2018 03:44:53 GMT  
		Size: 236.3 MB (236335327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:8d4ffe8de44aaf747769017163012d9d0234871bf4cacf786cc0bda8d899ca17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.0 MB (501006740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067cbee7c2b6fd1aae7e10d3dd12bc2d638f3d8db1c5305dc9be2a7eea48582f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:25 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28aec6e8823f1d54ca2ea11d72c36ac635fd8ab48a9dfdb13db08fccfafce89`  
		Last Modified: Fri, 13 Apr 2018 12:45:27 GMT  
		Size: 211.9 MB (211884065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot`

```console
$ docker pull ros@sha256:bd5fb5137dd89f93d1df08f7f75a2cf6c74300d1d3edc3a0d33936b2a7b14c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot` - linux; amd64

```console
$ docker pull ros@sha256:bdc90e2229bc1f25bfa9098a806090ef85ef420004f71c1ea44daaa2c6c84504
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338012343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe5b972e53ebbfb845b51832aca51741df3fc8ee17344aaf9f510c597660135`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:07:04 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba3290d93fe4dac73daec7d1dabf7802e132490262b666e28a54872773afbcc`  
		Last Modified: Sat, 28 Apr 2018 03:43:13 GMT  
		Size: 19.0 MB (19024896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:f1cb0899452d89798d8b7ac9ee0999ca5d7e61c2565fd212894f0f8749994685
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306801697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de7281c2bc49b4b103cc9eadc5e02fe909a20db131934518cf8d47eee92af95`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:25:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4f6f1f531ec57916372c26aad04477cf56bd16f68a8b59bdd2fb5f2b3f5033`  
		Last Modified: Fri, 13 Apr 2018 12:44:16 GMT  
		Size: 17.7 MB (17679022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-robot-trusty`

```console
$ docker pull ros@sha256:bd5fb5137dd89f93d1df08f7f75a2cf6c74300d1d3edc3a0d33936b2a7b14c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-robot-trusty` - linux; amd64

```console
$ docker pull ros@sha256:bdc90e2229bc1f25bfa9098a806090ef85ef420004f71c1ea44daaa2c6c84504
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338012343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ffe5b972e53ebbfb845b51832aca51741df3fc8ee17344aaf9f510c597660135`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:07:04 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba3290d93fe4dac73daec7d1dabf7802e132490262b666e28a54872773afbcc`  
		Last Modified: Sat, 28 Apr 2018 03:43:13 GMT  
		Size: 19.0 MB (19024896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-robot-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:f1cb0899452d89798d8b7ac9ee0999ca5d7e61c2565fd212894f0f8749994685
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.8 MB (306801697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de7281c2bc49b4b103cc9eadc5e02fe909a20db131934518cf8d47eee92af95`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:25:43 GMT
RUN apt-get update && apt-get install -y     ros-indigo-robot=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4f6f1f531ec57916372c26aad04477cf56bd16f68a8b59bdd2fb5f2b3f5033`  
		Last Modified: Fri, 13 Apr 2018 12:44:16 GMT  
		Size: 17.7 MB (17679022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base`

```console
$ docker pull ros@sha256:0e5be6882498fea32fe9d7605b442e126662df157bad8ea0ce002cac4bd3c9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:80471b9871832afbc35350955703fa0bded48041f7cee98b33e6aa39e34c98d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318987447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175e6f54d843fac81c6412793ad7c5f43800098dc9acf4590a95a934b1ad489b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:72970f9145feb31bad702ba1ed903a938115926f73ce88345cc50f07e8bfb2e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289122675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471c74bf28bc8519a20ff44e8f609839d012fa7a1c10a2ec5fd71bcacbb77fb6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-base-trusty`

```console
$ docker pull ros@sha256:0e5be6882498fea32fe9d7605b442e126662df157bad8ea0ce002cac4bd3c9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-base-trusty` - linux; amd64

```console
$ docker pull ros@sha256:80471b9871832afbc35350955703fa0bded48041f7cee98b33e6aa39e34c98d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.0 MB (318987447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175e6f54d843fac81c6412793ad7c5f43800098dc9acf4590a95a934b1ad489b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-base-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:72970f9145feb31bad702ba1ed903a938115926f73ce88345cc50f07e8bfb2e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.1 MB (289122675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471c74bf28bc8519a20ff44e8f609839d012fa7a1c10a2ec5fd71bcacbb77fb6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:ec19ba1f691ce2ee310bfbcf18b14c624076bda4e6a561a154e74e4a8b57f6fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:cac589f34d63401ccc6dd632497028f250b2bc41796a36b7cdfc86a7ccdde786
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272215318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed9d99982617d14100affc1168b21f49a5a283236331df671e5b016c318b0a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:7539321e3ede6a72cb5a64e74244ab7889387b87db4a25237c418e3a4117ceae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248740535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a007b8dee14e912f4c8e1293188e8f8a57ed8b2c710d84cd30b61e3e53b6899`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-ros-core-trusty`

```console
$ docker pull ros@sha256:ec19ba1f691ce2ee310bfbcf18b14c624076bda4e6a561a154e74e4a8b57f6fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core-trusty` - linux; amd64

```console
$ docker pull ros@sha256:cac589f34d63401ccc6dd632497028f250b2bc41796a36b7cdfc86a7ccdde786
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272215318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed9d99982617d14100affc1168b21f49a5a283236331df671e5b016c318b0a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core-trusty` - linux; arm variant v7

```console
$ docker pull ros@sha256:7539321e3ede6a72cb5a64e74244ab7889387b87db4a25237c418e3a4117ceae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248740535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a007b8dee14e912f4c8e1293188e8f8a57ed8b2c710d84cd30b61e3e53b6899`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic`

```console
$ docker pull ros@sha256:b629b5f0b3eda1d0e23abb3a726efe0894ed8dd457e7e442ded34f01b8aaef59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic` - linux; amd64

```console
$ docker pull ros@sha256:c88407df5cc9d4d2c8772b8d71719794331489ba945e47d7fac88de089cccc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.3 MB (382340082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e16932859102b3c2d3fa25b031401836e3425bc738a09bcd154effe0452b202`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm variant v7

```console
$ docker pull ros@sha256:dc6a19c47773d03823f69903ba8d866bf351f61efceb168c11fd5fd7d9119e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334222363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16205386d89eb9b179fcb9212d6d44c6c1796f46ff5b44e9b4971a079542603`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7b357ee4985436cdfdb417c1c9262e7808c89c3b48d9f64d2b02fe66a1dc16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348022777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e4c6f33f6f65acfb680ccb1f2a430c1a02d8367592770c7729c3e18a44438d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception`

```console
$ docker pull ros@sha256:1e02617a2338d0bf404b72c870a6f48987d3fb79620cf02e6efea000dad4f435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception` - linux; amd64

```console
$ docker pull ros@sha256:9c881a0927401b0ba9982757d0bd3e0ceb35e958acd62f9abbb4e7e0ead84f8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.6 MB (722609390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57670a51bd623ba82581c37d5fc48fcfba278f092c84841fd8fd784017bca09f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:54:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d310989279f8b2aaf46d7bfbc18b2d5f198806ea18507d13b7f918112c17fe6`  
		Last Modified: Sat, 28 Apr 2018 04:30:31 GMT  
		Size: 340.3 MB (340269308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:1f1fb26d7be5468e234c434004ee65e65939876dab4fec7ed49cba4c9dde3997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641116574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8274d9be212a4e84224a918dd6c52aeb6bb2fcf0526f461667f52376561a7b54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:36:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4105410725ccdd6d19fca4bf0bd28dc23b9fae64b948882701de35364c6d4e3`  
		Last Modified: Fri, 13 Apr 2018 12:49:29 GMT  
		Size: 306.9 MB (306894211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:466d7f9f5e309566ff17407998f8404f1482144e167690cdcf7c8c4ddddb3748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.9 MB (669927644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1338f02c90d095153818f6429e3eeb44f4e175d7e13a0076659712055b55270f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:15:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19131715d958a0a46e543c9dc6f4b9ba9485ab32a1a2138537993376418335e6`  
		Last Modified: Fri, 13 Apr 2018 10:59:42 GMT  
		Size: 321.9 MB (321904867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-jessie`

```console
$ docker pull ros@sha256:ffe7fbedad93ccc2ff59a6309cb3f628a4b514b120c10152b99a77251e490205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-perception-jessie` - linux; amd64

```console
$ docker pull ros@sha256:c389ee567e669aca8983ea7c795798788211a0cfdeae08e4c90b88d73b96e1f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **642.3 MB (642266631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15c306b8423ba168364cc7aa003fac5649790ae4ecca9f10516537c50ed5a2e9`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:17:59 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:18:00 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 01:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:15:59 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:16:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:16:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 01:20:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:31:14 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fd0ed538aff4cea06fd22e2bcc262e1b429f7f9057b965486f850a1bef7a8c`  
		Last Modified: Wed, 14 Mar 2018 22:30:11 GMT  
		Size: 33.8 MB (33769365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53035766b684074f76f3c897ce99949a5b608c1c60f4e3c6df6f2adf4bb73c24`  
		Last Modified: Wed, 14 Mar 2018 22:29:50 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc77fc633fcf00ed5251633500acb5452f023c056f6001d601b0e6463a12fd5`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78b9d1f0a82fb634af87976054cbeb126e818c7a9abebef9976a3b0fbc7823`  
		Last Modified: Wed, 14 Mar 2018 22:30:17 GMT  
		Size: 46.5 MB (46485716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d0227ca73fa81232de4ad08eaba86c041582bee7cd46c32921144aaf443019`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 791.2 KB (791204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b743729225ea615cb81b663beb1f8858c0492022308f9027574eabfa15905`  
		Last Modified: Sat, 28 Apr 2018 04:52:29 GMT  
		Size: 157.5 MB (157464679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe57e79791559990cd84498e5a4fc0b8adf7f7794b114450c9bdd5aac9c724b8`  
		Last Modified: Sat, 28 Apr 2018 04:51:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b1ba24199b3fb82c6916883db93bc8838c36ff22b36dca1090d62b3f299f48`  
		Last Modified: Sat, 28 Apr 2018 04:53:47 GMT  
		Size: 84.2 MB (84210325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f936210253b66dea0353d90e2bfe0c86703a3d0420ea734551ea0aeffea2e331`  
		Last Modified: Sat, 28 Apr 2018 05:07:19 GMT  
		Size: 266.9 MB (266934982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:70dd85e3237a71dadf38dfbf1584442f24cdccd4f43668783b784f5ef37d4d9d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **563.5 MB (563517812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b144d5002bb51e04135892b59338aa21f556b8ab487cfd41136bad429e5a56b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:21:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:21:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:23:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:23:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:23:46 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 03:24:29 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 03:24:30 GMT
ENV ROS_DISTRO=kinetic
# Thu, 15 Mar 2018 03:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 03:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 03:34:22 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:38:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:55:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdecaf83a2dc043ec9b4a68daabc132d1a90ff3fbf01c1a064587d30491a42c`  
		Last Modified: Thu, 15 Mar 2018 04:39:19 GMT  
		Size: 32.1 MB (32148326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02dbc95a6b63d5ad91d2bfb3368793d17b23a4ec6f7fa4bfb22365afd243f38`  
		Last Modified: Thu, 15 Mar 2018 04:38:40 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cccd7a322e3a6a5af36ddeb1f4ff18b5104fef568d75f2ca66694d9554b06c`  
		Last Modified: Thu, 15 Mar 2018 04:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ba11b1e2be0d06bc01dffc5a2d86b55d465b7f7d3956e16eaa93412a8fc71a`  
		Last Modified: Thu, 15 Mar 2018 04:39:48 GMT  
		Size: 44.2 MB (44199411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b440a772bc9a8f40ae2ff52bcdfb2428df53e7c2c2f336488375db04de97b5c`  
		Last Modified: Thu, 15 Mar 2018 04:38:39 GMT  
		Size: 791.2 KB (791225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de2b847be09b30de338b3243f90b9fa8f31e42017fc6d539853e3be0d49a180`  
		Last Modified: Thu, 15 Mar 2018 04:40:53 GMT  
		Size: 130.6 MB (130572832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69732b3768e76c4789f520935246c8c953f66e99c79c434b227a46575376571a`  
		Last Modified: Thu, 15 Mar 2018 04:38:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a754abaefbe8acfc7ceca96d5d5b9a80047f8119e2de54f9007399213a69e367`  
		Last Modified: Thu, 15 Mar 2018 04:42:19 GMT  
		Size: 69.0 MB (69047774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5710ec9c4b66bb7a85a8a74ccb2696f3626646a8d7955632ecc9926d2096f33e`  
		Last Modified: Thu, 15 Mar 2018 04:46:47 GMT  
		Size: 236.8 MB (236822940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-perception-xenial`

```console
$ docker pull ros@sha256:1e02617a2338d0bf404b72c870a6f48987d3fb79620cf02e6efea000dad4f435
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:9c881a0927401b0ba9982757d0bd3e0ceb35e958acd62f9abbb4e7e0ead84f8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **722.6 MB (722609390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57670a51bd623ba82581c37d5fc48fcfba278f092c84841fd8fd784017bca09f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:54:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d310989279f8b2aaf46d7bfbc18b2d5f198806ea18507d13b7f918112c17fe6`  
		Last Modified: Sat, 28 Apr 2018 04:30:31 GMT  
		Size: 340.3 MB (340269308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:1f1fb26d7be5468e234c434004ee65e65939876dab4fec7ed49cba4c9dde3997
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.1 MB (641116574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8274d9be212a4e84224a918dd6c52aeb6bb2fcf0526f461667f52376561a7b54`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:36:15 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4105410725ccdd6d19fca4bf0bd28dc23b9fae64b948882701de35364c6d4e3`  
		Last Modified: Fri, 13 Apr 2018 12:49:29 GMT  
		Size: 306.9 MB (306894211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:466d7f9f5e309566ff17407998f8404f1482144e167690cdcf7c8c4ddddb3748
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **669.9 MB (669927644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1338f02c90d095153818f6429e3eeb44f4e175d7e13a0076659712055b55270f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:15:04 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19131715d958a0a46e543c9dc6f4b9ba9485ab32a1a2138537993376418335e6`  
		Last Modified: Fri, 13 Apr 2018 10:59:42 GMT  
		Size: 321.9 MB (321904867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot`

```console
$ docker pull ros@sha256:33cd0e4605cedcbb24680e9bf7f15eb39ff02b55531ae5560bccead65cba79ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot` - linux; amd64

```console
$ docker pull ros@sha256:f7e44f4f731e2829435c85b0a872dbd9b17c4f3ac69f737b5a13f5a082d716e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.9 MB (485930046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1f12f96328904c76713d17889840c7c0622ad5081f2ede093afd75e488e398`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:49:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d5b57df07bbd8d454ad41276603c4ba533adc6af0098f59375d1c871d9ff7`  
		Last Modified: Sat, 28 Apr 2018 04:28:25 GMT  
		Size: 103.6 MB (103589964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6cd6e983cbf5be95745e073cadb320c89af5bc54bfd20f89d4640eb2c8d99ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424226060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c139b33706f7e2a45380f46d66f384700f078802304d83439556bb4a723a3b29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1af5dd6c2f7812dd59212fb54cbc8618db9c2e9d191db6c5dc0cccc7e8298d2`  
		Last Modified: Fri, 13 Apr 2018 12:47:56 GMT  
		Size: 90.0 MB (90003697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0e6b1bb1124c51942a4902f43f793cdd83157a407e20b6db7f66ccc91cc3e8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.9 MB (441886328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301bf8be7452503b1e4a23cd5ae694e9814ea36ce45c6eda1690bab652d9d06e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:57:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a16a69e58e3645757d1e39a6c3267ec5e0d456275030d6722f91a2a3d181bf8`  
		Last Modified: Fri, 13 Apr 2018 10:56:05 GMT  
		Size: 93.9 MB (93863551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-jessie`

```console
$ docker pull ros@sha256:dd496e388409bd9b7e0259ecbf520f1adf7333305a616924f29d51341a1e6aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-robot-jessie` - linux; amd64

```console
$ docker pull ros@sha256:ec2508303dc4a886970934a4ab76f733daf8aa11108288018f6469bc20137419
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.8 MB (436843005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec2aa140a26be1caa5b412fd287407f711876fe560d7ebfd94035d649885e42`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:17:59 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:18:00 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 01:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:15:59 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:16:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:16:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 01:20:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:21:56 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fd0ed538aff4cea06fd22e2bcc262e1b429f7f9057b965486f850a1bef7a8c`  
		Last Modified: Wed, 14 Mar 2018 22:30:11 GMT  
		Size: 33.8 MB (33769365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53035766b684074f76f3c897ce99949a5b608c1c60f4e3c6df6f2adf4bb73c24`  
		Last Modified: Wed, 14 Mar 2018 22:29:50 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc77fc633fcf00ed5251633500acb5452f023c056f6001d601b0e6463a12fd5`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78b9d1f0a82fb634af87976054cbeb126e818c7a9abebef9976a3b0fbc7823`  
		Last Modified: Wed, 14 Mar 2018 22:30:17 GMT  
		Size: 46.5 MB (46485716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d0227ca73fa81232de4ad08eaba86c041582bee7cd46c32921144aaf443019`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 791.2 KB (791204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b743729225ea615cb81b663beb1f8858c0492022308f9027574eabfa15905`  
		Last Modified: Sat, 28 Apr 2018 04:52:29 GMT  
		Size: 157.5 MB (157464679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe57e79791559990cd84498e5a4fc0b8adf7f7794b114450c9bdd5aac9c724b8`  
		Last Modified: Sat, 28 Apr 2018 04:51:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b1ba24199b3fb82c6916883db93bc8838c36ff22b36dca1090d62b3f299f48`  
		Last Modified: Sat, 28 Apr 2018 04:53:47 GMT  
		Size: 84.2 MB (84210325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afe7d1e33c7eddd658ff72d71fddced29e98c79ea6583d102a8cca56feb65d2`  
		Last Modified: Sat, 28 Apr 2018 05:05:51 GMT  
		Size: 61.5 MB (61511356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ec796ffa3b070dd3bcd47d37290e0d0c1776014625720642847698d3454df5a7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **384.1 MB (384077366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5182ad46d642c9ee5a458231eb940d0a7e121305f29e9e8f5f1093bbd2624e33`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:21:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:21:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:23:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:23:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:23:46 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 03:24:29 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 03:24:30 GMT
ENV ROS_DISTRO=kinetic
# Thu, 15 Mar 2018 03:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 03:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 03:34:22 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:38:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:42:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdecaf83a2dc043ec9b4a68daabc132d1a90ff3fbf01c1a064587d30491a42c`  
		Last Modified: Thu, 15 Mar 2018 04:39:19 GMT  
		Size: 32.1 MB (32148326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02dbc95a6b63d5ad91d2bfb3368793d17b23a4ec6f7fa4bfb22365afd243f38`  
		Last Modified: Thu, 15 Mar 2018 04:38:40 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cccd7a322e3a6a5af36ddeb1f4ff18b5104fef568d75f2ca66694d9554b06c`  
		Last Modified: Thu, 15 Mar 2018 04:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ba11b1e2be0d06bc01dffc5a2d86b55d465b7f7d3956e16eaa93412a8fc71a`  
		Last Modified: Thu, 15 Mar 2018 04:39:48 GMT  
		Size: 44.2 MB (44199411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b440a772bc9a8f40ae2ff52bcdfb2428df53e7c2c2f336488375db04de97b5c`  
		Last Modified: Thu, 15 Mar 2018 04:38:39 GMT  
		Size: 791.2 KB (791225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de2b847be09b30de338b3243f90b9fa8f31e42017fc6d539853e3be0d49a180`  
		Last Modified: Thu, 15 Mar 2018 04:40:53 GMT  
		Size: 130.6 MB (130572832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69732b3768e76c4789f520935246c8c953f66e99c79c434b227a46575376571a`  
		Last Modified: Thu, 15 Mar 2018 04:38:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a754abaefbe8acfc7ceca96d5d5b9a80047f8119e2de54f9007399213a69e367`  
		Last Modified: Thu, 15 Mar 2018 04:42:19 GMT  
		Size: 69.0 MB (69047774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9357d27c810763606254a2d8ac965daf1286b6932bbb7309b0fd04753b7f0cfc`  
		Last Modified: Thu, 15 Mar 2018 04:43:35 GMT  
		Size: 57.4 MB (57382494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-robot-xenial`

```console
$ docker pull ros@sha256:33cd0e4605cedcbb24680e9bf7f15eb39ff02b55531ae5560bccead65cba79ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:f7e44f4f731e2829435c85b0a872dbd9b17c4f3ac69f737b5a13f5a082d716e1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.9 MB (485930046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c1f12f96328904c76713d17889840c7c0622ad5081f2ede093afd75e488e398`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:49:50 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3d5b57df07bbd8d454ad41276603c4ba533adc6af0098f59375d1c871d9ff7`  
		Last Modified: Sat, 28 Apr 2018 04:28:25 GMT  
		Size: 103.6 MB (103589964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:f6cd6e983cbf5be95745e073cadb320c89af5bc54bfd20f89d4640eb2c8d99ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424226060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c139b33706f7e2a45380f46d66f384700f078802304d83439556bb4a723a3b29`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1af5dd6c2f7812dd59212fb54cbc8618db9c2e9d191db6c5dc0cccc7e8298d2`  
		Last Modified: Fri, 13 Apr 2018 12:47:56 GMT  
		Size: 90.0 MB (90003697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:b0e6b1bb1124c51942a4902f43f793cdd83157a407e20b6db7f66ccc91cc3e8c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.9 MB (441886328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301bf8be7452503b1e4a23cd5ae694e9814ea36ce45c6eda1690bab652d9d06e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:57:23 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a16a69e58e3645757d1e39a6c3267ec5e0d456275030d6722f91a2a3d181bf8`  
		Last Modified: Fri, 13 Apr 2018 10:56:05 GMT  
		Size: 93.9 MB (93863551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:b629b5f0b3eda1d0e23abb3a726efe0894ed8dd457e7e442ded34f01b8aaef59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:c88407df5cc9d4d2c8772b8d71719794331489ba945e47d7fac88de089cccc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.3 MB (382340082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e16932859102b3c2d3fa25b031401836e3425bc738a09bcd154effe0452b202`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:dc6a19c47773d03823f69903ba8d866bf351f61efceb168c11fd5fd7d9119e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334222363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16205386d89eb9b179fcb9212d6d44c6c1796f46ff5b44e9b4971a079542603`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7b357ee4985436cdfdb417c1c9262e7808c89c3b48d9f64d2b02fe66a1dc16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348022777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e4c6f33f6f65acfb680ccb1f2a430c1a02d8367592770c7729c3e18a44438d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-jessie`

```console
$ docker pull ros@sha256:de4cba72c1a12592e5ae8867df1f88b437086e131e29e16766195691e112d345
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-jessie` - linux; amd64

```console
$ docker pull ros@sha256:93a6216546683644f05e4c94657de147b892c93758fb7072cf29667b390ff946
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.3 MB (375331649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c837ab79aa7e28610aacc66e8cb305ac682eec62f37473b5daaa72fdeb8a53b6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:17:59 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:18:00 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 01:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:15:59 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:16:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:16:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 01:20:29 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fd0ed538aff4cea06fd22e2bcc262e1b429f7f9057b965486f850a1bef7a8c`  
		Last Modified: Wed, 14 Mar 2018 22:30:11 GMT  
		Size: 33.8 MB (33769365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53035766b684074f76f3c897ce99949a5b608c1c60f4e3c6df6f2adf4bb73c24`  
		Last Modified: Wed, 14 Mar 2018 22:29:50 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc77fc633fcf00ed5251633500acb5452f023c056f6001d601b0e6463a12fd5`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78b9d1f0a82fb634af87976054cbeb126e818c7a9abebef9976a3b0fbc7823`  
		Last Modified: Wed, 14 Mar 2018 22:30:17 GMT  
		Size: 46.5 MB (46485716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d0227ca73fa81232de4ad08eaba86c041582bee7cd46c32921144aaf443019`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 791.2 KB (791204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b743729225ea615cb81b663beb1f8858c0492022308f9027574eabfa15905`  
		Last Modified: Sat, 28 Apr 2018 04:52:29 GMT  
		Size: 157.5 MB (157464679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe57e79791559990cd84498e5a4fc0b8adf7f7794b114450c9bdd5aac9c724b8`  
		Last Modified: Sat, 28 Apr 2018 04:51:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b1ba24199b3fb82c6916883db93bc8838c36ff22b36dca1090d62b3f299f48`  
		Last Modified: Sat, 28 Apr 2018 04:53:47 GMT  
		Size: 84.2 MB (84210325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:bdab5bb1090feabbb52b09a17c46c6ee4c4012c1d9b3703846c2bc5576da211f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.7 MB (326694872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:172c19b7b6bce803966cfe916d98121bab487fdd32436e2a863ba6b9d2fdccd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:21:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:21:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:23:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:23:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:23:46 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 03:24:29 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 03:24:30 GMT
ENV ROS_DISTRO=kinetic
# Thu, 15 Mar 2018 03:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 03:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 03:34:22 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:38:09 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdecaf83a2dc043ec9b4a68daabc132d1a90ff3fbf01c1a064587d30491a42c`  
		Last Modified: Thu, 15 Mar 2018 04:39:19 GMT  
		Size: 32.1 MB (32148326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02dbc95a6b63d5ad91d2bfb3368793d17b23a4ec6f7fa4bfb22365afd243f38`  
		Last Modified: Thu, 15 Mar 2018 04:38:40 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cccd7a322e3a6a5af36ddeb1f4ff18b5104fef568d75f2ca66694d9554b06c`  
		Last Modified: Thu, 15 Mar 2018 04:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ba11b1e2be0d06bc01dffc5a2d86b55d465b7f7d3956e16eaa93412a8fc71a`  
		Last Modified: Thu, 15 Mar 2018 04:39:48 GMT  
		Size: 44.2 MB (44199411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b440a772bc9a8f40ae2ff52bcdfb2428df53e7c2c2f336488375db04de97b5c`  
		Last Modified: Thu, 15 Mar 2018 04:38:39 GMT  
		Size: 791.2 KB (791225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de2b847be09b30de338b3243f90b9fa8f31e42017fc6d539853e3be0d49a180`  
		Last Modified: Thu, 15 Mar 2018 04:40:53 GMT  
		Size: 130.6 MB (130572832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69732b3768e76c4789f520935246c8c953f66e99c79c434b227a46575376571a`  
		Last Modified: Thu, 15 Mar 2018 04:38:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a754abaefbe8acfc7ceca96d5d5b9a80047f8119e2de54f9007399213a69e367`  
		Last Modified: Thu, 15 Mar 2018 04:42:19 GMT  
		Size: 69.0 MB (69047774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-base-xenial`

```console
$ docker pull ros@sha256:b629b5f0b3eda1d0e23abb3a726efe0894ed8dd457e7e442ded34f01b8aaef59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:c88407df5cc9d4d2c8772b8d71719794331489ba945e47d7fac88de089cccc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.3 MB (382340082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e16932859102b3c2d3fa25b031401836e3425bc738a09bcd154effe0452b202`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:dc6a19c47773d03823f69903ba8d866bf351f61efceb168c11fd5fd7d9119e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334222363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16205386d89eb9b179fcb9212d6d44c6c1796f46ff5b44e9b4971a079542603`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7b357ee4985436cdfdb417c1c9262e7808c89c3b48d9f64d2b02fe66a1dc16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348022777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e4c6f33f6f65acfb680ccb1f2a430c1a02d8367592770c7729c3e18a44438d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core`

```console
$ docker pull ros@sha256:6d1baecb04af4bf15ef2d4f75ceecd5db0defa336ec13329b7dfde86c3810164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:b696881a8148aa605ed0da56cbf928ae909fa2175a8c43af8ab68b33f386a274
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298432530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e67e9f0e431cbbe3e8e79437a14d3d30d7056d7633a19fe6e79691a9e457761`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:7f121b7968e86c02e3eacd32204625ae7338a4ea06489b6b553c16747a26f657
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259131661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe3c23123d1e39aa76e2866b2ecf4b1f562c1d7a4d8f3ab79ffd6bc975df61b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3df380c9e80f7656fea2d2ec76eb4fe55b93b8e9c93e14a240109b29c6bcbb31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271477808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7e954c9049efb953817a470a062f60b3f3ad98b3c808bc6b5ef35ffbfcdb32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-jessie`

```console
$ docker pull ros@sha256:1ff2c8ccc55fab34e11503a7dff2c249980f81a79a8f87278c194edbc4102eeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-jessie` - linux; amd64

```console
$ docker pull ros@sha256:93fb231895365a3f2ca4dd40b72e63574d4d7f6c84ffadfb046c85e105f67139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.1 MB (291121324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db88ae67ed867d5c25b764dd03a61e9bf24e0be14a696f77f44639de70f9e019`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:17:07 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:17:49 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:17:50 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:17:59 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:18:00 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 01:15:58 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:15:59 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:16:00 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:16:00 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95fd0ed538aff4cea06fd22e2bcc262e1b429f7f9057b965486f850a1bef7a8c`  
		Last Modified: Wed, 14 Mar 2018 22:30:11 GMT  
		Size: 33.8 MB (33769365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53035766b684074f76f3c897ce99949a5b608c1c60f4e3c6df6f2adf4bb73c24`  
		Last Modified: Wed, 14 Mar 2018 22:29:50 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fc77fc633fcf00ed5251633500acb5452f023c056f6001d601b0e6463a12fd5`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f78b9d1f0a82fb634af87976054cbeb126e818c7a9abebef9976a3b0fbc7823`  
		Last Modified: Wed, 14 Mar 2018 22:30:17 GMT  
		Size: 46.5 MB (46485716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d0227ca73fa81232de4ad08eaba86c041582bee7cd46c32921144aaf443019`  
		Last Modified: Wed, 14 Mar 2018 22:29:48 GMT  
		Size: 791.2 KB (791204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437b743729225ea615cb81b663beb1f8858c0492022308f9027574eabfa15905`  
		Last Modified: Sat, 28 Apr 2018 04:52:29 GMT  
		Size: 157.5 MB (157464679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe57e79791559990cd84498e5a4fc0b8adf7f7794b114450c9bdd5aac9c724b8`  
		Last Modified: Sat, 28 Apr 2018 04:51:45 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-jessie` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:fbae1f9f2c3dda06a9735aa69e9c3b205716b7b9e0a9ecbe15df97ef825668a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257647098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fe4b9af55508e6f008add79357448230aab875a490f145627f87a382527687`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:21:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:21:33 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:21:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu jessie main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:23:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:23:45 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:23:46 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 03:24:29 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 03:24:30 GMT
ENV ROS_DISTRO=kinetic
# Thu, 15 Mar 2018 03:34:16 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:34:20 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 03:34:21 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 03:34:22 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdecaf83a2dc043ec9b4a68daabc132d1a90ff3fbf01c1a064587d30491a42c`  
		Last Modified: Thu, 15 Mar 2018 04:39:19 GMT  
		Size: 32.1 MB (32148326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f02dbc95a6b63d5ad91d2bfb3368793d17b23a4ec6f7fa4bfb22365afd243f38`  
		Last Modified: Thu, 15 Mar 2018 04:38:40 GMT  
		Size: 1.4 KB (1421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09cccd7a322e3a6a5af36ddeb1f4ff18b5104fef568d75f2ca66694d9554b06c`  
		Last Modified: Thu, 15 Mar 2018 04:38:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ba11b1e2be0d06bc01dffc5a2d86b55d465b7f7d3956e16eaa93412a8fc71a`  
		Last Modified: Thu, 15 Mar 2018 04:39:48 GMT  
		Size: 44.2 MB (44199411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b440a772bc9a8f40ae2ff52bcdfb2428df53e7c2c2f336488375db04de97b5c`  
		Last Modified: Thu, 15 Mar 2018 04:38:39 GMT  
		Size: 791.2 KB (791225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2de2b847be09b30de338b3243f90b9fa8f31e42017fc6d539853e3be0d49a180`  
		Last Modified: Thu, 15 Mar 2018 04:40:53 GMT  
		Size: 130.6 MB (130572832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69732b3768e76c4789f520935246c8c953f66e99c79c434b227a46575376571a`  
		Last Modified: Thu, 15 Mar 2018 04:38:37 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:kinetic-ros-core-xenial`

```console
$ docker pull ros@sha256:6d1baecb04af4bf15ef2d4f75ceecd5db0defa336ec13329b7dfde86c3810164
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:kinetic-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:b696881a8148aa605ed0da56cbf928ae909fa2175a8c43af8ab68b33f386a274
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298432530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e67e9f0e431cbbe3e8e79437a14d3d30d7056d7633a19fe6e79691a9e457761`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:7f121b7968e86c02e3eacd32204625ae7338a4ea06489b6b553c16747a26f657
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.1 MB (259131661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afe3c23123d1e39aa76e2866b2ecf4b1f562c1d7a4d8f3ab79ffd6bc975df61b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3df380c9e80f7656fea2d2ec76eb4fe55b93b8e9c93e14a240109b29c6bcbb31
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271477808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f7e954c9049efb953817a470a062f60b3f3ad98b3c808bc6b5ef35ffbfcdb32`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:latest`

```console
$ docker pull ros@sha256:b629b5f0b3eda1d0e23abb3a726efe0894ed8dd457e7e442ded34f01b8aaef59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:latest` - linux; amd64

```console
$ docker pull ros@sha256:c88407df5cc9d4d2c8772b8d71719794331489ba945e47d7fac88de089cccc46
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.3 MB (382340082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e16932859102b3c2d3fa25b031401836e3425bc738a09bcd154effe0452b202`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 00:30:39 GMT
ENV ROS_DISTRO=kinetic
# Sat, 28 Apr 2018 00:33:38 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:33:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 00:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 00:33:40 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:46:54 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c2078d78f30a022b8e8261e827f8bfb3ed197ba8a23ba29801b433991da2cd`  
		Last Modified: Sat, 28 Apr 2018 04:02:38 GMT  
		Size: 193.6 MB (193628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf12fd7641b63b74c8fa41aab5f34e3d92f16dde89fb488b40e2e9af893f06b`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bf258bd409a46f96175943d58a23950be99a43c34effe7ebd099faaa5b9a712`  
		Last Modified: Sat, 28 Apr 2018 04:26:24 GMT  
		Size: 83.9 MB (83907552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm variant v7

```console
$ docker pull ros@sha256:dc6a19c47773d03823f69903ba8d866bf351f61efceb168c11fd5fd7d9119e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334222363 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a16205386d89eb9b179fcb9212d6d44c6c1796f46ff5b44e9b4971a079542603`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:30:06 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 12:31:22 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:31:24 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:31:24 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:31:25 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:32:30 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6480cf1b9a31d8581a81b63fb0a824cf72b1d8c2563410f4516c6263c333ff`  
		Last Modified: Fri, 13 Apr 2018 12:46:31 GMT  
		Size: 164.9 MB (164889232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dce6685b662dbca3aa49468e3fef65f606da4631a629d1b2a587da38a09f0bc`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50abeee6b8325b389e316007513694b793fa225063339fb0366c775a8c1baa19`  
		Last Modified: Fri, 13 Apr 2018 12:47:05 GMT  
		Size: 75.1 MB (75090702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:latest` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:d7b357ee4985436cdfdb417c1c9262e7808c89c3b48d9f64d2b02fe66a1dc16d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **348.0 MB (348022777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93e4c6f33f6f65acfb680ccb1f2a430c1a02d8367592770c7729c3e18a44438d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 09:32:15 GMT
ENV ROS_DISTRO=kinetic
# Fri, 13 Apr 2018 09:44:01 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:44:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 09:44:14 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 09:44:15 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 09:50:11 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9db73190ac261a6852e117758f438f954f83acb53b538404a946e6b6a3ba9d0`  
		Last Modified: Fri, 13 Apr 2018 10:52:23 GMT  
		Size: 174.2 MB (174163521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe090abb32faca8fa586a1855f8878352b30a20ff3b5563c87713d15ae61190`  
		Last Modified: Fri, 13 Apr 2018 10:50:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa1c196da31060b08066a751fee97929120caae3c72c731cb9f7cd99404f180e`  
		Last Modified: Fri, 13 Apr 2018 10:53:45 GMT  
		Size: 76.5 MB (76544969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar`

```console
$ docker pull ros@sha256:164a763c57d14eac33cbab2c811dc1d8031cf1b8ab93d12f341e7907d7eec4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar` - linux; amd64

```console
$ docker pull ros@sha256:4705e51f39c8d91a87ccfa347ae7db5c02e5d9ef8ac9ea43239443f2a34a8277
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.2 MB (382246879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ce0ea8adb69c3792c364bdcb9ab7da01a15c49158dd6c7d522a13dd59af882`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm variant v7

```console
$ docker pull ros@sha256:0632da2e34fa0fd4b1780b9a2d31407247ee2142f9094caa4060384f9ea81116
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334169152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c04e437d47a987816aa9bf1f99bdce200f09761e4d2bd10263d126dde6ddabb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:299ac4d12ef2a39253cc616a4133778ff9bdadfb0382a761bf1eedd8981550e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347935625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c6d023982ed6c90a9ac306011df077256405692ad0a680223467fad32d17ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception`

```console
$ docker pull ros@sha256:4a707b8c21651a50cfedf4bd8b2e783e4b516c39123c6eace3076badd43a487e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception` - linux; amd64

```console
$ docker pull ros@sha256:96f63f5329e6b6658971f48d81ebf69e09fef58c56bc69cc441fbe9d7dea8fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **720.9 MB (720947904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5203c1869087b207731ade9ef00f398e32d744b7424e4986f69ffea4e95e02a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:10:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d640b74a6683b7ed02b18e544c280ad2579a6f7f47bec1f9be30342ad43261`  
		Last Modified: Sat, 28 Apr 2018 05:37:27 GMT  
		Size: 338.7 MB (338701025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:6c73ed75d058dc7c2752a6c66ea4a1852490672838658793f70c0f7d0d08dff8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.1 MB (614095606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cab846e1438867480d26b65d695623b1b3e4d33c5138b553aaf5584be398ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:42:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d277273865dc4c47ac69627faa4162667e2e73664c0afb5852c4d45ea7d7f9b9`  
		Last Modified: Fri, 13 Apr 2018 12:53:27 GMT  
		Size: 279.9 MB (279926454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:549e912402a8f482df019895db95899d94f9d1c49e75885bee902cb195c2c848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.5 MB (637512658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dab6550481f82a508c01aaf85769ee92e54473c34dafc0d59ef1a8001228d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:49:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a34f21b072de81109194a2126d218983f6746d3800ef3cdfb89e7a439d503d`  
		Last Modified: Fri, 13 Apr 2018 11:11:40 GMT  
		Size: 289.6 MB (289577033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-stretch`

```console
$ docker pull ros@sha256:c4546c98d612dd4c0a5f5805d98febc17eb8baafcfe50a7e31447970682415c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1fdfbc35890692d645a4aaefba33f041f977d295a8417ce0b14f5bbdccbc5a3a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **925.6 MB (925562996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d222ccaf4923c1f5b95d662c344e6b45ed2776756a53602e66f1ed1ee544dcd4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 14 Mar 2018 21:54:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:54:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:54:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:54:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:15:59 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f518309020ae8617300e7ae7d116505e57de20ab6a5d61539c693fbad62e12`  
		Last Modified: Wed, 14 Mar 2018 22:56:29 GMT  
		Size: 251.9 MB (251873801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741578f11e50550b8c3745fcb7909219c67833ee58f74186730257cc672bf9e4`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3a0f72a7be4c3486ea4de910dd1382d4074dbab5d70a701fc35f43315941a`  
		Last Modified: Wed, 14 Mar 2018 23:01:57 GMT  
		Size: 122.2 MB (122214904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7255059e9af2cdc5ac8440ee81b5c8d383ca3eb3ab0edbdc0e9fc006737643`  
		Last Modified: Wed, 14 Mar 2018 23:10:54 GMT  
		Size: 433.5 MB (433469535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:aee5037d109f3a84cadb1e6c6cc0c01367f7853e628dec0d7d8844275a4d3f7b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **808.9 MB (808940333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c422292a0c11b7137d3eee1880516e92f8ca50861f7da702392b3555692920a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:13:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:37:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbd0df2dae9d9bb4b76963ccc5573cd94d60b1a02a4cb375dc2e90053f60c8d`  
		Last Modified: Thu, 15 Mar 2018 04:52:13 GMT  
		Size: 116.0 MB (116029340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a9938280ed534db5b274c7f886671d7e6c09640247891fd4dd47ab4d6be44e`  
		Last Modified: Thu, 15 Mar 2018 04:56:24 GMT  
		Size: 373.7 MB (373669770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-perception-xenial`

```console
$ docker pull ros@sha256:4a707b8c21651a50cfedf4bd8b2e783e4b516c39123c6eace3076badd43a487e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-perception-xenial` - linux; amd64

```console
$ docker pull ros@sha256:96f63f5329e6b6658971f48d81ebf69e09fef58c56bc69cc441fbe9d7dea8fc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **720.9 MB (720947904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5203c1869087b207731ade9ef00f398e32d744b7424e4986f69ffea4e95e02a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:10:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d640b74a6683b7ed02b18e544c280ad2579a6f7f47bec1f9be30342ad43261`  
		Last Modified: Sat, 28 Apr 2018 05:37:27 GMT  
		Size: 338.7 MB (338701025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:6c73ed75d058dc7c2752a6c66ea4a1852490672838658793f70c0f7d0d08dff8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **614.1 MB (614095606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cab846e1438867480d26b65d695623b1b3e4d33c5138b553aaf5584be398ca`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:42:23 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d277273865dc4c47ac69627faa4162667e2e73664c0afb5852c4d45ea7d7f9b9`  
		Last Modified: Fri, 13 Apr 2018 12:53:27 GMT  
		Size: 279.9 MB (279926454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-perception-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:549e912402a8f482df019895db95899d94f9d1c49e75885bee902cb195c2c848
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **637.5 MB (637512658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43dab6550481f82a508c01aaf85769ee92e54473c34dafc0d59ef1a8001228d7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:49:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-perception=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a34f21b072de81109194a2126d218983f6746d3800ef3cdfb89e7a439d503d`  
		Last Modified: Fri, 13 Apr 2018 11:11:40 GMT  
		Size: 289.6 MB (289577033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot`

```console
$ docker pull ros@sha256:57593c71fdc754817eb27292cc2a6af7ebf427255bcee1fd5e43df132d91b69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot` - linux; amd64

```console
$ docker pull ros@sha256:67bbd8b9d2b95750069eb00dcab46db78a34f8232502a12f2d9108855ed6f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.9 MB (485948756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5592dc8bb6e38efff0a59d5cd3de7c50574d54f3184302fd87cf7a784fd2a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:05:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2074ddf0af0e25ca6bf03fd58bf97b12f19996430eec4952f4fca64ebb1e4700`  
		Last Modified: Sat, 28 Apr 2018 05:35:10 GMT  
		Size: 103.7 MB (103701877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:35cc97f1253ca1ab4af8c87796f95161a90ac98bfe3b4c63b77bebe961922865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424257145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba3e4e5dfb175da6275db2647dda54b98cb8f04727dedc5f6f3240b3b828a01`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:39:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024485c2205cc91446d1103140b3cefbbdf21344c6a72758f583fb2a115ac4cb`  
		Last Modified: Fri, 13 Apr 2018 12:51:52 GMT  
		Size: 90.1 MB (90087993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:74badbf5a5c31e8416291e158dc30abb77be954a0aaa73614161290cdb18905b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.9 MB (441903353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044998efbec888e4552df0a5a7502ffe17eb9d0be9409436406572c371f403c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:37:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d156e93f2c41a56bceae86d1d3c705f1ce0184b78fbda566f8e58b66fc1e0b`  
		Last Modified: Fri, 13 Apr 2018 11:09:02 GMT  
		Size: 94.0 MB (93967728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:fa0889c85d32f0bb6c80702d3054c02e739aaa2a55ce4d5565bfafd1df65cf00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:911a786de99a9c108cea7af1d3df4db2c4467e7ffac640f598ad0fa26788ba30
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.5 MB (552520932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b62fb39dff5fdc7efc262ea1ec94bbbfca8afb1096f33673101cf845cb763510`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 14 Mar 2018 21:54:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:54:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:54:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:54:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:11:29 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f518309020ae8617300e7ae7d116505e57de20ab6a5d61539c693fbad62e12`  
		Last Modified: Wed, 14 Mar 2018 22:56:29 GMT  
		Size: 251.9 MB (251873801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741578f11e50550b8c3745fcb7909219c67833ee58f74186730257cc672bf9e4`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3a0f72a7be4c3486ea4de910dd1382d4074dbab5d70a701fc35f43315941a`  
		Last Modified: Wed, 14 Mar 2018 23:01:57 GMT  
		Size: 122.2 MB (122214904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aea43193abe69c9679c0cf0d212ec40200a2f8201c0f2edebd1d025b84842c3`  
		Last Modified: Wed, 14 Mar 2018 23:09:03 GMT  
		Size: 60.4 MB (60427471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c892f336d2befb2c08f4c28afc30b47f83b9364eb66fa2bbb01e6422632659f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.8 MB (492775267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e17200174f2df509c79b09f0f74d941dd10d6a295cd841f654bae242421276e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:13:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbd0df2dae9d9bb4b76963ccc5573cd94d60b1a02a4cb375dc2e90053f60c8d`  
		Last Modified: Thu, 15 Mar 2018 04:52:13 GMT  
		Size: 116.0 MB (116029340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f83199bae6252e098dfc5a4478c11fec91396e0362c952fcac2fe3ee630f232`  
		Last Modified: Thu, 15 Mar 2018 04:53:16 GMT  
		Size: 57.5 MB (57504704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-robot-xenial`

```console
$ docker pull ros@sha256:57593c71fdc754817eb27292cc2a6af7ebf427255bcee1fd5e43df132d91b69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-robot-xenial` - linux; amd64

```console
$ docker pull ros@sha256:67bbd8b9d2b95750069eb00dcab46db78a34f8232502a12f2d9108855ed6f844
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.9 MB (485948756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab5592dc8bb6e38efff0a59d5cd3de7c50574d54f3184302fd87cf7a784fd2a6`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:05:39 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2074ddf0af0e25ca6bf03fd58bf97b12f19996430eec4952f4fca64ebb1e4700`  
		Last Modified: Sat, 28 Apr 2018 05:35:10 GMT  
		Size: 103.7 MB (103701877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:35cc97f1253ca1ab4af8c87796f95161a90ac98bfe3b4c63b77bebe961922865
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.3 MB (424257145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ba3e4e5dfb175da6275db2647dda54b98cb8f04727dedc5f6f3240b3b828a01`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:39:46 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:024485c2205cc91446d1103140b3cefbbdf21344c6a72758f583fb2a115ac4cb`  
		Last Modified: Fri, 13 Apr 2018 12:51:52 GMT  
		Size: 90.1 MB (90087993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:74badbf5a5c31e8416291e158dc30abb77be954a0aaa73614161290cdb18905b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **441.9 MB (441903353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:044998efbec888e4552df0a5a7502ffe17eb9d0be9409436406572c371f403c0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:37:22 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57d156e93f2c41a56bceae86d1d3c705f1ce0184b78fbda566f8e58b66fc1e0b`  
		Last Modified: Fri, 13 Apr 2018 11:09:02 GMT  
		Size: 94.0 MB (93967728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base`

```console
$ docker pull ros@sha256:164a763c57d14eac33cbab2c811dc1d8031cf1b8ab93d12f341e7907d7eec4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base` - linux; amd64

```console
$ docker pull ros@sha256:4705e51f39c8d91a87ccfa347ae7db5c02e5d9ef8ac9ea43239443f2a34a8277
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.2 MB (382246879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ce0ea8adb69c3792c364bdcb9ab7da01a15c49158dd6c7d522a13dd59af882`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm variant v7

```console
$ docker pull ros@sha256:0632da2e34fa0fd4b1780b9a2d31407247ee2142f9094caa4060384f9ea81116
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334169152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c04e437d47a987816aa9bf1f99bdce200f09761e4d2bd10263d126dde6ddabb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:299ac4d12ef2a39253cc616a4133778ff9bdadfb0382a761bf1eedd8981550e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347935625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c6d023982ed6c90a9ac306011df077256405692ad0a680223467fad32d17ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:778412dc65940d9101076de5741b1d0e3ca5bb39fe65a9e6c4582244eb77a377
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e5f8248a0271360a816cfcd03a6a0848b69fac03743ce5b66e45c07479f722e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.1 MB (492093461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fc888d45899b830606ef1d082986cde6e4034783cad580bf3a3e622d02d3e53`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 14 Mar 2018 21:54:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:54:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:54:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:54:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f518309020ae8617300e7ae7d116505e57de20ab6a5d61539c693fbad62e12`  
		Last Modified: Wed, 14 Mar 2018 22:56:29 GMT  
		Size: 251.9 MB (251873801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741578f11e50550b8c3745fcb7909219c67833ee58f74186730257cc672bf9e4`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0e3a0f72a7be4c3486ea4de910dd1382d4074dbab5d70a701fc35f43315941a`  
		Last Modified: Wed, 14 Mar 2018 23:01:57 GMT  
		Size: 122.2 MB (122214904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a8f94441debc936b6276ed0a0020e7aa5ef338907223f171f71f73916047fc3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.3 MB (435270563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d9ce02c44855bb4be6791b755eccaa51cd668983bc2e9ae7edc014c24e8f5ec`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:13:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbd0df2dae9d9bb4b76963ccc5573cd94d60b1a02a4cb375dc2e90053f60c8d`  
		Last Modified: Thu, 15 Mar 2018 04:52:13 GMT  
		Size: 116.0 MB (116029340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-base-xenial`

```console
$ docker pull ros@sha256:164a763c57d14eac33cbab2c811dc1d8031cf1b8ab93d12f341e7907d7eec4ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-xenial` - linux; amd64

```console
$ docker pull ros@sha256:4705e51f39c8d91a87ccfa347ae7db5c02e5d9ef8ac9ea43239443f2a34a8277
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.2 MB (382246879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38ce0ea8adb69c3792c364bdcb9ab7da01a15c49158dd6c7d522a13dd59af882`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:02:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b258a2815634b1c35a5da26216e0217fbeca65eefbd8f0bd29d29445d92fba76`  
		Last Modified: Sat, 28 Apr 2018 05:33:31 GMT  
		Size: 83.8 MB (83830688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:0632da2e34fa0fd4b1780b9a2d31407247ee2142f9094caa4060384f9ea81116
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.2 MB (334169152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c04e437d47a987816aa9bf1f99bdce200f09761e4d2bd10263d126dde6ddabb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:38:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef99bf399f0dd953f26efaac4547ffa62686e7cb4021c807a0278e93f4a1188`  
		Last Modified: Fri, 13 Apr 2018 12:51:07 GMT  
		Size: 75.0 MB (75016935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:299ac4d12ef2a39253cc616a4133778ff9bdadfb0382a761bf1eedd8981550e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.9 MB (347935625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04c6d023982ed6c90a9ac306011df077256405692ad0a680223467fad32d17ad`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 10:31:12 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c363ee2491c29b3c3972d29864db5191a76b8d9cc0535412019acb618210d20e`  
		Last Modified: Fri, 13 Apr 2018 11:07:16 GMT  
		Size: 76.5 MB (76463280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core`

```console
$ docker pull ros@sha256:d5aa625033535e2be30af7ef24c5226b1150031cb40b77a608a134dd64ba0f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:ba514b27aeda4251a2db4717d64241244b7d03af5f1e905b376c1fba79a579aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298416191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325da53b214a8b73cb5bb49a5dc1126eb2a42aa26c4abdadcae371c4ee0f2e04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:ac714a3e3931512da9b2033ce4c721df903cd73c76b3a01043401aa008550229
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259152217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b84a25b3c0d404447f0651e1d5e6f4dc238be812b84fe996a866f35f0796fe3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a72a22209bf90aaefc7c79d57c9fd44b188b6a8dea74693c6cfcddc6c562f2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271472345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9cc947c23ed064e5ec50954a55273a9a3cc30fe0eb41bc987e63e4c22f812fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-stretch`

```console
$ docker pull ros@sha256:e6e484df2170572e3f12be84b9ad7acbde12ffe1db38f0517bda8e6b3fb54ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:877ab50824a1db41dd660ba42a5828dab1fbb23acddb3c1c09e36c5f2cd4620e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.9 MB (369878557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dccdd0b466f65f0de1a021e1a2c2d23652e7c321e2bd9f368341a65740b64753`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Wed, 14 Mar 2018 21:54:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:54:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 14 Mar 2018 21:54:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 14 Mar 2018 21:54:49 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f518309020ae8617300e7ae7d116505e57de20ab6a5d61539c693fbad62e12`  
		Last Modified: Wed, 14 Mar 2018 22:56:29 GMT  
		Size: 251.9 MB (251873801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:741578f11e50550b8c3745fcb7909219c67833ee58f74186730257cc672bf9e4`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:15f769c84b71d517532c4d218d49565aaf844e55191f91b098c65c2fa9a170b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.2 MB (319241223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6db3fd813b08bd4880ffd395bc08cc67f814b4a6c05646ef70445015f71107a`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:lunar-ros-core-xenial`

```console
$ docker pull ros@sha256:d5aa625033535e2be30af7ef24c5226b1150031cb40b77a608a134dd64ba0f15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:lunar-ros-core-xenial` - linux; amd64

```console
$ docker pull ros@sha256:ba514b27aeda4251a2db4717d64241244b7d03af5f1e905b376c1fba79a579aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.4 MB (298416191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:325da53b214a8b73cb5bb49a5dc1126eb2a42aa26c4abdadcae371c4ee0f2e04`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 00:29:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:29:10 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 28 Apr 2018 00:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Sat, 28 Apr 2018 00:30:23 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 00:30:23 GMT
ENV LC_ALL=C.UTF-8
# Sat, 28 Apr 2018 00:30:39 GMT
RUN rosdep init     && rosdep update
# Sat, 28 Apr 2018 01:42:30 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 01:45:34 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 01:45:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 01:45:35 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 01:45:36 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a541c4d9d1f7e445180393cf16198af675a3551e79073ba1b43a73563971942`  
		Last Modified: Sat, 28 Apr 2018 04:01:44 GMT  
		Size: 5.4 MB (5362303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f54d52e8e263dd82140fc98a624fd354e428b5919518bba02a6552ec088c00a9`  
		Last Modified: Sat, 28 Apr 2018 04:01:41 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15c6b1f100d8f680278d97ed3b2dbfeced8829d1375a6daee70d2875ce49c37`  
		Last Modified: Sat, 28 Apr 2018 04:01:38 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ecfc254e5e4899b87aa39bab7c2b82b075a419770e15c3e8b37438f6230416`  
		Last Modified: Sat, 28 Apr 2018 04:02:00 GMT  
		Size: 55.6 MB (55565364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9871000b426da10d8c74f5351b8a44cc41c9f6fa115985ca5e078b56bd005ea2`  
		Last Modified: Sat, 28 Apr 2018 04:01:40 GMT  
		Size: 833.1 KB (833115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994abacad26ee6e24559fc8ff7124e6c51a17d0d60ab0761fcb010c46be2fd19`  
		Last Modified: Sat, 28 Apr 2018 05:15:46 GMT  
		Size: 193.6 MB (193612569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f60b2aedcd93a1dac29bd2f719525f6dc8f752aaaa99655da2b43c8d208540f2`  
		Last Modified: Sat, 28 Apr 2018 05:14:50 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm variant v7

```console
$ docker pull ros@sha256:ac714a3e3931512da9b2033ce4c721df903cd73c76b3a01043401aa008550229
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.2 MB (259152217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b84a25b3c0d404447f0651e1d5e6f4dc238be812b84fe996a866f35f0796fe3`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 12:00:11 GMT
ADD file:fb3893e6a441ccb24c47b6c4d2cf2fb8fa0798a6e02aa157172ea19fc24f2c8e in / 
# Fri, 13 Apr 2018 12:00:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 12:00:21 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:00:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 12:00:31 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 12:00:32 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:28:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:59 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:29:00 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:29:44 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:29:45 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:30:06 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:36:24 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 12:37:38 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:37:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:37:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:37:40 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:1f2b2864f608c58061772008a65c6f32da66763d2d17d0f1ba2a9dc01fb093ab`  
		Last Modified: Fri, 13 Apr 2018 12:03:04 GMT  
		Size: 38.1 MB (38121678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d2ef4ebd8bc31f5df03710d06668e68b5f4367ba5161f6fd5b58da4158f77b7`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f93eeb0733f5ff1845b120ab687f9303820f6791471af0da0ed3d49475fe8b41`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7c460f46dbbeda54f0c0885949f470a0e9544f26c21037af9f869845af364c`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:135d2a3779525b1c8143d3506765ff9a7358851a62e7be18d20668db00a88f21`  
		Last Modified: Fri, 13 Apr 2018 12:02:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ea4f2061e417ac16d452ede5ff3416e56aed2c4f98b8e108ed458e2875a0bab`  
		Last Modified: Fri, 13 Apr 2018 12:45:43 GMT  
		Size: 4.6 MB (4614902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d83ecf68a5dfbc1f3443b77e2ea53326965070136ab11a06da63fac828c07e69`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5198e65215c76fea29c416452f8e30f470ad34e4398e799328de6e76d763b23a`  
		Last Modified: Fri, 13 Apr 2018 12:45:41 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9b73cf975c1e4891edc596c70fa47699ebebd7344f131d632a9fa4fa505005e`  
		Last Modified: Fri, 13 Apr 2018 12:46:00 GMT  
		Size: 50.7 MB (50671742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfefd963e51280cf931dcebb310a4939d40af800402f725ff20c86e51a61689f`  
		Last Modified: Fri, 13 Apr 2018 12:45:42 GMT  
		Size: 818.1 KB (818119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ef64683db397551816c7d5db447769ae8b3403309749fc290f77c281b0730e2`  
		Last Modified: Fri, 13 Apr 2018 12:50:32 GMT  
		Size: 164.9 MB (164909788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b4a025070ef85d4704996db9dec4d68a1753e003cc660dd904d36d8e84b48c8`  
		Last Modified: Fri, 13 Apr 2018 12:49:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-core-xenial` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:0a72a22209bf90aaefc7c79d57c9fd44b188b6a8dea74693c6cfcddc6c562f2f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.5 MB (271472345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9cc947c23ed064e5ec50954a55273a9a3cc30fe0eb41bc987e63e4c22f812fd`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 09:04:57 GMT
ADD file:81451f665242c8a6b28b2dfe4726bf195a48defeed8a31c73cde9a137c6dbdf6 in / 
# Fri, 13 Apr 2018 09:04:59 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 09:05:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:05:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 09:05:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 09:05:05 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 09:29:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:29:09 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 09:29:11 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu xenial main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 09:31:17 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 09:31:34 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 09:31:35 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 09:32:14 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 10:16:09 GMT
ENV ROS_DISTRO=lunar
# Fri, 13 Apr 2018 10:25:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 10:26:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 10:26:15 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 10:26:16 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:cb6b68344db2c1c976785fde1a3db70b465328cb22e3a2c7b2ad5830b48bca10`  
		Last Modified: Fri, 13 Apr 2018 09:11:04 GMT  
		Size: 39.2 MB (39218620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:525f6d0463851ac4813635bab2d79581b10cb2ed64fcdf97852bfd619c7d2db5`  
		Last Modified: Fri, 13 Apr 2018 09:10:51 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae087ad0db3911c0a2ab5b36dfae0eb1f8a92312cf2173aefc600a3ad59d8a52`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eebcaa2457d2587ab93c88f232d0b3fc458732e08d0b1df73f0f5331a6bac780`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9413926d20a900e8b0abcd52734e1027ad5e9e8ecd17469fbb4b7fd174fb523`  
		Last Modified: Fri, 13 Apr 2018 09:10:50 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:906c291d250a706379bb810d8d57cdd2c3ec43a896dd286065ebffc42eab40a7`  
		Last Modified: Fri, 13 Apr 2018 10:51:01 GMT  
		Size: 4.8 MB (4820106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a048b7b24ce900dee83a56431c1bb2f0d72dc4540764ea9b5ad31072f24c266`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89a64a806a61aa607638f40915ed29b4c4cd976b9d4307468ec949e03795b3d7`  
		Last Modified: Fri, 13 Apr 2018 10:50:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f726a484c7ad4fa711d2b547a39ae90f151196d67dccd83e9edcef641ba15e51`  
		Last Modified: Fri, 13 Apr 2018 10:51:33 GMT  
		Size: 52.4 MB (52441545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4777b4086e69ffbe4d18c226c30a815357dd7789b6ad72768388bbe8ca24c78`  
		Last Modified: Fri, 13 Apr 2018 10:50:55 GMT  
		Size: 818.0 KB (818025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f086c1083bbe306d96c45ddba84a283e1ba6b4a9d1b53ba81ddedcbb071e0510`  
		Last Modified: Fri, 13 Apr 2018 11:01:43 GMT  
		Size: 174.2 MB (174158058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c5e466413796382d6e3e0b0ff46d56013472480aad296427c27f965a521fb6`  
		Last Modified: Fri, 13 Apr 2018 11:00:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-robot`

```console
$ docker pull ros@sha256:6463b0e71751516b11715dbc6f0dd53d07a7d8fc011eb7e1d957182a7ba9e65f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-robot` - linux; amd64

```console
$ docker pull ros@sha256:8eda2605b543e743b7e20eed6634dd6adbe6d64f266cbbca32c05868eba8acfb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **464.6 MB (464612667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39be84d30cf09ac34df74d1fc1574d9f00d3effe216fa51599266446c3f92c50`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 22:41:24 GMT
ADD file:38a199e521f5e9007f2a0f987ede0d49489b3aa82729a1e28af42f9c5981220c in / 
# Tue, 22 Jan 2019 22:41:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:41:26 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:41:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:41:28 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 01:43:25 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 01:43:55 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:17:12 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 03:17:13 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 03:19:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:19:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:19:46 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 03:19:57 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 03:19:57 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 03:29:09 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:29:11 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 03:29:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 03:29:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 03:32:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:34:54 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38e2e6cd5626f31cea1a0a5751a9a7e6564c589a3388dcf84f00d4bb98146844`  
		Last Modified: Tue, 22 Jan 2019 22:49:24 GMT  
		Size: 32.3 MB (32291019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705054bc3f5bd722eb8f026532447fac897c521d8906eb36e79a60d0fb0606fa`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7051e0695642c5bf01467a4a64106cabfa20e57fee91b31ee73f7308bccf5bd`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 517.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7308e914506c09fa6d2242368545f55462e024f785e21b21b3e90403081a9336`  
		Last Modified: Tue, 22 Jan 2019 22:49:15 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee6e86777b0c7c9cb9a105ba15e66a8501da1b019f4a30c8741b02bd3815c27`  
		Last Modified: Wed, 23 Jan 2019 02:00:42 GMT  
		Size: 836.9 KB (836919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4eb744f79970d7036d0deaaccb4c2e9cfece560219d89e2cddabbd6adaee4a`  
		Last Modified: Wed, 23 Jan 2019 02:00:44 GMT  
		Size: 14.9 MB (14912947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf9a16b55a7ffda8ab96e1f4a4f7cf0b168d89d26ebc6a243186d7b4eb2481d`  
		Last Modified: Wed, 23 Jan 2019 04:33:22 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d060e2f4bacb636f5ac571c3281c79f5d9ab6b9bc5f2dc2c9de882c652dc4386`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 5.4 KB (5422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7aae5ea05de9a670835c290cff5d6348b5617eb8b9383207e1273a480820f4`  
		Last Modified: Wed, 23 Jan 2019 04:33:37 GMT  
		Size: 49.4 MB (49410470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2830070444aa76f28c2af27c0efd2a4794f18a9df758c2cd625a786e80492661`  
		Last Modified: Wed, 23 Jan 2019 04:33:21 GMT  
		Size: 601.4 KB (601426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c98a5c129bd1880a7c91165f7bcee580c916fb89d697ccfa5abbd184270a6bc`  
		Last Modified: Wed, 23 Jan 2019 04:34:36 GMT  
		Size: 260.8 MB (260781759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef98ea5ea1995ed68ac54fa293fb873c0b7f61d04e6164c3e2b097477773483c`  
		Last Modified: Wed, 23 Jan 2019 04:33:20 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f736b7eb157e0ad484eddcc1d36e2395a4222a7216668698b42ce79b7808dc`  
		Last Modified: Wed, 23 Jan 2019 04:35:08 GMT  
		Size: 68.2 MB (68176590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10434869d1224a22ef89f951a8f5c13c23acda02db0c61be150b5820630883a`  
		Last Modified: Wed, 23 Jan 2019 04:35:30 GMT  
		Size: 37.6 MB (37592993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm variant v7

```console
$ docker pull ros@sha256:29651d2ce1f2b2ffff1eea257e834c705343d223132086ad4faa78b90796e610
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.7 MB (412693139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77d02421291d2e76d7c863bef582d215bbaae485066881cc1004ce35140e9aa4`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 12:58:13 GMT
ADD file:aafc542341caadede9c89b391367d7d2288cffafb456eb2db5a9677519f568a5 in / 
# Wed, 23 Jan 2019 12:58:20 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:58:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:58:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:58:25 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 13:18:22 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:18:53 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:52:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 23 Jan 2019 13:52:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 23 Jan 2019 13:53:24 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 13:53:26 GMT
ENV LC_ALL=C.UTF-8
# Wed, 23 Jan 2019 13:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 23 Jan 2019 13:53:47 GMT
ENV ROS_DISTRO=melodic
# Wed, 23 Jan 2019 13:57:15 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:57:19 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 23 Jan 2019 13:57:19 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 23 Jan 2019 13:57:20 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:58:46 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:59:43 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c0934160fa559420d31ee908905be8bcd67bd78cfd52d62fe27e4bc116c858c`  
		Last Modified: Wed, 23 Jan 2019 13:01:20 GMT  
		Size: 27.6 MB (27584191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbd3a60cd6e225ed0f95877fdf9c29729bbad5f34170ca4491b6595e3bb99c93`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f5d63a7279ff176b226af3f4a11850e7ec660d854f32bcf3bd1bf6c25fe4ee2`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 497.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66dbf1bc2211383e2af85f3683b64d4cabbcc8fb27096c30bfab3c4a5475dc3`  
		Last Modified: Wed, 23 Jan 2019 13:01:12 GMT  
		Size: 190.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b342d66a6a289162a17d6256714a2797374eaff0bc89d19266078b79f50696f8`  
		Last Modified: Wed, 23 Jan 2019 13:33:36 GMT  
		Size: 836.7 KB (836739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0deb498c379fe67edf43e8aa1c22a476e906ba2796d7c91abe1d8a3736abca12`  
		Last Modified: Wed, 23 Jan 2019 13:33:39 GMT  
		Size: 13.2 MB (13240168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99bb40b3f4bd7a5f6cbf717c0b702f4bc65d81bd7fc0a0dfdd96b7bf90843b26`  
		Last Modified: Wed, 23 Jan 2019 14:15:55 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152113ca87ecc039c5525d7b32aafa9376ad4ff33299bbc8107cfcf632a92b72`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 5.4 KB (5448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe90bb454d4f814a1dbf7b1c2966531c295093a2a484b5b3b253b46e4c847b5`  
		Last Modified: Wed, 23 Jan 2019 14:16:13 GMT  
		Size: 45.0 MB (45021446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e1f3a12b66302cb2ea1060ad3bf188ee4bd6f6d5f75ca71c407255228e84fed`  
		Last Modified: Wed, 23 Jan 2019 14:15:54 GMT  
		Size: 601.5 KB (601504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce228d6d700733dfcfded792b6648b8e8b3cd69df4f71cb60df77d426f033e5b`  
		Last Modified: Wed, 23 Jan 2019 14:17:05 GMT  
		Size: 232.2 MB (232192502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07759fdc9cd0f0054e6c2435c532f5fe7c3b77e46afd215cd125d355b624e249`  
		Last Modified: Wed, 23 Jan 2019 14:15:53 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19768b727d05cc3d8b1d621a2d10c7c5cf066ffa28b346873754e445a4188875`  
		Last Modified: Wed, 23 Jan 2019 14:17:40 GMT  
		Size: 60.0 MB (59983328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89151c534b4f8dc81cc21d939db1e9886a369c3072ccb4bee09e1c63bcba6f43`  
		Last Modified: Wed, 23 Jan 2019 14:18:03 GMT  
		Size: 33.2 MB (33224686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-robot` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:3b905f9e97bdd85dc126318d888a7c6783f34d5fb7d9edcdc1013dfb1b1d7043
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **393.6 MB (393555398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d4790b550fe68b04ff458b87f1f423632669dcc54f5799115d2d6803e06f92e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 10:05:18 GMT
ADD file:3c285ba2ad56ad13d4eec8d69ea1acc907eda8e3a1d03ae6ad9ef3b4f56e0141 in / 
# Wed, 23 Jan 2019 10:05:21 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:05:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:05:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:05:27 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 10:35:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:37:26 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:23:48 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 29 Jan 2019 17:23:53 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 29 Jan 2019 17:25:31 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:25:32 GMT
ENV LANG=C.UTF-8
# Tue, 29 Jan 2019 17:25:33 GMT
ENV LC_ALL=C.UTF-8
# Tue, 29 Jan 2019 17:26:06 GMT
RUN rosdep init     && rosdep update
# Tue, 29 Jan 2019 17:26:07 GMT
ENV ROS_DISTRO=melodic
# Tue, 29 Jan 2019 17:35:59 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:36:02 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 29 Jan 2019 17:36:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 29 Jan 2019 17:36:03 GMT
CMD ["bash"]
# Tue, 29 Jan 2019 17:38:49 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 29 Jan 2019 17:41:55 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:df873e76760c0ecfb038476448eddc15dec6cdd21b75b0416a47df2c8aba3236`  
		Last Modified: Wed, 23 Jan 2019 10:09:46 GMT  
		Size: 29.0 MB (29029766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a951c1487b9433013917e417d205310353d7dfab797a297a0c672f6a963cfa1`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be63a2d103f062f9fc411f29a626a07f76306f9959eee302679732205bbad8f2`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2234c9c6573c2005484152dbd91b419081429a30df062b4da6aa4783895b4f1d`  
		Last Modified: Wed, 23 Jan 2019 10:09:35 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81f49ca57a4913dbfbca505ccc9ec55b5826b8b48241d6cbd388fe34891333c4`  
		Last Modified: Wed, 23 Jan 2019 11:28:12 GMT  
		Size: 836.5 KB (836547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e7e0e98cdb2f136417bd3bbfec803e6ac3e309bccb501ccacba12f96391d2de`  
		Last Modified: Wed, 23 Jan 2019 11:28:37 GMT  
		Size: 13.8 MB (13842592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5949d79230668575ee649f5ad1973193304aa80c4723737d4e59ac866ecd0fab`  
		Last Modified: Tue, 29 Jan 2019 19:12:19 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0228d8cbf89908ddf80f78099d0524902bc4af4ccde099a5d1a5d9be7ce6ee6d`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 5.4 KB (5429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6606051cceb401ae07ffff992827693a776fbfae7161c0a4cdcf4bbbaa56c9`  
		Last Modified: Tue, 29 Jan 2019 19:12:41 GMT  
		Size: 47.6 MB (47610660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:885fd7a76ebe5ca071e8e6ae67e8c8f8798735b83961bbeba1c27aa4ce875ab1`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 605.1 KB (605125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356d16ae7dd440ac62b96fb15871f097747e6ed281c3bf5a6aa79c47ee12a4d1`  
		Last Modified: Tue, 29 Jan 2019 19:13:44 GMT  
		Size: 202.9 MB (202855749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7174ae4011ca374318c3de6b68212be0004aa30d36c438ac09222f2e128d7787`  
		Last Modified: Tue, 29 Jan 2019 19:12:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2e39ae8706cc59f88355c01bd6070a6cdd4440061fc76af5319b57fd3bd8124`  
		Last Modified: Tue, 29 Jan 2019 19:14:39 GMT  
		Size: 63.4 MB (63392002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c880b544bc17365d9d31f9f890085937b42658b9466a3d829e1d1951657fbf`  
		Last Modified: Tue, 29 Jan 2019 19:15:25 GMT  
		Size: 35.4 MB (35374423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

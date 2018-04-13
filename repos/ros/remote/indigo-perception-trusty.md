## `ros:indigo-perception-trusty`

```console
$ docker pull ros@sha256:7154ce54f5b01f7f564c360f7aff4e1c3e2fd2904d45b63475cc9fbf468c5277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception-trusty` - linux; amd64

```console
$ docker pull ros@sha256:b22fc8e9fbb97981dc719732f3c1022ed3aaecf0d5cf70644f5c9f10070f5602
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555288894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fbba4e65a8e98c6cff798609042c85a779e9b4cafa4019e87b93edf4e1083d`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:33:42 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:33:43 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:34:26 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:34:26 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:34:26 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:34:37 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:34:37 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:36:21 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:36:22 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:36:22 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:36:22 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:55:37 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 13:13:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9ee5d0059f698da92a99d3de0cc530bc3469c93d79eee4faa638ee62ebeaa7`  
		Last Modified: Fri, 13 Apr 2018 15:51:01 GMT  
		Size: 16.5 MB (16503124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6a48b9c7d90b4438d6af973ce8218230f9179846236f4133d4600ae4da6a7ef`  
		Last Modified: Fri, 13 Apr 2018 15:50:50 GMT  
		Size: 13.1 KB (13076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd29086ffaefeb5ddfec36c325a40961d5aa867e6bcdf6123cdd537c6e36cd5f`  
		Last Modified: Fri, 13 Apr 2018 15:50:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c5abc6eb48e82c289ee330cd04667213582dcf2bdc75d5507f0113d32ec4477`  
		Last Modified: Fri, 13 Apr 2018 15:51:05 GMT  
		Size: 31.8 MB (31776893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e32c31cc86fa8c119f6bf47d9d59a5b82e6a5fe97e6dbdd75e998cd9dd881984`  
		Last Modified: Fri, 13 Apr 2018 15:50:48 GMT  
		Size: 818.0 KB (818015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ecf167c05de549a9742472ee8e4fce187c3421b1e6996f59f2edf83793fc29a`  
		Last Modified: Fri, 13 Apr 2018 15:51:41 GMT  
		Size: 149.9 MB (149932344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f46eefb759ff89abd6fc4dc4881b4765a205b94d6bba16472022421fd9612ed1`  
		Last Modified: Fri, 13 Apr 2018 15:50:47 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a772b71cd3ed277e4980738c1517c0a56991359c4127d590e7f4f4b3029fcbb1`  
		Last Modified: Fri, 13 Apr 2018 16:04:30 GMT  
		Size: 46.8 MB (46771422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a44f2c9c486da766d9ed8712ca96f593cd56a7ff46a78fb399d2171c9bfcaa`  
		Last Modified: Fri, 13 Apr 2018 16:33:30 GMT  
		Size: 236.3 MB (236334759 bytes)  
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

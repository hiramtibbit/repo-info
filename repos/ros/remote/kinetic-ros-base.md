## `ros:kinetic-ros-base`

```console
$ docker pull ros@sha256:b26e598e898331bb774a5d163a34c5183d0f03ecd334737922605d2a25099002
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
$ docker pull ros@sha256:9745c01d3ea8c795d4cfebab064869a66bfdc6af820e3e52c3beb00d01a35c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.1 MB (336131420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82bda21b82ea27cd65f6bc6c55aca7604b8538eb927db217ba1ee4e8955def48`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 12:29:52 GMT
ADD file:c4b4eb4a1dc7776d33a1fd00d06b4e3af0fc41110484f0b4b83e6d9c11bf8f9f in / 
# Fri, 19 Oct 2018 12:29:54 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 12:29:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 12:29:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 12:29:57 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:04:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:04:43 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:04:44 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:05:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:05:42 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:05:42 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:06:05 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:06:10 GMT
ENV ROS_DISTRO=kinetic
# Fri, 19 Oct 2018 13:08:49 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:08:57 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:08:57 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:08:57 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:10:47 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dbf9133eddb2e9c9699031104085d378764b6e60fcc046ce6293dd1ec5e33244`  
		Last Modified: Fri, 19 Oct 2018 12:32:16 GMT  
		Size: 38.3 MB (38348531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d71ea1c6e754c21f1f61c388431a7fbf3abd63146382ec0b0734ceaa67fcf6b2`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56aeef54f57e991a04e31d3fc21370bfb2b04bdb4340b22d474f4a7f0d97080`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 611.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cc13104654667fd3798eff8b920776a99b4d0a7c428845c642e6b820744eb8d`  
		Last Modified: Fri, 19 Oct 2018 12:32:05 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcc520710ec1c893d34a393e5f60b317ec0248622b230f0d42d5a1cbb3d41b30`  
		Last Modified: Fri, 19 Oct 2018 13:44:38 GMT  
		Size: 15.0 MB (14953085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb794596ceee85cd78396cc73c1c92477da44c4a2e878319e98a82bad21c84f2`  
		Last Modified: Fri, 19 Oct 2018 13:44:32 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4579124a9138b300c565215c2d9c295bfd5c20bbf31fa5fc71a1b64a8ee14b99`  
		Last Modified: Fri, 19 Oct 2018 13:44:31 GMT  
		Size: 5.5 KB (5535 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48b4a690c1180a166f76f36986473bf3bc832bf8e42f9fd314964dd4697b3bf`  
		Last Modified: Fri, 19 Oct 2018 13:44:46 GMT  
		Size: 40.9 MB (40930510 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c03340f312e2f4458087b5c0901d3152c8f4926a8345ae4814387409216c2a67`  
		Last Modified: Fri, 19 Oct 2018 13:44:31 GMT  
		Size: 828.1 KB (828111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08aa02a8bc4adaebcd74f4d92b3cf33ccff0f2e2db95d591076d7d31e12e55ac`  
		Last Modified: Fri, 19 Oct 2018 13:45:20 GMT  
		Size: 164.6 MB (164581773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b48f5a5712b0fbb2157eda505f2252a12207369656ddb2c6f2c1b2b5409ea16`  
		Last Modified: Fri, 19 Oct 2018 13:44:32 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f59b6e337e8779344044423e852c78bc5f94cebf51b13ba75904aab5442e9a3b`  
		Last Modified: Fri, 19 Oct 2018 13:45:58 GMT  
		Size: 76.5 MB (76468968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:kinetic-ros-base` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:95f4d58450de63ff87472ad6c6f89b44a787112cfc01282689ede5d11407d21b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.0 MB (349960038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ae1b93d35394e8a453441a2aefc7959a031c61451988db9fa45fd109eedb913`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 19 Oct 2018 11:22:58 GMT
ADD file:9770ac4ecb41798c5999796e611468c62bf20e585daf48667db9f39757ec5ad9 in / 
# Fri, 19 Oct 2018 11:23:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 11:23:05 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 11:23:07 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 11:23:08 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 13:21:17 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:21:21 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 19 Oct 2018 13:21:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 19 Oct 2018 13:23:45 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:23:47 GMT
ENV LANG=C.UTF-8
# Fri, 19 Oct 2018 13:23:48 GMT
ENV LC_ALL=C.UTF-8
# Fri, 19 Oct 2018 13:24:33 GMT
RUN rosdep init     && rosdep update
# Fri, 19 Oct 2018 13:24:34 GMT
ENV ROS_DISTRO=kinetic
# Fri, 19 Oct 2018 13:32:25 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 13:32:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 19 Oct 2018 13:32:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 19 Oct 2018 13:32:37 GMT
CMD ["bash"]
# Fri, 19 Oct 2018 13:38:08 GMT
RUN apt-get update && apt-get install -y     ros-kinetic-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e4852cc2dcfa698a092467d4b0a8a4f34f9ac6d20b64dbd4a8be0a764f29564d`  
		Last Modified: Fri, 05 Oct 2018 22:11:51 GMT  
		Size: 39.4 MB (39432395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf455d9dd16d488d1c230ceb231351c1abd0733011acf191b6a63339e7b5cfca`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2abc38e50c7444b0314ce04d70d73a1bd3733e860f550ad9edd236fd650769c0`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 538.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cecbdd5ae3d455dc9ef1c1be196ac6ef7c70e3062656dadcec822910202d798`  
		Last Modified: Fri, 19 Oct 2018 11:26:42 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17e1806177afd680da2d33e020a70d58e9f44352eb430f2a3bf0f88c2cdbd4d`  
		Last Modified: Fri, 19 Oct 2018 15:15:07 GMT  
		Size: 15.0 MB (15047404 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:043a8b02b9557609ef15b061dce25d26b6687bd7d83499666549dd9b344a995b`  
		Last Modified: Fri, 19 Oct 2018 15:14:20 GMT  
		Size: 13.1 KB (13083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d6e116f9e3854be3e3a088a7d6bb71a5666da60ff97ee45fbdcf26ef9e3772`  
		Last Modified: Fri, 19 Oct 2018 15:14:17 GMT  
		Size: 5.5 KB (5515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da3d583899bd2b75f5ab3d460a8331eeb0b47b4e5f92f39633c1e36389f0d7ff`  
		Last Modified: Fri, 19 Oct 2018 15:15:50 GMT  
		Size: 42.8 MB (42803517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a0de7905a2aaeddd64e61e916031f7a4a972833b850a6a72f4ad73b635158db`  
		Last Modified: Fri, 19 Oct 2018 15:14:19 GMT  
		Size: 828.1 KB (828137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ed8e4101927abb4f3ccc1abcf1e41f980717a3c25a84c650b12fbdff645798c`  
		Last Modified: Fri, 19 Oct 2018 15:18:00 GMT  
		Size: 173.9 MB (173864963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53533258a8ffe9f0d5e3295b7f682059b19e3de6ada159b74c7703d62b5e12bb`  
		Last Modified: Fri, 19 Oct 2018 15:14:17 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae059c3ddafe250362ab700ea0a4a0de354ca554c1c71ca889722e431360f6e6`  
		Last Modified: Fri, 19 Oct 2018 15:19:14 GMT  
		Size: 78.0 MB (77963270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

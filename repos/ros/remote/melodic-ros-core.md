## `ros:melodic-ros-core`

```console
$ docker pull ros@sha256:d05cb9f86a9f63165ae300c9643871597fd962465d693020be24bf8868479e0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7
	-	linux; arm64 variant v8

### `ros:melodic-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:cb755415255f6977ada8f32cdfbb9bba9bc6925d716da950b99b115c28213800
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.7 MB (311651702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220d358a2874eb7aaad8c85bf4536e2d82eb7dc97ae3701b29278af591cdf5ba`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:28:32 GMT
ADD file:81813d6023adb66b80fe163bc7db464004673838d17195b9d84aade4f8961b71 in / 
# Fri, 27 Apr 2018 23:28:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:28:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:28:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:28:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:28:36 GMT
CMD ["/bin/bash"]
# Tue, 15 May 2018 17:22:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:22:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:22:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 15 May 2018 17:22:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 15 May 2018 17:24:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:24:08 GMT
ENV LANG=C.UTF-8
# Tue, 15 May 2018 17:24:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 15 May 2018 17:24:19 GMT
RUN rosdep init     && rosdep update
# Tue, 15 May 2018 17:24:19 GMT
ENV ROS_DISTRO=melodic
# Thu, 24 May 2018 21:26:28 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 24 May 2018 21:26:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 24 May 2018 21:26:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 24 May 2018 21:26:29 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a48c500ed24e62926cb079df35f964c57d8bb08159b1d29c6a3b0a58dc365dc1`  
		Last Modified: Fri, 27 Apr 2018 22:14:33 GMT  
		Size: 31.0 MB (30957448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1de00ff7e1fea0858b6a4b5ca208eeca970607ea9a6eb5fc972494e7a0cdde`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0330ca45a200e1fcef05ae97f434366d262a1c50b3dc053e7928b58dd37211dd`  
		Last Modified: Fri, 27 Apr 2018 23:32:05 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471db38bcfbf0f5bac78012b9d458dfd37309d5cbb99d4e95310321a60a0cfdf`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4aba487617ca27519745ae722b8ea1917474c495b91b3c4887728a3f2ee7db`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8456edf85c693828820f7381dde166ac747f2cd8e10610d4c51120bc668379f`  
		Last Modified: Tue, 15 May 2018 18:06:38 GMT  
		Size: 831.1 KB (831054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2122c178c47e334cadb90a80317c074c9ab5b4ad3c03bd385e7b1cd3e348aa`  
		Last Modified: Tue, 15 May 2018 18:06:39 GMT  
		Size: 4.9 MB (4859414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d31beaa42936003685a0b05665d5767eeeddc4c318aaadc6fca1bba5debf2b`  
		Last Modified: Tue, 15 May 2018 18:06:37 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb4b733826c103e038eda6e27b5f02bd3d2399d9c5c0a1af66b687989888289`  
		Last Modified: Tue, 15 May 2018 18:06:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0ecb640b5f315f0d1dfa938e893872008c4f9a375a74e3c04c718e57bf3a5`  
		Last Modified: Tue, 15 May 2018 18:06:53 GMT  
		Size: 58.4 MB (58398228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae98d14520da6037aa61bc4046566731135de07187c4ea0f29030924bdcedb9`  
		Last Modified: Tue, 15 May 2018 18:06:35 GMT  
		Size: 848.9 KB (848891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a5010f265d43daa5e2b9fbbbd090b2aa10b524945743a39cfd845a82379bd2f`  
		Last Modified: Thu, 24 May 2018 22:02:00 GMT  
		Size: 215.8 MB (215752594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0876834886b1318e9ec6eea07a901cde589827dacaef6c6179af7bb73bff5ea9`  
		Last Modified: Thu, 24 May 2018 22:01:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:361ba5324994f0d1cbd9b4ef33e30821f0f7ce3ed24b6d6803b0838881c7ec01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.9 MB (273900637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a94496354f4d78bfaa494010448e0f2968b0b1b42341a0a2b4892bd8d3797bb`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 12:03:57 GMT
ADD file:5b2d516c09b4419925efe09e1b5c861cbd3a2d48ed47d6b2c7e571ec6d9ead64 in / 
# Sat, 28 Apr 2018 12:03:58 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 12:03:59 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:04:05 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 12:04:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 12:04:18 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 11:58:18 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:58:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 11:58:37 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 11:59:14 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 11:59:16 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 11:59:16 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 11:59:39 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 11:59:39 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 12:23:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 12:23:45 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 12:23:55 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 12:23:55 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:c68b3181adc7da3b2a5c9be4e228fe5b958ebee478e094e17cf4a61c60a75190`  
		Last Modified: Sat, 28 Apr 2018 12:06:55 GMT  
		Size: 26.5 MB (26487045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91be1119609b1847ebcb9f2621129540bc1fb01ca2c914cc9d03985f48513d24`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605e73e7288ab8c0b45ebed929576b45d7e024077e0f2ae8b1bfabc549e22b0f`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:843bab014c7a7d380f7e5c7b7c205da6050bb6e3411217ebae052fae49a97708`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebf53478b460975ab3dc0b245e93b5121d21e03232fcef2d94cd838e034c3af`  
		Last Modified: Sat, 28 Apr 2018 12:06:48 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad074d342b779241149fc3fd8ca37e75b9985c3c0c75194f0baa6457643bc9`  
		Last Modified: Wed, 16 May 2018 12:07:02 GMT  
		Size: 831.2 KB (831191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2563139b45010cd554b552642217d24a54e56e1348796c0e156c8b1da6cb10`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 4.1 MB (4077205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75a670c1a3040793070164343ff80a5fe224179f0542e8caa26ffdd706fc9a8f`  
		Last Modified: Wed, 16 May 2018 12:07:00 GMT  
		Size: 1.4 KB (1394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46573ec96640100c935e1de546d8e484aba5795ae4a439d06a5fce5ceb7bab17`  
		Last Modified: Wed, 16 May 2018 12:06:58 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c0d825eae387d208e3db5a3d2c211d2da64e3b8d2dd2eec5c4c4d33531d312`  
		Last Modified: Wed, 16 May 2018 12:07:17 GMT  
		Size: 53.3 MB (53260829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43be66fa479508bd5da868d645d6ac16277dab0c314790a1a45868b46042f4fd`  
		Last Modified: Wed, 16 May 2018 12:06:59 GMT  
		Size: 849.5 KB (849453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b73a800962eaa799f32d90e55a98ff0d75b6ec5f28b22a5e7a230c076eb77c`  
		Last Modified: Fri, 25 May 2018 12:31:35 GMT  
		Size: 188.4 MB (188390821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23fff307b7b5e5b8f708310d05f17e3b91e9e87dff16e5e389a8efdf56ecbc62`  
		Last Modified: Fri, 25 May 2018 12:30:34 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:630a918dc8d1498fb1d8a18b64c5b51bd59c5c017489b7e0eca33cbfe77804d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282392758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ffb7368909a5ea45596d443e92e6aaffcf5b2d9e128791b45184767224ffe98`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 01 May 2018 01:10:30 GMT
ADD file:2738a1f35ded405c55bf8578757cc7a8a559fecd00a693b443369262b6dd3127 in / 
# Tue, 01 May 2018 01:10:45 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 01 May 2018 01:10:54 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 01:11:00 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 01 May 2018 01:11:06 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 01 May 2018 01:11:09 GMT
CMD ["/bin/bash"]
# Wed, 16 May 2018 09:17:58 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 09:18:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 09:18:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 16 May 2018 09:18:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 16 May 2018 09:20:21 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 09:20:22 GMT
ENV LANG=C.UTF-8
# Wed, 16 May 2018 09:20:23 GMT
ENV LC_ALL=C.UTF-8
# Wed, 16 May 2018 09:21:02 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:21:02 GMT
ENV ROS_DISTRO=melodic
# Wed, 16 May 2018 09:30:42 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 16 May 2018 09:30:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 16 May 2018 09:30:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 16 May 2018 09:30:50 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:5b73461db237fc125ed4bbd267b3cd588b6d3957c33cf7fc1d7f9aaf6dcd23fd`  
		Last Modified: Fri, 27 Apr 2018 22:48:27 GMT  
		Size: 27.9 MB (27906574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c642ceb6d4dae80623e35056b3672b999504c5a0cb5dfdd4017f3ff74c6613d8`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b6b10168e4f59716c9bf42ae4d202df59f2177923f5e0c6a10228be5c719a2e`  
		Last Modified: Tue, 01 May 2018 01:15:00 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0393063bd61dd94962711e03eb55999a0f821b5939d53509bd5aaf041018dfd`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7da53af2791e4570af9528b9ac2c4487a67026625b4de48184810193f3aa76f`  
		Last Modified: Tue, 01 May 2018 01:14:58 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c156a4d1ad7cd59ce110f77b00214890cbe16b288cc38dfddfe83e9a4cbf4c6`  
		Last Modified: Wed, 16 May 2018 10:26:04 GMT  
		Size: 831.0 KB (830976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be34a6338091a5e6c7b3336a3410157dd78d861793b54433ff7d219681b4cd95`  
		Last Modified: Wed, 16 May 2018 10:26:04 GMT  
		Size: 4.4 MB (4438186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17243111bd7f4cc4a686835d4f7d86a2a8a0f4e9cd0db83d23b3b13069bad744`  
		Last Modified: Wed, 16 May 2018 10:26:02 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e446f86bbda79f1e1d14edd48864be9d560d0705f48166af8f8275833fe37b2e`  
		Last Modified: Wed, 16 May 2018 10:26:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6301719156835f879808d742b36f8b71f5f44741b3081e6516c61a3165608e4`  
		Last Modified: Wed, 16 May 2018 10:26:28 GMT  
		Size: 56.3 MB (56321857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92cb898705c424115a56cd1f955c61c5731211890c95409572b1b64666e60af`  
		Last Modified: Wed, 16 May 2018 10:26:01 GMT  
		Size: 849.4 KB (849389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9637fa0919d2aa92748449dbc9a775d04ac2e07746487ab5a45e19e3a7b7c42`  
		Last Modified: Wed, 16 May 2018 10:27:13 GMT  
		Size: 192.0 MB (192041688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67334ffbb438a81b08514bfb331d4da27de0b575c4f29114e80c8d093d7b6407`  
		Last Modified: Wed, 16 May 2018 10:26:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:indigo-perception`

```console
$ docker pull ros@sha256:e2551b3bacae04790f550c83973023c76585790206c6fe9e29c1438d4b61b24b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:c1df2edb69ea73fe1d50cd4c267ebef4a22e7cc5254b73d2cfd7dca369feda38
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **549.9 MB (549926621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d52041d5ee34db1fe14db00d12cd8c13030d755eb4c8c9883a7c60d607c3bf0c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:07 GMT
ADD file:574946dfc7122f93072b0dceadf9c1e51f8f1ecf3d4c09ea0b6e2b61544c955f in / 
# Fri, 26 Apr 2019 22:22:08 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:09 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:09 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:35:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 26 Apr 2019 23:35:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 26 Apr 2019 23:36:18 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LANG=C.UTF-8
# Fri, 26 Apr 2019 23:36:18 GMT
ENV LC_ALL=C.UTF-8
# Fri, 26 Apr 2019 23:36:33 GMT
RUN rosdep init     && rosdep update
# Fri, 26 Apr 2019 23:36:33 GMT
ENV ROS_DISTRO=indigo
# Fri, 26 Apr 2019 23:38:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:38:09 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Fri, 26 Apr 2019 23:38:09 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 26 Apr 2019 23:38:10 GMT
CMD ["bash"]
# Fri, 26 Apr 2019 23:38:53 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:42:20 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d6fdcbe24ed5fa182ac7e2079daca382068952e5b9e1f78e47a1492feae37379`  
		Last Modified: Thu, 25 Apr 2019 12:20:38 GMT  
		Size: 67.2 MB (67191621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1115217119d4439b38f4fc557ba298d0de6c9e1ecce52b93ad2d25d3523758a1`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 72.6 KB (72646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8180a23d2c44e5284574f3cf04081a3d5825a61174d41f3d4801e8f00464d5b9`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 364.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ceab6b3c2a5e76a26134953a6f8ef95dba277ad43b38cd03c00380660df24b8f`  
		Last Modified: Fri, 26 Apr 2019 22:23:18 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5684cbea2fc5bb4e63d97fe403a6e5c211e1d710338bc57fc4dd18a9c6b2ca65`  
		Last Modified: Sat, 27 Apr 2019 00:08:23 GMT  
		Size: 18.0 MB (18040197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:759badaee6a846623d1317d4d3d4f27c9b91b7ea81f8e6670663a3c1ae919980`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 13.1 KB (13075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a410a7146f8ff38228cd1c7d4d589d4bab38171659883f110e6fd47f0e3356`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 260.4 KB (260350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f223a865d3491327ec6f3e5e946d4984db8d4629a82368fe132a7bd74087b9`  
		Last Modified: Sat, 27 Apr 2019 00:08:27 GMT  
		Size: 31.0 MB (30955449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a1e192ad2717ee30ce7e8361e3cfa57ceb1b28c09fe442749b27d472718b7c8`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 653.8 KB (653844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54140d50e7ee1df0c453ae0875feed645b1e0dc0d287dd52b1a779e555f933c2`  
		Last Modified: Sat, 27 Apr 2019 00:09:00 GMT  
		Size: 149.7 MB (149702877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498957176335c0a77c9b373d8b85a09b149b9d0ed8b7c7d01181b8a60974b81f`  
		Last Modified: Sat, 27 Apr 2019 00:08:17 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d4c30d08187cc7caa9435d24bb5612ae55e3d5dcc6adf8ac15b1f8a4a3c4f42`  
		Last Modified: Sat, 27 Apr 2019 00:09:24 GMT  
		Size: 46.8 MB (46776915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e8e0c644ab40b6dbfb5b94e414041e0b983f345e66e9c3acf54732dfdf5043`  
		Last Modified: Sat, 27 Apr 2019 00:10:36 GMT  
		Size: 236.3 MB (236258924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:3b2d423cd21f0421918a9709e358f3d33ab3bd935e62f3f56cd75713c5b5d4dd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **496.6 MB (496614594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d6885431d9d074301b26bbbc5aec1e7bdd3c57f20324a2698301968cca17964`
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
# Tue, 12 Mar 2019 13:12:09 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:1d1edae6a4d0eda5aad58b2e5b275a0507292ee89dec577a7445748fb5f53abc`  
		Last Modified: Tue, 12 Mar 2019 13:48:24 GMT  
		Size: 212.0 MB (212013038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

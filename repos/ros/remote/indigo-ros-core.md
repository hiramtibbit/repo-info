## `ros:indigo-ros-core`

```console
$ docker pull ros@sha256:2b874e0410f4ffbb70d00b094990874f7319eb3450e581049ddedf8c199a8839
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-ros-core` - linux; amd64

```console
$ docker pull ros@sha256:4e11aaadb77d131d00f4b30ccf3c696f8c7fdb8c1d5c8515cf78a4e63c44d9fc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273049301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b13369987247095f7de223001b62c2081f6991045d0486f74c658b0d9133280`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Thu, 07 Jun 2018 02:39:02 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:44:35 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 00:44:36 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 00:46:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 00:46:04 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 00:46:19 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 00:46:19 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 00:50:12 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 00:50:13 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 00:50:13 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 00:50:13 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6207b616505adb29c1593037d29162a32cfbd8641769effd67f94dd05e520b42`  
		Last Modified: Thu, 07 Jun 2018 03:16:45 GMT  
		Size: 18.0 MB (18033024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a68ad221f0deaffdd88fa96688eac146067db49d555f43e7e4e257e592740506`  
		Last Modified: Tue, 12 Jun 2018 02:15:26 GMT  
		Size: 13.1 KB (13081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c430e5ecac1433ab73bac261e46c56922f9a64a26d697dd26081c67b4925cc`  
		Last Modified: Tue, 12 Jun 2018 02:15:23 GMT  
		Size: 260.3 KB (260333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eab244ac61cc581a7110d4ad2eb529c467e1edd2a501b1abe0301cbdb9f42713`  
		Last Modified: Tue, 12 Jun 2018 02:15:38 GMT  
		Size: 30.9 MB (30944122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:978ec30f169a680d3c2627f50911dc73daf7bb1c57014f3379edaadbdbe0f9a9`  
		Last Modified: Tue, 12 Jun 2018 02:15:24 GMT  
		Size: 868.3 KB (868282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9eb592c76f54703e17a436b048076e337afa3ab413f350f91914cd517eef32ac`  
		Last Modified: Tue, 12 Jun 2018 02:16:30 GMT  
		Size: 149.7 MB (149693501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a8629e8c84b6421751d159ddc20a257736215882070b7177a5fb1594712c2a6`  
		Last Modified: Tue, 12 Jun 2018 02:15:22 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-ros-core` - linux; arm variant v7

```console
$ docker pull ros@sha256:3a3f3636973ff073c992e3d6a1946e2ac8b7da49fff58a7ce929dccec2b4af02
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.5 MB (249545910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60ec8dd5228d1e797458f92c30d9e9b017df01bad3c99adb5990526679f4dc84`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Jun 2018 12:17:53 GMT
ADD file:ac8ca37fe002d36588135c52914d0e873f023304fcb1b47f7cd43cdcd1b5e739 in / 
# Wed, 06 Jun 2018 12:17:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Jun 2018 12:18:08 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 12:18:21 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 06 Jun 2018 12:18:22 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Jun 2018 12:18:33 GMT
CMD ["/bin/bash"]
# Tue, 12 Jun 2018 12:18:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:18:44 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 12:18:45 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 12:20:27 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:20:28 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 12:20:28 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 12:20:51 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 12:20:51 GMT
ENV ROS_DISTRO=indigo
# Tue, 12 Jun 2018 12:26:30 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 12:26:32 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 12:26:32 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 12:26:33 GMT
CMD ["bash"]
```

-	Layers:
	-	`sha256:a30a59c90cf5f1388a00b51a3d23ddc16caa9c69e4ccdfe20c339f555200d7b8`  
		Last Modified: Wed, 06 Jun 2018 12:24:47 GMT  
		Size: 66.6 MB (66616443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9577dd729eef380b01a939d575992a253b32c24d06bd2657d6731b821a05bbbe`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 76.8 KB (76771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ea885f62bfc3a25b62aba8b22616a9f6e24be0e25c61c27be6a14349628742`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 623.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d65a7e4b20d6421645d73bbb6d9955c6303520c419bf96a172bbd655fe1eb4`  
		Last Modified: Wed, 06 Jun 2018 12:24:26 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3376a28fb8bdb3774a3ee95597905c5653e6ed5ac716fc66061eac3c31f9939a`  
		Last Modified: Wed, 06 Jun 2018 12:24:25 GMT  
		Size: 186.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:839b42524b2eb5ebbcda8341f03a5ce8bcdb23b5c94ea16b65f5e76051cef746`  
		Last Modified: Tue, 12 Jun 2018 14:31:35 GMT  
		Size: 16.0 MB (15992299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b708ce6aff4b0d573ce1e6404e2535566a5ed349b2543c7f0f488bce271c2776`  
		Last Modified: Tue, 12 Jun 2018 14:31:31 GMT  
		Size: 13.1 KB (13071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a552df9989c441ba1ad3bbfb374eb4a82e79c61384a1f4bf13512b00f4362ff`  
		Last Modified: Tue, 12 Jun 2018 14:31:31 GMT  
		Size: 260.3 KB (260325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:272a3c3b12211bf24d33f17b627201fc976cbce8468582142936317257545a5c`  
		Last Modified: Tue, 12 Jun 2018 14:31:39 GMT  
		Size: 28.4 MB (28388013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51badcdb87dcd49364c48e0ce55df813a5e63493d6ff7a240ce619b21f406a7b`  
		Last Modified: Tue, 12 Jun 2018 14:31:30 GMT  
		Size: 868.5 KB (868464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28fa9493a4f8240a63d4829f7e9c290761c1c7bb457e1b441dc22b32b26c7b8a`  
		Last Modified: Tue, 12 Jun 2018 14:32:12 GMT  
		Size: 137.3 MB (137328669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23a859517e8e2b5d74b71d6b3b8dd82a00c2a2165372dd62dc0f7cb3bbe641fd`  
		Last Modified: Tue, 12 Jun 2018 14:31:29 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

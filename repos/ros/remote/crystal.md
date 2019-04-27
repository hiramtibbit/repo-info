## `ros:crystal`

```console
$ docker pull ros@sha256:67e0d7529d80681dc0f41b0a28bb437eebae2b5e19799ef6ec5456b6138ae1d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:crystal` - linux; amd64

```console
$ docker pull ros@sha256:3f5f3817f818fdebbff5fe7f892b519363febc5cd9f3d74cd72cee72663543ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.7 MB (282704454 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95354d8a4a6ef3b5196e1c82be278efa754c204a6afaa650141eed60994a540b`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 26 Apr 2019 22:21:02 GMT
ADD file:7ce84f13f11609a50ece7823578159412e2299c812746d1d1f1ed5db0728bd37 in / 
# Fri, 26 Apr 2019 22:21:03 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:21:04 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:21:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:21:05 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:42:47 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:16 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 00:05:18 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 00:05:43 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:05:46 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 00:05:47 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 00:06:00 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 00:06:02 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 00:07:02 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 00:07:40 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 00:07:41 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 00:07:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 00:07:41 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 00:07:54 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f476d66f540886e2bb4d9c8cc8c0f8915bca7d387e536957796ea6c2f8e7dfff`  
		Last Modified: Thu, 25 Apr 2019 00:24:51 GMT  
		Size: 37.2 MB (37206102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8882c27f669ef315fc231f272965cd5ee8507c0f376855d6f9c012aae0224797`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9af21273955749bb8250c7a883fcce21647b54f5a685d237bc6b920a2ebad1a`  
		Last Modified: Fri, 26 Apr 2019 22:22:42 GMT  
		Size: 547.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5029279ec1223b70f2cbb2682ab360e1837a2ea59a8d7ff64b38e9eab5fb8c0`  
		Last Modified: Fri, 26 Apr 2019 22:22:41 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62f529587767531e9fc1cf637575758c9cf031dbd6fe57f9fd9c9dafb16d9e75`  
		Last Modified: Fri, 26 Apr 2019 23:57:04 GMT  
		Size: 836.5 KB (836503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e70dacbf2ba36343df93eed133595cd102c684878e4cbac6861a8582386fb4`  
		Last Modified: Sat, 27 Apr 2019 00:22:21 GMT  
		Size: 151.6 MB (151593713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c9ed7a9fdeffa672d01376e07bc01eea298f6fda4d242f266b6bb12e60b510`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 1.4 KB (1396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df28bbdcf45ed3276662d1ffe28c47a226a0ee715c11eb10f73d76acd0245388`  
		Last Modified: Sat, 27 Apr 2019 00:21:51 GMT  
		Size: 5.4 KB (5423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abc8a27ac8f341fa3d0a489831e8865c54950b0befae8e83ec95e8ddcab6ba`  
		Last Modified: Sat, 27 Apr 2019 00:22:03 GMT  
		Size: 38.2 MB (38226824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f1f82d8b3a152555044d7bbae9420c0dfe727b5e9e1f8a7646d387c276c9577`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 642.2 KB (642172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1303ff45e2731bb28cf5aa4f9dfacb4fc8fcfecd8caa11ff3632582ed97e3c3`  
		Last Modified: Sat, 27 Apr 2019 00:21:50 GMT  
		Size: 95.6 KB (95600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169f2213e618dc8c0e3a365e5516d4beab29de1e384407d571eede3bb6d33ac`  
		Last Modified: Sat, 27 Apr 2019 00:22:57 GMT  
		Size: 50.9 MB (50918275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48c6efa92c5a6b7096fcbfe5ff0d1d4c8346e3d521f6e74a5869272da12338d0`  
		Last Modified: Sat, 27 Apr 2019 00:22:34 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ea87e6b08d422cd599219c7b90dc4f97384dadaf1c27f9b85b5d8b0daadcfc7`  
		Last Modified: Sat, 27 Apr 2019 00:23:08 GMT  
		Size: 3.2 MB (3176691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:crystal` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:7dfc5344c0c7d674649a19eb95991296611ceeb59256c9d85876af997471e996
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.9 MB (211928099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0a3a956ab3593bdc8c8b9da151155cabadbc73054b630abf1a79abd12e181c1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 27 Apr 2019 09:35:52 GMT
ADD file:f046142405da23f452b26e01729a6fdc5a92b0fa85ec8456a1fee249160217bb in / 
# Sat, 27 Apr 2019 09:35:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 27 Apr 2019 09:35:57 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 09:35:59 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 27 Apr 2019 09:36:00 GMT
CMD ["/bin/bash"]
# Sat, 27 Apr 2019 11:56:15 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:45:57 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     python3-pip     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:46:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sat, 27 Apr 2019 12:46:03 GMT
RUN echo "deb http://packages.ros.org/ros2/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros2-latest.list
# Sat, 27 Apr 2019 12:48:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python3-rosdep     python3-rosinstall     python3-vcstools     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:48:07 GMT
ENV LANG=C.UTF-8
# Sat, 27 Apr 2019 12:48:08 GMT
ENV LC_ALL=C.UTF-8
# Sat, 27 Apr 2019 12:48:51 GMT
RUN rosdep init     && rosdep update
# Sat, 27 Apr 2019 12:48:57 GMT
RUN pip3 install -U     argcomplete
# Sat, 27 Apr 2019 12:53:14 GMT
ENV ROS_DISTRO=crystal
# Sat, 27 Apr 2019 12:58:37 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-core=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 27 Apr 2019 12:58:39 GMT
COPY file:57f71198b74c2c1967889acdfddb85d428137580d18be4211971fc7381557b6c in / 
# Sat, 27 Apr 2019 12:58:40 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 27 Apr 2019 12:58:40 GMT
CMD ["bash"]
# Sat, 27 Apr 2019 12:59:25 GMT
RUN apt-get update && apt-get install -y     ros-crystal-ros-base=0.6.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bf7c45c81bd70f13db7f1612a4596418f2c15b48384d2c1d5597b7534e60b3f3`  
		Last Modified: Sat, 27 Apr 2019 09:39:34 GMT  
		Size: 33.3 MB (33343401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5396f07cded369e173bde57fa17c337db371930ea1b2e925d3c04cb407794d5c`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0ceb566582d63624b9d3a22ead5cbf0836b8c5bca41b4b7bb777c9c11923ede`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdb3982847b2f6cb9353dc95b2dbd7092a92764a1946b9901adf59d886849542`  
		Last Modified: Sat, 27 Apr 2019 09:39:13 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98e34995b036f53b3392426068fa765f0ed8274f534b5f7b7a538492948ab96`  
		Last Modified: Sat, 27 Apr 2019 13:33:55 GMT  
		Size: 836.9 KB (836912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a24beb877e7f125b673c3da04ebae33742613e6ba4f4f9a28888ff50a68191c7`  
		Last Modified: Sat, 27 Apr 2019 13:47:21 GMT  
		Size: 97.0 MB (97004583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0cc569ea2a8767f531240f9628854294d21c74f793bb3543d47c0cfb2f9e472`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 1.4 KB (1397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2727a8c257a22843c6a22621fe54a5bc890e0d85cad34a479bafff06498ce39`  
		Last Modified: Sat, 27 Apr 2019 13:46:33 GMT  
		Size: 5.4 KB (5427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6685ba84aafa2375f4ea87f26c8a0f9755659cec71ebd22f2413d34bb6941da2`  
		Last Modified: Sat, 27 Apr 2019 13:46:58 GMT  
		Size: 36.6 MB (36605543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afc2ef025dd51e5f960723988766b265bede025f8a50e95d4d3c16248f551273`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 642.3 KB (642260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b96a42e39ced5725eca49dfcf06ad6925c4609ac5e1a6a933e236d5fb28f25d`  
		Last Modified: Sat, 27 Apr 2019 13:46:31 GMT  
		Size: 95.6 KB (95607 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9859bd536c014a6dfe42dfdee268f50ab3ddd6a72775b2d3bad028bb6471303`  
		Last Modified: Sat, 27 Apr 2019 13:48:09 GMT  
		Size: 40.5 MB (40451663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73d0c8eba197a8a2d3ca67ed0cf6b14f6e5abe17401ba77769c0781817b668f`  
		Last Modified: Sat, 27 Apr 2019 13:47:43 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e87c494a35c9aafe294b976e5fd2f0e58b469293a8ec41aa89ff1d3664e51d3e`  
		Last Modified: Sat, 27 Apr 2019 13:48:21 GMT  
		Size: 2.9 MB (2939567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `ros:melodic-perception-stretch`

```console
$ docker pull ros@sha256:28b27a74e2fee77125dfebdde19d13afcf240dd7f2dba9fa26a561038a962f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-perception-stretch` - linux; amd64

```console
$ docker pull ros@sha256:91811219040f13fa1dac356e220dd1b10ae44843a8e3caefa356a8c0c96256d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **878.5 MB (878526040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e54cba5dd003b34ea13ea8ea2d9dbe27601b433366f1a1554a05901f4539470e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 01:27:50 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:27:53 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 12 Jun 2018 01:27:54 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 12 Jun 2018 01:28:48 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LANG=C.UTF-8
# Tue, 12 Jun 2018 01:28:49 GMT
ENV LC_ALL=C.UTF-8
# Tue, 12 Jun 2018 01:29:05 GMT
RUN rosdep init     && rosdep update
# Tue, 12 Jun 2018 02:04:49 GMT
ENV ROS_DISTRO=melodic
# Tue, 12 Jun 2018 02:07:29 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:07:31 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 12 Jun 2018 02:07:31 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 12 Jun 2018 02:07:31 GMT
CMD ["bash"]
# Tue, 12 Jun 2018 02:09:02 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Jun 2018 02:14:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30e6bd3118369aec5376ad611e074e5ec2d0a57eb5be0f17b6e4b33a3bacbbaa`  
		Last Modified: Tue, 12 Jun 2018 02:34:27 GMT  
		Size: 21.1 MB (21066933 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39f4bbb44cbd5ea61b81bdd08d23839931a23e65e6ef12447a89291b7f41cd7b`  
		Last Modified: Tue, 12 Jun 2018 02:34:16 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a25da568afffffd3bbfb46057285f245a9ce8dd1fcee27bd58a6263fa12564c`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 5.0 KB (4972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887dc839562228b9898a946c9aec458a3d84d98d7e972aaa2b468796c23f0409`  
		Last Modified: Tue, 12 Jun 2018 02:34:36 GMT  
		Size: 53.5 MB (53530633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:513505d9d0902b0fd12220b4cab7438dd10bb89326021991354381b8b9404c9d`  
		Last Modified: Tue, 12 Jun 2018 02:34:14 GMT  
		Size: 868.3 KB (868286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1271095ee7cfbc9fc32645c3db40276bda7efe3c748809b3d1d30a22b79113ef`  
		Last Modified: Tue, 12 Jun 2018 02:49:10 GMT  
		Size: 268.5 MB (268520641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8817725b0e5de89434918cfd28c95afdaef0875451d26ee0b4576644da710f`  
		Last Modified: Tue, 12 Jun 2018 02:47:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b97eb3b4e038142dd4b8016a9da81787add037cd3c568094ccc10c06472709`  
		Last Modified: Tue, 12 Jun 2018 02:50:04 GMT  
		Size: 108.5 MB (108463412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a8e6ac13aa6f645f924065c6c9ee56b9383f7f1bb1b36f7ce1cf43132e96a9c`  
		Last Modified: Tue, 12 Jun 2018 02:53:25 GMT  
		Size: 380.8 MB (380751433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-perception-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:5203f962c84f663f1de3734d022a207466a0d7e157c170e12ed676612f525bd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **794.4 MB (794366700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad2c483b56cc3cc1833b3556fce9a09ffec97cc29262837e359f0b824edcf5a8`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:31:58 GMT
ADD file:245a8cfe59ea071e4e215a722e0d4b4b14fa95dd6ffd03739fe048433cfaf523 in / 
# Mon, 30 Apr 2018 23:32:00 GMT
CMD ["bash"]
# Tue, 01 May 2018 03:30:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:30:39 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 01 May 2018 03:30:42 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 01 May 2018 03:35:20 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 03:35:21 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 03:35:22 GMT
ENV LC_ALL=C.UTF-8
# Tue, 01 May 2018 03:36:07 GMT
RUN rosdep init     && rosdep update
# Wed, 16 May 2018 09:54:49 GMT
ENV ROS_DISTRO=melodic
# Fri, 25 May 2018 15:27:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:27:40 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 25 May 2018 15:27:41 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 25 May 2018 15:27:41 GMT
CMD ["bash"]
# Fri, 25 May 2018 15:30:40 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 25 May 2018 15:47:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-perception=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:142bf25d8d1b3ebc9dfbedd586e70a011594690acf48b2695bfce01e3a2cf0d5`  
		Last Modified: Mon, 30 Apr 2018 23:52:13 GMT  
		Size: 43.1 MB (43109349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994bacc3e1c11e50065156c511f0c11e001707e55b61e361b8dc44d236c76f24`  
		Last Modified: Tue, 01 May 2018 04:41:15 GMT  
		Size: 6.4 MB (6427112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663899231a010cf1e857473d7203c7e5f109b38379d2d822c31dba98a7f8af10`  
		Last Modified: Tue, 01 May 2018 04:41:09 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d68d9781734de3f7c1ce451752978a14ba285ad3c63d5ab58034a2008cd25ef`  
		Last Modified: Tue, 01 May 2018 04:41:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:678cb4b8d2f95bf400236eedd95783c53081503a2ed2b39f51e57a6062cd18c7`  
		Last Modified: Tue, 01 May 2018 04:42:23 GMT  
		Size: 61.9 MB (61938600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0225d679802c170200a58607e1e5a805065659ce28bdec6f9cc91f1c5f6ac461`  
		Last Modified: Tue, 01 May 2018 04:41:08 GMT  
		Size: 835.1 KB (835084 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43ff3cd1cf2d3e46a7f8fe4a2e5e91ff0815a51d5c87cfd81a1b8932dea453b8`  
		Last Modified: Fri, 25 May 2018 15:55:33 GMT  
		Size: 223.5 MB (223512365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5879828040241eb3667bd05cbfcc6b14911bf87255edd35c912781995caeb5`  
		Last Modified: Fri, 25 May 2018 15:54:14 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c54d9a16ffc723b2aa54654d720d702140f7b6d858968eec2cd9e827e41f469`  
		Last Modified: Fri, 25 May 2018 15:56:23 GMT  
		Size: 102.9 MB (102929185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3589d7972c8745f949054779f9bc54d5142f34b56f7a7be1f0656fab81d71e37`  
		Last Modified: Fri, 25 May 2018 15:59:51 GMT  
		Size: 355.6 MB (355613209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

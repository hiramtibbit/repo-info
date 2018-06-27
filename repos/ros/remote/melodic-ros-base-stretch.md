## `ros:melodic-ros-base-stretch`

```console
$ docker pull ros@sha256:8ccd324c2f4d803bdd3b17170dc05b3de3d4ffd3fd4c694ceae2629139b52474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:6bd09ae2f6f312e1b7665c13161c129e6426057deeb5c055ef0541fdea90bb4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **497.7 MB (497684427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ee39d8f957f9b9e406e666b88e1ad004cadb9f2216d9d63a0f9e5165d72ecb7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:24:58 GMT
ADD file:f21d7c14104d5d9fa99f271177e765a3472f5a69398bb78f34f7401e9b2df837 in / 
# Tue, 26 Jun 2018 21:24:58 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:25:13 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:25:17 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Jun 2018 01:25:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Jun 2018 01:26:06 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:26:06 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 01:26:07 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Jun 2018 01:26:22 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Jun 2018 01:35:36 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Jun 2018 01:37:10 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 01:37:11 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 01:37:11 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 01:37:12 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 01:38:08 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:0bd44ff9c2cf1129ef8cea689b3e10e6498f64d2f8d5532caae55841b474bf3a`  
		Last Modified: Tue, 26 Jun 2018 21:36:36 GMT  
		Size: 45.3 MB (45319224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e82c15d2707a7929a22d142191cf2f6d4f93c70f56cddfad9e24ee21ea3b318`  
		Last Modified: Wed, 27 Jun 2018 01:42:56 GMT  
		Size: 21.1 MB (21066771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74379de5c7f50fec8dacac4219f1073b9e6a918e511bfccb00d8b00c81ca515f`  
		Last Modified: Wed, 27 Jun 2018 01:42:49 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6321064321c62b9d3ba1c7081bfbc4ca8e109aa774927a4673310f23c7a501e`  
		Last Modified: Wed, 27 Jun 2018 01:42:46 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e076f364c4a30aa0bd146ee5f62c82da313e0e3377fb663969cf4a9254868e1`  
		Last Modified: Wed, 27 Jun 2018 01:42:59 GMT  
		Size: 53.5 MB (53530409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56c96cbe95671e1eda5ea8811ef26d6f13ec6a5d90c29ff4d6cdb7666f7f593`  
		Last Modified: Wed, 27 Jun 2018 01:42:47 GMT  
		Size: 791.3 KB (791291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6640f4973d1c0f068eca0404250c0a787f9c70c86c07162fa4faa4cb28fbe874`  
		Last Modified: Wed, 27 Jun 2018 01:49:15 GMT  
		Size: 268.5 MB (268508752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a82088ee4bb690a14f8fa34f19483a18d543d5efe0b0a28faacea8b0f0c82cd4`  
		Last Modified: Wed, 27 Jun 2018 01:48:02 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab788ed1d408dadd0417148c8bf55591932fed8c5cd863e3c1d941a748463b48`  
		Last Modified: Wed, 27 Jun 2018 01:50:05 GMT  
		Size: 108.5 MB (108461438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c4f54ceb8a934663c59b25442c864be3ed996630d2837babcd944054cf4632cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.7 MB (440726209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d001660afdc273c66696bdbbd895315aaa120778f0c065d4db7a9b1013880ef0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 16:47:40 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:47:50 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Jun 2018 16:47:57 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Jun 2018 16:52:03 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 16:52:04 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 16:52:05 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Jun 2018 16:52:51 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Jun 2018 17:28:11 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Jun 2018 17:39:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 17:39:39 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 27 Jun 2018 17:39:43 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Jun 2018 17:39:44 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 17:44:13 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9021385a58df3162f2007ef8af908051a20c3fa53fec10f43a788db7f1e95be0`  
		Last Modified: Wed, 27 Jun 2018 18:06:11 GMT  
		Size: 19.7 MB (19731685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5769ea981ce493dc799d6608c89759038f65b3cbc395223a0e014abf93f3d04b`  
		Last Modified: Wed, 27 Jun 2018 18:05:38 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659f7514745c7ac182096b3895f8b6c740088ca6dd2c439eddfdd4c1f3882e93`  
		Last Modified: Wed, 27 Jun 2018 18:05:35 GMT  
		Size: 5.0 KB (4973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ca431ff9b9fa3a1ad491d449302d25428908498e00329fb3906e0c8d60e67ad`  
		Last Modified: Wed, 27 Jun 2018 18:07:00 GMT  
		Size: 51.5 MB (51500966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f4645f46ca09160f0b6635c1979be7e17f62b6b97adef31f61f45a46f95566c`  
		Last Modified: Wed, 27 Jun 2018 18:05:36 GMT  
		Size: 782.1 KB (782096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e453fcf1921ccb1cd57257e14292fb092f63c2c4f4f37a86b0af078a0e26e488`  
		Last Modified: Wed, 27 Jun 2018 18:15:43 GMT  
		Size: 222.7 MB (222656410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf53ff93caa782daaab7dd8a12194ab18d207e9d4fff48065e80031faa17edcf`  
		Last Modified: Wed, 27 Jun 2018 18:14:08 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c2b6dd4909101ff285a670adb85e39de541dc56e05bf3ddb434468e94639aeb`  
		Last Modified: Wed, 27 Jun 2018 18:16:35 GMT  
		Size: 102.9 MB (102932717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

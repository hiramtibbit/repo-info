## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:d44cdee163fc51aa95ac4929b16e98371b5693afd2ba41400e64a4f7b8c2044a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:5e7679fbba23d48604be8c16749666e104b873eb423131c4b654720be6ffd98a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554483790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:104a2e1e6da2defb5b2933312b1bf83fef6b130321b48432b952a11dfa8df80c`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:26:37 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:26:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Oct 2018 04:26:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Oct 2018 04:27:15 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 04:27:16 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Oct 2018 04:27:32 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Oct 2018 04:27:32 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Oct 2018 04:28:47 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:28:48 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 04:28:48 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 04:28:49 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 04:29:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 04:30:52 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92621335313bdf29cf5d4406ff53c827bde17e6936b190b93487a1944925805`  
		Last Modified: Tue, 16 Oct 2018 04:40:47 GMT  
		Size: 21.1 MB (21073344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30add05bdc21dc6892959670bda987c92184067f30e99fc9b3e7d5f3c78ba33d`  
		Last Modified: Tue, 16 Oct 2018 04:40:40 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84b835ded999bbd4710a8b78b722c5eb36806004e976f7fbe01455967e3b176a`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c212122530d83f220c9e4e19a88eb803d2bfc723530364bcc0a272a2f3721175`  
		Last Modified: Tue, 16 Oct 2018 04:40:56 GMT  
		Size: 53.5 MB (53504624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:660f51cf7f33d9235a49e4ca68e2345e88ebb06d90b82c22da722173b2d96489`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 827.6 KB (827575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa8a1c8be596fe006445a557edb8133d8cb3c4f21e6084eac789541a60b1fb5`  
		Last Modified: Tue, 16 Oct 2018 04:41:51 GMT  
		Size: 251.1 MB (251089418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e81de363d219aa809174a9b10bf14e7cc8fd7d8904698d956330e703b6730b7`  
		Last Modified: Tue, 16 Oct 2018 04:40:39 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:601c3a232b4a1dd17c876dedd248637f8efdf03df96d127105c5f7ac355879d2`  
		Last Modified: Tue, 16 Oct 2018 04:42:36 GMT  
		Size: 122.2 MB (122230341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fbbc8474b1bd8b9183aedeaeaff2ab3bfcbdba2f6734cbe9c2e7523082178e5`  
		Last Modified: Tue, 16 Oct 2018 04:43:08 GMT  
		Size: 60.4 MB (60442013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:ebe38d16257cfb13d9de8f44397f5781fdeba447c7e5da48cda9dbbcc684bc0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494693048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b507870b00bcabe7692ccc735cec3736efb749fc94289f6334ad4f8108a4329f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:12:34 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:12:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 05 Sep 2018 19:12:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 05 Sep 2018 19:14:07 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:14:19 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 19:14:20 GMT
ENV LC_ALL=C.UTF-8
# Wed, 05 Sep 2018 19:15:07 GMT
RUN rosdep init     && rosdep update
# Wed, 05 Sep 2018 19:15:07 GMT
ENV ROS_DISTRO=lunar
# Wed, 05 Sep 2018 19:24:32 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:24:46 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Wed, 05 Sep 2018 19:24:47 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 05 Sep 2018 19:24:48 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 19:28:49 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 19:32:50 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b2b999e6626b77886e3c38e8a785a7e1a7e36e0039445255654d5bc5ad24d76`  
		Last Modified: Wed, 05 Sep 2018 20:30:40 GMT  
		Size: 19.7 MB (19730993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac738c1923ba135a921c240522fdce8b7030d13698f3f0904005bbea14ee354`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f424c24b55fa5004b2452d07e0a983ea358de7216774776775ad9a9c919767d7`  
		Last Modified: Wed, 05 Sep 2018 20:29:09 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5ce9c4049ae683de69beffcf613062f883f5de22797cf56c118afff6a7e4e5a`  
		Last Modified: Wed, 05 Sep 2018 20:31:42 GMT  
		Size: 51.5 MB (51465804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5e1ffb408b178aa6dcc279a4dd049a621c4035340001992130302a183cece83`  
		Last Modified: Wed, 05 Sep 2018 20:29:12 GMT  
		Size: 811.0 KB (810967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4da38415276ff7fd267f1623bb9559ed90d906ba58a54deb60977b117ed7e81f`  
		Last Modified: Wed, 05 Sep 2018 20:33:51 GMT  
		Size: 206.0 MB (206009753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bac2fdbb948a8f7acb0f5a8cde5d1fe6f1ef9ab504432386d0c01ed7149c647`  
		Last Modified: Wed, 05 Sep 2018 20:29:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eba51884f4662bbc8c84b501f5d2e3c77ded491da5288a22fd548708f49184e`  
		Last Modified: Wed, 05 Sep 2018 20:35:45 GMT  
		Size: 116.0 MB (116024392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef93434768e34125e70d95dd8b0e879b8112a932098fe7c0d9673941a872795`  
		Last Modified: Wed, 05 Sep 2018 20:36:38 GMT  
		Size: 57.5 MB (57520974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

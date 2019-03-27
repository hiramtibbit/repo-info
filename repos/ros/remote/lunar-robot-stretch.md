## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:b722c18919d92a031657bc850c17d5b47173aaf0ffa39e808f7602f88df75709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:eb7d0d6639b37028f6c1b78295ce049a326afa14a9d085373b5ee019a0766295
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555273173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb20e80fdec0483912124f7c9b7eaa36e1527781e008b6bb680d430bcfeec943`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:12 GMT
ADD file:843b8a2a9df1a07305ff3d02484d4be7f769057c6d2e311d52d59e00deb917c6 in / 
# Tue, 26 Mar 2019 22:41:12 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:43 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:25:24 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 03:25:25 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 03:26:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 03:26:08 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 03:26:23 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 03:26:23 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 03:28:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:28:06 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:28:06 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:28:06 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 03:29:21 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:30:20 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e79bb959ec00faf01da52437df4fad4537ec669f60455a38ad583ec2b8f00498`  
		Last Modified: Tue, 26 Mar 2019 22:44:26 GMT  
		Size: 45.3 MB (45342599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cc7577829ec656f5fa65d58d5c0d75518769ad093463eb8dd397639f252c5c0`  
		Last Modified: Wed, 27 Mar 2019 03:42:06 GMT  
		Size: 21.1 MB (21090893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96d69ae8539511ff9224e3c177bdc82de0d70d6cc5317edff54317ac91d57e3d`  
		Last Modified: Wed, 27 Mar 2019 03:42:00 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7c7cdcad485568d6d98d8ca9044cde9a08bdd6381bf3d2922ee7d7feb668c72`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 5.0 KB (4969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a442945ec43cc10ec17008f56027b485b574afe498eb74a9e0c3288c4ba94c20`  
		Last Modified: Wed, 27 Mar 2019 03:42:14 GMT  
		Size: 53.5 MB (53541032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09774012244bb90654d45ff1cfea27c88c5e6c843594ac1ce79e4942865bf8da`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 628.9 KB (628907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21069d82b66eba638810c3deb3bcefe4fdd6b474b2cd06ca586385f0bf14c3ae`  
		Last Modified: Wed, 27 Mar 2019 03:42:52 GMT  
		Size: 251.2 MB (251159100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1907bbc5daab0e8b5d6644f0f9ae8920b4c8a2d83a4a6de68e3d26314a159ee2`  
		Last Modified: Wed, 27 Mar 2019 03:41:59 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8d1eb839d2da7b4c07949c86d20b8e50fa8446f0e8bd0fe7057868bfcd871ae`  
		Last Modified: Wed, 27 Mar 2019 03:43:21 GMT  
		Size: 123.1 MB (123069283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea6f1846d7cdde3633b62d85d5efd4b8a683c78c8cf065fe0084eed77527305`  
		Last Modified: Wed, 27 Mar 2019 03:43:39 GMT  
		Size: 60.4 MB (60434819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f957dd592516d691aac6a2b9fc71ee4d15a816f09514aa7f0b522f42b2042b9f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.4 MB (495446541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3dda8383fb14cdc4b59c752616437909d4eb4516f194d27d2f4327584696936`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:52:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 05 Mar 2019 12:19:49 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 05 Mar 2019 12:22:52 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:22:53 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:22:54 GMT
ENV LC_ALL=C.UTF-8
# Tue, 05 Mar 2019 12:23:34 GMT
RUN rosdep init     && rosdep update
# Tue, 05 Mar 2019 12:23:35 GMT
ENV ROS_DISTRO=lunar
# Tue, 05 Mar 2019 12:33:35 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:33:38 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 12:33:39 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 12:33:39 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 12:37:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:40:19 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd3b24a081012912a19ac28f020434d256dd51c4f37f1148b93161598148662`  
		Last Modified: Tue, 05 Mar 2019 12:14:47 GMT  
		Size: 19.7 MB (19744946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee904c4b55a70d16b46a3fbb40d759ac47a47264a7365de0ab68cdd6ff7a78db`  
		Last Modified: Tue, 05 Mar 2019 13:32:32 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:110e13d5a185f62111202e9fe788e12946ad4518d5d613117c313f405586c96f`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 5.0 KB (4978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee368c86ec0d779884d85f5539d40670ab29736e14d18949e1964d75e05f60d6`  
		Last Modified: Tue, 05 Mar 2019 13:33:00 GMT  
		Size: 51.5 MB (51492981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f87fc084e11d3f77030f85c8c4af811fd636264a9691f31ea65aff513e4f859`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 617.9 KB (617857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f18b69ff3a950a7fb8de932ebf095e17e9d4ff4331203fa98cd8be5782172998`  
		Last Modified: Tue, 05 Mar 2019 13:34:12 GMT  
		Size: 206.1 MB (206062987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6812ba85f46891b4812197312f4246bdb58160ddd6e393a868624a3a27a275b9`  
		Last Modified: Tue, 05 Mar 2019 13:32:29 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d82a5b900db33817ea15a14cec16c5309eb71c8fec420f0c9e976604e8abd23c`  
		Last Modified: Tue, 05 Mar 2019 13:35:12 GMT  
		Size: 116.9 MB (116873859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d468960e7411dbb16d2763ad98d1eaae7d0bb67ab341a7bd2735f7cc91be7c`  
		Last Modified: Tue, 05 Mar 2019 13:35:46 GMT  
		Size: 57.5 MB (57515507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

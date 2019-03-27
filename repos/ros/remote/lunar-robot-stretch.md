## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:af99efd54704be7c8ff9f685ba03bf678d9de3ea002f0718d8debd8760e6f0d7
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
$ docker pull ros@sha256:9418f85b99eb696a67ded79c8731a90fdd90619a836eb0ff98b051dce5dae3bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **495.5 MB (495459131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25998a6dc063e3c8165df005e110a857935358d02cb731eeb9ec2332f5399fa1`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:47:20 GMT
ADD file:8f991b13b28ce1de362b9f00e69aac8edc28124a08adeeb3b7fb02153e0b4e92 in / 
# Wed, 27 Mar 2019 08:47:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:35:42 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:30:57 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 27 Mar 2019 15:31:01 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 27 Mar 2019 15:34:29 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:34:31 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 15:34:32 GMT
ENV LC_ALL=C.UTF-8
# Wed, 27 Mar 2019 15:35:27 GMT
RUN rosdep init     && rosdep update
# Wed, 27 Mar 2019 15:35:28 GMT
ENV ROS_DISTRO=lunar
# Wed, 27 Mar 2019 15:46:40 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:46:45 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 15:46:46 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 15:46:46 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 15:54:54 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 15:59:45 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5385e634d2a1a330aea59f510b0676b269167a579dddb586b27917d80d0dfd01`  
		Last Modified: Wed, 27 Mar 2019 08:52:30 GMT  
		Size: 43.1 MB (43132000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d338dbd78ea3a9e8f68cefe88489efca81668d61c3fab2dbde834ef5aed274d`  
		Last Modified: Wed, 27 Mar 2019 17:07:59 GMT  
		Size: 19.7 MB (19745047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5beb4ff9aa67af9bbc91dd85bc722aac01a15b3a16feb8ba8d31b9a6a7139d8b`  
		Last Modified: Wed, 27 Mar 2019 17:07:40 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7aa0272c2ab5991755fd4536238fce51210c60be48217c7284821c98d7c398`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 5.0 KB (4980 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10f89edf17fb85923794e64c55739228a59087832785d0067a277ee9477e61d2`  
		Last Modified: Wed, 27 Mar 2019 17:08:22 GMT  
		Size: 51.5 MB (51493680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd402b06f6ad66ae39e7cb8a08ea0bb88e892d2d4269bbf88405779ca3902e9f`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 628.9 KB (628922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:915b896faa5809fdc18de9fbc1c6d1b7be10fae94dff3842c5cdf7973bdf2ee1`  
		Last Modified: Wed, 27 Mar 2019 17:10:06 GMT  
		Size: 206.1 MB (206063723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6cee3655e8a0459ba1da1f076483ad333cb5d9b549b62062b44bcad9831da4`  
		Last Modified: Wed, 27 Mar 2019 17:07:38 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d310062bb4f72e12496d54325efcaa4c418e98948a7588dfcebd756fca96603`  
		Last Modified: Wed, 27 Mar 2019 17:11:06 GMT  
		Size: 116.9 MB (116873978 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42d8be278a5ab5423cf59a3535807ba1ab0def087656eab4ba58e1e1223dfcfe`  
		Last Modified: Wed, 27 Mar 2019 17:11:35 GMT  
		Size: 57.5 MB (57515230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

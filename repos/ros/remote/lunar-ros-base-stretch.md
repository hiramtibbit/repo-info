## `ros:lunar-ros-base-stretch`

```console
$ docker pull ros@sha256:01552a0e3c3ba6a0685601f56b0a9ee38597b69d05fce969fc99c544cb184043
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-ros-base-stretch` - linux; amd64

```console
$ docker pull ros@sha256:9bfbf85f1b23bee2d37774e0c266e940a1920b17e7feceab59b07f83fa916964
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.9 MB (494885296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87c8f54c72c84124824ddab9f260a47ae02a0adf98cc918d2327bef2f38f88e7`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 08 May 2019 00:33:09 GMT
ADD file:caf91edab64f988bc24766c58ee66c00311c7c921296b8e5b51d7023422a1485 in / 
# Wed, 08 May 2019 00:33:10 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:11:45 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:01 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 08 May 2019 01:48:02 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 08 May 2019 01:48:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:48:36 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 01:48:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 08 May 2019 01:48:48 GMT
RUN rosdep init     && rosdep update
# Wed, 08 May 2019 01:48:48 GMT
ENV ROS_DISTRO=lunar
# Wed, 08 May 2019 01:50:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:50:01 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 08 May 2019 01:50:01 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 08 May 2019 01:50:01 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:51:03 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5e155d5a1d130a7f8a3e24cee0d9e1349bff13f90ec6a941478e558fde53c14`  
		Last Modified: Wed, 08 May 2019 00:37:42 GMT  
		Size: 45.3 MB (45339314 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f9cf699210422079153157eff4d098d7573fa49263b6d8e5b5ff53f3690146`  
		Last Modified: Wed, 08 May 2019 01:16:05 GMT  
		Size: 21.1 MB (21090863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bea7b6a7e144228d241eba7ed6108bf5f01c9683c9ececa901d356bafe18ce`  
		Last Modified: Wed, 08 May 2019 02:01:40 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27d855df06f71f1a31eabe4d8068bb63250d3359cc8efea15c0b672096a226e`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 5.0 KB (4970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17173731882ab6af3c3fb1b9b22c6dd580d6a76fbcd34865e39776f3a1ed4e71`  
		Last Modified: Wed, 08 May 2019 02:01:53 GMT  
		Size: 53.5 MB (53547735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0c36841004b7f30103b35c363ef4c6fc0671a9b14bc86ee206f59c0ccd382c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 656.4 KB (656376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23224fd5f367eb7a6ab20012ce5e1c310342eff32d58ecebb675da2dc50d0dbf`  
		Last Modified: Wed, 08 May 2019 02:02:34 GMT  
		Size: 251.2 MB (251177782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec8dc77adad38d8c71e1da0cc9b71adf9f9380c43e234f192957b3de049717c`  
		Last Modified: Wed, 08 May 2019 02:01:39 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d7ede2d718953de4bf4166dcafb3597ae7a264db610a690fd3c4cb0e150d42`  
		Last Modified: Wed, 08 May 2019 02:03:15 GMT  
		Size: 123.1 MB (123066684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-ros-base-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:66650e892fa4e6a9e226e9135505d96f13aa59942ba9588cd75c59b130c411ee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.9 MB (437943901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08b55bfa779554dc9caa1acf79f74f289a2082a87db8b27a5e662043842ec027`
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

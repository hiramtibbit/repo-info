## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:c8b0b83a05f70d831602073fcc7e492f9dbd03b20bfb9550ca1930bde538e32d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e41060366f07fbeddc9f94f4f8aef5a50d32ff348e77197e655123e37e107498
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555319921 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03b095ab87f3be2754681b6655ce9cbaaa61af8d518ccde08d13f5f07a4dbb68`
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
# Wed, 08 May 2019 01:51:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:58735cadca31ee0331b782ce53f9c1147f2d97636407ad9c83c46285c39d2b2f`  
		Last Modified: Wed, 08 May 2019 02:03:37 GMT  
		Size: 60.4 MB (60434625 bytes)  
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

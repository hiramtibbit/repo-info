## `ros:melodic-ros-core-stretch`

```console
$ docker pull ros@sha256:489d990b173e0a64cc255993698804d8d24fac337bb0749b51ed19f47947ab7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:melodic-ros-core-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e7f374a8fcdcc27c5d3062c8c3f1025516953ac59c25657e8b7fd9b30d6a2de3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **390.0 MB (390030194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb854859bc710f0267260e072469f669476338c32c35c7d4cf60df418c3fb91`
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
# Wed, 27 Mar 2019 03:36:22 GMT
ENV ROS_DISTRO=melodic
# Wed, 27 Mar 2019 03:37:33 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 03:37:34 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Wed, 27 Mar 2019 03:37:34 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Wed, 27 Mar 2019 03:37:34 GMT
CMD ["bash"]
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
	-	`sha256:1c6cfe64221d0b53c78e9acc1f20d7f4fd9cfc86dee8168b5013663fa5fba7cb`  
		Last Modified: Wed, 27 Mar 2019 03:46:12 GMT  
		Size: 269.4 MB (269420223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c63fd5b8c87481c5eca408f4ad5207cb2bb7af7484368602912faa00662bc6d`  
		Last Modified: Wed, 27 Mar 2019 03:45:18 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:melodic-ros-core-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:913b50487aa43be66d3b67d5bf073e6acd9e85acff0f21956db75929ee995c3f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.6 MB (338613657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df5a47864e30ad0cf0a8dca719fcb50f965af744c4a9da75c5f7d5651c094c48`
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
# Tue, 05 Mar 2019 12:59:09 GMT
ENV ROS_DISTRO=melodic
# Tue, 05 Mar 2019 13:08:34 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.1-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:08:42 GMT
COPY file:cbbaa0f5d6a276512315f5b4d7347e94a120cefbda9058ebb0d678847ff4837f in / 
# Tue, 05 Mar 2019 13:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 05 Mar 2019 13:08:53 GMT
CMD ["bash"]
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
	-	`sha256:0a748e98810479559c1b07563c77e821b9625e4a6e07db14c09840f2eb18a918`  
		Last Modified: Tue, 05 Mar 2019 13:40:37 GMT  
		Size: 223.6 MB (223619469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b253e00980790b4fc5c0ceb0f2805d2b286da23df65f8a1b7db051a53ebeba18`  
		Last Modified: Tue, 05 Mar 2019 13:38:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

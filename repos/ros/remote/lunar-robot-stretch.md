## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:7e4e4e41fd3fdaa8a011f8eb422f7c1049993b9b3271c91411813f4946932e69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:e46ff0f875769726fb8a4e082e612d19e3d3d9f1d631f6db062a54413170afb2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.5 MB (554525900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:090ec376014d943970385d28bf546eed84c2c4f5f89308d45cea0eab6e945d15`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 16:54:20 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:54:23 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 16 Nov 2018 16:54:24 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 16 Nov 2018 16:55:10 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 16:55:11 GMT
ENV LC_ALL=C.UTF-8
# Fri, 16 Nov 2018 16:55:36 GMT
RUN rosdep init     && rosdep update
# Fri, 16 Nov 2018 16:55:37 GMT
ENV ROS_DISTRO=lunar
# Fri, 16 Nov 2018 16:58:05 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 16:58:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 16 Nov 2018 16:58:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 16 Nov 2018 16:58:08 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 17:00:10 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 17:02:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc5a027b4a84d28f6f7fb49d2f4cbbe83abce22d72c0d94fa3808deae31a648`  
		Last Modified: Fri, 16 Nov 2018 17:20:43 GMT  
		Size: 21.1 MB (21073371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a043e11e0e536d170a705a3ad7bd220584cf95e1f5a5b328a655eb55bd1f60b9`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 1.4 KB (1378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8aa1e61cd41b81b1671dbea4704fb14b43d3c0312ea08c7413836cea027047`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 5.0 KB (4967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f401f374e5dfd4878b9bb8d584603e519b009c97b64be8433228dc8a6aa7921f`  
		Last Modified: Fri, 16 Nov 2018 17:20:57 GMT  
		Size: 53.5 MB (53505276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3488d2ebff7eae41fbd2441b274bfb6c39f17e74336079a424e9d7ce85a426a4`  
		Last Modified: Fri, 16 Nov 2018 17:20:33 GMT  
		Size: 835.2 KB (835229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7794fec4ccc81d56dc065af958e32b9c8388f7275955dfb9b29e3d20c857a74`  
		Last Modified: Fri, 16 Nov 2018 17:22:00 GMT  
		Size: 251.1 MB (251113917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d2010fde5c93c72a9816ab00bedb264a0dfb53d628c0b12090e8026b599656`  
		Last Modified: Fri, 16 Nov 2018 17:20:32 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76b48e893d80b3e88a45214db5aa520305e8ddf5d38a21f3d639559c10ffef2c`  
		Last Modified: Fri, 16 Nov 2018 17:23:08 GMT  
		Size: 122.2 MB (122229177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8afff833e36d517989b3461b77f6af673db61fdb015dae502460486c268de60a`  
		Last Modified: Fri, 16 Nov 2018 17:23:59 GMT  
		Size: 60.4 MB (60442134 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:f3a32076e18a0082062b519b1a5aa6a19d23fd6dc4ffeefbbb312f0f5ceb09a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.7 MB (494732951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddae0a2773eb8f1944d76d95af9bfecc18d5402e7777069d807953a2129ce26e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:15:27 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:15:32 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 16 Oct 2018 21:15:34 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu `lsb_release -sc` main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 16 Oct 2018 21:17:05 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:17:06 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 21:17:07 GMT
ENV LC_ALL=C.UTF-8
# Tue, 16 Oct 2018 21:17:58 GMT
RUN rosdep init     && rosdep update
# Tue, 16 Oct 2018 21:17:59 GMT
ENV ROS_DISTRO=lunar
# Tue, 16 Oct 2018 21:26:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:27:01 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 16 Oct 2018 21:27:02 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 16 Oct 2018 21:27:03 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:31:17 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:35:00 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fc137dcfaaba7d390266fe4e3e5b97f857078f572f28d3560b2489dea1daa01`  
		Last Modified: Tue, 16 Oct 2018 22:26:19 GMT  
		Size: 19.7 MB (19731124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bdfbdd246ccf0883ba9ff4b0464458b9831fdbce6f4694c761cfe64d18f7839`  
		Last Modified: Tue, 16 Oct 2018 22:25:58 GMT  
		Size: 1.4 KB (1377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c06a789f45726eb744c963a637b73a0f3f08397ced59ec277eb0ba8f37e3aa`  
		Last Modified: Tue, 16 Oct 2018 22:25:56 GMT  
		Size: 5.0 KB (4974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c871c8248f32bbd136b6d2838dcb1ed25ecf5234cb63308df746cdb199256619`  
		Last Modified: Tue, 16 Oct 2018 22:26:27 GMT  
		Size: 51.5 MB (51462107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:342c2cbb0393e84df453e913f377fa68262a11b7c76c577bb1e352eb1b66800c`  
		Last Modified: Tue, 16 Oct 2018 22:25:56 GMT  
		Size: 828.0 KB (827997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5104d98d17a9e2f768794d8e7f5ae4e58fc646ee5b1a7a8783e1b319d75a8a50`  
		Last Modified: Tue, 16 Oct 2018 22:27:15 GMT  
		Size: 206.0 MB (206034701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0105b75d5b426ecb42052b91e9279916fe5e0e2f743317b099983f96d08bf7a`  
		Last Modified: Tue, 16 Oct 2018 22:25:55 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe7a2b6f8c70f477bfa146a7c0d0e888be692639cd62c96a598dd243c112c4e`  
		Last Modified: Tue, 16 Oct 2018 22:28:08 GMT  
		Size: 116.0 MB (116024725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87fe844b5e3b0ac928d5d5b40e6b3b98756abccc826f7ecfddfc2148d17ec2f`  
		Last Modified: Tue, 16 Oct 2018 22:28:48 GMT  
		Size: 57.5 MB (57522154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

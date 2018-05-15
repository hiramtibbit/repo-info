## `ros:melodic-robot-stretch`

```console
$ docker pull ros@sha256:5cc3ba50e342c97fd2e4369936dc1ee9a055bed710c646abf4ae491926427ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:melodic-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:1c529fb9ecd549c63690066f3da87b6bef9cdfe8f77784d46f3bc93ed12efa45
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **547.3 MB (547262046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d47318c5e383ded7b3d7893b7127168a11cf711143fa43a61fb287fc935c245`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 12:52:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:52:04 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Sun, 29 Apr 2018 12:52:05 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Sun, 29 Apr 2018 12:52:42 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:52:42 GMT
ENV LANG=C.UTF-8
# Sun, 29 Apr 2018 12:52:42 GMT
ENV LC_ALL=C.UTF-8
# Sun, 29 Apr 2018 12:52:54 GMT
RUN rosdep init     && rosdep update
# Tue, 15 May 2018 17:47:59 GMT
ENV ROS_DISTRO=melodic
# Tue, 15 May 2018 17:49:50 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:49:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 15 May 2018 17:49:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 15 May 2018 17:49:51 GMT
CMD ["bash"]
# Tue, 15 May 2018 17:55:35 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:56:31 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d14fa56ef128c193fd94edf1e5eb031d02ae97b680588c7248e5e84304f13`  
		Last Modified: Sun, 29 Apr 2018 14:48:05 GMT  
		Size: 6.9 MB (6859072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604921583c4f613ebee4eb24564ca607566b8b48206868b48c018443567dd0b2`  
		Last Modified: Sun, 29 Apr 2018 14:48:03 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631afcce8e2d86cf9596b3823955679a3e770120d1da140a494003c85bf577b7`  
		Last Modified: Sun, 29 Apr 2018 14:48:00 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b0b4ce522ec73ddd931386acbe825b6203543509a3d76c51e649cb124d5ca1`  
		Last Modified: Sun, 29 Apr 2018 14:48:25 GMT  
		Size: 64.9 MB (64857453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ea215428a3b38a4f7bc2be7aad6084d16a82bb84f706aebde2d34120ffc5190`  
		Last Modified: Sun, 29 Apr 2018 14:48:01 GMT  
		Size: 833.5 KB (833530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:790f39764d031e85945f8fc550a68dffc5988e58bbf0273f722596122313d9b6`  
		Last Modified: Tue, 15 May 2018 18:20:01 GMT  
		Size: 251.9 MB (251914290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a71c0ed5802e44304464e45dba8bd7bb3e245158a5145f65482de63fb8975f87`  
		Last Modified: Tue, 15 May 2018 18:18:59 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d15bfa8a3dca98c6ef256946881fccf3e5fbf7cdd045106c8a12b05a95d73d43`  
		Last Modified: Tue, 15 May 2018 18:20:59 GMT  
		Size: 122.2 MB (122170631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ec9f4d2da4fbaa842d31ec3ff8f50efdab44be128d2d8a3fab69d71fa561d90`  
		Last Modified: Tue, 15 May 2018 18:21:30 GMT  
		Size: 55.3 MB (55307121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

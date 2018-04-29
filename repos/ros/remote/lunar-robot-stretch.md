## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:7368196f77cabb3e3432b4ada921df03e0f8d3df0ca5b265ab617244d9525665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:afdfd0657c73db187be089954a1b58221634077d60dfa2f01994ae1c72a13c4b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **552.4 MB (552408250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab832c7ec1493131ffe7b9ccd1104d1de7fdd04901aa05b8806a632ebd204b9`
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
# Sun, 29 Apr 2018 12:52:54 GMT
ENV ROS_DISTRO=lunar
# Sun, 29 Apr 2018 12:54:28 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 12:54:29 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sun, 29 Apr 2018 12:54:29 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sun, 29 Apr 2018 12:54:29 GMT
CMD ["bash"]
# Sun, 29 Apr 2018 13:15:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 13:20:08 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
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
	-	`sha256:26629a9af11703b4ed3e40e78cb5403156db690083566f39f679a55e75c6fb67`  
		Last Modified: Sun, 29 Apr 2018 14:49:00 GMT  
		Size: 251.9 MB (251873129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b853450ebbc6b17d4b77840bb123c679eebd84b027b38915296bef615ae43600`  
		Last Modified: Sun, 29 Apr 2018 14:48:00 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63863f0fc73e348d8df8c2777a8ca0d09df3991f247fd340c53ae4264056544d`  
		Last Modified: Sun, 29 Apr 2018 15:01:25 GMT  
		Size: 122.2 MB (122225868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b60d7ece16e3465f3c214a315b792cdfd175a2d44e17883d36de528f44c9ab0`  
		Last Modified: Sun, 29 Apr 2018 15:09:33 GMT  
		Size: 60.4 MB (60439248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:lunar-robot-stretch` - linux; arm64 variant v8

```console
$ docker pull ros@sha256:c892f336d2befb2c08f4c28afc30b47f83b9364eb66fa2bbb01e6422632659f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.8 MB (492775267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e17200174f2df509c79b09f0f74d941dd10d6a295cd841f654bae242421276e`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:30:57 GMT
ADD file:2ebfda145008a73d7d0f2dc29946bfc3ad65048b3a3f0ca0283263e413b692d4 in / 
# Wed, 14 Mar 2018 17:30:58 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 03:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:57:15 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Thu, 15 Mar 2018 03:57:18 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Thu, 15 Mar 2018 03:59:13 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 03:59:15 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 03:59:16 GMT
ENV LC_ALL=C.UTF-8
# Thu, 15 Mar 2018 04:00:08 GMT
RUN rosdep init     && rosdep update
# Thu, 15 Mar 2018 04:00:09 GMT
ENV ROS_DISTRO=lunar
# Thu, 15 Mar 2018 04:08:48 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:08:50 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Thu, 15 Mar 2018 04:08:51 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Thu, 15 Mar 2018 04:08:52 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 04:13:31 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 04:17:58 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.1-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3476b6ec1aa77d47beaf22adc259097130bcc9eec853636fb1dcf4f5c2925a56`  
		Last Modified: Wed, 14 Mar 2018 17:45:20 GMT  
		Size: 42.9 MB (42907825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34b20ac93a23591cd708287109b38e6d3cfa4df28b7bc7f2d76ced9ebd071061`  
		Last Modified: Thu, 15 Mar 2018 04:47:36 GMT  
		Size: 6.8 MB (6794160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937289d9f2908bdc0632e69e9656a99838c8d74800329ea978a3141e026e857f`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 1.4 KB (1376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35f23cc8c9690e8a6fce553c81dda89cbb75cef86377245c1353396c3ebfe5de`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c3c6509781662d18c90e893dbae6c92b0c741d25e67e850edcfbcd16e192c34`  
		Last Modified: Thu, 15 Mar 2018 04:48:31 GMT  
		Size: 61.9 MB (61941449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfb330d3be283162c5e8a7b4b4058a93e2693bd0328a6013da35fadcb9e1983`  
		Last Modified: Thu, 15 Mar 2018 04:47:28 GMT  
		Size: 791.2 KB (791228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c37eec5bcf4b898d4f3d46f7ddcb29e8fc7ebb29f8b67fdbfcb6a34656213410`  
		Last Modified: Thu, 15 Mar 2018 04:50:19 GMT  
		Size: 206.8 MB (206804765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afdafe432be54c7abcb6d38871e0078cabf42e6bd288741bb263b1edf9958ecc`  
		Last Modified: Thu, 15 Mar 2018 04:47:26 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bbd0df2dae9d9bb4b76963ccc5573cd94d60b1a02a4cb375dc2e90053f60c8d`  
		Last Modified: Thu, 15 Mar 2018 04:52:13 GMT  
		Size: 116.0 MB (116029340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f83199bae6252e098dfc5a4478c11fec91396e0362c952fcac2fe3ee630f232`  
		Last Modified: Thu, 15 Mar 2018 04:53:16 GMT  
		Size: 57.5 MB (57504704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

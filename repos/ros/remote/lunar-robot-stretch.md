## `ros:lunar-robot-stretch`

```console
$ docker pull ros@sha256:cbf4fa35f8c46b36559098af64f01108ea06b68467d4ef394ea286feadeb9c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `ros:lunar-robot-stretch` - linux; amd64

```console
$ docker pull ros@sha256:b65b0854f71d73f1d8d388409bbed54921b208c16e844d5a62dd52e311813c8a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **554.2 MB (554186417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b06335f5f06e01e814bfc465ee46bbe5d57d5114d40415944c0d48b2e03f883`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 21:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:08 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Wed, 14 Mar 2018 21:53:08 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu stretch main" > /etc/apt/sources.list.d/ros-latest.list
# Wed, 14 Mar 2018 21:53:35 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 21:53:36 GMT
ENV LC_ALL=C.UTF-8
# Wed, 14 Mar 2018 21:53:47 GMT
RUN rosdep init     && rosdep update
# Wed, 14 Mar 2018 21:53:47 GMT
ENV ROS_DISTRO=lunar
# Sat, 28 Apr 2018 02:32:06 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-core=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:32:07 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Sat, 28 Apr 2018 02:32:07 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Sat, 28 Apr 2018 02:32:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 02:37:53 GMT
RUN apt-get update && apt-get install -y     ros-lunar-ros-base=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 02:45:30 GMT
RUN apt-get update && apt-get install -y     ros-lunar-robot=1.3.2-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05a4c3253d30104c7609f60f5e8f7892fe226be34717c2e89739224349cc752`  
		Last Modified: Wed, 14 Mar 2018 22:55:30 GMT  
		Size: 7.2 MB (7218921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcb7476c006ff6f55a44e04d215cd759ad1ec99164fc88a2f619baf2380d6b1`  
		Last Modified: Wed, 14 Mar 2018 22:55:29 GMT  
		Size: 1.4 KB (1375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3bf1c66ef8428babacd9ab8f4e999747f5f56430861e028de8c374e8bd6525`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39fa0755d928527e19927cf73d533e7c0d0521e09b08dfa39be064b8c024ebb5`  
		Last Modified: Wed, 14 Mar 2018 22:55:53 GMT  
		Size: 64.9 MB (64857750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae2502f91d46ad00ed03b7c7c14fedf05b3f7d379e45688d7147bdd36b9ba7`  
		Last Modified: Wed, 14 Mar 2018 22:55:26 GMT  
		Size: 791.2 KB (791216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51f73b8c976c5f634e767317f6f2c403ad8f9f77029548a78716697106e56d05`  
		Last Modified: Sat, 28 Apr 2018 06:02:39 GMT  
		Size: 251.9 MB (251872970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4a1894a066765c88bb5d52aa20d590414517573f1fc5d0573143bdc35d69f6c`  
		Last Modified: Sat, 28 Apr 2018 06:01:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa75ff73d6c29c1ac34c9014d84be19cd6740004b2dbdb4662a295ebc5845c7`  
		Last Modified: Sat, 28 Apr 2018 06:03:40 GMT  
		Size: 123.9 MB (123868988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0d29b7ce3cda75e2df13fdc04f07153c68bc8a249963e0d65c37a4bcf2962ee`  
		Last Modified: Sat, 28 Apr 2018 06:18:22 GMT  
		Size: 60.4 MB (60439704 bytes)  
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

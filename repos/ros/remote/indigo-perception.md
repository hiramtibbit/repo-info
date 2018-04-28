## `ros:indigo-perception`

```console
$ docker pull ros@sha256:71b2a113c0a6ddca82608e835c5a177a84543b14be684a5c132f1db3331e17ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v7

### `ros:indigo-perception` - linux; amd64

```console
$ docker pull ros@sha256:1fea1e5952abd3caab18fc697d9c2c4b223f8cae087c8b3e706dcde41783b953
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **555.3 MB (555322774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b93b82be8d757b4a09f24524abcd5e283dea42e816218c7f43f99d5e7fd16eb2`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Fri, 27 Apr 2018 23:38:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:38:40 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 27 Apr 2018 23:38:41 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 27 Apr 2018 23:39:40 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 23:39:41 GMT
ENV LC_ALL=C.UTF-8
# Fri, 27 Apr 2018 23:39:51 GMT
RUN rosdep init     && rosdep update
# Fri, 27 Apr 2018 23:39:51 GMT
ENV ROS_DISTRO=indigo
# Fri, 27 Apr 2018 23:42:48 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:42:49 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 27 Apr 2018 23:42:49 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 27 Apr 2018 23:42:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 00:05:45 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 00:12:38 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.6-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2a09d14d1839f70453ca4283ec17bab958fff78a052388903ca02a81985ed1f`  
		Last Modified: Sat, 28 Apr 2018 03:16:06 GMT  
		Size: 16.5 MB (16503305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed9a3f5fc2ca7a2027be0617b891c2ea1bea6f5263ef179e4f04d4e8f5e5569`  
		Last Modified: Sat, 28 Apr 2018 03:15:52 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:337126b3efddb906985a5adb65ba00f17797162f27eb0aa1e052ea825371283e`  
		Last Modified: Sat, 28 Apr 2018 03:15:50 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff19b12f6ed4e79c966fa2a453e73f1588db65160d5cbaefc60c2aab3f1c633e`  
		Last Modified: Sat, 28 Apr 2018 03:16:08 GMT  
		Size: 31.8 MB (31777143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e946e7a2e6aaf3ea75f20a89a3594ff333dfc993064bc62e8a2ee5915ca271`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 833.1 KB (833054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:535d19cc9fea7bfd67c1c01083120f9a0cb0bbd3442a76db197bd5be4411a082`  
		Last Modified: Sat, 28 Apr 2018 03:16:41 GMT  
		Size: 149.9 MB (149932196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2860f4623158a51d91473cc92bd7d876a6f771b71683d75634e61478cd3f0752`  
		Last Modified: Sat, 28 Apr 2018 03:15:49 GMT  
		Size: 192.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39e60bcfd50c5b88e6e3c4d5c28da1f9ccce655af16d0cc7b31830ac466afcc6`  
		Last Modified: Sat, 28 Apr 2018 03:41:55 GMT  
		Size: 46.8 MB (46772129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae028cd442a2c04606e8471f0074d4b5d9c8ed587c6eb9fac6a91d9e6ddb0cea`  
		Last Modified: Sat, 28 Apr 2018 03:44:53 GMT  
		Size: 236.3 MB (236335327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ros:indigo-perception` - linux; arm variant v7

```console
$ docker pull ros@sha256:8d4ffe8de44aaf747769017163012d9d0234871bf4cacf786cc0bda8d899ca17
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **501.0 MB (501006740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:067cbee7c2b6fd1aae7e10d3dd12bc2d638f3d8db1c5305dc9be2a7eea48582f`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 13 Apr 2018 11:59:11 GMT
ADD file:7ea61c305052e6dde9bf2e18e32feee757a5b0e0254ad0cd568fe7c354b5b26c in / 
# Fri, 13 Apr 2018 11:59:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 13 Apr 2018 11:59:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 11:59:27 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 13 Apr 2018 11:59:32 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 13 Apr 2018 11:59:37 GMT
CMD ["/bin/bash"]
# Fri, 13 Apr 2018 12:20:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:20:37 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Fri, 13 Apr 2018 12:20:39 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list
# Fri, 13 Apr 2018 12:21:36 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LANG=C.UTF-8
# Fri, 13 Apr 2018 12:21:37 GMT
ENV LC_ALL=C.UTF-8
# Fri, 13 Apr 2018 12:21:59 GMT
RUN rosdep init     && rosdep update
# Fri, 13 Apr 2018 12:21:59 GMT
ENV ROS_DISTRO=indigo
# Fri, 13 Apr 2018 12:23:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-core=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:23:35 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Fri, 13 Apr 2018 12:23:36 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Fri, 13 Apr 2018 12:23:36 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 12:24:33 GMT
RUN apt-get update && apt-get install -y     ros-indigo-ros-base=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 12:28:25 GMT
RUN apt-get update && apt-get install -y     ros-indigo-perception=1.1.5-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a22018ed08faf9f657b69ee59a9a8666e8245e7911527353f4fa629711fcdb8e`  
		Last Modified: Fri, 13 Apr 2018 12:02:36 GMT  
		Size: 66.5 MB (66541016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b191f98865025b3e155ebad433268e2cf6d265dbe0b8f63427a54758caaada`  
		Last Modified: Fri, 13 Apr 2018 12:02:18 GMT  
		Size: 76.8 KB (76767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414c31e80c4541923f49554c2ded61a0278fe1da8d2b7dfd953fbdbca889fba7`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 626.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4d4ecd2707fa702b9377ab2394554fc75003b98fb9a3d21af108beec0e1b35b`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d3ab462a42d95348a08fedfd349bb63a0035865cc69ce70044fa16edf437d57`  
		Last Modified: Fri, 13 Apr 2018 12:02:16 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06717acdd2c41590a4a0006bc28b5c765eed655d6a1bb4f3b27f9925ddaae11`  
		Last Modified: Fri, 13 Apr 2018 12:42:51 GMT  
		Size: 14.5 MB (14479887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e348e2d7f5bf9e2afd20fd2dc16f0ad680cbf090443ed0aad3c8d926315d6255`  
		Last Modified: Fri, 13 Apr 2018 12:42:46 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce258ed7bac17871d58f347a0c3bb253bc2fc2615843036725986ec2b3d1c059`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5f48e76a0caa68c2ff9fdaac86df2f2385614511ecd85f5c25647e79de587ac`  
		Last Modified: Fri, 13 Apr 2018 12:42:55 GMT  
		Size: 29.2 MB (29232338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab80cafd3ebd1994bd2b46d046596d85e2905dab4663709de0c4ed19e9f616d`  
		Last Modified: Fri, 13 Apr 2018 12:42:45 GMT  
		Size: 818.1 KB (818122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9ae8ffec37bf3c5e2548005b6f33c89db7476734561fc3bcb0c1079a60d4362`  
		Last Modified: Fri, 13 Apr 2018 12:43:26 GMT  
		Size: 137.6 MB (137577238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b63337d5a8acda4bb1359cc1edfc2132d9d1a4cb720a58a6bd45632ced101c6b`  
		Last Modified: Fri, 13 Apr 2018 12:42:44 GMT  
		Size: 195.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a5c952a8e4803f60de0e3770f7220a72ac94321275564ddef800f07308962c`  
		Last Modified: Fri, 13 Apr 2018 12:43:52 GMT  
		Size: 40.4 MB (40382140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28aec6e8823f1d54ca2ea11d72c36ac635fd8ab48a9dfdb13db08fccfafce89`  
		Last Modified: Fri, 13 Apr 2018 12:45:27 GMT  
		Size: 211.9 MB (211884065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

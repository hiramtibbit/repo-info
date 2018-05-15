## `ros:melodic-robot-bionic`

```console
$ docker pull ros@sha256:c9646bdd48be84c3f1ac4b47e11c72615ba7f906ebf41a297bdf8c2c53c5acd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ros:melodic-robot-bionic` - linux; amd64

```console
$ docker pull ros@sha256:57b67bf49f41c45a72415c5be7979f0215fa4bec7f00a860393ef26bd5c30da0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.9 MB (415923285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6b7aeea1d7e06e5f278e9ce4f5803244b5e7ddf5fcb6a479a8952908970e3d0`
-	Entrypoint: `["\/ros_entrypoint.sh"]`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 27 Apr 2018 23:28:32 GMT
ADD file:81813d6023adb66b80fe163bc7db464004673838d17195b9d84aade4f8961b71 in / 
# Fri, 27 Apr 2018 23:28:33 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:28:34 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:28:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:28:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:28:36 GMT
CMD ["/bin/bash"]
# Tue, 15 May 2018 17:22:24 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:22:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     dirmngr     gnupg2     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:22:55 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 421C365BD9FF1F717815A3895523BAEEB01FA116
# Tue, 15 May 2018 17:22:55 GMT
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
# Tue, 15 May 2018 17:24:08 GMT
RUN apt-get update && apt-get install --no-install-recommends -y     python-rosdep     python-rosinstall     python-vcstools     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:24:08 GMT
ENV LANG=C.UTF-8
# Tue, 15 May 2018 17:24:09 GMT
ENV LC_ALL=C.UTF-8
# Tue, 15 May 2018 17:24:19 GMT
RUN rosdep init     && rosdep update
# Tue, 15 May 2018 17:24:19 GMT
ENV ROS_DISTRO=melodic
# Tue, 15 May 2018 17:28:25 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-core=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:28:26 GMT
COPY file:824303428ad16ae6296df253434e00a00126dc8404f740a8b885c9f61a2f5fcb in / 
# Tue, 15 May 2018 17:28:26 GMT
ENTRYPOINT ["/ros_entrypoint.sh"]
# Tue, 15 May 2018 17:28:26 GMT
CMD ["bash"]
# Tue, 15 May 2018 17:32:36 GMT
RUN apt-get update && apt-get install -y     ros-melodic-ros-base=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
# Tue, 15 May 2018 17:33:52 GMT
RUN apt-get update && apt-get install -y     ros-melodic-robot=1.4.0-0*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a48c500ed24e62926cb079df35f964c57d8bb08159b1d29c6a3b0a58dc365dc1`  
		Last Modified: Fri, 27 Apr 2018 22:14:33 GMT  
		Size: 31.0 MB (30957448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e1de00ff7e1fea0858b6a4b5ca208eeca970607ea9a6eb5fc972494e7a0cdde`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 841.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0330ca45a200e1fcef05ae97f434366d262a1c50b3dc053e7928b58dd37211dd`  
		Last Modified: Fri, 27 Apr 2018 23:32:05 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:471db38bcfbf0f5bac78012b9d458dfd37309d5cbb99d4e95310321a60a0cfdf`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4aba487617ca27519745ae722b8ea1917474c495b91b3c4887728a3f2ee7db`  
		Last Modified: Fri, 27 Apr 2018 23:32:06 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8456edf85c693828820f7381dde166ac747f2cd8e10610d4c51120bc668379f`  
		Last Modified: Tue, 15 May 2018 18:06:38 GMT  
		Size: 831.1 KB (831054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf2122c178c47e334cadb90a80317c074c9ab5b4ad3c03bd385e7b1cd3e348aa`  
		Last Modified: Tue, 15 May 2018 18:06:39 GMT  
		Size: 4.9 MB (4859414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4d31beaa42936003685a0b05665d5767eeeddc4c318aaadc6fca1bba5debf2b`  
		Last Modified: Tue, 15 May 2018 18:06:37 GMT  
		Size: 1.4 KB (1392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abb4b733826c103e038eda6e27b5f02bd3d2399d9c5c0a1af66b687989888289`  
		Last Modified: Tue, 15 May 2018 18:06:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0ecb640b5f315f0d1dfa938e893872008c4f9a375a74e3c04c718e57bf3a5`  
		Last Modified: Tue, 15 May 2018 18:06:53 GMT  
		Size: 58.4 MB (58398228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae98d14520da6037aa61bc4046566731135de07187c4ea0f29030924bdcedb9`  
		Last Modified: Tue, 15 May 2018 18:06:35 GMT  
		Size: 848.9 KB (848891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b54b3e83ca016dd6927208755632941007ba191c648b3d199b9e972d88f70efc`  
		Last Modified: Tue, 15 May 2018 18:07:33 GMT  
		Size: 204.3 MB (204283879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:292fdd215e975b674bdb8bb7a9433235a3b338be8c8c5f564f09ab3fee3c545b`  
		Last Modified: Tue, 15 May 2018 18:06:34 GMT  
		Size: 193.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6482645a2bded6663599aad6237ef4f04ae2275fa3ba5201f3069ea33279f57`  
		Last Modified: Tue, 15 May 2018 18:08:43 GMT  
		Size: 78.2 MB (78158787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4334780ad514e6c8a423a2a4a65906b238998f25c36775cf9cd7becd690b24f6`  
		Last Modified: Tue, 15 May 2018 18:11:56 GMT  
		Size: 37.6 MB (37581513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

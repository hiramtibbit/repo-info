## `gazebo:latest`

```console
$ docker pull gazebo@sha256:ed2abc4290b4cc819ab06c1ca97134f03e0d6282e8d09c8b75a4562244a36dc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:latest` - linux; amd64

```console
$ docker pull gazebo@sha256:f219ac8e48045de46004c58d562622279d24ac750832e240f5ed2b526946fa73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.5 MB (530487242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b74b9efea1468f7447cb8e1974f5581f2cfb634afb39b8c2796976be81c31dc9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:09 GMT
ADD file:3df374a69ce696c21058366678c1ceb89e11349e52decfd35de0ee3bd8dc1162 in / 
# Wed, 05 Sep 2018 22:20:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:11 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:12 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:12 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:34:31 GMT
RUN echo 'Etc/UTC' > /etc/timezone &&     ln -s /usr/share/zoneinfo/Etc/UTC /etc/localtime &&     apt-get update && apt-get install -q -y tzdata && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:35:01 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:39:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 05 Sep 2018 23:39:09 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 05 Sep 2018 23:41:29 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.3.1-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:41:30 GMT
EXPOSE 11345/tcp
# Wed, 05 Sep 2018 23:41:30 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 05 Sep 2018 23:41:31 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 05 Sep 2018 23:41:31 GMT
CMD ["gzserver"]
# Wed, 05 Sep 2018 23:43:22 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.3.1-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:124c757242f88002a858c23fc79f8262f9587fa30fd92507e586ad074afb42b6`  
		Last Modified: Wed, 22 Aug 2018 17:32:16 GMT  
		Size: 31.8 MB (31757372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d866f8bde2a0d607a6d17edc0fbd5e00b58306efc2b0a57e0ba72f269e7c6be`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa3f2f277e67c5cbbf1dac21dc27111a60d3cd2ef494d94aa1515d3319f2a245`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 469.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398d32b153e84fe343f0c5b07d65e89b05551aae6cb8b3a03bb2b662976eb3b8`  
		Last Modified: Wed, 05 Sep 2018 22:21:08 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afde35469481d2bc446d649a7a3d099147bbf7696b66333e76a411686b617ea1`  
		Last Modified: Wed, 05 Sep 2018 22:21:09 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70a7073207e1457dc71fe3f7e0915c7ecd41056000607b15bc945ca888339b77`  
		Last Modified: Wed, 05 Sep 2018 23:55:24 GMT  
		Size: 832.9 KB (832873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a050a9f3a709177a89bf954a4bfd68f5b887a5a06869f57b8077c656e9c18de`  
		Last Modified: Wed, 05 Sep 2018 23:55:28 GMT  
		Size: 14.6 MB (14611293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089a9b6fdfdec81428430e6bac5d6caad0b12a53c9299f2021a2e2fb8afa745f`  
		Last Modified: Wed, 05 Sep 2018 23:55:23 GMT  
		Size: 1.4 KB (1438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:937bbe87a54d11aa91a31c10eda8c5a9732c7257bbbffa3989ab5b46be5db8d1`  
		Last Modified: Wed, 05 Sep 2018 23:55:23 GMT  
		Size: 5.4 KB (5436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa38cd11c114b4307b23e482330437af10a77cc421d946e026051ea911f7c5c6`  
		Last Modified: Wed, 05 Sep 2018 23:56:12 GMT  
		Size: 249.2 MB (249201340 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bb835cf2a7d1cb28a924a1efc7df99d01883ada1f56131972ba961dc67da7bc`  
		Last Modified: Wed, 05 Sep 2018 23:55:23 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c93060960c8dca306da8ad2fb5f79bf5660aaf44e99ea6949d72a41d1826badc`  
		Last Modified: Wed, 05 Sep 2018 23:57:29 GMT  
		Size: 234.1 MB (234074967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

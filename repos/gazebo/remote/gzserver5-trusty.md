## `gazebo:gzserver5-trusty`

```console
$ docker pull gazebo@sha256:1c96b8268cacc34d71ce292a96e6dd6c7bc12512723e097f462d1a3507249ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:9670f42e64b7db92b1b1fc162a8d3eaa4242927e90c81e05d4b31da433b52da0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.2 MB (242176815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b91651ded690d371eb6d993450ad569015b94e8105d3df118ca2f419cd30fd9`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:40 GMT
ADD file:b52dc89539ef99aa7478debd2af0497ac50ee0d7658c05219bbf609440626583 in / 
# Wed, 05 Sep 2018 22:20:41 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:42 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:42 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:43 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:43 GMT
CMD ["/bin/bash"]
# Wed, 05 Sep 2018 23:12:48 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:22:19 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Wed, 05 Sep 2018 23:22:20 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Wed, 05 Sep 2018 23:25:40 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:25:41 GMT
EXPOSE 11345/tcp
# Wed, 05 Sep 2018 23:25:41 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Wed, 05 Sep 2018 23:25:41 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Wed, 05 Sep 2018 23:25:41 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:72c01b436656c9a55ae968ed14e4f1b2a36e11a1103de1d78052edc926d5003f`  
		Last Modified: Wed, 22 Aug 2018 17:35:57 GMT  
		Size: 67.1 MB (67126755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65584f5f70eeea5b72e357d4e2bc0edf9b1a82fb23f1de65880e1dae719f78ab`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9874b529521c67727d1a5ad5d8eb24af93cdc5aa232cc42ff37488c4c2e5c8`  
		Last Modified: Wed, 05 Sep 2018 22:21:53 GMT  
		Size: 365.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86656bbaa6fd4511807a37afa01c1d4dce5cc973faed463aafa4fabd32b6dcde`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fe6916ab38229dcf39f8534843008d42dd93a44241619505dbf4774f0b70d28`  
		Last Modified: Wed, 05 Sep 2018 22:21:52 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7b876f9ae531a01b03c658b33bda8c8bbdcf41b6e2a4e8c597e658ad67ebe4c`  
		Last Modified: Wed, 05 Sep 2018 23:43:46 GMT  
		Size: 18.0 MB (18035665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165858129480fb8192c1992b2086437d71726c2912d87daab664942be065d8c7`  
		Last Modified: Wed, 05 Sep 2018 23:43:40 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a4121c80ce87c6547a7d2a16673bc5cdebe076411e65879059b8c89ac3a60b`  
		Last Modified: Wed, 05 Sep 2018 23:43:40 GMT  
		Size: 260.3 KB (260335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22a560aff7de01a57e28127e0a6d8f01ec6982f22beeb71b086ecee49753526`  
		Last Modified: Wed, 05 Sep 2018 23:46:01 GMT  
		Size: 156.7 MB (156666719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c61860f09f48ac8d4f05ab534b7e36e83e81ed3f76bab20e9f44974259799b`  
		Last Modified: Wed, 05 Sep 2018 23:45:33 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

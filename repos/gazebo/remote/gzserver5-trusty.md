## `gazebo:gzserver5-trusty`

```console
$ docker pull gazebo@sha256:8c21a355597cc4a4a23cb1d632a9acd1dd17a8ccad8c98fd4a236e223354988e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver5-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:b944463fd94c8b26351faffb09fbfe6e5c7a3a11c60b3dd1f3623bb708b0ecf6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.4 MB (240438383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0b27ea1cfb2f725aa3316b93d4033c439a85490d8375836bac1b365a9cc18bc`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

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
# Sun, 29 Apr 2018 00:11:27 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Sun, 29 Apr 2018 00:11:28 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Sun, 29 Apr 2018 00:49:06 GMT
RUN apt-get update && apt-get install -q -y     gazebo5=5.4.0-1*     && rm -rf /var/lib/apt/lists/*
# Sun, 29 Apr 2018 00:49:07 GMT
EXPOSE 11345/tcp
# Sun, 29 Apr 2018 00:49:07 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Sun, 29 Apr 2018 00:49:07 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Sun, 29 Apr 2018 00:49:08 GMT
CMD ["gzserver"]
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
	-	`sha256:30dc350b03e9c758761a02a8e73b4fa6503ebd4dc94c868e42f31ef68d12fda4`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 13.1 KB (13113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7257556e596c0ce41fbdca4edd280ce7b8d5cb1b36d99361878b02c2cd088905`  
		Last Modified: Sun, 29 Apr 2018 03:23:51 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f65b2aedf2f3e5d2ec85065f6daa7ca24446d7e911e92294e7350d47122ef7b`  
		Last Modified: Sun, 29 Apr 2018 03:59:56 GMT  
		Size: 167.3 MB (167268722 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f78474c9d6dcb257cb211a2f9edc55ba0d829fe305d82fbd08a4529dc8513dda`  
		Last Modified: Sun, 29 Apr 2018 03:59:30 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

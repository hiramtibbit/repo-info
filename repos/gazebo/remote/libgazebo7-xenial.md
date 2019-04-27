## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:0f6b0c3b6a9b34084a1d5d3a0e37d8e79e55e099f6deea32c84a7a05b3e0ba4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:a328efc142a0d893ed0608f51b10b66a745ac3b997fec8415db0168bbd23fbee
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.9 MB (509892755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:871c157a7a7f4f829abc8e49ae3360f28a71b0aa07f44919d66e7fde25c1372d`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 26 Apr 2019 22:22:27 GMT
ADD file:eb81ec6d9e1940968c44e3fe988a8d07474c05b5b0ea60ace0bd2e4fbf180f3b in / 
# Fri, 26 Apr 2019 22:22:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 26 Apr 2019 22:22:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 22:22:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 26 Apr 2019 22:22:29 GMT
CMD ["/bin/bash"]
# Fri, 26 Apr 2019 23:36:05 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:36:06 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 26 Apr 2019 23:36:07 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 26 Apr 2019 23:37:19 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.15.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 26 Apr 2019 23:37:19 GMT
EXPOSE 11345
# Fri, 26 Apr 2019 23:37:19 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Fri, 26 Apr 2019 23:37:19 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 26 Apr 2019 23:37:20 GMT
CMD ["gzserver"]
# Fri, 26 Apr 2019 23:39:39 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.15.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7e65918542624be36faca5e547a5b84c4eca21dd4e979c9309f4ad79b95d00ce`  
		Last Modified: Fri, 26 Apr 2019 00:24:56 GMT  
		Size: 43.8 MB (43752517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:089d60cb4e0a6a5f884454ad8f9ea43021ac8c4a8584698f8751fab2437450e3`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c461696bc0925124c5fe76298c2590a4d4b4009eab16a2346c0010269007f74`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45085432511a479b977e19d3334f4948200141d06802c222e743e3d3bafabd05`  
		Last Modified: Fri, 26 Apr 2019 22:23:35 GMT  
		Size: 166.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b30c8f71ebdd40c0e3d4e1265b1e6aa1ad6e5b377225f950e3e5e85feb12f73`  
		Last Modified: Fri, 26 Apr 2019 23:53:27 GMT  
		Size: 16.7 MB (16665257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6261c66f35b2d37ff3504e04da1c0dff016716ddb38fd10e41d211e29b222160`  
		Last Modified: Fri, 26 Apr 2019 23:53:23 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d5708705100e3041ff8f50403ecd9b9fe9fcf52a0dab86da8bf292f63fd4d71`  
		Last Modified: Fri, 26 Apr 2019 23:53:23 GMT  
		Size: 5.5 KB (5520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78ecf2764ca21063bc4c9f56573233e17da01187bb977a08ee0865484e804f85`  
		Last Modified: Fri, 26 Apr 2019 23:53:59 GMT  
		Size: 189.9 MB (189909101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3007179c3cb24f321ededb321a3a442118724a969a49fefc17131285d323f2`  
		Last Modified: Fri, 26 Apr 2019 23:53:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af7a8772e0a5cb5b8d36048782c737396ebb3d608a0bed7986bd800c1e02e2`  
		Last Modified: Fri, 26 Apr 2019 23:55:10 GMT  
		Size: 259.5 MB (259545516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gazebo:libgazebo7-xenial`

```console
$ docker pull gazebo@sha256:187a9650f368f7cf63b4c3f0e895215941091c357e0aaecc0e18e37c54cc8f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo7-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:7b5b04efd4fea07985f8c3ec41b17a0b00898d847cded1e6075bed65e846e091
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **509.4 MB (509365902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:686f3ab1d3b3a9fe5fed475ab125eaeb6f8dc65a09302edd6139f52fd2f82641`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Fri, 19 Oct 2018 00:49:11 GMT
ADD file:01a5c4f2b1dcc8f8aebe00ce8ed6ceda7038abc31d40caf69273240cdd453b84 in / 
# Fri, 19 Oct 2018 00:49:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 19 Oct 2018 00:49:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 00:49:14 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 19 Oct 2018 00:49:14 GMT
CMD ["/bin/bash"]
# Fri, 19 Oct 2018 01:57:21 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:57:22 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Fri, 19 Oct 2018 01:57:23 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 19 Oct 2018 01:58:58 GMT
RUN apt-get update && apt-get install -q -y     gazebo7=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 19 Oct 2018 01:59:04 GMT
EXPOSE 11345/tcp
# Fri, 19 Oct 2018 01:59:04 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 19 Oct 2018 01:59:05 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 19 Oct 2018 01:59:05 GMT
CMD ["gzserver"]
# Fri, 19 Oct 2018 02:01:30 GMT
RUN apt-get update && apt-get install -q -y     libgazebo7-dev=7.14.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:18d680d616571900d78ee1c8fff0310f2a2afe39c6ed0ba2651ff667af406c3e`  
		Last Modified: Fri, 05 Oct 2018 22:11:59 GMT  
		Size: 43.4 MB (43352848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0addb6fece630456e0ab187b0aa4304d0851ba60576e7f6f9042a97ee908a796`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78e58219b215b359fe002f0ca1f416617b75ca9b36cb274c98d7a5f808711179`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb6959a66df2ea26a26452ba11f84fb64bb45af90204374862ec71ee59f795e7`  
		Last Modified: Fri, 19 Oct 2018 00:51:54 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688e54c7beef798f364782f71d7cdfc619b89e9c896278c5511c257a15150387`  
		Last Modified: Fri, 19 Oct 2018 02:13:11 GMT  
		Size: 16.7 MB (16658418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01f9b8881a382f0ce258c01d69828635128f651d750fb7d6614366a77825c2a`  
		Last Modified: Fri, 19 Oct 2018 02:13:06 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:832724dfd1d36413907796342ddd69553f375b7fdd829ce002cfa648669e03fb`  
		Last Modified: Fri, 19 Oct 2018 02:13:06 GMT  
		Size: 5.5 KB (5528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b5af298d2ef6897cec7a6d84705e83e9839aac30b2f4ae21d27b4e7c1e2cbe`  
		Last Modified: Fri, 19 Oct 2018 02:13:40 GMT  
		Size: 189.8 MB (189758745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299a7c0eea9dbbb25c9f45c765202b462f5673ee1aee0c4fc6b65ee7a82fb6c0`  
		Last Modified: Fri, 19 Oct 2018 02:13:05 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea91ce16db2c32306e212b1cf3b29060ebb27ce7f190266f2a6762f205af0e01`  
		Last Modified: Fri, 19 Oct 2018 02:15:09 GMT  
		Size: 259.6 MB (259575416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

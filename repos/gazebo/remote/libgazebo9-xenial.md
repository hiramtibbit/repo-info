## `gazebo:libgazebo9-xenial`

```console
$ docker pull gazebo@sha256:d68ee2f0257865a067fff60f75e6cb8810e6dc99f424efa0e8d5fa9cbd3ec138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:libgazebo9-xenial` - linux; amd64

```console
$ docker pull gazebo@sha256:40c0b3629d71ad835bd40c1c69b1307a4196314a94445db23e643f2b1161fd6b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.7 MB (521731533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c81b9b13a023a483fde01b182f09e4a434198560b1354c0a06f8124233f256`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:54:41 GMT
RUN apt-get update && apt-get install -q -y     dirmngr     gnupg2     lsb-release     && rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:19:13 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Tue, 12 Mar 2019 01:19:14 GMT
RUN . /etc/os-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable `lsb_release -sc` main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 29 Mar 2019 21:26:29 GMT
RUN apt-get update && apt-get install -q -y     gazebo9=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 29 Mar 2019 21:26:29 GMT
EXPOSE 11345
# Fri, 29 Mar 2019 21:26:30 GMT
COPY file:b79966dec12c55a0a5c9e673326cc3faf9cbbeee0ea5f172e863df237eb8a601 in / 
# Fri, 29 Mar 2019 21:26:30 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 29 Mar 2019 21:26:30 GMT
CMD ["gzserver"]
# Fri, 29 Mar 2019 21:28:06 GMT
RUN apt-get update && apt-get install -q -y     libgazebo9-dev=9.8.0-1*     && rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ed0c069115637e5af590634fdfaae7c7f3c8c1494843d8b05ef172855a7086`  
		Last Modified: Tue, 12 Mar 2019 01:29:40 GMT  
		Size: 16.7 MB (16664999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868c15715c4a5a8704476344b88ec0da706d229d250bcb7c686ee8e4d9962fef`  
		Last Modified: Tue, 12 Mar 2019 01:36:10 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f787c3bd153c04edc0315a0d8eab6f78aa8f96bc6b4e13f375774ed3d12098f9`  
		Last Modified: Tue, 12 Mar 2019 01:36:10 GMT  
		Size: 5.5 KB (5528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa6febea6c4119d5ccd2246ba747576c6c34e96ff2ab4367d9b944b112bc69c`  
		Last Modified: Fri, 29 Mar 2019 21:49:00 GMT  
		Size: 219.3 MB (219273948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a020ab0beafa47163b93b084574521a66441a98770a5a47e33e034e8cf738055`  
		Last Modified: Fri, 29 Mar 2019 21:48:08 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56417e0013d00dc1f6e029a1c5312df657cb5e6e4e061c7e8fa5d12877148337`  
		Last Modified: Fri, 29 Mar 2019 21:50:25 GMT  
		Size: 242.2 MB (242210714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

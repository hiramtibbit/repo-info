## `gazebo:gzserver6-trusty`

```console
$ docker pull gazebo@sha256:44de9125c01d76748c59ad27dc657649af8eae3cfc3b2d9c992754d127539048
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `gazebo:gzserver6-trusty` - linux; amd64

```console
$ docker pull gazebo@sha256:1aa7904841b96d0f4f712073c3d6ec843e6765cbcba8ac77fb839adb3e5d3927
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.5 MB (244488160 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae502acf11288e54562063b494f2b6d1f470e53fcebc79f7aecb1db6e3d715b0`
-	Entrypoint: `["\/gzserver_entrypoint.sh"]`
-	Default Command: `["gzserver"]`

```dockerfile
# Thu, 12 Apr 2018 18:38:59 GMT
ADD file:6eca4ad395f3f9986f9edf8cc1cc454f7247e63f18bdd8bdb914537ef55b9c88 in / 
# Thu, 12 Apr 2018 18:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:39:01 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:39:02 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:39:03 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:39:03 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 23:33:45 GMT
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2486D2DD83DB69272AFE98867170598AF249743
# Thu, 12 Apr 2018 23:33:46 GMT
RUN . /etc/os-release     && . /etc/lsb-release     && echo "deb http://packages.osrfoundation.org/gazebo/$ID-stable $DISTRIB_CODENAME main" > /etc/apt/sources.list.d/gazebo-latest.list
# Fri, 13 Apr 2018 00:21:16 GMT
RUN apt-get update && apt-get install -q -y     gazebo6=6.7.0-1*     && rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 00:21:16 GMT
EXPOSE 11345/tcp
# Fri, 13 Apr 2018 00:21:17 GMT
COPY file:5869092530419fa234b6d43a32bf8687d0d509fced55597b2e241dd58b3d1335 in / 
# Fri, 13 Apr 2018 00:21:17 GMT
ENTRYPOINT ["/gzserver_entrypoint.sh"]
# Fri, 13 Apr 2018 00:21:17 GMT
CMD ["gzserver"]
```

-	Layers:
	-	`sha256:c2c80a08aa8cdf0629269bab360b225d96a511b4c4ccb5f9c1d2abe01ff23d6f`  
		Last Modified: Thu, 12 Apr 2018 19:39:19 GMT  
		Size: 73.1 MB (73064548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ace04d7a4a23236b2e4578bc607a21157cfcd3203d0e26a3d1dfcbb2b918db6`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03114bcfb255c8eaa7fe33bbe409e7070993ee96152b9a04a7b6db0c3da5130`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99df439878124298f9d5577c286e59d7f012baedb7cf8d69d104f5d87d727c28`  
		Last Modified: Thu, 12 Apr 2018 19:38:59 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c646cd4d1557832b81ce6e956a18f791bdcce470290be8b23f153811a8d372f`  
		Last Modified: Thu, 12 Apr 2018 19:39:10 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cdde1f371a819fcaddbabfd04371bd9147a290ed0c587c7f5d68d722be6d326`  
		Last Modified: Fri, 13 Apr 2018 02:16:21 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc9dff326fbc9fd35342c4fe1b022d0400416adaf35e021bbd9cc73eeb4b166e`  
		Last Modified: Fri, 13 Apr 2018 02:16:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8298e42e2a36667e60de5e0e0f772b7d380fa202d8a52034a1e44f8be47301f3`  
		Last Modified: Fri, 13 Apr 2018 03:26:50 GMT  
		Size: 171.3 MB (171335780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d82d0f7eb3fe1fb56d05cbf49c88ff543009bed06ac40bf0dd407cbfd66af0e`  
		Last Modified: Fri, 13 Apr 2018 03:26:23 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

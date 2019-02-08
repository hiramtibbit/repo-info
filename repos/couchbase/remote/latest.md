## `couchbase:latest`

```console
$ docker pull couchbase@sha256:259150f95cdb07ef2d983b1d8029e019f309a520be3adc4ac636786fd5e97edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:0f39dc12be95a2e477a33c2c618cb1b4291ed54e71fb4722443c338dbedf390c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.5 MB (468520058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5403ed5c6ef4713b4d84bee3b77506331a3b6adfea543e0a5d15099b4838331a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 22 Jan 2019 22:48:13 GMT
ADD file:916a45030dee881bbc8bbabf8bcfcc8828c29ce1c318000950bbe84c57f9df73 in / 
# Tue, 22 Jan 2019 22:48:15 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 22 Jan 2019 22:48:17 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 22:48:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 22 Jan 2019 22:48:19 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 09:08:35 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 23 Jan 2019 09:09:05 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 08 Feb 2019 00:19:30 GMT
ARG CB_VERSION=6.0.1
# Fri, 08 Feb 2019 00:19:37 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 08 Feb 2019 00:19:38 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Fri, 08 Feb 2019 00:19:38 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Fri, 08 Feb 2019 00:19:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 08 Feb 2019 00:19:39 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 08 Feb 2019 00:20:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 08 Feb 2019 00:20:36 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Fri, 08 Feb 2019 00:20:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Fri, 08 Feb 2019 00:20:37 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 08 Feb 2019 00:20:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 08 Feb 2019 00:20:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 08 Feb 2019 00:20:38 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Fri, 08 Feb 2019 00:20:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 08 Feb 2019 00:20:39 GMT
CMD ["couchbase-server"]
# Fri, 08 Feb 2019 00:20:39 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 08 Feb 2019 00:20:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:7b722c1070cdf5188f1f9e43b8413157f8dfb2b4fe84db3c03cb492379a42fcc`  
		Last Modified: Tue, 22 Jan 2019 22:50:41 GMT  
		Size: 43.5 MB (43521448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fbf74db61f1459176d8647ba8f53f8e6cf933a2e56f73f0e8da81213117b7e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed41cb72e5c918bdbd78e68f02930a3f1cf1d6079402b0a5b19de8508e67b766`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ea47a67709ebea8efed59fbda703dbd00a0d2cae7e2808959744bfa30bfc0e9`  
		Last Modified: Tue, 22 Jan 2019 22:50:30 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca04de705515f2e6f0b8add8c13e40024b257168aa3c3094f043c147d10a86ba`  
		Last Modified: Wed, 23 Jan 2019 09:10:57 GMT  
		Size: 14.3 MB (14298170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4501048cac1d09e5bf572befd49b4f444c4c67ae7cc3e39d760c60725d05da2a`  
		Last Modified: Fri, 08 Feb 2019 00:20:55 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:018e29d438d08d4d31261d26e6d605a2a92290fe638f0de6222a1635fad3c40f`  
		Last Modified: Fri, 08 Feb 2019 00:21:43 GMT  
		Size: 410.6 MB (410574097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3adb57f5f13cf57f7ad46c541bf1d38d3e3d11d72da34e862a36097e5faf2e2e`  
		Last Modified: Fri, 08 Feb 2019 00:20:55 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:405d313538909eb0bc91e07b3b9c483f23e91a2886bf3b4ae157fb5c43fded63`  
		Last Modified: Fri, 08 Feb 2019 00:20:55 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e1e378193889ee150c37a4d7795524bd785a617c92294ee4a962f5d10550c8`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ab3476df54e94eaa9420ab9be2ebe2bf4fce075355ce9f20a0f327c79eb5c57`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4d3afe62c0b4fe583b1b449972b3bcba4b6af692334ec5742d865c791270417`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 120.6 KB (120602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83a13cae8beee164e6f75818a9a97d8f3685e85b07c53534a8a22451f201fc52`  
		Last Modified: Fri, 08 Feb 2019 00:20:54 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

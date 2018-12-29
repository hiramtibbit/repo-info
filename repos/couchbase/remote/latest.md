## `couchbase:latest`

```console
$ docker pull couchbase@sha256:dfdb66d71e315864efd60b5428adc64436d972eef5cbfe4be5b2a123d1b93bc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:5dc79fe0d151a58b38b3bb379e6f5c8da8659c6bc60a715293cd6995aa77b36e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (344959113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21130e980800637a263b92e00faa47e9a6c5563f0047d0de8a5ac6c9db16fa6d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 28 Dec 2018 23:25:34 GMT
ADD file:7f95be7c8278786d52495288f3e55febaa3341412888e021c65f07ae6885d1ff in / 
# Fri, 28 Dec 2018 23:25:38 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 28 Dec 2018 23:25:39 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:25:40 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 28 Dec 2018 23:25:40 GMT
CMD ["/bin/bash"]
# Fri, 28 Dec 2018 23:45:18 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Fri, 28 Dec 2018 23:45:42 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Fri, 28 Dec 2018 23:45:43 GMT
ARG CB_VERSION=6.0.0
# Fri, 28 Dec 2018 23:45:43 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Fri, 28 Dec 2018 23:45:43 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Fri, 28 Dec 2018 23:45:43 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Fri, 28 Dec 2018 23:45:44 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Fri, 28 Dec 2018 23:45:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Fri, 28 Dec 2018 23:46:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Fri, 28 Dec 2018 23:46:17 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Fri, 28 Dec 2018 23:46:18 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Fri, 28 Dec 2018 23:46:18 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Fri, 28 Dec 2018 23:46:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Fri, 28 Dec 2018 23:46:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Fri, 28 Dec 2018 23:46:20 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Fri, 28 Dec 2018 23:46:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 28 Dec 2018 23:46:20 GMT
CMD ["couchbase-server"]
# Fri, 28 Dec 2018 23:46:20 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Fri, 28 Dec 2018 23:46:20 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:b849b56b69e770db0ae9e71f818f5be89ba0e30c14133c8a0c7b2ca0eeac15b4`  
		Last Modified: Tue, 18 Dec 2018 08:25:21 GMT  
		Size: 43.4 MB (43442989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42986ef25bcd19ccfcb5964cdffc5704dcb663c9c7bbb494707c9aa7b1c4f1d5`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 845.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d927c1b717ec274345e85adaa6f1074974d943fd3481cd64e9488ad9841e3016`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b86ea202330d8a60b52809277c566a318663dc824319ddfca663e6c90ae7bd`  
		Last Modified: Fri, 28 Dec 2018 23:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f5c722901134f67ae28c139c18055c585b102c5e1f181889c58bec828d6b2eb`  
		Last Modified: Fri, 28 Dec 2018 23:47:14 GMT  
		Size: 14.3 MB (14302189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c06909173ef472052ab7f0c5eab4a6c434c137aa3991cfb5d5484b3cf0cac089`  
		Last Modified: Fri, 28 Dec 2018 23:47:11 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fd3cbfd3063396ab5581b0d40f9af47e5f4c54b59f56e48db4d073e8bee9f36`  
		Last Modified: Fri, 28 Dec 2018 23:47:53 GMT  
		Size: 287.1 MB (287087599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c7ac10e421ce68da84921137b75de379a8f75f6602828588c4a15dac385d77`  
		Last Modified: Fri, 28 Dec 2018 23:47:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d601a547e6c877fbe081afbad4b9df745b48626c03f76499fd5cfa5b04a97365`  
		Last Modified: Fri, 28 Dec 2018 23:47:10 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e301a1aeb0eee133a7c488ecd84d32eba3fbf63ab7166f216d25e7a18378dd`  
		Last Modified: Fri, 28 Dec 2018 23:47:10 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4a401f356d7baa74d379ebdc2ba5a0d0774afacc819f69e5823e95cdd087d4`  
		Last Modified: Fri, 28 Dec 2018 23:47:10 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909af3c5a38eeac00abae8fb0a57f37e2db2a2a5095ee1859130595aceaccfcc`  
		Last Modified: Fri, 28 Dec 2018 23:47:10 GMT  
		Size: 120.6 KB (120596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb16c32740a24d9f45e9a5879f2c2cd45c071477622c563dab4859c1a7dab996`  
		Last Modified: Fri, 28 Dec 2018 23:47:11 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

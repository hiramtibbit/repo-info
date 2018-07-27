## `couchbase:community`

```console
$ docker pull couchbase@sha256:df34135efe9958e6c8e1af0fb9f463d588b0d1865090f7215c28094b6948916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:6fc651a76acd074f92b48b931bc98180db9f57e83a46651099150989c4126a66
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190567200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc851a248cc4426a7078ea7b6b127026e262160e0bb1da7cf2e6f8a9e5681ca7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 26 Jul 2018 22:23:08 GMT
ADD file:204fb7ccb19ff7e863331131138621ff4d22720b3718e8f296902cc7d4f635b5 in / 
# Thu, 26 Jul 2018 22:23:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 26 Jul 2018 22:23:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 26 Jul 2018 22:23:10 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 26 Jul 2018 22:23:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 26 Jul 2018 22:23:11 GMT
CMD ["/bin/bash"]
# Thu, 26 Jul 2018 23:06:23 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 26 Jul 2018 23:06:54 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 26 Jul 2018 23:08:20 GMT
ARG CB_VERSION=5.1.1
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb
# Thu, 26 Jul 2018 23:08:21 GMT
ARG CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb
# Thu, 26 Jul 2018 23:08:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 26 Jul 2018 23:08:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 26 Jul 2018 23:08:44 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 26 Jul 2018 23:08:44 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 26 Jul 2018 23:08:45 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 26 Jul 2018 23:08:46 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 26 Jul 2018 23:08:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 26 Jul 2018 23:08:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.1.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=b8d15af64710c61f8a98218c632becb400feec8a99a593f8e76aa3320fa58bbb CB_VERSION=5.1.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 26 Jul 2018 23:08:48 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 26 Jul 2018 23:08:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 26 Jul 2018 23:08:48 GMT
CMD ["couchbase-server"]
# Thu, 26 Jul 2018 23:08:48 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 26 Jul 2018 23:08:49 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:8ee29e426c26c79e7ba03ccc8bbc7fe99db00ffcbccb679d9c643b5546d8dc8a`  
		Last Modified: Thu, 26 Jul 2018 22:27:22 GMT  
		Size: 43.2 MB (43228646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e83b260b73b908ebabde46b72fc5790bf4f029b53acbbfe35da8ff8fba795ac`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b65fd1143ee4f9b7b6b958aeafdb996172d10b723f0bba24335a8f7ae692c`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40dca07f8222e24aab97f026444d66a7604e4ae2b708cf079ff67a90c42efa60`  
		Last Modified: Thu, 26 Jul 2018 22:26:53 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b420ae9e10b3f6a74f527914bc3c766b128435a62eca1061f41167205d5b0230`  
		Last Modified: Thu, 26 Jul 2018 22:26:54 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08dfef37a65dc49d6a9dc8038b622e16101e8a22ac730ff3886369b4f8ac4b64`  
		Last Modified: Thu, 26 Jul 2018 23:09:27 GMT  
		Size: 14.3 MB (14295515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:705d76dba384edef38fc262951379e03f4f0bcc3e040cc41b3350f5201b2a252`  
		Last Modified: Thu, 26 Jul 2018 23:12:23 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9350eb60e79d709d9f099d1b4c1ff74e83fceb57b03473672cc0995181ebe23`  
		Last Modified: Thu, 26 Jul 2018 23:13:04 GMT  
		Size: 132.9 MB (132928909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c28e0edcfe87011fe4bcb85eaa34e27e00c5e91883d5bfd62f7a0d0712b4140`  
		Last Modified: Thu, 26 Jul 2018 23:12:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f3f65b990ee7c106aaa99705760e4373b3ee24f75aa327280b75afd7695958e`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c23609b3ae7320f63550de6cab6a60a03bcdadc66bc7b9a1ebb5ce7f4dd5b8ac`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:132aa1e90383ea9c6e5eb402ac29c9607716c69586220e8f00673459312c1829`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30c69a550b476a135143129a027d3a179d84288bb748aecc85770fe6b3206d73`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 107.5 KB (107458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cec1a24ed55ac08d08d97c6842d7bf09068cc4d4c572185a6b3e1a4c69b3c48`  
		Last Modified: Thu, 26 Jul 2018 23:12:16 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

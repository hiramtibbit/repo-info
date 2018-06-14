## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:a0206f28196e3492e827c005c171e13a9d537bbe2d2fa22e866c5f694d888642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:de265806d8673fe4404eff83deff3d58a2228bef182c9969abc3d31296c9c846
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.8 MB (215788797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03237c07e5bb8a4b4b48d5650d843c882ddd7bb435530e0880457a8ae9504b9b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 05 Jun 2018 21:21:33 GMT
ADD file:3c65bdbcf1318520e7af157cb00317c8312ec16bcaf181d0db919c45f0d7a85e in / 
# Tue, 05 Jun 2018 21:21:34 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 05 Jun 2018 21:21:35 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 21:21:35 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 05 Jun 2018 21:21:36 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 05 Jun 2018 21:21:36 GMT
CMD ["/bin/bash"]
# Tue, 05 Jun 2018 21:37:42 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 14 Jun 2018 05:22:44 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_VERSION=4.5.1
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Thu, 14 Jun 2018 05:24:17 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Thu, 14 Jun 2018 05:24:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 14 Jun 2018 05:24:19 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 14 Jun 2018 05:24:38 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 14 Jun 2018 05:24:39 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 14 Jun 2018 05:24:40 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 14 Jun 2018 05:24:40 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 14 Jun 2018 05:24:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 14 Jun 2018 05:24:41 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 14 Jun 2018 05:24:42 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 14 Jun 2018 05:24:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 14 Jun 2018 05:24:42 GMT
CMD ["couchbase-server"]
# Thu, 14 Jun 2018 05:24:42 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 14 Jun 2018 05:24:43 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:28bfaceaff9b7464b1e768b0af7e1efe7877a34f238f935c36978a1ecf82c9b1`  
		Last Modified: Mon, 04 Jun 2018 14:56:53 GMT  
		Size: 73.2 MB (73162466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac540055f2f8da75b6587a88763021178d876a2b789ff0c696fbdb62485b62cd`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 72.7 KB (72656 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2965585ef8b8370dc8c443e35c743ba723ee427c515535e3ff35d898804cacf9`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 631.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2416bb9f3ad2b5b0c700a4412e2ffbb671f001c45b4b7433ecdcc9c352847814`  
		Last Modified: Tue, 05 Jun 2018 21:24:10 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b55a6a680757144baae1671d00d4328eee63e790ab36b27d8d52ceb62b179f`  
		Last Modified: Tue, 05 Jun 2018 21:24:12 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65043da38bf6d1125f0a3258db417dbf91e4da9da1003de91112f359bf19742`  
		Last Modified: Thu, 14 Jun 2018 05:27:14 GMT  
		Size: 11.4 MB (11391228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c838b34e75f1fa8d6e062f21adc2f72d7f96b11fc44541f831bf5acb359a714`  
		Last Modified: Thu, 14 Jun 2018 05:28:53 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3377552bc6d33c72f28b6236e35903a6e64f85a073c7aac0085aeacbfc1c101`  
		Last Modified: Thu, 14 Jun 2018 05:29:16 GMT  
		Size: 131.1 MB (131051373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d3ac2219e1509d159f81b2bd4f586f402adf01d9d91c753d9257d4a7ed2ad3`  
		Last Modified: Thu, 14 Jun 2018 05:28:53 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ae97cf063e57d49ca42b270f2086163ddc4085ca70966769486a830345fa22c`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45cced2145e5158e3dc03a2c9bbddeab5fcc0026d83f6b20b6002c910e7fa25`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1909067366bff4dabc83c77c90961dc23309949757007df7f339f9c4efeb5e6d`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7abc4a6f30e163deb6b129be2d1fa0bc1d55a14837cf050666420d929692386c`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ea9ec4493ddfc2370267a93982d2d67665c3ee4e6e2f6cc9f97eb831d1de93`  
		Last Modified: Thu, 14 Jun 2018 05:28:51 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

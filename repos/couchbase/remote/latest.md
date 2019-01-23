## `couchbase:latest`

```console
$ docker pull couchbase@sha256:342fb755176fb28c826b705721d69eb0fbba8631fd41f3a103806c235bbc6760
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:7a6bb9a0c6dd3872faa921c2585cf5f2ce9204884507ef3c7321c3b1f7356f24
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.0 MB (345033606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08c927f8524a28fb8b76f369a89b2570eb6b92ba5b758dc1a87c6cf5256bf0cc`
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
# Wed, 23 Jan 2019 09:09:06 GMT
ARG CB_VERSION=6.0.0
# Wed, 23 Jan 2019 09:09:06 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 23 Jan 2019 09:09:06 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb
# Wed, 23 Jan 2019 09:09:07 GMT
ARG CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686
# Wed, 23 Jan 2019 09:09:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 23 Jan 2019 09:09:08 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 23 Jan 2019 09:09:46 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 23 Jan 2019 09:09:46 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 23 Jan 2019 09:09:47 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Wed, 23 Jan 2019 09:09:47 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 23 Jan 2019 09:09:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 23 Jan 2019 09:09:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d8181915e088a9bb2213080824ecf6ebc093a726fffbc54fd61d6f456781f686 CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 23 Jan 2019 09:09:49 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 23 Jan 2019 09:09:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 23 Jan 2019 09:09:50 GMT
CMD ["couchbase-server"]
# Wed, 23 Jan 2019 09:09:50 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 23 Jan 2019 09:09:50 GMT
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
	-	`sha256:ce20af7f0ef5e3e8e374ccd7b167a265987df7a7544ffa329ef16db7498359cd`  
		Last Modified: Wed, 23 Jan 2019 09:10:52 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397a78ce7d99f32ca297c86c04d5e12d706a4b444f045764d8797ba4a64bbb8d`  
		Last Modified: Wed, 23 Jan 2019 09:11:56 GMT  
		Size: 287.1 MB (287087651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a9f0b5672f04845a47073d70347388f119c1ef4791d7b67296964ff81d118e`  
		Last Modified: Wed, 23 Jan 2019 09:10:51 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c755e368998630a07d7ebe1087ce546b0ae34768b7729d42b8ac10dacc96a91`  
		Last Modified: Wed, 23 Jan 2019 09:10:50 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da66694ebab86a9fac25182a523d8dc2c69bd62f803af2b7e2400b67ac645aad`  
		Last Modified: Wed, 23 Jan 2019 09:10:50 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378756cb2dddc3851566b43e6af6b8e37e9afbd6e5880033eed3911f7cc76595`  
		Last Modified: Wed, 23 Jan 2019 09:10:50 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819c17bd23b290d75b7e00c8c1e63077fbc9dd34e41ea20c6aae60e80bc234d0`  
		Last Modified: Wed, 23 Jan 2019 09:10:50 GMT  
		Size: 120.6 KB (120598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1b06acba80ddee60926f5d2eaae60d93e5c512ac826bd25ea930ddf6d5fd56`  
		Last Modified: Wed, 23 Jan 2019 09:10:50 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

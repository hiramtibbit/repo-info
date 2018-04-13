## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:c66859234e2eba8d48ad3612b4e85edecb050af2a649e0eb04ebd31631434c4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:4c041d53461c89ab0de9f2f001e9cb642a009f5b68ae6188679a5ef6b8a684ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189774096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a040d9fc51dffa4dd8a7f3829a4c17c35e01f722bc21c0ed9cc173fb7dfbed1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Thu, 12 Apr 2018 18:58:24 GMT
ADD file:4c266e490f4101f9726598288c14131a75242836f3eda375923ef1677ea8ab8e in / 
# Thu, 12 Apr 2018 18:58:25 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Thu, 12 Apr 2018 18:58:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Thu, 12 Apr 2018 18:58:26 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Thu, 12 Apr 2018 18:58:27 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Thu, 12 Apr 2018 18:58:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Apr 2018 21:35:53 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 12 Apr 2018 21:36:12 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_VERSION=5.0.1
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Thu, 12 Apr 2018 22:03:18 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Thu, 12 Apr 2018 22:03:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 12 Apr 2018 22:03:20 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 12 Apr 2018 22:03:34 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 12 Apr 2018 22:03:34 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 12 Apr 2018 22:03:35 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 12 Apr 2018 22:03:35 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 12 Apr 2018 22:03:36 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 12 Apr 2018 22:03:37 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 12 Apr 2018 22:03:37 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 12 Apr 2018 22:03:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 12 Apr 2018 22:03:38 GMT
CMD ["couchbase-server"]
# Thu, 12 Apr 2018 22:03:38 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Thu, 12 Apr 2018 22:03:39 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:d3938036b19cfa369e1081a6776b07b54be9612bc4c8fed7f139370c8142b79f`  
		Last Modified: Thu, 12 Apr 2018 19:49:15 GMT  
		Size: 43.0 MB (43022946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9b30c108bda615dc10e402f62d712f413214ea92c7ec4354cd1cc0f3450bc58`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67de21feec183fcd009a5eddc4de8c346ee0f4369a20047f1a302a90716fc741`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 619.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:817da545be2ba4bac8f6b4da584bca0fb4844938ecc462b9feab1001b5df7405`  
		Last Modified: Thu, 12 Apr 2018 19:49:04 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d967c497ce230b63996a7b1fc6ec95b741aea9348118d3328c676f13be789fa7`  
		Last Modified: Thu, 12 Apr 2018 19:49:03 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ae0a5d9e123a74194d92b829a5b0244f19f18d8b6b1eed4dd020ff3309b89`  
		Last Modified: Thu, 12 Apr 2018 22:28:21 GMT  
		Size: 13.8 MB (13847158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62817f1f98cb434a19db1a5564d0a54e31bd76bf6efd967bb5d6c5f9c11b21de`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4305e059ce51417ebb823d3309192358c2a3e303f53118b0a51552b79bf28794`  
		Last Modified: Thu, 12 Apr 2018 22:54:22 GMT  
		Size: 132.8 MB (132789854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5238b99e26ae66d031158263e7334e3f116280ad8401df1f0375fb54ea0be05`  
		Last Modified: Thu, 12 Apr 2018 22:53:59 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2510601e416ad7daa9fa9f5641b177d805c8619ffb01ab804e557a68c61d87f`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:117716e2c125ad26585bb64bf6a62b547164ca3f6b54014f58abe2580bb99468`  
		Last Modified: Thu, 12 Apr 2018 22:53:58 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e5bef280f30d092bd262361e63303836ec45d6ed1f2337df5bdc68d76ad867`  
		Last Modified: Thu, 12 Apr 2018 22:53:56 GMT  
		Size: 217.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b110ef937de5bab0548ce5e78dada693883d51843b131835f8aaca6f5be4e2fc`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 107.5 KB (107455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b423ffe3c6c3fc09355c60c21f611d89ce096883324134a6a51b28edda385a9e`  
		Last Modified: Thu, 12 Apr 2018 22:53:57 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

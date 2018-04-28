## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:969fbe5d3d7cdb0ace7dd99a500326e00b2d0c6077a2e6484f142277902b5636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:a2265dec545bfe4ce3a4f71ce68ca64427595d4e90d9cd522fc517aadba558e4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.8 MB (189776805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1112574ea3ce5da8733ed2179ce2c7f6a95fd01ebc60afb7fa4dfaa0b7de71a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:00:57 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 28 Apr 2018 12:01:48 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 28 Apr 2018 12:21:11 GMT
ARG CB_VERSION=5.0.1
# Sat, 28 Apr 2018 12:21:11 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 28 Apr 2018 12:21:11 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Sat, 28 Apr 2018 12:21:11 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Sat, 28 Apr 2018 12:21:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 28 Apr 2018 12:21:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 28 Apr 2018 12:21:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 28 Apr 2018 12:21:28 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Sat, 28 Apr 2018 12:21:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Sat, 28 Apr 2018 12:21:29 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:21:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 28 Apr 2018 12:21:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 28 Apr 2018 12:21:31 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Sat, 28 Apr 2018 12:21:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 12:21:32 GMT
CMD ["couchbase-server"]
# Sat, 28 Apr 2018 12:21:32 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 28 Apr 2018 12:21:32 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd702361c6a7bd9a46d9d4b47e1b7ab9b8725ffe7d1401b61ee938edc7b93eb1`  
		Last Modified: Sat, 28 Apr 2018 12:24:13 GMT  
		Size: 13.8 MB (13846186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c5b9c90c113a82bfeac29fea3b03adde5f35fe812e317672cdfeffbff97f27`  
		Last Modified: Sat, 28 Apr 2018 13:17:04 GMT  
		Size: 2.1 KB (2078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cfe93ffcd6200c55005ad6786821271b79d36d3f4ab29e1304be55616f97802`  
		Last Modified: Sat, 28 Apr 2018 13:17:30 GMT  
		Size: 132.8 MB (132789626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84dd480f6f32f50c8f106677093863b1b00e1f104d4034ab04eeca2eff5967cb`  
		Last Modified: Sat, 28 Apr 2018 13:17:05 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a657ba786135265da36d5281303796f031bb320716ed24174cfe4788a0c78f`  
		Last Modified: Sat, 28 Apr 2018 13:17:03 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab6b13658f57ecb8ce3e459594666ed1c77b7f3602f8fb4b81e233aa0a7c8125`  
		Last Modified: Sat, 28 Apr 2018 13:17:02 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cac2c21d99074bd5137d97828db7ac6f06ff5f54d4aad0f6a5c0af0a8d82b6e`  
		Last Modified: Sat, 28 Apr 2018 13:17:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270fe9ea8115fc0f3eb2a7e83063dce43829226f49c643f20baa97d714dc0d52`  
		Last Modified: Sat, 28 Apr 2018 13:17:02 GMT  
		Size: 107.5 KB (107453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f720af64563a1ae6627d3a6853438ff49bdd99c52cdf8802f490f9324818b55`  
		Last Modified: Sat, 28 Apr 2018 13:17:02 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

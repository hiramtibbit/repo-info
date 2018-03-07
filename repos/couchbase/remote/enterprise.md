## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:60008aed9eba40c71218729149f1ee878b51ea52f437d639b519cddcc6ccae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:133dd3be3c3d54ceed5ba897daa38b7792339aec4c84c2dc4c35b387a54b227e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200010752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51af7c25ee3a6d409d1766193daa030841f095b35d013e789047d770b8c0b5b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 06 Mar 2018 22:17:23 GMT
ADD file:c753df38640ab6e246d9e66f0cef7156b7003976080b1e0b83e5717cd6ef1725 in / 
# Tue, 06 Mar 2018 22:17:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:17:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:17:25 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:17:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:17:26 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:35:58 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 06 Mar 2018 23:36:14 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 06 Mar 2018 23:36:15 GMT
ARG CB_VERSION=5.1.0
# Tue, 06 Mar 2018 23:36:15 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:36:15 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb
# Tue, 06 Mar 2018 23:36:15 GMT
ARG CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76
# Tue, 06 Mar 2018 23:36:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:36:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:36:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:36:31 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:36:31 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:36:32 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:36:32 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:36:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.1.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=4d6a1f159577f283f6f980f6ab9161630eb2d8fd228429029de004b1be46ad76 CB_VERSION=5.1.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:36:33 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:36:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:36:34 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:36:34 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:36:35 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:22dc81ace0ea2f45ad67b790cddad29a45e206d51db0af826dc9495ba21a0b06`  
		Last Modified: Mon, 05 Mar 2018 14:50:20 GMT  
		Size: 43.0 MB (42963776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a8b3c87dba3ed16956c881a26eb0c40502c176a35767627d87557d16ea1e0df`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91390a1c435a20661a9e9afdaeb818638299a20d6ee1cc06bbcab8ae4d51994f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 620.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07844b14977e91f82408cbb8932c7d6141d6ca8da7d6587b4d3065750d69186f`  
		Last Modified: Tue, 06 Mar 2018 22:21:35 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b78396653dae2bc0d9c02c0178bd904bb12195b2b4e541a92cd8793ac7d7d689`  
		Last Modified: Tue, 06 Mar 2018 22:21:36 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0ac7d1a08de5dc6805a9a3f6cdc92d69bcadc62f51edde0bb32f1d11af33b2b`  
		Last Modified: Tue, 06 Mar 2018 23:46:44 GMT  
		Size: 13.8 MB (13846915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7594fb4cea2293bc9ae6126704f1522dcd9ada315293c154becf96b9bf05cab8`  
		Last Modified: Tue, 06 Mar 2018 23:46:41 GMT  
		Size: 2.1 KB (2071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e24cf4f522d040b64e661839c871ff9b9da44be7a622a94b2487091f2f67888`  
		Last Modified: Tue, 06 Mar 2018 23:47:05 GMT  
		Size: 143.1 MB (143085925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3014255cbf04472046cea80abb1bc56f19c827ab9e763f941df964074f5f64b4`  
		Last Modified: Tue, 06 Mar 2018 23:46:40 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26f4cd5c4035d45c73986e31a5b69a67c663e8e1737587810a56e0cc8fa2c8b4`  
		Last Modified: Tue, 06 Mar 2018 23:46:38 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccd118906f6e0ce100eff46a517635513aeba573ee86b1f02ff5dc346297183`  
		Last Modified: Tue, 06 Mar 2018 23:46:38 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c11bbaeca629810aed09c5c4dd593194ea2c7f2e01737ca0305777d27d4dc9`  
		Last Modified: Tue, 06 Mar 2018 23:46:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70e74ed8fd638d525e15d3dd200712e615cbdf71bf756e7e491473572bd706c`  
		Last Modified: Tue, 06 Mar 2018 23:46:38 GMT  
		Size: 107.5 KB (107456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0d4ed06797f691facbdef4fd61074974a90b3d511842ed2139e6ec44851d21`  
		Last Modified: Tue, 06 Mar 2018 23:46:38 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

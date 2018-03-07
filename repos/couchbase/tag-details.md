<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:4.6.4`](#couchbase464)
-	[`couchbase:5.1.0`](#couchbase510)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-4.5.1`](#couchbasecommunity-451)
-	[`couchbase:community-5.0.1`](#couchbasecommunity-501)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-4.6.4`](#couchbaseenterprise-464)
-	[`couchbase:enterprise-5.1.0`](#couchbaseenterprise-510)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:4.6.4`

```console
$ docker pull couchbase@sha256:c386ef7d7199addcd3ab94103d55d7d7a468b34f8290d1c26ee01e208ae07368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:abeb87f5d0e456ed0e62b1d4cbd2d2db5a980f4aebe51dae0d55b9fcfbdfdd53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218946636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b7b9fe43bb4d002c264c2bc54eac5bcf1261d24af57541a44e534af9f51f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:36:52 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 06 Mar 2018 23:37:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 06 Mar 2018 23:37:28 GMT
ARG CB_VERSION=4.6.4
# Tue, 06 Mar 2018 23:37:28 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:37:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Tue, 06 Mar 2018 23:37:29 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Tue, 06 Mar 2018 23:37:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:37:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:37:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:37:52 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:37:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:37:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:37:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:37:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:37:55 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:37:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:37:56 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:37:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:37:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2b92a639c6e11ca043043dff9ad95fa8e76a4d712938e60f5c1c43309693cd`  
		Last Modified: Tue, 06 Mar 2018 23:48:23 GMT  
		Size: 11.4 MB (11391436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427f511fbe09d708b44e7a7878c35c2cb81cd1087a49dfda77c0d75326ad3365`  
		Last Modified: Tue, 06 Mar 2018 23:48:19 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f30c6f9ec5057e826924a15baaf426adba96b50b9ae5c6e3e979a671f1fda`  
		Last Modified: Tue, 06 Mar 2018 23:48:44 GMT  
		Size: 134.4 MB (134374596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902faea32e3fedcb7b64eb395cad629a28f79bbbf329ba9187779e0b77749c8`  
		Last Modified: Tue, 06 Mar 2018 23:48:18 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57d2228293bf38bd5e18f0cd6787d537051e5fe775468f6086796e0f9b433b3`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864335f4bde45dfc26200814fbab8722b84d77c642833e8e5bae4a52693f3fc4`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2a38a719bbb886a7436b52843c1af56ccac467373843207904cd0f90c8128f`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0e6aab076f3c53d54d65cbd82ee82195ad9ddfd0247755f1dedc6f4cce3f9b`  
		Last Modified: Tue, 06 Mar 2018 23:48:17 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1b7204592a58e062b189e8f65f86ed405af8f5c9a5ee7587f350814a19e320`  
		Last Modified: Tue, 06 Mar 2018 23:48:17 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:5.1.0`

```console
$ docker pull couchbase@sha256:60008aed9eba40c71218729149f1ee878b51ea52f437d639b519cddcc6ccae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:5.1.0` - linux; amd64

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

## `couchbase:community`

```console
$ docker pull couchbase@sha256:11ecc49fd44bc54abfe0d139373e8d1f8c8d89304116229a80f373694903421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:37a037a688d6d7eefd73b79b9fcc75fd2a40a9c09c194dafb9cddb409a4b65c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189714164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4ab304572093708054554ded81d5474926791824c9479a2f4dc360b01f00e1`
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
# Tue, 06 Mar 2018 23:42:31 GMT
ARG CB_VERSION=5.0.1
# Tue, 06 Mar 2018 23:42:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:42:32 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Tue, 06 Mar 2018 23:42:32 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Tue, 06 Mar 2018 23:42:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:42:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:42:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:42:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:42:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:42:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:42:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:42:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:42:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:42:52 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:42:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:42:52 GMT
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
	-	`sha256:f272d722f4286494bf28a33761947ec5c790073452c4f82d368d12477e3235e6`  
		Last Modified: Tue, 06 Mar 2018 23:49:26 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c84411458b8b7469ac0318d7760b34632b8026354499694f2d2518c568e9c6e`  
		Last Modified: Tue, 06 Mar 2018 23:49:43 GMT  
		Size: 132.8 MB (132789336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa79bea40544d064cc14eb99bf29ed54103e7b3efbc6f997348455b08778788`  
		Last Modified: Tue, 06 Mar 2018 23:49:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c1f6870f3078bfa346510064fff2642d2b29f7d1b4c3c46f3460ed28e163fa`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399332e45f1e1f822302818ddc30fb68c9002e56097fbfaa7fb2d278ef49e34`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c92a94f1ed6a27d9a157d1bff1722a3ca2e7c699853267758e9c62750398b6f`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a0c298039d032efdc17a456f3c3480df19c49e0a00012b2732a6af363bd72f`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 107.5 KB (107458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc1c488e2e338d83a8a220123fcd684dc9ff464f9add21b57bf0ea95ec4d227`  
		Last Modified: Tue, 06 Mar 2018 23:49:23 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:9a2b0e5642dd7a384d6cb747b56c696ffc94b533ee60777c66b72ab12f0770a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:04f2f25b324923f70a8ee7f423bffb90981deaed345ed7c41b7d1fbf9025a2b7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.6 MB (215623457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:128fe1da8795654993c98222f4a4deca9ae6e7e85e559664ccb9da88c6d618cb`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:36:52 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 06 Mar 2018 23:37:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 06 Mar 2018 23:43:07 GMT
ARG CB_VERSION=4.5.1
# Tue, 06 Mar 2018 23:43:08 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:43:08 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Tue, 06 Mar 2018 23:43:08 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Tue, 06 Mar 2018 23:43:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:43:09 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:43:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:43:24 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:43:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:43:25 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:43:26 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:43:27 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:43:27 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:43:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:43:28 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:43:28 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:43:28 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2b92a639c6e11ca043043dff9ad95fa8e76a4d712938e60f5c1c43309693cd`  
		Last Modified: Tue, 06 Mar 2018 23:48:23 GMT  
		Size: 11.4 MB (11391436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9794b06384c60ddc64818380ea33ec8f5a96c11feb6593bfebbddd11b5e1fa5`  
		Last Modified: Tue, 06 Mar 2018 23:50:23 GMT  
		Size: 1.9 KB (1909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c32144824312a6516584a281fc52d855337d30825f078e54af7dd9edb3238d89`  
		Last Modified: Tue, 06 Mar 2018 23:50:41 GMT  
		Size: 131.1 MB (131051430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:383c45e198674ee76e475a195d95caccf5aa9ab440ad5fc78d57205d9c377673`  
		Last Modified: Tue, 06 Mar 2018 23:50:23 GMT  
		Size: 401.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:570a811909db53c9948a6462de1ad2965a11a8062613f753606e0edd5b97192f`  
		Last Modified: Tue, 06 Mar 2018 23:50:21 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efe07402cb595d164c6ce63b0dbf1f2c117d1e45fda93068e7ead728da6088ad`  
		Last Modified: Tue, 06 Mar 2018 23:50:21 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b694834f048c73bf97ffecea8f9f7cce48e3840be54acd8d6959fcccee0ba2ed`  
		Last Modified: Tue, 06 Mar 2018 23:50:22 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e5521ef96a0ddb6f2e060ea2dc9253ede8f6fda7cd648cb021685907f760db`  
		Last Modified: Tue, 06 Mar 2018 23:50:21 GMT  
		Size: 105.4 KB (105403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441c5d4f73816131cd29d539de727603b86d83450eb92d1caada0ea15b56dd48`  
		Last Modified: Tue, 06 Mar 2018 23:50:21 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-5.0.1`

```console
$ docker pull couchbase@sha256:11ecc49fd44bc54abfe0d139373e8d1f8c8d89304116229a80f373694903421d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-5.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:37a037a688d6d7eefd73b79b9fcc75fd2a40a9c09c194dafb9cddb409a4b65c1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.7 MB (189714164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee4ab304572093708054554ded81d5474926791824c9479a2f4dc360b01f00e1`
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
# Tue, 06 Mar 2018 23:42:31 GMT
ARG CB_VERSION=5.0.1
# Tue, 06 Mar 2018 23:42:31 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:42:32 GMT
ARG CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb
# Tue, 06 Mar 2018 23:42:32 GMT
ARG CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931
# Tue, 06 Mar 2018 23:42:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:42:33 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:42:48 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:42:48 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:42:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:42:49 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:42:50 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:42:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_5.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=44570a34323934a9e668787c26b13e8556e678de2de15052e383e5573cf34931 CB_VERSION=5.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:42:51 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:42:51 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:42:52 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:42:52 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:42:52 GMT
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
	-	`sha256:f272d722f4286494bf28a33761947ec5c790073452c4f82d368d12477e3235e6`  
		Last Modified: Tue, 06 Mar 2018 23:49:26 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c84411458b8b7469ac0318d7760b34632b8026354499694f2d2518c568e9c6e`  
		Last Modified: Tue, 06 Mar 2018 23:49:43 GMT  
		Size: 132.8 MB (132789336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fa79bea40544d064cc14eb99bf29ed54103e7b3efbc6f997348455b08778788`  
		Last Modified: Tue, 06 Mar 2018 23:49:26 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11c1f6870f3078bfa346510064fff2642d2b29f7d1b4c3c46f3460ed28e163fa`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7399332e45f1e1f822302818ddc30fb68c9002e56097fbfaa7fb2d278ef49e34`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c92a94f1ed6a27d9a157d1bff1722a3ca2e7c699853267758e9c62750398b6f`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 215.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80a0c298039d032efdc17a456f3c3480df19c49e0a00012b2732a6af363bd72f`  
		Last Modified: Tue, 06 Mar 2018 23:49:24 GMT  
		Size: 107.5 KB (107458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edc1c488e2e338d83a8a220123fcd684dc9ff464f9add21b57bf0ea95ec4d227`  
		Last Modified: Tue, 06 Mar 2018 23:49:23 GMT  
		Size: 858.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

## `couchbase:enterprise-4.6.4`

```console
$ docker pull couchbase@sha256:c386ef7d7199addcd3ab94103d55d7d7a468b34f8290d1c26ee01e208ae07368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-4.6.4` - linux; amd64

```console
$ docker pull couchbase@sha256:abeb87f5d0e456ed0e62b1d4cbd2d2db5a980f4aebe51dae0d55b9fcfbdfdd53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218946636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2b7b9fe43bb4d002c264c2bc54eac5bcf1261d24af57541a44e534af9f51f3`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 06 Mar 2018 22:16:48 GMT
ADD file:3900b83a46e97708aef19ab39e8e6d44b2a8443b193bdbed6f9b6bd722ef9f7f in / 
# Tue, 06 Mar 2018 22:16:49 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 06 Mar 2018 22:16:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 06 Mar 2018 22:16:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Tue, 06 Mar 2018 22:16:51 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 06 Mar 2018 22:16:52 GMT
CMD ["/bin/bash"]
# Tue, 06 Mar 2018 23:36:52 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Tue, 06 Mar 2018 23:37:28 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Tue, 06 Mar 2018 23:37:28 GMT
ARG CB_VERSION=4.6.4
# Tue, 06 Mar 2018 23:37:28 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Tue, 06 Mar 2018 23:37:29 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb
# Tue, 06 Mar 2018 23:37:29 GMT
ARG CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579
# Tue, 06 Mar 2018 23:37:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Tue, 06 Mar 2018 23:37:30 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Tue, 06 Mar 2018 23:37:51 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Tue, 06 Mar 2018 23:37:52 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Tue, 06 Mar 2018 23:37:53 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chown -R couchbase:couchbase /etc/service
# Tue, 06 Mar 2018 23:37:53 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Tue, 06 Mar 2018 23:37:54 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Tue, 06 Mar 2018 23:37:55 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_4.6.4-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=127f77825831f32cfa69704c699388413ae3b6f34dfd5eb1cb0fdb29e6a73579 CB_VERSION=4.6.4
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Tue, 06 Mar 2018 23:37:55 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Tue, 06 Mar 2018 23:37:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 23:37:56 GMT
CMD ["couchbase-server"]
# Tue, 06 Mar 2018 23:37:56 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Tue, 06 Mar 2018 23:37:56 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:99ad4e3ced4d361a0f042c611a6fe5295ed5364287276a96483b80ca85588041`  
		Last Modified: Mon, 05 Mar 2018 14:48:32 GMT  
		Size: 73.0 MB (72996858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5a723f4e2aa55867633696e9763c27fce7b7a143e30b36571a5f9a3142022c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 72.7 KB (72658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a175e11567c4a374dd86c53ab8744d9ba21046fbed1fea612d1d37ae0e24afa`  
		Last Modified: Tue, 06 Mar 2018 22:20:35 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d26426e95e04222aa7782fb871a3beeee110d03b312ed89b428e72c0b747b2c`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46e451596b7c64397d1d3c39cd6ea32a055f456fafaf3ce79a92725c9b47e404`  
		Last Modified: Tue, 06 Mar 2018 22:20:34 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a2b92a639c6e11ca043043dff9ad95fa8e76a4d712938e60f5c1c43309693cd`  
		Last Modified: Tue, 06 Mar 2018 23:48:23 GMT  
		Size: 11.4 MB (11391436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427f511fbe09d708b44e7a7878c35c2cb81cd1087a49dfda77c0d75326ad3365`  
		Last Modified: Tue, 06 Mar 2018 23:48:19 GMT  
		Size: 1.9 KB (1914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e5f30c6f9ec5057e826924a15baaf426adba96b50b9ae5c6e3e979a671f1fda`  
		Last Modified: Tue, 06 Mar 2018 23:48:44 GMT  
		Size: 134.4 MB (134374596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e902faea32e3fedcb7b64eb395cad629a28f79bbbf329ba9187779e0b77749c8`  
		Last Modified: Tue, 06 Mar 2018 23:48:18 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b57d2228293bf38bd5e18f0cd6787d537051e5fe775468f6086796e0f9b433b3`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 408.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864335f4bde45dfc26200814fbab8722b84d77c642833e8e5bae4a52693f3fc4`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe2a38a719bbb886a7436b52843c1af56ccac467373843207904cd0f90c8128f`  
		Last Modified: Tue, 06 Mar 2018 23:48:16 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd0e6aab076f3c53d54d65cbd82ee82195ad9ddfd0247755f1dedc6f4cce3f9b`  
		Last Modified: Tue, 06 Mar 2018 23:48:17 GMT  
		Size: 105.4 KB (105407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be1b7204592a58e062b189e8f65f86ed405af8f5c9a5ee7587f350814a19e320`  
		Last Modified: Tue, 06 Mar 2018 23:48:17 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-5.1.0`

```console
$ docker pull couchbase@sha256:60008aed9eba40c71218729149f1ee878b51ea52f437d639b519cddcc6ccae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.1.0` - linux; amd64

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

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:60008aed9eba40c71218729149f1ee878b51ea52f437d639b519cddcc6ccae47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

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

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `couchbase`

-	[`couchbase:6.0.1`](#couchbase601)
-	[`couchbase:community`](#couchbasecommunity)
-	[`couchbase:community-6.0.0`](#couchbasecommunity-600)
-	[`couchbase:enterprise`](#couchbaseenterprise)
-	[`couchbase:enterprise-6.0.1`](#couchbaseenterprise-601)
-	[`couchbase:latest`](#couchbaselatest)

## `couchbase:6.0.1`

```console
$ docker pull couchbase@sha256:574c24405b0231be9c745be79e360568c15240a5de90e7435ca149e128b182f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:6.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:28f81ab7fac6663ad2ceb2dabf8402589a7125cf940b7c1f4790442ad74843f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468872692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36248dbc0a281dbfe2eba391e56cf2b024e8e3fcc6fc573c97460d0fad678c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_VERSION=6.0.1
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:37:17 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Wed, 19 Jun 2019 02:37:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:37:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:38:16 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:38:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:38:17 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:38:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:38:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce90f4e18588773d175bcb19de294907f6c6677d89d412e2886066e6768b915f`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad007986d1259913235a27047935b866b5c2c7e95f1092f58267c2af056da0e`  
		Last Modified: Wed, 19 Jun 2019 02:40:00 GMT  
		Size: 410.6 MB (410574640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d8bf84cc548cc47d1ec70b4385d564f8074a9480a7ab8492f8bb42a23aeef5`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80f8dac21aa2225c1777427949be5e16ab444ef82a3815fc3ead84c4d08bf7`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58453d8a3754d2d4925816e5bdfc7302e52b3622d2d253c4f00e098eb7db81d3`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052f8e9d1c2fe4b2c107a80ad68f41880adf81f88addc9ce82783a5fd66e387`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309e88fff9724863197dbfb53e2e9220cedb7e9e56c47ecbbc1c46ee1668fb6`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e7cb473c202448a55fc44aa5a5e09f29ba71de5940bf1f0bf926aa6967eee`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community`

```console
$ docker pull couchbase@sha256:1e96836c2745ae0267807d4ce688e1f7b7244bfb0c60aee6c8e48a20c676110d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community` - linux; amd64

```console
$ docker pull couchbase@sha256:8d1c6847891fd0bc07fca80648ecd7de832fcb06dc754097209dbaa0d683f772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199185284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd037b82d86dc382320a32ef9322ee4cca2d32e2b28e744d5e6a9e8103d3c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_VERSION=6.0.0
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Wed, 19 Jun 2019 02:38:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:57 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:58 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:39:00 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:39:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:39:00 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:39:00 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:39:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff75e569c9840cc4d8bd05e21183d5ff0a1c4a32f3456444d34bf4b3d7234ad`  
		Last Modified: Wed, 19 Jun 2019 02:40:15 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663ca7363eeb9c0edf7c6fea7c96d064f88a6b1b5e4736c3938510add25246b3`  
		Last Modified: Wed, 19 Jun 2019 02:40:38 GMT  
		Size: 140.9 MB (140887242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185a521cc1d882c762f612c94793efb0bda03cf9798657cbb987e646da171011`  
		Last Modified: Wed, 19 Jun 2019 02:40:15 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9142e182c935c5980450b343fd1a9dc79c2c471a2bb5e2b5ba3409a696e3a9`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545b129e9f4adcc19032ed2dc31fe3f5f8be4fab72b6b70246453e7a326e96d0`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28ab8050bdff5a3534f6fe19166319f83996a631bf3e4c8a3fe8adf56c0b495`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a585122ae33a933ec2c9ff4e8be5afa233ac40623983c33477d93c6515455c`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6539f478a946746a6fe01e10cb51065ed193d262e14ae5a0a8ead02cc15be6ba`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-6.0.0`

```console
$ docker pull couchbase@sha256:1e96836c2745ae0267807d4ce688e1f7b7244bfb0c60aee6c8e48a20c676110d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-6.0.0` - linux; amd64

```console
$ docker pull couchbase@sha256:8d1c6847891fd0bc07fca80648ecd7de832fcb06dc754097209dbaa0d683f772
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.2 MB (199185284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebd037b82d86dc382320a32ef9322ee4cca2d32e2b28e744d5e6a9e8103d3c43`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_VERSION=6.0.0
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:38:27 GMT
ARG CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece
# Wed, 19 Jun 2019 02:38:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:38:28 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:56 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:57 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:58 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:58 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:59 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_6.0.0-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=949b1ded72776a557b9cd3ac89253a4fe6aed079966a4057c5aec41ae5a30ece CB_VERSION=6.0.0
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:39:00 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:39:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:39:00 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:39:00 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:39:00 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff75e569c9840cc4d8bd05e21183d5ff0a1c4a32f3456444d34bf4b3d7234ad`  
		Last Modified: Wed, 19 Jun 2019 02:40:15 GMT  
		Size: 2.1 KB (2079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663ca7363eeb9c0edf7c6fea7c96d064f88a6b1b5e4736c3938510add25246b3`  
		Last Modified: Wed, 19 Jun 2019 02:40:38 GMT  
		Size: 140.9 MB (140887242 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185a521cc1d882c762f612c94793efb0bda03cf9798657cbb987e646da171011`  
		Last Modified: Wed, 19 Jun 2019 02:40:15 GMT  
		Size: 405.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9142e182c935c5980450b343fd1a9dc79c2c471a2bb5e2b5ba3409a696e3a9`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 407.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:545b129e9f4adcc19032ed2dc31fe3f5f8be4fab72b6b70246453e7a326e96d0`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28ab8050bdff5a3534f6fe19166319f83996a631bf3e4c8a3fe8adf56c0b495`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a585122ae33a933ec2c9ff4e8be5afa233ac40623983c33477d93c6515455c`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6539f478a946746a6fe01e10cb51065ed193d262e14ae5a0a8ead02cc15be6ba`  
		Last Modified: Wed, 19 Jun 2019 02:40:14 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise`

```console
$ docker pull couchbase@sha256:574c24405b0231be9c745be79e360568c15240a5de90e7435ca149e128b182f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise` - linux; amd64

```console
$ docker pull couchbase@sha256:28f81ab7fac6663ad2ceb2dabf8402589a7125cf940b7c1f4790442ad74843f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468872692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36248dbc0a281dbfe2eba391e56cf2b024e8e3fcc6fc573c97460d0fad678c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_VERSION=6.0.1
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:37:17 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Wed, 19 Jun 2019 02:37:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:37:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:38:16 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:38:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:38:17 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:38:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:38:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce90f4e18588773d175bcb19de294907f6c6677d89d412e2886066e6768b915f`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad007986d1259913235a27047935b866b5c2c7e95f1092f58267c2af056da0e`  
		Last Modified: Wed, 19 Jun 2019 02:40:00 GMT  
		Size: 410.6 MB (410574640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d8bf84cc548cc47d1ec70b4385d564f8074a9480a7ab8492f8bb42a23aeef5`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80f8dac21aa2225c1777427949be5e16ab444ef82a3815fc3ead84c4d08bf7`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58453d8a3754d2d4925816e5bdfc7302e52b3622d2d253c4f00e098eb7db81d3`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052f8e9d1c2fe4b2c107a80ad68f41880adf81f88addc9ce82783a5fd66e387`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309e88fff9724863197dbfb53e2e9220cedb7e9e56c47ecbbc1c46ee1668fb6`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e7cb473c202448a55fc44aa5a5e09f29ba71de5940bf1f0bf926aa6967eee`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:enterprise-6.0.1`

```console
$ docker pull couchbase@sha256:574c24405b0231be9c745be79e360568c15240a5de90e7435ca149e128b182f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-6.0.1` - linux; amd64

```console
$ docker pull couchbase@sha256:28f81ab7fac6663ad2ceb2dabf8402589a7125cf940b7c1f4790442ad74843f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468872692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36248dbc0a281dbfe2eba391e56cf2b024e8e3fcc6fc573c97460d0fad678c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_VERSION=6.0.1
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:37:17 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Wed, 19 Jun 2019 02:37:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:37:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:38:16 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:38:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:38:17 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:38:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:38:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce90f4e18588773d175bcb19de294907f6c6677d89d412e2886066e6768b915f`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad007986d1259913235a27047935b866b5c2c7e95f1092f58267c2af056da0e`  
		Last Modified: Wed, 19 Jun 2019 02:40:00 GMT  
		Size: 410.6 MB (410574640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d8bf84cc548cc47d1ec70b4385d564f8074a9480a7ab8492f8bb42a23aeef5`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80f8dac21aa2225c1777427949be5e16ab444ef82a3815fc3ead84c4d08bf7`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58453d8a3754d2d4925816e5bdfc7302e52b3622d2d253c4f00e098eb7db81d3`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052f8e9d1c2fe4b2c107a80ad68f41880adf81f88addc9ce82783a5fd66e387`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309e88fff9724863197dbfb53e2e9220cedb7e9e56c47ecbbc1c46ee1668fb6`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e7cb473c202448a55fc44aa5a5e09f29ba71de5940bf1f0bf926aa6967eee`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:latest`

```console
$ docker pull couchbase@sha256:574c24405b0231be9c745be79e360568c15240a5de90e7435ca149e128b182f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:latest` - linux; amd64

```console
$ docker pull couchbase@sha256:28f81ab7fac6663ad2ceb2dabf8402589a7125cf940b7c1f4790442ad74843f8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.9 MB (468872692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36248dbc0a281dbfe2eba391e56cf2b024e8e3fcc6fc573c97460d0fad678c54`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Tue, 18 Jun 2019 22:53:31 GMT
ADD file:24352f4a071cb97b3f111253f3db695ba473c5e7985544889af3e34408ce32ff in / 
# Tue, 18 Jun 2019 22:53:33 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:53:35 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:53:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:53:37 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 02:36:44 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Wed, 19 Jun 2019 02:37:16 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_VERSION=6.0.1
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Wed, 19 Jun 2019 02:37:16 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb
# Wed, 19 Jun 2019 02:37:17 GMT
ARG CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55
# Wed, 19 Jun 2019 02:37:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Wed, 19 Jun 2019 02:37:17 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Wed, 19 Jun 2019 02:38:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Wed, 19 Jun 2019 02:38:14 GMT
COPY file:c6fd6f453d9002075df56abe0ebaf954000d3da3e4024dae5247722594f1295f in /etc/service/couchbase-server/run 
# Wed, 19 Jun 2019 02:38:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chown -R couchbase:couchbase /etc/service
# Wed, 19 Jun 2019 02:38:15 GMT
COPY file:1302333e9e56b11ae357341056dee0080efda9457b1ce3de1a1ecb6023e760ae in /usr/local/bin/ 
# Wed, 19 Jun 2019 02:38:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Wed, 19 Jun 2019 02:38:16 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_6.0.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=7a3e474386a670c648517228fce6e465339933e27ea02760bd741abc08b4df55 CB_VERSION=6.0.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Wed, 19 Jun 2019 02:38:16 GMT
COPY file:5b1804ce8aa2d4de6558b1cfeb0d3a7d800c0c5768056b6471846007f864830e in / 
# Wed, 19 Jun 2019 02:38:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 02:38:17 GMT
CMD ["couchbase-server"]
# Wed, 19 Jun 2019 02:38:17 GMT
EXPOSE 11207 11210 11211 18091 18092 18093 18094 18095 18096 8091 8092 8093 8094 8095 8096
# Wed, 19 Jun 2019 02:38:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:35b42117c431dd1e13679a09c3c68bb983578a1cbe0a8d8980f507567ebce76c`  
		Last Modified: Tue, 11 Jun 2019 13:20:32 GMT  
		Size: 43.8 MB (43837758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9c569a8d989555892683a932df468cfe294859186790d3f2fb704c3a022e96`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:293b44f451623251bf75ce5a72d3cee63706972c88980232217a81026987f63e`  
		Last Modified: Tue, 18 Jun 2019 22:54:47 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c175077525d1ddec01cb7cf003c2d8b4b6650ae15b504a64914f5eed8d28e50`  
		Last Modified: Tue, 18 Jun 2019 22:54:46 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55d0a980bedae6eec9bbe58b590a779917beed67f4f2c42727fedd93b0d3baab`  
		Last Modified: Wed, 19 Jun 2019 02:39:17 GMT  
		Size: 14.3 MB (14333935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce90f4e18588773d175bcb19de294907f6c6677d89d412e2886066e6768b915f`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad007986d1259913235a27047935b866b5c2c7e95f1092f58267c2af056da0e`  
		Last Modified: Wed, 19 Jun 2019 02:40:00 GMT  
		Size: 410.6 MB (410574640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83d8bf84cc548cc47d1ec70b4385d564f8074a9480a7ab8492f8bb42a23aeef5`  
		Last Modified: Wed, 19 Jun 2019 02:39:14 GMT  
		Size: 410.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b80f8dac21aa2225c1777427949be5e16ab444ef82a3815fc3ead84c4d08bf7`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58453d8a3754d2d4925816e5bdfc7302e52b3622d2d253c4f00e098eb7db81d3`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b052f8e9d1c2fe4b2c107a80ad68f41880adf81f88addc9ce82783a5fd66e387`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b309e88fff9724863197dbfb53e2e9220cedb7e9e56c47ecbbc1c46ee1668fb6`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 120.6 KB (120597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b0e7cb473c202448a55fc44aa5a5e09f29ba71de5940bf1f0bf926aa6967eee`  
		Last Modified: Wed, 19 Jun 2019 02:39:13 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `couchbase:community-4.5.1`

```console
$ docker pull couchbase@sha256:2b73a99e0a5ccf279a948b441053fa3f49614c980573bec68b647131eb48a314
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:community-4.5.1` - linux; amd64

```console
$ docker pull couchbase@sha256:e97dbc7207ae04c95b08af249d84a1a9e60b651f68fbad7cae8b9fb942a55184
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.7 MB (215708694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:defb0827dcda679564e42f22d9503ba5bae3c088a233b33577aab484bcba3c5f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Fri, 27 Apr 2018 23:29:25 GMT
ADD file:62b6d11e1f009825b3439ff3db58d583a15c4e05508644d5b35bb05312076029 in / 
# Fri, 27 Apr 2018 23:29:26 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:29:27 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:29:28 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:29:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:29:29 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 12:19:29 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Sat, 28 Apr 2018 12:20:25 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Sat, 28 Apr 2018 12:21:55 GMT
ARG CB_VERSION=4.5.1
# Sat, 28 Apr 2018 12:21:56 GMT
ARG CB_RELEASE_URL=http://packages.couchbase.com/releases
# Sat, 28 Apr 2018 12:21:56 GMT
ARG CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb
# Sat, 28 Apr 2018 12:21:56 GMT
ARG CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234
# Sat, 28 Apr 2018 12:21:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Sat, 28 Apr 2018 12:21:57 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Sat, 28 Apr 2018 12:22:11 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Sat, 28 Apr 2018 12:22:12 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Sat, 28 Apr 2018 12:22:13 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chown -R couchbase:couchbase /etc/service
# Sat, 28 Apr 2018 12:22:13 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Sat, 28 Apr 2018 12:22:14 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Sat, 28 Apr 2018 12:22:15 GMT
# ARGS: CB_PACKAGE=couchbase-server-community_4.5.1-ubuntu14.04_amd64.deb CB_RELEASE_URL=http://packages.couchbase.com/releases CB_SHA256=de983d0137bd2de2608e52cbfdf01de6dd9d3c1d9bc45bd0702d253245a8a234 CB_VERSION=4.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Sat, 28 Apr 2018 12:22:15 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Sat, 28 Apr 2018 12:22:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 28 Apr 2018 12:22:16 GMT
CMD ["couchbase-server"]
# Sat, 28 Apr 2018 12:22:16 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp
# Sat, 28 Apr 2018 12:22:17 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:324d088ce065206a214b069827555e2ed63a7f5686fbfaac3a9b34aa286a78e3`  
		Last Modified: Mon, 23 Apr 2018 14:53:17 GMT  
		Size: 73.1 MB (73081818 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ab951b6c615b934efba5d3e84e1d48d69afde1eaefb8b9ce05396c228ca437e`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 72.7 KB (72659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b01635313e2ace3b994a8d13877d3669babac74cd0d3313c110bf54d0e14631`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 630.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04510b914a6cfe8f6e9e65b5e6c15651c24887865193b48a30e808ab29b78dec`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83ab617df7b49fb61d3dc5ddbc3a8d10ca754745b8a16e59f83fb3ae304c941c`  
		Last Modified: Fri, 27 Apr 2018 23:34:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21f1ede6e82b0733260e908aefe10776c7336ef7ebc08771544bd3f9150c6ad1`  
		Last Modified: Sat, 28 Apr 2018 13:11:33 GMT  
		Size: 11.4 MB (11391465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:462534146d88af7ef1de2f809596f32eb119f6e3524aab23d28c1c78937f3214`  
		Last Modified: Sat, 28 Apr 2018 13:19:17 GMT  
		Size: 1.9 KB (1911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74e86535cd9a7395773b2236002326b504a85fdf1635a52d95b75ac26426f1fd`  
		Last Modified: Sat, 28 Apr 2018 13:19:44 GMT  
		Size: 131.1 MB (131051665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05032295565be62e9f02493aed4307706d5cbfca823f6ea5da66ef34ae74659`  
		Last Modified: Sat, 28 Apr 2018 13:19:17 GMT  
		Size: 402.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f258a89e3b7dc99881b4fd864eddfc1adfd7e20ecd3ddf5d1f19bd91a0c2909`  
		Last Modified: Sat, 28 Apr 2018 13:19:16 GMT  
		Size: 412.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ef9aab355556bf1620a21b7afee87b3334e2cfbf3a6d662c6f1233d1bac267`  
		Last Modified: Sat, 28 Apr 2018 13:19:15 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29b67dadfbb566049ac748a177e6efe5a875733eb14328e3fd77ebc636620a80`  
		Last Modified: Sat, 28 Apr 2018 13:19:15 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d95d0fd370d901456e52387869f0da85b198b471d4a9a431dea8ca968484dec9`  
		Last Modified: Sat, 28 Apr 2018 13:19:15 GMT  
		Size: 105.4 KB (105402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a646840a378ce735d5d37df899f305644fef55b73d68c9411dc22c9dfbc3e5f9`  
		Last Modified: Sat, 28 Apr 2018 13:19:15 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

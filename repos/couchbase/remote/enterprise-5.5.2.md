## `couchbase:enterprise-5.5.2`

```console
$ docker pull couchbase@sha256:857f59d6f94054229babfc0a02173b077e38310f2f5850b3fa8fece467b2c981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `couchbase:enterprise-5.5.2` - linux; amd64

```console
$ docker pull couchbase@sha256:77ca84e576be946d66d81dbb036eaac898b90b6bbc5be8acc34dc0bb9935cf96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.5 MB (321496414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd169fdf3d1f34a57691a044dda906a9fe96aee8a3aa7f9006790fb1e7f28031`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["couchbase-server"]`

```dockerfile
# Wed, 05 Sep 2018 22:20:55 GMT
ADD file:a83ab1826f43e88bc0d3ab6230f14cb9b2dacab70c762c3bfc555eda733b292c in / 
# Wed, 05 Sep 2018 22:20:55 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 05 Sep 2018 22:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 22:20:57 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Wed, 05 Sep 2018 22:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 05 Sep 2018 22:20:57 GMT
CMD ["/bin/bash"]
# Thu, 06 Sep 2018 00:04:29 GMT
MAINTAINER Couchbase Docker Team <docker@couchbase.com>
# Thu, 06 Sep 2018 00:04:47 GMT
RUN apt-get update &&     apt-get install -yq runit wget python-httplib2 chrpath tzdata     lsof lshw sysstat net-tools numactl  &&     apt-get autoremove && apt-get clean &&     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
# Thu, 06 Sep 2018 00:04:47 GMT
ARG CB_VERSION=5.5.1
# Thu, 06 Sep 2018 00:04:48 GMT
ARG CB_RELEASE_URL=https://packages.couchbase.com/releases
# Thu, 06 Sep 2018 00:04:48 GMT
ARG CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb
# Thu, 06 Sep 2018 00:04:48 GMT
ARG CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6
# Thu, 06 Sep 2018 00:04:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/couchbase/bin:/opt/couchbase/bin/tools:/opt/couchbase/bin/install
# Thu, 06 Sep 2018 00:04:49 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN groupadd -g 1000 couchbase && useradd couchbase -u 1000 -g couchbase -M
# Thu, 06 Sep 2018 00:05:22 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN export INSTALL_DONT_START_SERVER=1 &&     wget -N $CB_RELEASE_URL/$CB_VERSION/$CB_PACKAGE &&     echo "$CB_SHA256  $CB_PACKAGE" | sha256sum -c - &&     dpkg -i ./$CB_PACKAGE && rm -f ./$CB_PACKAGE
# Thu, 06 Sep 2018 00:05:23 GMT
COPY file:9a90647aed4e88ee15c7efe9abbafbf7a89c3174cbe85d6b5492cde1aa9c6355 in /etc/service/couchbase-server/run 
# Thu, 06 Sep 2018 00:05:23 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chown -R couchbase:couchbase /etc/service
# Thu, 06 Sep 2018 00:05:23 GMT
COPY file:8196fd8e201c5fc3873a0faa3cec28b0d85633e363c0c5788434f5b9a81cfa5b in /usr/local/bin/ 
# Thu, 06 Sep 2018 00:05:24 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN ln -s dummy.sh /usr/local/bin/iptables-save &&     ln -s dummy.sh /usr/local/bin/lvdisplay &&     ln -s dummy.sh /usr/local/bin/vgdisplay &&     ln -s dummy.sh /usr/local/bin/pvdisplay
# Thu, 06 Sep 2018 00:05:25 GMT
# ARGS: CB_PACKAGE=couchbase-server-enterprise_5.5.1-ubuntu16.04_amd64.deb CB_RELEASE_URL=https://packages.couchbase.com/releases CB_SHA256=d1db2051d530a1769982a9042acb17cc7ac1d0beb1c71f1c6214186212237ce6 CB_VERSION=5.5.1
RUN chrpath -r '$ORIGIN/../lib' /opt/couchbase/bin/curl
# Thu, 06 Sep 2018 00:05:25 GMT
COPY file:5d67fa23771c82cbce2e1a74900e7c0ce4d1466a002273f57ab13d52d6b844b3 in / 
# Thu, 06 Sep 2018 00:05:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 06 Sep 2018 00:05:25 GMT
CMD ["couchbase-server"]
# Thu, 06 Sep 2018 00:05:25 GMT
EXPOSE 11207/tcp 11210/tcp 11211/tcp 18091/tcp 18092/tcp 18093/tcp 18094/tcp 18095/tcp 18096/tcp 8091/tcp 8092/tcp 8093/tcp 8094/tcp 8095/tcp 8096/tcp
# Thu, 06 Sep 2018 00:05:26 GMT
VOLUME [/opt/couchbase/var]
```

-	Layers:
	-	`sha256:3b37166ec61459e76e33282dda08f2a9cd698ca7e3d6bc44e6a6e7580cdeff8e`  
		Last Modified: Fri, 10 Aug 2018 22:11:36 GMT  
		Size: 43.3 MB (43252507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:504facff238fde83f1ca8f9f54520b4219c5b8f80be9616ddc52d31448a044bd`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 846.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebbcacd28e101968415b0c812b2d2dc60f969e36b0b08c073bf796e12b1bb449`  
		Last Modified: Wed, 05 Sep 2018 22:22:07 GMT  
		Size: 615.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7fb3351ecad291a88b92b600037e2435c84a347683d540042086fe72c902b8a`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e3debadcbf7e542e2aefbce1b64a358b1931fb403b3e4aeca27cb4d809d56c2`  
		Last Modified: Wed, 05 Sep 2018 22:22:06 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0435b6dff1ba7b65dd3b47f1cbf916db712247b820f2420a6da4f2ecb6a85192`  
		Last Modified: Thu, 06 Sep 2018 00:08:39 GMT  
		Size: 14.3 MB (14295177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e451c93a44619419de0a04481c5b44d9866b4d964f04bc8830757a25b4f1ce`  
		Last Modified: Thu, 06 Sep 2018 00:08:35 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2438257416d1cb84071902f9890db4790e15e23d640d259acb1a757ed47076c1`  
		Last Modified: Thu, 06 Sep 2018 00:09:17 GMT  
		Size: 263.8 MB (263834594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958577d52f2b8dfca494005d5518b052309ed8ffddecc0feb90a2df6cb2b3808`  
		Last Modified: Thu, 06 Sep 2018 00:08:34 GMT  
		Size: 400.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01a45d9cf530d7b5cf37cbf2cc9ed8b6a79cde59ef6d509d4225d6ef8b1825c2`  
		Last Modified: Thu, 06 Sep 2018 00:08:33 GMT  
		Size: 411.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:deaa126e3249662911d3aeb0c4e2e99ffb20696edf6756843b0a7d64fea011a9`  
		Last Modified: Thu, 06 Sep 2018 00:08:33 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8392522c98f09161d549969900cf1f175ea41cbacf235c2fde4cf9fecc8339bc`  
		Last Modified: Thu, 06 Sep 2018 00:08:35 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea4b6af397307b7a1ee0066fbe57376f395064bb7c4ccce3e25bb9e8c746faec`  
		Last Modified: Thu, 06 Sep 2018 00:08:33 GMT  
		Size: 107.5 KB (107457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0e3478d41c180dd8e34ade016bdbac0a1d596251902e8985109111eb341e52`  
		Last Modified: Thu, 06 Sep 2018 00:08:33 GMT  
		Size: 857.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

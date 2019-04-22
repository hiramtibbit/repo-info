<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:6.7.1`](#elasticsearch671)
-	[`elasticsearch:7.0.0`](#elasticsearch700)

## `elasticsearch:6.7.1`

```console
$ docker pull elasticsearch@sha256:0cb25bc1598f10f5a3eb30e77c32c7d39c64c730ce6557803996588caa4704ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.7.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:4b945a65ffef04f317bba80dadb6557c3aa3a124e5b6c1ec65b53dde77846527
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.5 MB (435516378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2667f5db2899d035b34deffd39505d489aae89ba01a386eeea40cb2072a8a3a`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 16:03:19 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 02 Apr 2019 16:03:20 GMT
ENV JAVA_HOME=/opt/jdk-12
# Tue, 02 Apr 2019 16:03:24 GMT
COPY dir:4c02cc3cdbd889af759fc45f6df4a89fb511e32ba4ee9dec9bcec03609007ae8 in /opt/jdk-12 
# Tue, 02 Apr 2019 16:03:36 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Tue, 02 Apr 2019 16:03:36 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Tue, 02 Apr 2019 16:03:37 GMT
WORKDIR /usr/share/elasticsearch
# Tue, 02 Apr 2019 16:03:40 GMT
COPY --chown=1000:0dir:7d9884d17045f1ab1f59ad6f588b51817a24824bd5660007cd9e1696a040fbb7 in /usr/share/elasticsearch 
# Tue, 02 Apr 2019 16:03:40 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Apr 2019 16:03:40 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Tue, 02 Apr 2019 16:03:41 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Tue, 02 Apr 2019 16:03:41 GMT
EXPOSE 9200 9300
# Tue, 02 Apr 2019 16:03:41 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.7.1 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Tue, 02 Apr 2019 16:03:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 02 Apr 2019 16:03:41 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b8fe8dcd9afe4a6a7f1a7586f33083ab2b07dd8c5bf8f35bb739a373b908f08`  
		Last Modified: Thu, 04 Apr 2019 15:21:29 GMT  
		Size: 198.1 MB (198054834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc467264d0a008dfde1db35c62bd26df6a1bdaffd3a9255c2dea135d8eae402b`  
		Last Modified: Thu, 04 Apr 2019 15:21:11 GMT  
		Size: 12.1 MB (12123594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b2ae38bbcb596257fc90336d840b2fd1cd687a3324033ae9bcd05774cf9ba9f`  
		Last Modified: Thu, 04 Apr 2019 15:21:09 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9430360a4cab6f3c7e9a6083d08a8e5db32315e5e70675dc06cb11cded1eba75`  
		Last Modified: Thu, 04 Apr 2019 15:21:22 GMT  
		Size: 149.9 MB (149927597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f312dbf6683ba27ded2b4a0507cf27cb7eb1b3f151cf5bf43875ca8111f0cdc4`  
		Last Modified: Thu, 04 Apr 2019 15:21:09 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a74389e5cf072fdef88c13e956d61ccf6a8067537e8535d786773de0d42c2ec9`  
		Last Modified: Thu, 04 Apr 2019 15:21:09 GMT  
		Size: 2.4 KB (2398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:7.0.0`

```console
$ docker pull elasticsearch@sha256:90fff516ac229a01b494b21f6b5aaca23bfd425c79fcf8861069098796a7fcb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:7.0.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:3ecdbe97335a39d71da60e0b935b589c43e4aefca7776ce8877e4d9f915e66ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **436.1 MB (436141923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f46db60ddd638e3d7d27f8dcaff8ad85c6d92b2bffebbfd044a2fddeb44e28d`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Fri, 05 Apr 2019 22:58:43 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 05 Apr 2019 22:58:56 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Fri, 05 Apr 2019 22:58:56 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Fri, 05 Apr 2019 22:58:56 GMT
WORKDIR /usr/share/elasticsearch
# Fri, 05 Apr 2019 22:59:04 GMT
COPY --chown=1000:0dir:65de87fb6f3fd24e927b06f9b3a3d75bd0fab073fb331287f900be1072e3f7be in /usr/share/elasticsearch 
# Fri, 05 Apr 2019 22:59:05 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /usr/share/elasticsearch/jdk/lib/security/cacerts
# Fri, 05 Apr 2019 22:59:05 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 22:59:05 GMT
COPY --chown=1000:0file:8aaf8c70cc610ac6e2caadd743341d4590a184092390227b9bfc69044c733e28 in /usr/local/bin/docker-entrypoint.sh 
# Fri, 05 Apr 2019 22:59:06 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Fri, 05 Apr 2019 22:59:06 GMT
EXPOSE 9200 9300
# Fri, 05 Apr 2019 22:59:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=7.0.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Fri, 05 Apr 2019 22:59:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Fri, 05 Apr 2019 22:59:06 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425761a617d6cbe61649c4e1e47b96833389c2e256dc455160ca1ce5f20f11d2`  
		Last Modified: Wed, 10 Apr 2019 13:22:56 GMT  
		Size: 12.1 MB (12123619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:797be7ef57992e4aef458784966702868858a27b88b17edf782670875ea0c402`  
		Last Modified: Wed, 10 Apr 2019 13:22:50 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f6ae7e22e3c9c094675b2f26c361f50a1af9c163c4aa183a20be64e9aa863`  
		Last Modified: Wed, 10 Apr 2019 13:23:26 GMT  
		Size: 348.6 MB (348607688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb7749d3831166cc667d83415f0fd0a7e9039be19fd5ecb6cf80b6df820de1f3`  
		Last Modified: Wed, 10 Apr 2019 13:22:50 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d98f1b30ec5e1e56b7050fcf76bad8b6913086a4bd1d0b45cdc384e3107c49e`  
		Last Modified: Wed, 10 Apr 2019 13:22:50 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82211323c8893144568f1c49149e766a876473308e298d5820ed863d885a2535`  
		Last Modified: Wed, 10 Apr 2019 13:22:50 GMT  
		Size: 2.4 KB (2393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

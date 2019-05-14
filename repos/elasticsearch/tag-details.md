<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:6.7.2`](#elasticsearch672)
-	[`elasticsearch:7.0.1`](#elasticsearch701)

## `elasticsearch:6.7.2`

```console
$ docker pull elasticsearch@sha256:59144dbc396225d13980bb801eac65c83f9862ea08a3c5bef932ca91e0eda84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.7.2` - linux; amd64

```console
$ docker pull elasticsearch@sha256:7003e76b007510d54daf1f4fec1d032fca2b12bd2f9a7b1d12a2e99220590996
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.8 MB (453767796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2982ba0710591d0f08f947f9082d80aee5b87f43c27a0b1b26ced912a9f39c5c`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Mon, 29 Apr 2019 09:10:02 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 29 Apr 2019 09:10:02 GMT
ENV JAVA_HOME=/opt/jdk-12.0.1
# Mon, 29 Apr 2019 09:10:06 GMT
COPY dir:ef02cb19f9fd9e7c300e0752925ee0ebc87c27763e6b111d6e215c2820312c0e in /opt/jdk-12.0.1 
# Mon, 29 Apr 2019 09:10:24 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Mon, 29 Apr 2019 09:10:24 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Mon, 29 Apr 2019 09:10:24 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 29 Apr 2019 09:10:28 GMT
COPY --chown=1000:0dir:da4140225d4a2be54ef6b0d95bd6afb7d61f901f0a51c2991f5b27131e6913d0 in /usr/share/elasticsearch 
# Mon, 29 Apr 2019 09:10:28 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 09:10:28 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 29 Apr 2019 09:10:29 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Mon, 29 Apr 2019 09:10:29 GMT
EXPOSE 9200 9300
# Mon, 29 Apr 2019 09:10:29 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.7.2 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Mon, 29 Apr 2019 09:10:29 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 29 Apr 2019 09:10:29 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b331515ab6715d651bc37898c0e4c1f312a76d94e4ebd30459bbf8fd15c0d79a`  
		Last Modified: Fri, 03 May 2019 05:27:36 GMT  
		Size: 198.1 MB (198052706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf2b1fa0e4a2699bdb5e7532561317a3384da929cb26ae0fc015de6c0f95d5b`  
		Last Modified: Fri, 03 May 2019 05:27:17 GMT  
		Size: 30.4 MB (30376959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7a17ff6a854725f8ac3f6c18d59d7f68e87707a5edd1db260f69d465b16f2aa`  
		Last Modified: Fri, 03 May 2019 05:27:09 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c509982db17744979da6089df101549c03b011dfb8bce2632a81346cd5a69f7`  
		Last Modified: Fri, 03 May 2019 05:27:30 GMT  
		Size: 149.9 MB (149927775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268f1d6adb82600c928237dbfc14c61be22a083154b0964ba6b1667d4d74f6af`  
		Last Modified: Fri, 03 May 2019 05:27:09 GMT  
		Size: 2.1 KB (2063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0e44f72b02dc8c82da11164213e49ca0b86e8fa56ce8430765f1dbe48f3c1c`  
		Last Modified: Fri, 03 May 2019 05:27:09 GMT  
		Size: 2.4 KB (2399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:7.0.1`

```console
$ docker pull elasticsearch@sha256:6dc77ee54c158808718a769fdfbbadc37578541a87c7f99fc65a8f809183f074
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:7.0.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:ab3884396356595a665b88fbf61d4f0c1c39eb8891c77b1b72d5fe83ae3a1c75
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **454.4 MB (454417811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb1e40835f7668e6cdb165a4e4ca2eff9f8446bad4f82aca4c5a54ac3ec49356`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Mon, 29 Apr 2019 12:59:17 GMT
ENV ELASTIC_CONTAINER=true
# Mon, 29 Apr 2019 12:59:33 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Mon, 29 Apr 2019 12:59:34 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Mon, 29 Apr 2019 12:59:34 GMT
WORKDIR /usr/share/elasticsearch
# Mon, 29 Apr 2019 12:59:42 GMT
COPY --chown=1000:0dir:4d3c0bf56849d3618819ab1e97eb9b51863c466ede1287079a026056c7867bff in /usr/share/elasticsearch 
# Mon, 29 Apr 2019 12:59:43 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /usr/share/elasticsearch/jdk/lib/security/cacerts
# Mon, 29 Apr 2019 12:59:43 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 29 Apr 2019 12:59:43 GMT
COPY --chown=1000:0file:8aaf8c70cc610ac6e2caadd743341d4590a184092390227b9bfc69044c733e28 in /usr/local/bin/docker-entrypoint.sh 
# Mon, 29 Apr 2019 12:59:44 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Mon, 29 Apr 2019 12:59:44 GMT
EXPOSE 9200 9300
# Mon, 29 Apr 2019 12:59:44 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=7.0.1 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Mon, 29 Apr 2019 12:59:44 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Mon, 29 Apr 2019 12:59:44 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22435c65c5b6564f24ba878b9c7003758b2a0fc4fb2ff09d4dd7d5e81338e66`  
		Last Modified: Wed, 01 May 2019 14:25:02 GMT  
		Size: 30.4 MB (30377122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:779ea19c1b10319e9f5b8b8a181151f47491a70fae5631deeab932e83471da62`  
		Last Modified: Wed, 01 May 2019 14:24:54 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19ffd8dfed984c1842d511e67a0f8df50c4c2e237a01a3bf1ce4de3d6edb6f4`  
		Last Modified: Wed, 01 May 2019 14:25:27 GMT  
		Size: 348.6 MB (348630063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef2c51b97f1ae434dee5e2bfcfcc42ac87f2e11e6f83be885f677a5c824eaec`  
		Last Modified: Wed, 01 May 2019 14:24:53 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3abad9369e16bb489dd733803d0263031e6f745301e63d16956d59bea008fffd`  
		Last Modified: Wed, 01 May 2019 14:24:53 GMT  
		Size: 2.1 KB (2057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1192f02dde8505847e68a58a68fcf0e5795eb48b6f040c37ef2c27fdf7c1e01a`  
		Last Modified: Wed, 01 May 2019 14:24:53 GMT  
		Size: 2.4 KB (2397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

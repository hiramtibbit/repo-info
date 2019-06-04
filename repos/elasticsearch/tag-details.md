<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:6.8.0`](#elasticsearch680)
-	[`elasticsearch:7.1.1`](#elasticsearch711)

## `elasticsearch:6.8.0`

```console
$ docker pull elasticsearch@sha256:f8a41bb1d56c88f8787cb470ab43143ad9b16c347e4498a8cfb98d63789aa6b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:6.8.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:2c77f71d560053fec89564043c7eb2dca5dd3132d85ba1f233fc5db966827446
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **465.5 MB (465452924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0b291d7093b89017e2578932329eebe6f973a382231ff3bed716ea0951d8e9b`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 20:09:40 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 15 May 2019 20:09:40 GMT
ENV JAVA_HOME=/opt/jdk-12.0.1
# Wed, 15 May 2019 20:09:45 GMT
COPY dir:ef02cb19f9fd9e7c300e0752925ee0ebc87c27763e6b111d6e215c2820312c0e in /opt/jdk-12.0.1 
# Wed, 15 May 2019 20:10:05 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Wed, 15 May 2019 20:10:06 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Wed, 15 May 2019 20:10:06 GMT
WORKDIR /usr/share/elasticsearch
# Wed, 15 May 2019 20:10:09 GMT
COPY --chown=1000:0dir:3da8c245a5b9bff0db144fd4bad432715982f8cf3f46e5646bc221e480f6f96d in /usr/share/elasticsearch 
# Wed, 15 May 2019 20:10:09 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 May 2019 20:10:09 GMT
COPY --chown=1000:0file:08193f849fc25f29db1438eff6d5c9fe1d63237aeb07a3e0009e8ba554f97c31 in /usr/local/bin/docker-entrypoint.sh 
# Wed, 15 May 2019 20:10:10 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Wed, 15 May 2019 20:10:10 GMT
EXPOSE 9200 9300
# Wed, 15 May 2019 20:10:10 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=6.8.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Wed, 15 May 2019 20:10:11 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 15 May 2019 20:10:11 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cdd4428103a0981dece5ff813a0eaafe760b7156a7c264e0b5b35e0605e5d1c`  
		Last Modified: Mon, 20 May 2019 14:38:34 GMT  
		Size: 198.1 MB (198052812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9221238678ac5915d9e622f9335901e74eb3e3de963a6fa6e0b611ce08aa041`  
		Last Modified: Mon, 20 May 2019 14:38:28 GMT  
		Size: 42.1 MB (42051783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31cbcc337ae04ef68b7bdeb817c7c8fb4a6c61d1561bd54ba025fcabb60a2903`  
		Last Modified: Mon, 20 May 2019 14:38:10 GMT  
		Size: 2.1 KB (2065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d6fd787a3d6db8a59a78a9c4ab38996e5943f731b250d928b0a2112e9128e0`  
		Last Modified: Mon, 20 May 2019 14:38:36 GMT  
		Size: 149.9 MB (149937968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88a8493df50d4cacf2254f527ee5a1286064a216f945a8ee76856f13599b3f1`  
		Last Modified: Mon, 20 May 2019 14:38:10 GMT  
		Size: 2.1 KB (2064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18948baee4acd51703e02197249ce671e9a99518d04fa6334749ae02949980a7`  
		Last Modified: Mon, 20 May 2019 14:38:10 GMT  
		Size: 2.4 KB (2401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `elasticsearch:7.1.1`

```console
$ docker pull elasticsearch@sha256:0e27087f8e0ef61474ae9568b65458acc86f6ebd5bbb766915da2ebabb8cc4dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:7.1.1` - linux; amd64

```console
$ docker pull elasticsearch@sha256:1084c64eed7d9318d028361c9aee398afdeb70d1816ce81d590b9450ec542c08
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.1 MB (466089990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e9f9f047e6b49bdf540f84a9cd9004886bd17bb5bedd27692f1b4d1ec41355`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 14:07:18 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 23 May 2019 14:07:39 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Thu, 23 May 2019 14:07:39 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Thu, 23 May 2019 14:07:39 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 23 May 2019 14:07:47 GMT
COPY --chown=1000:0dir:7ae76f60c21b5ea796d1c8af44338ada481dadb630bc0662a54fb00c3348d646 in /usr/share/elasticsearch 
# Thu, 23 May 2019 14:07:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /usr/share/elasticsearch/jdk/lib/security/cacerts
# Thu, 23 May 2019 14:07:48 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 May 2019 14:07:48 GMT
COPY --chown=1000:0file:8aaf8c70cc610ac6e2caadd743341d4590a184092390227b9bfc69044c733e28 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 23 May 2019 14:07:48 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Thu, 23 May 2019 14:07:49 GMT
EXPOSE 9200 9300
# Thu, 23 May 2019 14:07:49 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=7.1.1 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Thu, 23 May 2019 14:07:49 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 23 May 2019 14:07:49 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc017bf6a4d51e0bf0ee7fee6ac8ea46bcd7a2e3868a28cb8c3235b0e8bf5c87`  
		Last Modified: Tue, 28 May 2019 14:19:01 GMT  
		Size: 42.1 MB (42050562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66463b85d389820c7c76b07b05ec84de542f898595ab1e03183fb2c7903806f5`  
		Last Modified: Tue, 28 May 2019 14:18:51 GMT  
		Size: 2.1 KB (2069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:837fa1486a3493abfe5c461ee33420b06f8030e47f20f68690b504b7ff0725cb`  
		Last Modified: Tue, 28 May 2019 14:19:25 GMT  
		Size: 348.6 MB (348628798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e79d4f9236bfcfad352f64365c48a1c4dd785948b553a11579cd900d1b071fa`  
		Last Modified: Tue, 28 May 2019 14:18:51 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fca20e6168bef0bf60f2a1bd3b9f2be3488d61641b744042c2b42f6f93f1e81f`  
		Last Modified: Tue, 28 May 2019 14:18:51 GMT  
		Size: 2.1 KB (2058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d286e388da120516cfa3983dd5b09512e4140f27589ee513d6af6b3c18ec9a60`  
		Last Modified: Tue, 28 May 2019 14:18:51 GMT  
		Size: 2.4 KB (2397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

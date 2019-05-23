<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `elasticsearch`

-	[`elasticsearch:6.8.0`](#elasticsearch680)
-	[`elasticsearch:7.1.0`](#elasticsearch710)

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

## `elasticsearch:7.1.0`

```console
$ docker pull elasticsearch@sha256:f449aeab752587709b440a9cb9b35ed93bfabdab75fb8ae9e0b330aa0e584a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `elasticsearch:7.1.0` - linux; amd64

```console
$ docker pull elasticsearch@sha256:802b6a299260dbaf21a9c57e3a634491ff788a1ea13a51598d4cd105739509c4
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.1 MB (466095140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12ad640a1ec0484ee7eac455e6b924fb01a1fc88ca01d5a6d90cfa7554ab4568`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["eswrapper"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 00:46:33 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 May 2019 00:46:54 GMT
RUN for iter in {1..10}; do yum update -y &&     yum install -y nc unzip wget which &&     yum clean all && exit_code=0 && break || exit_code=$? && echo "yum error: retry $iter in 10s" && sleep 10; done;     (exit $exit_code)
# Thu, 16 May 2019 00:46:55 GMT
RUN groupadd -g 1000 elasticsearch &&     adduser -u 1000 -g 1000 -G 0 -d /usr/share/elasticsearch elasticsearch &&     chmod 0775 /usr/share/elasticsearch &&     chgrp 0 /usr/share/elasticsearch
# Thu, 16 May 2019 00:46:56 GMT
WORKDIR /usr/share/elasticsearch
# Thu, 16 May 2019 00:47:03 GMT
COPY --chown=1000:0dir:4aeda5c271e5df0b049dcaa03ba054d8413aa1ff04107bfec296cfca3e59c2f2 in /usr/share/elasticsearch 
# Thu, 16 May 2019 00:47:04 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /usr/share/elasticsearch/jdk/lib/security/cacerts
# Thu, 16 May 2019 00:47:04 GMT
ENV PATH=/usr/share/elasticsearch/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 00:47:05 GMT
COPY --chown=1000:0file:8aaf8c70cc610ac6e2caadd743341d4590a184092390227b9bfc69044c733e28 in /usr/local/bin/docker-entrypoint.sh 
# Thu, 16 May 2019 00:47:05 GMT
RUN chgrp 0 /usr/local/bin/docker-entrypoint.sh &&     chmod g=u /etc/passwd &&     chmod 0775 /usr/local/bin/docker-entrypoint.sh
# Thu, 16 May 2019 00:47:06 GMT
EXPOSE 9200 9300
# Thu, 16 May 2019 00:47:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=elasticsearch org.label-schema.version=7.1.0 org.label-schema.url=https://www.elastic.co/products/elasticsearch org.label-schema.vcs-url=https://github.com/elastic/elasticsearch license=Elastic License
# Thu, 16 May 2019 00:47:06 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Thu, 16 May 2019 00:47:06 GMT
CMD ["eswrapper"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09aa32454d9b7f2683e3eac968a16eed9b0c8e657658d3cb41e9c9c83163183`  
		Last Modified: Mon, 20 May 2019 15:51:37 GMT  
		Size: 42.1 MB (42051497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4a4ca7a82ce14cab643f58b3d6470d7dc28ac3a8905695a80fc3628a8d3b2e5`  
		Last Modified: Mon, 20 May 2019 15:51:27 GMT  
		Size: 2.1 KB (2067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367280307d3dda6973f10a2b2c319f3fef4f1f0f3f0fb00b9eb0ba30812c951`  
		Last Modified: Mon, 20 May 2019 15:51:57 GMT  
		Size: 348.6 MB (348633009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c9d8373635641158c874a9427968df36c337179cfea9e68fcdb03ad04683fb`  
		Last Modified: Mon, 20 May 2019 15:51:27 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:882233a5261663fe8e68c9641102c830e9e1ca0967861352d704d1fc6fa57ef8`  
		Last Modified: Mon, 20 May 2019 15:51:27 GMT  
		Size: 2.1 KB (2060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cc7e043508c7a0687703f0faed97d39283764fa2362834df5dd9c85da97e78`  
		Last Modified: Mon, 20 May 2019 15:51:26 GMT  
		Size: 2.4 KB (2400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

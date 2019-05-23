<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:6.8.0`](#logstash680)
-	[`logstash:7.1.0`](#logstash710)

## `logstash:6.8.0`

```console
$ docker pull logstash@sha256:b479f274e00d3cbb7a5b1f85b47a56aab3b6f8641a40f52b7b7ab818a20b3174
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.8.0` - linux; amd64

```console
$ docker pull logstash@sha256:486f5dbe61db4d122bb82699f2237b88587dd9a0eb1f67ee90190659a2988c50
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **370.4 MB (370420268 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac2441e61735600c978005e7269117679aeb370e7cb26894c3e3ca1e1276f918`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Wed, 15 May 2019 21:09:16 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Wed, 15 May 2019 21:09:17 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Wed, 15 May 2019 21:09:37 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.8.0.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.8.0 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Wed, 15 May 2019 21:09:37 GMT
WORKDIR /usr/share/logstash
# Wed, 15 May 2019 21:09:38 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 15 May 2019 21:09:38 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 May 2019 21:09:38 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Wed, 15 May 2019 21:09:38 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Wed, 15 May 2019 21:09:38 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Wed, 15 May 2019 21:09:38 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Wed, 15 May 2019 21:09:39 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Wed, 15 May 2019 21:09:39 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Wed, 15 May 2019 21:09:39 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Wed, 15 May 2019 21:09:40 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Wed, 15 May 2019 21:09:40 GMT
USER 1000
# Wed, 15 May 2019 21:09:40 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Wed, 15 May 2019 21:09:41 GMT
EXPOSE 5044 9600
# Wed, 15 May 2019 21:09:41 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.8.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Wed, 15 May 2019 21:09:41 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8a2a8055944603577e41463eec9bf2f9515a476e8ba0d1c4776d41d92321e6a`  
		Last Modified: Mon, 20 May 2019 14:47:51 GMT  
		Size: 120.5 MB (120492157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9d9431f4d5d981278d79671b7cc23556af796f23b1e9c9e30f2add49089e2b4`  
		Last Modified: Mon, 20 May 2019 14:47:32 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662771fec60843d5fdced722c96c5f403e12f3b7e1d740c53d4bbbe7effbeb09`  
		Last Modified: Mon, 20 May 2019 14:47:50 GMT  
		Size: 173.5 MB (173515593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53374b98793765be4979d2e203d79ad2f744e1c3e3a60e63dae6e29bc35f65c`  
		Last Modified: Mon, 20 May 2019 14:47:33 GMT  
		Size: 382.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2eea8ac3765983c139d8bf05e487114102ec0c2a3152e59959ad6899f8aa7508`  
		Last Modified: Mon, 20 May 2019 14:47:32 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd5896cbe2e8109a59e27ce41204b2a681c9e046eba7dff180c8108b1e033eae`  
		Last Modified: Mon, 20 May 2019 14:47:29 GMT  
		Size: 447.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7becd6df36e013d2f41b54e314965bf0c84dce70ed6e6f10cc6eac876fdc6cd`  
		Last Modified: Mon, 20 May 2019 14:47:29 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a78c1eaf5d29e1269ca2029db310e896ac1a026cd06b9790e0357f9eb65f10b4`  
		Last Modified: Mon, 20 May 2019 14:47:29 GMT  
		Size: 2.6 KB (2635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c4863f123bec4318be567d4508fead6e7fd477eebe90256dd27f7b825dc777`  
		Last Modified: Mon, 20 May 2019 14:47:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3c4863f123bec4318be567d4508fead6e7fd477eebe90256dd27f7b825dc777`  
		Last Modified: Mon, 20 May 2019 14:47:29 GMT  
		Size: 498.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dd0850c22237b2411f35986d174ea8e43451a00943debb711b053c42ea92c83`  
		Last Modified: Mon, 20 May 2019 14:47:30 GMT  
		Size: 1.0 MB (1002064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:7.1.0`

```console
$ docker pull logstash@sha256:3c785698af9599ca533540d0fae255c876c3c1a704baf4d5e6a6d11c12723b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:7.1.0` - linux; amd64

```console
$ docker pull logstash@sha256:9258bd2ef10c084a267e470e4fac7b5144e2bd932d628deab4f2c8cc2ff47dd0
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369753696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ae8cd115605387515d96373bd16709c507376fe0c73dd125505763ffdf0500`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 16 May 2019 01:54:07 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Thu, 16 May 2019 01:54:07 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Thu, 16 May 2019 01:54:28 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-7.1.0.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.1.0 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Thu, 16 May 2019 01:54:29 GMT
WORKDIR /usr/share/logstash
# Thu, 16 May 2019 01:54:29 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 16 May 2019 01:54:29 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 May 2019 01:54:29 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Thu, 16 May 2019 01:54:29 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Thu, 16 May 2019 01:54:30 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Thu, 16 May 2019 01:54:30 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Thu, 16 May 2019 01:54:30 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Thu, 16 May 2019 01:54:31 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Thu, 16 May 2019 01:54:31 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Thu, 16 May 2019 01:54:32 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Thu, 16 May 2019 01:54:32 GMT
USER 1000
# Thu, 16 May 2019 01:54:32 GMT
ADD file:8ed33e1faef241414be58a24e3bf8926d65ade5e342819ae4333c9b474416834 in /usr/local/bin/ 
# Thu, 16 May 2019 01:54:32 GMT
EXPOSE 5044 9600
# Thu, 16 May 2019 01:54:32 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=7.1.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Thu, 16 May 2019 01:54:32 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5eab01999c62edd019611b1d1700d9c1ec2d1f760c15bd8bb32a6b6e243770a`  
		Last Modified: Mon, 20 May 2019 15:54:06 GMT  
		Size: 120.5 MB (120492035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00533d9023e29580e492aa531d2fe88d5d9b5f3e72672267486da9490df02393`  
		Last Modified: Mon, 20 May 2019 15:53:40 GMT  
		Size: 1.6 KB (1612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbfa90e5747cd4df54ae53fbb4be85ef4a48d94f69522c036d0f06994b0f404`  
		Last Modified: Mon, 20 May 2019 15:53:58 GMT  
		Size: 172.8 MB (172849133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a012db1fc2bf2c57fe8b734c7df14c3dd843098ea7e2b3b52d067b78e6904675`  
		Last Modified: Mon, 20 May 2019 15:53:40 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b18434b7f5fe3e1159b146ebe2bf91b31fc94b9fe527828bb2942cb86f74df8`  
		Last Modified: Mon, 20 May 2019 15:53:40 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27b0f98f3ea1299e9b685aeb596a3acb771a7bd09341aa61849f10d8afa18af8`  
		Last Modified: Mon, 20 May 2019 15:53:37 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66214641260d1f67d6cac0bc36231b238f23c481b82aa73133cb1cb11a40c55b`  
		Last Modified: Mon, 20 May 2019 15:53:37 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:960622c3296b7a8c719605a6489583294c5ba8894692079bcf34b69374dcb335`  
		Last Modified: Mon, 20 May 2019 15:53:37 GMT  
		Size: 2.6 KB (2640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85e84c06890c065b310fefc1a4605ef416754ec90b9a3c021078680fd32d145`  
		Last Modified: Mon, 20 May 2019 15:53:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f85e84c06890c065b310fefc1a4605ef416754ec90b9a3c021078680fd32d145`  
		Last Modified: Mon, 20 May 2019 15:53:37 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cf91fd61b0117b41559b6fa1cf7c24005f4c5b4d70758b00adaa6d02fd2f9d`  
		Last Modified: Mon, 20 May 2019 15:53:38 GMT  
		Size: 1.0 MB (1002075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

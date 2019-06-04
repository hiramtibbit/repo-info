<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:6.8.0`](#logstash680)
-	[`logstash:7.1.1`](#logstash711)

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

## `logstash:7.1.1`

```console
$ docker pull logstash@sha256:77db61bfbcf627669297cd032b3e735e1aa0424167f2fff8dbea7d7f7c202dc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:7.1.1` - linux; amd64

```console
$ docker pull logstash@sha256:fd77ebe9cc5c9e7c04532db6bed92a80a15cc32de91fb3a3d74ee5f6aaf2878c
```

-	Docker Version: 18.09.3
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **369.8 MB (369763722 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0cb1543380d051f62c22122bfd5e0246b66825d71c9407ff6598335ed76c115`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 23 May 2019 15:15:04 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Thu, 23 May 2019 15:15:05 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Thu, 23 May 2019 15:15:26 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-7.1.1.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.1.1 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Thu, 23 May 2019 15:15:26 GMT
WORKDIR /usr/share/logstash
# Thu, 23 May 2019 15:15:26 GMT
ENV ELASTIC_CONTAINER=true
# Thu, 23 May 2019 15:15:26 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 23 May 2019 15:15:27 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Thu, 23 May 2019 15:15:27 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Thu, 23 May 2019 15:15:27 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Thu, 23 May 2019 15:15:27 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Thu, 23 May 2019 15:15:28 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Thu, 23 May 2019 15:15:28 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Thu, 23 May 2019 15:15:28 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Thu, 23 May 2019 15:15:29 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Thu, 23 May 2019 15:15:29 GMT
USER 1000
# Thu, 23 May 2019 15:15:29 GMT
ADD file:8ed33e1faef241414be58a24e3bf8926d65ade5e342819ae4333c9b474416834 in /usr/local/bin/ 
# Thu, 23 May 2019 15:15:29 GMT
EXPOSE 5044 9600
# Thu, 23 May 2019 15:15:29 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=7.1.1 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Thu, 23 May 2019 15:15:30 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f98cc5c1283849dc57bd5fb4e483e9595625ffe55ecc9f9ba89535171b8edb70`  
		Last Modified: Tue, 28 May 2019 14:21:22 GMT  
		Size: 120.5 MB (120492133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:487aaccc47c90a3a43c4243cf172c36b6b97c303d3f69efca4797ba6fff135ba`  
		Last Modified: Tue, 28 May 2019 14:21:04 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de63618f178576f9a3bc48bfc8083ad20cd451d80f42b703f22c39118fa0089`  
		Last Modified: Tue, 28 May 2019 14:21:21 GMT  
		Size: 172.9 MB (172859067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e707488ca53f5de6873de0a2d58f76d7ab5627d2de80c311a98fabb562de46`  
		Last Modified: Tue, 28 May 2019 14:21:04 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f538e5fa0431c5d539cadb6c9595731a11990af3cece90ac043c7145722e1c3`  
		Last Modified: Tue, 28 May 2019 14:21:03 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc578c9b5b8a8189cc2a8ab746c559826c998f8118a29ae038f0d2e520eab506`  
		Last Modified: Tue, 28 May 2019 14:21:00 GMT  
		Size: 444.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d08fc60ede0722641d6b0e8a2d86fcafb89dc01ab3a2bb2547071c9305dac5f`  
		Last Modified: Tue, 28 May 2019 14:21:00 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec847b96ea11d80bd6f91808be03c5f9fe483a1dfb12785a4901608ee7d378c1`  
		Last Modified: Tue, 28 May 2019 14:21:00 GMT  
		Size: 2.6 KB (2638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467f46a19db983d003a6e48e3308d7bf5646af08063a0b300e2e810ff75246d5`  
		Last Modified: Tue, 28 May 2019 14:21:00 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:467f46a19db983d003a6e48e3308d7bf5646af08063a0b300e2e810ff75246d5`  
		Last Modified: Tue, 28 May 2019 14:21:00 GMT  
		Size: 494.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:500547df61cd886ab74ac13d2822fe855323989a7e6a86ddeaab51e3e114aa97`  
		Last Modified: Tue, 28 May 2019 14:21:01 GMT  
		Size: 1.0 MB (1002076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `logstash`

-	[`logstash:6.7.1`](#logstash671)
-	[`logstash:7.0.0`](#logstash700)

## `logstash:6.7.1`

```console
$ docker pull logstash@sha256:65656f782d20e1ade1cd08ba1afe336d3e2b81390baa4c0d0148b84df34bcc19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:6.7.1` - linux; amd64

```console
$ docker pull logstash@sha256:7caa442bfae701cf5b7f101318c5750613bcd8186461282540c3432029860eb5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.6 MB (345573295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e249719fc8f01d16363bae736c754fb5152113f08da54969b04faf7024666`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 17:04:27 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Tue, 02 Apr 2019 17:04:27 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Tue, 02 Apr 2019 17:04:47 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-6.7.1.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-6.7.1 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Tue, 02 Apr 2019 17:04:47 GMT
WORKDIR /usr/share/logstash
# Tue, 02 Apr 2019 17:04:47 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 02 Apr 2019 17:04:47 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Apr 2019 17:04:48 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Tue, 02 Apr 2019 17:04:48 GMT
ADD file:2a0dac103ac5f20f8efa6c77384f10d83a87c3de7c017658f787cce7d6156b76 in config/logstash.yml 
# Tue, 02 Apr 2019 17:04:48 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Tue, 02 Apr 2019 17:04:48 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Tue, 02 Apr 2019 17:04:49 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Tue, 02 Apr 2019 17:04:49 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Tue, 02 Apr 2019 17:04:49 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Tue, 02 Apr 2019 17:04:49 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Tue, 02 Apr 2019 17:04:49 GMT
USER 1000
# Tue, 02 Apr 2019 17:04:50 GMT
ADD file:e22d146a880f0f369decacfd49c523706ac533251c16f48f477e83d655dd66bc in /usr/local/bin/ 
# Tue, 02 Apr 2019 17:04:50 GMT
EXPOSE 5044 9600
# Tue, 02 Apr 2019 17:04:50 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=6.7.1 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Tue, 02 Apr 2019 17:04:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ea8e988533d66851c7157b4a340a53f768784aa03ff775afcaddb1662b00e2e`  
		Last Modified: Thu, 04 Apr 2019 15:23:05 GMT  
		Size: 91.7 MB (91733318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96f010dd22ab74bb1be2ebd8af61fb560e0013a50fb252f46574aa7d865696e6`  
		Last Modified: Thu, 04 Apr 2019 15:22:52 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699b3a8c5ff65b36eee65fe456e74d01ebd5198b75713c4b1d043fce84bf0568`  
		Last Modified: Thu, 04 Apr 2019 15:23:07 GMT  
		Size: 177.4 MB (177427483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cf540c8187727c771f476f8b42cd200405fd578a9279c35d64fe24f67358c8`  
		Last Modified: Thu, 04 Apr 2019 15:22:52 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d359f9d4b4acebbb8f237d23bb6bdfbbaa14afb0e79e202c40a82012bb16912b`  
		Last Modified: Thu, 04 Apr 2019 15:22:51 GMT  
		Size: 270.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f8a2f5111150d7830aa277316a06e41a5d3ae37590826494c3a69c28c2753ef`  
		Last Modified: Thu, 04 Apr 2019 15:22:48 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86f9682559c8efb06de6f84f6e2c9afdd98e090b4133357a836c821b004bc2b9`  
		Last Modified: Thu, 04 Apr 2019 15:22:48 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b15107296348fcfd71885a2b18757744c2aab0b6b07b3304b4c783da9bb15f30`  
		Last Modified: Thu, 04 Apr 2019 15:22:48 GMT  
		Size: 2.6 KB (2637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a5a78575c1d7f348cf3a8dd3bbf2478bd535c09bcc76ae61c1af247671b14`  
		Last Modified: Thu, 04 Apr 2019 15:22:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890a5a78575c1d7f348cf3a8dd3bbf2478bd535c09bcc76ae61c1af247671b14`  
		Last Modified: Thu, 04 Apr 2019 15:22:48 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72238ec0258fe92f0c356acbda10b6f303b67d555b8c81ce2cab0e186c3e3a46`  
		Last Modified: Thu, 04 Apr 2019 15:22:49 GMT  
		Size: 1.0 MB (1002052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `logstash:7.0.0`

```console
$ docker pull logstash@sha256:e9a63c9f4371ed03243b7b625dfc8b0553d2bdc011f5bb2861a387dbf4ed0c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `logstash:7.0.0` - linux; amd64

```console
$ docker pull logstash@sha256:4d6c69575f150ac962bb2950bef24b6e3c677bfa325b0fa36c8c6493f143fd86
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.5 MB (337522694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acb15b2d9d8f47f7d550611d337abb329dac7521f220ccdcebe1d03e1d156cc9`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Sat, 06 Apr 2019 00:04:38 GMT
RUN yum update -y && yum install -y java-1.8.0-openjdk-devel which &&     yum clean all
# Sat, 06 Apr 2019 00:04:39 GMT
RUN groupadd --gid 1000 logstash &&     adduser --uid 1000 --gid 1000       --home-dir /usr/share/logstash --no-create-home       logstash
# Sat, 06 Apr 2019 00:04:58 GMT
RUN curl -Lo - http://localhost:8000/logstash/build//logstash-7.0.0.tar.gz |     tar zxf - -C /usr/share &&     mv /usr/share/logstash-7.0.0 /usr/share/logstash &&     chown --recursive logstash:logstash /usr/share/logstash/ &&     chown -R logstash:root /usr/share/logstash &&     chmod -R g=u /usr/share/logstash &&     find /usr/share/logstash -type d -exec chmod g+s {} \; &&     ln -s /usr/share/logstash /opt/logstash
# Sat, 06 Apr 2019 00:04:59 GMT
WORKDIR /usr/share/logstash
# Sat, 06 Apr 2019 00:04:59 GMT
ENV ELASTIC_CONTAINER=true
# Sat, 06 Apr 2019 00:04:59 GMT
ENV PATH=/usr/share/logstash/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 06 Apr 2019 00:04:59 GMT
ADD file:1183410472ec370104718a08e1144081518db1d006a8cc82de824a34455ab3f3 in config/pipelines.yml 
# Sat, 06 Apr 2019 00:04:59 GMT
ADD file:83ab096464b764c812ae68c2872c05d48ee1620e6a1629948d52c13ac6dcfe11 in config/logstash.yml 
# Sat, 06 Apr 2019 00:05:00 GMT
ADD file:2ef21d4766eab3ac48ed3847c8b8d05554f1fd0b39061cba66c9ac93240087fa in config/ 
# Sat, 06 Apr 2019 00:05:00 GMT
ADD file:0cd9cc51daf5f37b2aa8aae8cf3570a3680e22852afb2803ccb87ddcd3369f52 in pipeline/logstash.conf 
# Sat, 06 Apr 2019 00:05:01 GMT
RUN chown --recursive logstash:root config/ pipeline/
# Sat, 06 Apr 2019 00:05:01 GMT
ENV LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
# Sat, 06 Apr 2019 00:05:01 GMT
ADD file:29dd60f159d64086c20a7a02f84a9314f44b2290304547233fb96744325b1245 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:05:02 GMT
RUN chmod 0755 /usr/local/bin/docker-entrypoint
# Sat, 06 Apr 2019 00:05:02 GMT
USER 1000
# Sat, 06 Apr 2019 00:05:02 GMT
ADD file:8ed33e1faef241414be58a24e3bf8926d65ade5e342819ae4333c9b474416834 in /usr/local/bin/ 
# Sat, 06 Apr 2019 00:05:02 GMT
EXPOSE 5044 9600
# Sat, 06 Apr 2019 00:05:02 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=logstash org.label-schema.version=7.0.0 org.label-schema.url=https://www.elastic.co/products/logstash org.label-schema.vcs-url=https://github.com/elastic/logstash-docker license=Elastic License
# Sat, 06 Apr 2019 00:05:03 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd341010509a082d6d7dd4c0d3672e0584605f7c93f8fb41ece0e74c08b4febb`  
		Last Modified: Wed, 10 Apr 2019 13:25:44 GMT  
		Size: 91.7 MB (91732867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b13f36f2ee403fb55a8a70f64a169047745fd455e1feddc97f66604eb0acb7`  
		Last Modified: Wed, 10 Apr 2019 13:25:30 GMT  
		Size: 1.6 KB (1610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0d1589cece53cf4af31dd3f8dc4c7af9e3923ba601ed336c8c4c08aede48bb`  
		Last Modified: Wed, 10 Apr 2019 13:25:46 GMT  
		Size: 169.4 MB (169377296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cd890a550206ef59d0f35607e2ef2dc96358080209e38816cd29a5b0ceb689`  
		Last Modified: Wed, 10 Apr 2019 13:25:30 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70ee2611637bb3e02af0c403264a8cb797760ffb1007fb30679f405718f7943`  
		Last Modified: Wed, 10 Apr 2019 13:25:29 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e1f3afc5c9577957385e2ae0303e8391049a4d4e255c4b08ee9b38ef394c57`  
		Last Modified: Wed, 10 Apr 2019 13:25:26 GMT  
		Size: 445.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f8b881fdaf5077aa30ec4621d370b9bf40ed488611c70c63be94182627469f1`  
		Last Modified: Wed, 10 Apr 2019 13:25:26 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7d9130747c3c2d44d7bfd3d1dcbc2d0e8f36d815ebdcf6dd851a6d856aee1a4`  
		Last Modified: Wed, 10 Apr 2019 13:25:26 GMT  
		Size: 2.6 KB (2641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2714e77fec64fd338a81254f5400e8d02e731b7c34ce47bbe2e529e47b1bf`  
		Last Modified: Wed, 10 Apr 2019 13:25:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a2714e77fec64fd338a81254f5400e8d02e731b7c34ce47bbe2e529e47b1bf`  
		Last Modified: Wed, 10 Apr 2019 13:25:26 GMT  
		Size: 496.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0109e3a3cbf7b2c0ce6a5f48b1c390da561c5d3b378da638a11182e0da65d523`  
		Last Modified: Wed, 10 Apr 2019 13:25:27 GMT  
		Size: 1.0 MB (1002076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

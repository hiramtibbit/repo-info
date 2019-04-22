<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:6.7.1`](#kibana671)
-	[`kibana:7.0.0`](#kibana700)

## `kibana:6.7.1`

```console
$ docker pull kibana@sha256:ac652328d92a8ca0a2032f653553d1bb742cea6be2acf5ae2108439c2da9377d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:6.7.1` - linux; amd64

```console
$ docker pull kibana@sha256:ba704309bd932c10416b55a4c1863e771e3ed75e5b0688b2c08f58eedbd523f7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.3 MB (278301590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:860831fbf9e73aed83258c14c8efb01677dc3da25af6a8ff0b1aa06ff7115d7f`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Tue, 02 Apr 2019 16:30:35 GMT
EXPOSE 5601
# Tue, 02 Apr 2019 16:30:49 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Tue, 02 Apr 2019 16:31:09 GMT
COPY --chown=1000:0dir:dad4104523296ea5604fc3d60e44977783e51a5a1aca155d44663f241f208e44 in /usr/share/kibana 
# Tue, 02 Apr 2019 16:31:10 GMT
WORKDIR /usr/share/kibana
# Tue, 02 Apr 2019 16:31:11 GMT
RUN ln -s /usr/share/kibana /opt/kibana
# Tue, 02 Apr 2019 16:31:11 GMT
ENV ELASTIC_CONTAINER=true
# Tue, 02 Apr 2019 16:31:11 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 02 Apr 2019 16:31:11 GMT
COPY --chown=1000:0file:60b6181f28c99b362092ea6139b6d4112ddd0bef32d52563c33b26bdc2b51318 in /usr/share/kibana/config/kibana.yml 
# Tue, 02 Apr 2019 16:31:11 GMT
COPY --chown=1000:0file:4d37b531a7f31e19c4e85c261237e19e58151c316123245b24071f8bb51575ea in /usr/local/bin/ 
# Tue, 02 Apr 2019 16:31:12 GMT
RUN chmod g+ws /usr/share/kibana && find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Tue, 02 Apr 2019 16:31:13 GMT
RUN groupadd --gid 1000 kibana && useradd --uid 1000 --gid 1000 --home-dir /usr/share/kibana --no-create-home kibana
# Tue, 02 Apr 2019 16:31:13 GMT
USER kibana
# Tue, 02 Apr 2019 16:31:13 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=6.7.1 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana license=Elastic License
# Tue, 02 Apr 2019 16:31:13 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de755da26078ff8d86a34e6b6a435c2cbf05406137cd7351baf5b2d15801c64`  
		Last Modified: Thu, 04 Apr 2019 15:22:04 GMT  
		Size: 14.9 MB (14893186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0b755f02a6ce19fbbdaef0899fd672343e613424b2f245db77664847c3defb7`  
		Last Modified: Thu, 04 Apr 2019 15:22:27 GMT  
		Size: 188.0 MB (188000233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5334d2bd41b7a6535c3ef27add9a3596eafd817cd11be0fbe3db104f88b4bfa9`  
		Last Modified: Thu, 04 Apr 2019 15:21:58 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0588ea55748a8a135617737503e7b57d1aef4916a18f5d34ab64706c283807`  
		Last Modified: Thu, 04 Apr 2019 15:21:58 GMT  
		Size: 393.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41d16359541e3aaf864300682d95dce0750957b01b6e17417f2412564eea383e`  
		Last Modified: Thu, 04 Apr 2019 15:21:58 GMT  
		Size: 2.1 KB (2062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc3de62ddb2187c959e5d61e0e9dbcde9d2aa36162fcf7d8a14d7f0d94cc762a`  
		Last Modified: Thu, 04 Apr 2019 15:21:58 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64b08a88c3fb299c27de4a486d92819038a0d71c12ded1e9b6515d159ace1313`  
		Last Modified: Thu, 04 Apr 2019 15:21:58 GMT  
		Size: 1.6 KB (1602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:7.0.0`

```console
$ docker pull kibana@sha256:6bbd0e886b47406929fab070c8631280551e8c5433ffff610953454275de8ae8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `kibana:7.0.0` - linux; amd64

```console
$ docker pull kibana@sha256:f36eb6f1ee3cd0b75c9f7f24d83a27767aa8c13a3dff998fe17117a319c4a97f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259634885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f92ab934206e6388693f787e9cfd1f0f3030c6efac19c2adbaabc43e5379511`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Fri, 05 Apr 2019 23:29:32 GMT
EXPOSE 5601
# Fri, 05 Apr 2019 23:29:45 GMT
RUN yum update -y && yum install -y fontconfig freetype && yum clean all
# Fri, 05 Apr 2019 23:30:06 GMT
COPY --chown=1000:0dir:e6a5322d5706ea66ab6c4dee4291cf54373fd097dbb3b98fc3a1c054fa5ba9e8 in /usr/share/kibana 
# Fri, 05 Apr 2019 23:30:07 GMT
WORKDIR /usr/share/kibana
# Fri, 05 Apr 2019 23:30:08 GMT
RUN ln -s /usr/share/kibana /opt/kibana
# Fri, 05 Apr 2019 23:30:08 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 05 Apr 2019 23:30:08 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 05 Apr 2019 23:30:08 GMT
COPY --chown=1000:0file:60b6181f28c99b362092ea6139b6d4112ddd0bef32d52563c33b26bdc2b51318 in /usr/share/kibana/config/kibana.yml 
# Fri, 05 Apr 2019 23:30:08 GMT
COPY --chown=1000:0file:4d37b531a7f31e19c4e85c261237e19e58151c316123245b24071f8bb51575ea in /usr/local/bin/ 
# Fri, 05 Apr 2019 23:30:09 GMT
RUN chmod g+ws /usr/share/kibana && find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \;
# Fri, 05 Apr 2019 23:30:10 GMT
RUN groupadd --gid 1000 kibana && useradd --uid 1000 --gid 1000 --home-dir /usr/share/kibana --no-create-home kibana
# Fri, 05 Apr 2019 23:30:10 GMT
USER kibana
# Fri, 05 Apr 2019 23:30:10 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.vendor=Elastic org.label-schema.name=kibana org.label-schema.version=7.0.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.vcs-url=https://github.com/elastic/kibana license=Elastic License
# Fri, 05 Apr 2019 23:30:11 GMT
CMD ["/usr/local/bin/kibana-docker"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb13981bc185e757cdb86bfebb780f3e7b7dc6efca39c65f1b05c3d7338f2bdc`  
		Last Modified: Wed, 10 Apr 2019 13:24:02 GMT  
		Size: 14.9 MB (14893445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb6fdde9c89a00a54e910fc5690abd5b23b612e4a14de683fb612224dbf46c12`  
		Last Modified: Wed, 10 Apr 2019 13:25:00 GMT  
		Size: 169.3 MB (169333262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c206861615a5c9c95486ccef22f3e75660690dce9724ecf8fff97905dfe5761`  
		Last Modified: Wed, 10 Apr 2019 13:23:56 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cd246ddaff6bc9867b3af28b58ff2d1b395d67d4994505eea41ea8ed7a25ed`  
		Last Modified: Wed, 10 Apr 2019 13:23:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b4f7f0c787823865a8dd6b9bd146027e63aabe67fd8d9a1671d3a7f5cfcde00`  
		Last Modified: Wed, 10 Apr 2019 13:23:56 GMT  
		Size: 2.1 KB (2061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bf5084285e9fac6a9699ef64a5e01fae1c4c54999a3e6b2eb39e2fbd0aa4178`  
		Last Modified: Wed, 10 Apr 2019 13:23:56 GMT  
		Size: 150.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04bc029a7ae8ab59b1117455d4790f9db670c7b9577ea72726a0d76be33a11a`  
		Last Modified: Wed, 10 Apr 2019 13:23:56 GMT  
		Size: 1.6 KB (1609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:0208d83b95c80e668beb112cdb65505b20dd5d3a96693b2af0e302f44c542f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:dfb183a6a0b7af7fa3a2af07be5e6ca0d0ce5bd75bca82685c3713ffbc667caa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.6 MB (410570066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:123b5b29930df53524de37ef1e84aee5a6a1a8ed922883b84d3cefe6c041f8e2`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
# Tue, 27 Nov 2018 04:56:47 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.20181114.tar.gz?versionId=nB5.4dIHFJSZqiKkbJWmAufA2zT96NtU"  && echo "9e69458ec7d3617a02584b64d77558c513253de6ef0d33b8efbd709430c6e14a /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a9f987207cf9d259b636bbb1663acb54d8ce2e7554f3225b3227ee050321e5`  
		Last Modified: Tue, 27 Nov 2018 04:59:26 GMT  
		Size: 349.3 MB (349323441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:with-sources` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:2fdd5b57c931a671cfa12f477de361711c8cb6919cda3baba5370338c8fd7d34
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.8 MB (411751312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c36f10df1148f8d414462ea6a8b1eee29f4aff9ebbb28680d5a4d4575d5a3c6e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 09:40:02 GMT
ADD file:dc7283b2d6c4ba2d05e11f036fe30ba84bd8224621ccfd35ac670e35051ce620 in / 
# Tue, 27 Nov 2018 09:40:04 GMT
CMD ["/bin/bash"]
# Tue, 27 Nov 2018 09:40:46 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.20181114.tar.gz?versionId=nB5.4dIHFJSZqiKkbJWmAufA2zT96NtU"  && echo "9e69458ec7d3617a02584b64d77558c513253de6ef0d33b8efbd709430c6e14a /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:95dc14c8379bb876addce8b5a167c6221d609220aa6f32ce290b68a9735001c0`  
		Last Modified: Tue, 27 Nov 2018 09:41:35 GMT  
		Size: 62.4 MB (62427877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68770efd736dba9b531715db83decf7d0e5422e41b16f16330c9769d4284f175`  
		Last Modified: Tue, 27 Nov 2018 09:42:58 GMT  
		Size: 349.3 MB (349323435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

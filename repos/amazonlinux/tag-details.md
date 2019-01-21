<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20190118`](#amazonlinux201803020190118)
-	[`amazonlinux:2018.03.0.20190118-with-sources`](#amazonlinux201803020190118-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20190115`](#amazonlinux2020190115)
-	[`amazonlinux:2.0.20190115-with-sources`](#amazonlinux2020190115-with-sources)
-	[`amazonlinux:2-with-sources`](#amazonlinux2-with-sources)
-	[`amazonlinux:latest`](#amazonlinuxlatest)
-	[`amazonlinux:with-sources`](#amazonlinuxwith-sources)

## `amazonlinux:1`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6f9ba4b379b3ff9edd4684fa6bd89f5f950c6a332b4db1494806403c0c0bb391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61776229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f929d2604c7e504a568eac9a2523c1b9e9b15e1fcee4076e1411a552913d08e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:eda241b8b449e6543df7c87c8c4e9459b2a3862dd7345135fbfeb0fa6d6f3537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353452293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4e895e2192d949dae5b4a4e9d8aa4d38cf84c118aedf6e16897151a760731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:51 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=G7JV6l3amfK7ZI6vMX7naHgMkmf_uoNE"  && echo "ce4c3194cd8ed0137f80249be6e1cadd964102965926360d9bc8a58aef84e180 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4068d6e00fd4411de24f8cea5dfc8682651162fe3563f7126f7ad3fffb45d6`  
		Last Modified: Thu, 30 Aug 2018 21:45:24 GMT  
		Size: 291.7 MB (291676064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2`

```console
$ docker pull amazonlinux@sha256:51a7897ead209efad32d6e82ac06c33808b32d8833049cd4c7ca8fd948b43008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fe1f25a3ebb2a736c04ea3a522b1eff9c315539604a534d519c787b277e94b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61246625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467e0b1e91745890aa0298126eef4f5edeca2998ec07e932b468b2fb23d11f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:2` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:51a7fb7327cf75dd4175c1030af8107ebe8fd78d1660c0a19ca847e6091dfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62427877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fb2032e6e107e7018f4c83cf682d564c315537fafe12a8b5dabada01b766e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 09:40:02 GMT
ADD file:dc7283b2d6c4ba2d05e11f036fe30ba84bd8224621ccfd35ac670e35051ce620 in / 
# Tue, 27 Nov 2018 09:40:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:95dc14c8379bb876addce8b5a167c6221d609220aa6f32ce290b68a9735001c0`  
		Last Modified: Tue, 27 Nov 2018 09:41:35 GMT  
		Size: 62.4 MB (62427877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03` - linux; amd64

```console
$ docker pull amazonlinux@sha256:6f9ba4b379b3ff9edd4684fa6bd89f5f950c6a332b4db1494806403c0c0bb391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61776229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f929d2604c7e504a568eac9a2523c1b9e9b15e1fcee4076e1411a552913d08e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2018.03.0.20190118`

**does not exist** (yet?)

## `amazonlinux:2018.03.0.20190118-with-sources`

**does not exist** (yet?)

## `amazonlinux:2018.03-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:eda241b8b449e6543df7c87c8c4e9459b2a3862dd7345135fbfeb0fa6d6f3537
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353452293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dc4e895e2192d949dae5b4a4e9d8aa4d38cf84c118aedf6e16897151a760731`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:40 GMT
ADD file:352b08a4b5ba06b2e22ec501352dfd7fb731f1173ee0e008a67f6be512ac3615 in / 
# Thu, 30 Aug 2018 21:43:40 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:51 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=G7JV6l3amfK7ZI6vMX7naHgMkmf_uoNE"  && echo "ce4c3194cd8ed0137f80249be6e1cadd964102965926360d9bc8a58aef84e180 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:5b90a54fcf20cd7bbbfaaa43d29e91bc689ffbaac82ba9aa216a59be0532f6e1`  
		Last Modified: Thu, 30 Aug 2018 21:45:00 GMT  
		Size: 61.8 MB (61776229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb4068d6e00fd4411de24f8cea5dfc8682651162fe3563f7126f7ad3fffb45d6`  
		Last Modified: Thu, 30 Aug 2018 21:45:24 GMT  
		Size: 291.7 MB (291676064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:2.0.20190115`

**does not exist** (yet?)

## `amazonlinux:2.0.20190115-with-sources`

**does not exist** (yet?)

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:0208d83b95c80e668beb112cdb65505b20dd5d3a96693b2af0e302f44c542f5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:2-with-sources` - linux; amd64

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

### `amazonlinux:2-with-sources` - linux; arm64 variant v8

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

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:51a7897ead209efad32d6e82ac06c33808b32d8833049cd4c7ca8fd948b43008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:fe1f25a3ebb2a736c04ea3a522b1eff9c315539604a534d519c787b277e94b9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.2 MB (61246625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2467e0b1e91745890aa0298126eef4f5edeca2998ec07e932b468b2fb23d11f7`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 04:55:53 GMT
ADD file:9a858b436088fe47b75fb9a4a9548f06cbab01c8b69bca6c3ca52153eb31c81a in / 
# Tue, 27 Nov 2018 04:55:53 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:2cbe74538cb54cc9c69497b52b80f745cdf9360557e30d38f63906efdb6736b5`  
		Last Modified: Tue, 27 Nov 2018 04:58:23 GMT  
		Size: 61.2 MB (61246625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `amazonlinux:latest` - linux; arm64 variant v8

```console
$ docker pull amazonlinux@sha256:51a7fb7327cf75dd4175c1030af8107ebe8fd78d1660c0a19ca847e6091dfcf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.4 MB (62427877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05fb2032e6e107e7018f4c83cf682d564c315537fafe12a8b5dabada01b766e9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 27 Nov 2018 09:40:02 GMT
ADD file:dc7283b2d6c4ba2d05e11f036fe30ba84bd8224621ccfd35ac670e35051ce620 in / 
# Tue, 27 Nov 2018 09:40:04 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:95dc14c8379bb876addce8b5a167c6221d609220aa6f32ce290b68a9735001c0`  
		Last Modified: Tue, 27 Nov 2018 09:41:35 GMT  
		Size: 62.4 MB (62427877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

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

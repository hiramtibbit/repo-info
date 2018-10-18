<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `amazonlinux`

-	[`amazonlinux:1`](#amazonlinux1)
-	[`amazonlinux:1-with-sources`](#amazonlinux1-with-sources)
-	[`amazonlinux:2`](#amazonlinux2)
-	[`amazonlinux:2018.03`](#amazonlinux201803)
-	[`amazonlinux:2018.03.0.20180827`](#amazonlinux201803020180827)
-	[`amazonlinux:2018.03.0.20180827-with-sources`](#amazonlinux201803020180827-with-sources)
-	[`amazonlinux:2018.03-with-sources`](#amazonlinux201803-with-sources)
-	[`amazonlinux:2.0.20181010`](#amazonlinux2020181010)
-	[`amazonlinux:2.0.20181010-with-sources`](#amazonlinux2020181010-with-sources)
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
$ docker pull amazonlinux@sha256:a735e1da8ee44afaffc147ed019fcb136ed2a9fff162a2132b957035a5e316c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2` - linux; amd64

```console
$ docker pull amazonlinux@sha256:df69c163b756f81b8879e06ee46cd31354596a7b877944965fa3635e27ed146e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61628165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51b74331e9c98ec57a754de7b217e634dc4f0d30b78c79b36806ecfbc486453`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:19 GMT
ADD file:29628d035f4e1bda4091dd25aecb8910351a3cbb0b06215d1c61f0ba4028f4c8 in / 
# Thu, 30 Aug 2018 21:43:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9a9707b030c2d5858e197de8b01ec47adfdf2b7289ae25b73aa30091844491a8`  
		Last Modified: Thu, 30 Aug 2018 21:44:13 GMT  
		Size: 61.6 MB (61628165 bytes)  
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

## `amazonlinux:2018.03.0.20180827`

```console
$ docker pull amazonlinux@sha256:a1bb862e989564554fb0fba91ab6da0b7e79682759a7dc3fd7231a0c414ebf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180827` - linux; amd64

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

## `amazonlinux:2018.03.0.20180827-with-sources`

```console
$ docker pull amazonlinux@sha256:9a7e7f76567c8e746859a6400d609290622ac5932dd16f24174e83c51b6bb489
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2018.03.0.20180827-with-sources` - linux; amd64

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

## `amazonlinux:2.0.20181010`

**does not exist** (yet?)

## `amazonlinux:2.0.20181010-with-sources`

**does not exist** (yet?)

## `amazonlinux:2-with-sources`

```console
$ docker pull amazonlinux@sha256:b1c3711b788e9988a33b5d25b10834e6820af5e8f1b3d7310e906e84fe85bf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:2-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:99c07c7e493763233bf370f356483e7c87cf7227508b7bc3213ed73211e8562f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412118259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e87c4c9c98c86dfa25b38e1c80b5b4093d5bb31b136ed39852c4acf0702a66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:19 GMT
ADD file:29628d035f4e1bda4091dd25aecb8910351a3cbb0b06215d1c61f0ba4028f4c8 in / 
# Thu, 30 Aug 2018 21:43:19 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:31 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=0KdltZx3MM5vxoNe2pcOqdYDebiCRhU0"  && echo "b6a703acc414a896f65edaa797ac89c90febc63e01a09b7f962e8ab64ed7d090 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9a9707b030c2d5858e197de8b01ec47adfdf2b7289ae25b73aa30091844491a8`  
		Last Modified: Thu, 30 Aug 2018 21:44:13 GMT  
		Size: 61.6 MB (61628165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0205ad25884aa9db59eca275c02bced9023061bfb61bf3145d98faf1abaac7e4`  
		Last Modified: Thu, 30 Aug 2018 21:44:37 GMT  
		Size: 350.5 MB (350490094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:latest`

```console
$ docker pull amazonlinux@sha256:a735e1da8ee44afaffc147ed019fcb136ed2a9fff162a2132b957035a5e316c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:latest` - linux; amd64

```console
$ docker pull amazonlinux@sha256:df69c163b756f81b8879e06ee46cd31354596a7b877944965fa3635e27ed146e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.6 MB (61628165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e51b74331e9c98ec57a754de7b217e634dc4f0d30b78c79b36806ecfbc486453`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:19 GMT
ADD file:29628d035f4e1bda4091dd25aecb8910351a3cbb0b06215d1c61f0ba4028f4c8 in / 
# Thu, 30 Aug 2018 21:43:19 GMT
CMD ["/bin/bash"]
```

-	Layers:
	-	`sha256:9a9707b030c2d5858e197de8b01ec47adfdf2b7289ae25b73aa30091844491a8`  
		Last Modified: Thu, 30 Aug 2018 21:44:13 GMT  
		Size: 61.6 MB (61628165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:b1c3711b788e9988a33b5d25b10834e6820af5e8f1b3d7310e906e84fe85bf5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:99c07c7e493763233bf370f356483e7c87cf7227508b7bc3213ed73211e8562f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412118259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12e87c4c9c98c86dfa25b38e1c80b5b4093d5bb31b136ed39852c4acf0702a66`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 30 Aug 2018 21:43:19 GMT
ADD file:29628d035f4e1bda4091dd25aecb8910351a3cbb0b06215d1c61f0ba4028f4c8 in / 
# Thu, 30 Aug 2018 21:43:19 GMT
CMD ["/bin/bash"]
# Thu, 30 Aug 2018 21:43:31 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/amzn2/srpm-bundle.tar.gz?versionId=0KdltZx3MM5vxoNe2pcOqdYDebiCRhU0"  && echo "b6a703acc414a896f65edaa797ac89c90febc63e01a09b7f962e8ab64ed7d090 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:9a9707b030c2d5858e197de8b01ec47adfdf2b7289ae25b73aa30091844491a8`  
		Last Modified: Thu, 30 Aug 2018 21:44:13 GMT  
		Size: 61.6 MB (61628165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0205ad25884aa9db59eca275c02bced9023061bfb61bf3145d98faf1abaac7e4`  
		Last Modified: Thu, 30 Aug 2018 21:44:37 GMT  
		Size: 350.5 MB (350490094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

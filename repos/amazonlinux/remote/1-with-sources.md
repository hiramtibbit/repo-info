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

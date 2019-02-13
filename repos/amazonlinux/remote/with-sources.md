## `amazonlinux:with-sources`

```console
$ docker pull amazonlinux@sha256:8994fc45f73698e70953e73565143ae7faa2e25cbefcd49ddc12611d1b3aaaff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:acef38e8cd68b0af016a361cad9511e2723a5cdf7976258840d35ab337d7d158
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **410.7 MB (410744081 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c30d72e091cb9ac3c092b0e1c566e7ded77e875e163ad318543de58db0ec9e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 13 Feb 2019 01:19:46 GMT
ADD file:226e4884709da9340bdae211b7224f84b5d4cc3fbedd1245c9e573666bfaec4c in / 
# Wed, 13 Feb 2019 01:19:47 GMT
CMD ["/bin/bash"]
# Wed, 13 Feb 2019 01:20:04 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle-4d250d41ccf2d02ae836f22dad85dc0a8530ca1ec1276c036488d72361d7f10e.tar.gz"  && echo "af8f62636d237cedc0bd3fbc937a198d403cb75f32f8049bee5d1eb7f13ae507  /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:d5b38b9f36c57da7af767a1846009f116954669131216124740d8c726c0bf04a`  
		Last Modified: Wed, 13 Feb 2019 01:21:01 GMT  
		Size: 61.3 MB (61282504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a24804216fe7965cdc6e6f5b0ead4e18dec2dd847ef688230d6cbf78bc73e19`  
		Last Modified: Wed, 13 Feb 2019 01:21:29 GMT  
		Size: 349.5 MB (349461577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

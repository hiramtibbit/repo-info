## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:f58b85f5d394ffbb1813e803d90903e10ba76025c1154eac73630faa67e98392
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:2156646f29c21fac1a882a4e91716a357ffaed85f689520a74ccb10ba85989b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.0 MB (352997677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac583af12ac7c54f482f18f528b7a8d5301237dffc6fdbb93ffa24de54df002`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Wed, 25 Apr 2018 18:19:59 GMT
ADD file:6f2423e0c7f8eec427c07eaf632895f73ff9a3d7ead3fe0b02ca95f3deaf18f9 in / 
# Wed, 25 Apr 2018 18:20:00 GMT
CMD ["/bin/bash"]
# Wed, 25 Apr 2018 18:20:48 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=D_KCpIT4RgFgTnGVHbv96W6XS_GUjpKK"  && echo "c0d5af8d6639a719469cd564835831a7cebb8683d40c82ce38172fda5fb43acc /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:4b92325dc37b1db5a85249c2720897e4137dfd720a009144e01051eff33c8013`  
		Last Modified: Wed, 25 Apr 2018 18:47:25 GMT  
		Size: 61.7 MB (61742728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb437d675a1cf5030aac67b4bf9e1129093cf1e6bee88f066982dda3cf0dd54e`  
		Last Modified: Wed, 25 Apr 2018 18:54:20 GMT  
		Size: 291.3 MB (291254949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

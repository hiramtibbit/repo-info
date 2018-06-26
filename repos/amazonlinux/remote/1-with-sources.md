## `amazonlinux:1-with-sources`

```console
$ docker pull amazonlinux@sha256:eb42658a166f60aedbebc5f242e932a81f96f3968d69101b6b408c26d48dc526
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `amazonlinux:1-with-sources` - linux; amd64

```console
$ docker pull amazonlinux@sha256:57bb20eed15648a52a85f2ba4f04f098262737c8adcc4a909c16697b3eba245a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.4 MB (353417136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a4ea2ebf2e8cb9f3009ef6c2f1176ee0e27167a111e3154785c44bd608bd71`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 26 Jun 2018 20:22:57 GMT
ADD file:7692687159a4ccaa39cf388bf8c8fd8a6ef409079602a951e12601eba8146606 in / 
# Tue, 26 Jun 2018 20:22:57 GMT
CMD ["/bin/bash"]
# Tue, 26 Jun 2018 20:23:38 GMT
RUN mkdir /usr/src/srpm  && curl -o /usr/src/srpm/srpm-bundle.tar.gz "https://amazon-linux-docker-sources.s3-accelerate.amazonaws.com/srpm-bundle.tar.gz?versionId=TMSfeX5bVpqLoqjaGnsKXppJNyKOiXNz"  && echo "b673f0febfbf13a268de6561bfb24c7ab1018632b5d63879cb79a682b8752b36 /usr/src/srpm/srpm-bundle.tar.gz" | sha256sum -c -
```

-	Layers:
	-	`sha256:28eb89314c9ec1667e99b2b7e999f7e6a4505685cb7c16aad2f4bb272a6c8f1b`  
		Last Modified: Tue, 26 Jun 2018 20:26:43 GMT  
		Size: 61.8 MB (61763897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2caaf917ecfe3854d65befbfea158ee1e73e5f8a5ee7e4028017f31daf5fb4c`  
		Last Modified: Tue, 26 Jun 2018 20:27:53 GMT  
		Size: 291.7 MB (291653239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

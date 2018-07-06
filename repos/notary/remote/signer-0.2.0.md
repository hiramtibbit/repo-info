## `notary:signer-0.2.0`

```console
$ docker pull notary@sha256:0225f85e2f69dffa9cb68fdc03bceffb63e2f7502f5f7fd0d857007bce36c86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.2.0` - linux; amd64

```console
$ docker pull notary@sha256:ffa4262c4b18924c6da3347da193172cbd6f44c925edd4078925955d3917e937
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.8 MB (7751729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca351d42787c99126584d9067bfe581ac21a334153de853ee66afe32a711c432`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 4444/tcp
# Fri, 06 Jul 2018 15:46:09 GMT
EXPOSE 7899/tcp
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:16 GMT
COPY file:6806f4a48e8f380fa47dbf76a9f4ad0e8e3210043b8fa73dc9e088434743cd79 in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:16 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:47:17 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:47:18 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:47:18 GMT
USER [notary]
# Fri, 06 Jul 2018 15:47:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:47:19 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:47:19 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab8c4456962017d880e78dbf88dfd869ec21ac3ecb3aaf3bffdbf65ac00ff8c`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04cf27297d41fcf53fcdd820816600e84900ef686da901395a01b728b98256fe`  
		Last Modified: Fri, 06 Jul 2018 15:49:42 GMT  
		Size: 5.5 MB (5543267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3e399aef8851e1a7c82307b2386ad80f797aa98bffcf566dc1ab050450867c`  
		Last Modified: Fri, 06 Jul 2018 15:49:40 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890112ef8214364913ddbc334ed5f3cb0e5fdde005d2da9e7e616818f95cef79`  
		Last Modified: Fri, 06 Jul 2018 15:49:40 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

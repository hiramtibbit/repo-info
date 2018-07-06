## `notary:signer`

```console
$ docker pull notary@sha256:3689d92974e78fb178bd6dd617f9caccdc5a1e1d33290dc8f8699b2c56eccf14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer` - linux; amd64

```console
$ docker pull notary@sha256:24a9357b712ac94e2913a4c2b81e4beedbf7926b47ad82159674fa4e6b711c3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.9 MB (5859457 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1349baab22d7417cdbe75ff99dee3fdc87691a48dbf48f2be6cadebd2fe4524`
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
# Fri, 06 Jul 2018 15:46:10 GMT
COPY file:b4880bc0053393461a478577052beead051248deb6011be41a90f10b7243c4a0 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:11 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:12 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:12 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:13 GMT
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
	-	`sha256:07bf171576b2f417a4a81e86f8971e5b2085b80a269ee88cfc5df48dc2c731fa`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 3.7 MB (3650997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a751cf976625db716022a3b3ed6e6df2c7784a2d01774eb4bff4a6d41c74bec7`  
		Last Modified: Fri, 06 Jul 2018 15:47:58 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f6e13ad9a6df52a233d8889a31a814ad5365d27b7f80d3db394c29eba1c444c`  
		Last Modified: Fri, 06 Jul 2018 15:47:57 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

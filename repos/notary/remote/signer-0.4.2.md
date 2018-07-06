## `notary:signer-0.4.2`

```console
$ docker pull notary@sha256:24b0a3c4cbe601d1d4b896fb0676043878bcb14589ef65ce8b5e58616e9a9ddb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.4.2` - linux; amd64

```console
$ docker pull notary@sha256:2ab20d3fdf61fd9119533341e1248ec3d4cd2bb0c7dcc47b5ae8e0dbaa08a275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 MB (5778012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c57e9aefc8376a1f78216fd63c6b820da235207422617c4617d814847179e1cd`
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
# Fri, 06 Jul 2018 15:46:32 GMT
COPY file:474d7f8bc88dc235a670fcf18a8fbc823a30d2d26867bcb8d7aaa1ea66d0cd00 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:33 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:33 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:34 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:34 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:35 GMT
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
	-	`sha256:37be4d5caa6d31990604af4e65e7a3010a46b76eebf508b12d0df824fd3a2a6a`  
		Last Modified: Fri, 06 Jul 2018 15:48:37 GMT  
		Size: 3.6 MB (3569554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a61a2f6156df8aaec82e1f691b89d64d9764ac520c3058ecf3deb5b92bdb78e`  
		Last Modified: Fri, 06 Jul 2018 15:48:36 GMT  
		Size: 376.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c97aa81da56f466042307f9c76950ddede059704f9c0e766704312e537931c`  
		Last Modified: Fri, 06 Jul 2018 15:48:36 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

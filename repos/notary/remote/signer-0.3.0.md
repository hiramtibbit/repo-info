## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:c96f68fce52bd7756895981b25082cd7b0febbbadfcbb90684db8b1449ce751a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:68dee31d15a1d1093ead7693c18910a55374dbda54899635acfb555818f2ae84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6784422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ee69d0a9816594f52ba78231340816108076939ba5d42b17543d06b25945547`
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
# Fri, 06 Jul 2018 15:46:55 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:55 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Fri, 06 Jul 2018 15:46:55 GMT
WORKDIR /notary/signer
# Fri, 06 Jul 2018 15:46:56 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:57 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Fri, 06 Jul 2018 15:46:57 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:57 GMT
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
	-	`sha256:2cb149c0e60d919aec8f4b36bded2cc6e15f121a47bf66727590f91d489e243e`  
		Last Modified: Fri, 06 Jul 2018 15:49:12 GMT  
		Size: 4.6 MB (4575961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89c464424fab1d9250788c36ad243bce35e159fe860c7353b499bc700a228da7`  
		Last Modified: Fri, 06 Jul 2018 15:49:11 GMT  
		Size: 379.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9486fd6e868d9e377392582a5d4e3c681d4119d1aefd9a44ff096c5811f98938`  
		Last Modified: Fri, 06 Jul 2018 15:49:11 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

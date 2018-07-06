## `notary:server-0.3.0`

```console
$ docker pull notary@sha256:09014eb4f73eee1fd162e52ce3691eeead087b256715937f1231a741e63892f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:server-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:a0ad7593568d77b1065cd44010653ae851ee6e5abfe6b04a30d8829bca41f6a5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7069631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d48781792239c57532370a612078a64cfd39e8f52262a06af7d5a6ccbc7cd575`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-server","--help"]`

```dockerfile
# Fri, 06 Jul 2018 14:14:06 GMT
ADD file:25f61d70254b9807a40cd3e8d820f6a5ec0e1e596de04e325f6a33810393e95a in / 
# Fri, 06 Jul 2018 14:14:06 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:45:57 GMT
EXPOSE 4443/tcp
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:a391e5f2c14d06d975ea8318684174bd0343e8f70df4fe7df6c5f843b4577f75 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:43 GMT
COPY file:00e9bd0f62e819db5a0c6b40aec0a81210342bc19af26ec3af91f9432ac13587 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:44 GMT
COPY file:ac552ea00574aaf9d5de8e5a1abcf10c8f09012df960328db4f963f404e2d409 in /notary/server/ 
# Fri, 06 Jul 2018 15:46:44 GMT
WORKDIR /notary/server
# Fri, 06 Jul 2018 15:46:45 GMT
RUN adduser -D -H -g "" notary
# Fri, 06 Jul 2018 15:46:45 GMT
USER [notary]
# Fri, 06 Jul 2018 15:46:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/server
# Fri, 06 Jul 2018 15:46:46 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 15:46:46 GMT
CMD ["notary-server" "--help"]
```

-	Layers:
	-	`sha256:8e3ba11ec2a2b39ab372c60c16b421536e50e5ce64a0bc81765c2e38381bcff6`  
		Last Modified: Fri, 06 Jul 2018 04:15:58 GMT  
		Size: 2.2 MB (2206542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d08aa0ee6374c81f6c03bd464873a916802e2ce67acce091d3a20036585038`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 420.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9881088aaff2489ffd6df082e26c4d7f3160a43b1be8fcc3b4cf282aefad9150`  
		Last Modified: Fri, 06 Jul 2018 15:48:52 GMT  
		Size: 4.9 MB (4861103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318df04f923afa52287d81c1daa793b555498f2388e4f047b9d0413b2d8871aa`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 378.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed9ab9f98f429c709a4698fdb4c23689b0ffcef129dc32e76bbc7139565c252`  
		Last Modified: Fri, 06 Jul 2018 15:48:51 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

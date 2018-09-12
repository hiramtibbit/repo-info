## `notary:signer-0.3.0`

```console
$ docker pull notary@sha256:c93ee9b6f159373ba00c4959ab7a5bd322573a2d753f8bc7873191ce2fafb1f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `notary:signer-0.3.0` - linux; amd64

```console
$ docker pull notary@sha256:08bf7a67dc924826c25c4952c376c25abf5d5fa4970ee3ded4322725b4429cea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6784810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86254860e6dac860d91a2e0386724a7c5e97e83c92ec1aea5177cfa1fd2ed8db`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["notary-signer","--help"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 4444/tcp
# Tue, 11 Sep 2018 23:57:45 GMT
EXPOSE 7899/tcp
# Tue, 11 Sep 2018 23:57:46 GMT
COPY file:cfc28ba1c6b9fd3e055210e061c2ad2c9b41eb542b23eb7d3c9adca0a0dd775d in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:28 GMT
COPY file:82acc68c6a248c805a4db0f9d4a1765d55586bee3eb5d63feb0f3f677a8bf902 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:29 GMT
COPY file:659a7bf8bfc297520f9f4ea7e10ccff4b6686bd694f08c0471bc2da01551deb8 in /notary/signer/ 
# Tue, 11 Sep 2018 23:58:29 GMT
WORKDIR /notary/signer
# Tue, 11 Sep 2018 23:58:30 GMT
RUN adduser -D -H -g "" notary
# Tue, 11 Sep 2018 23:58:30 GMT
USER [notary]
# Tue, 11 Sep 2018 23:58:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/notary/signer
# Tue, 11 Sep 2018 23:58:30 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 23:58:31 GMT
CMD ["notary-signer" "--help"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:248c58325b1887532e4b2788c3109560be67d0cdd5e9b7df37c938069a7908f0`  
		Last Modified: Tue, 11 Sep 2018 23:59:14 GMT  
		Size: 348.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72aed169e975ddeb12b3cb7627df03501f05421058782054cddd5b0390823034`  
		Last Modified: Tue, 11 Sep 2018 23:59:54 GMT  
		Size: 4.6 MB (4575962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2685ad24d2f2fdeb8ac5b8edbc45b49d399835de29bd4542893ecfbcb769aa87`  
		Last Modified: Tue, 11 Sep 2018 23:59:53 GMT  
		Size: 380.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e2768fd176435477d0e11906379293dc9b8b102fac5c1d3b00f4e68448654c6`  
		Last Modified: Tue, 11 Sep 2018 23:59:54 GMT  
		Size: 1.2 KB (1189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

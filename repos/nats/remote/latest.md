## `nats:latest`

```console
$ docker pull nats@sha256:cf8890daed2504e125db07a2d923fe818e81c09dae2207bd72d3ef75e50545b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.14393.2125; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:b13b443ea1553bce9e6ccf6aadc0052a76304516ba5a489fc5b057be78517a25
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 MB (2471636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb027f4a1528fc8cef5e1c782c5d6121116c7d13e059fbe3a53fc41285bb1762`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Sat, 03 Mar 2018 00:38:23 GMT
COPY file:c3dc070567e95c73e0d4c5f1ea84adf7e145fb25fcef4723919c0a613abb24b7 in /gnatsd 
# Sat, 03 Mar 2018 00:38:23 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Sat, 03 Mar 2018 00:38:23 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Sat, 03 Mar 2018 00:38:23 GMT
ENTRYPOINT ["/gnatsd"]
# Sat, 03 Mar 2018 00:38:24 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:f2ef0ae04ff2839b6302dc75e831804c4b5057d5df9bc0d5559ef546c299f43b`  
		Last Modified: Sat, 03 Mar 2018 00:38:44 GMT  
		Size: 2.5 MB (2471159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91670a590b9f284fde429656ea7dccdd27e868a20d5ef343b9aa9ac175a3773f`  
		Last Modified: Sat, 03 Mar 2018 00:38:47 GMT  
		Size: 477.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:4401fafef97936e4573e60d1b6a2f167dbca236ec261bb205c45caad5d545d5e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2309117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50f7faa91d11adc43a677dc156494487fea0647f49d5169a50cbd92b77b878e5`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:17 GMT
COPY file:4c72f016acd5df0943e94d53abd26b6792081e18fbc8a56999611bd8ef0cd777 in /gnatsd 
# Fri, 02 Mar 2018 22:13:18 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:18 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:18 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:18 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:c88f8a7f502e9eefec046c167a0dfded0c326ac7b9a899dc38ebd796064d7b1d`  
		Last Modified: Fri, 02 Mar 2018 22:13:27 GMT  
		Size: 2.3 MB (2308639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:012b2d05ca0b4d78dcdd574701ecc442bd3f8fe76d0cda143b43cb0cd2b8f899`  
		Last Modified: Fri, 02 Mar 2018 22:13:26 GMT  
		Size: 478.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:b4495122f109839cda22be0a15b56409a63d1723590163187a31a535423d3961
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2306516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0a5a11ec9fbc279f21a37799b8799ae38b877d870fa7ff523c19c589c6edf9d`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:31 GMT
COPY file:83d82782ebac3a82b29e92601a5b3baaebf1c9e416bc99e316c1084a0ac1c50c in /gnatsd 
# Fri, 02 Mar 2018 22:13:32 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:32 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:32 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:32 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:89da658803b80a28819f351c4d9b43b903c2d2f8ad11cd95df0645ce885cecc7`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 2.3 MB (2306040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15c0666ba32ee51ec0bcc3fe9ef323212935644b024aabb6adc13c12cbc522bb`  
		Last Modified: Fri, 02 Mar 2018 22:13:48 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:90dd38b20a350dd5a4cdbe48c8a81102d608e52353be041d52e4b7b08cdb576e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2256780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:410a4a3f27fa15cf805d050108db6331aba3f1d365a67048c1c56fdefeef7542`
-	Entrypoint: `["\/gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:3f28a91014649df0cc944e5ec4785bee2a35c4a4e3f4031257d30c40cada853a in /gnatsd 
# Fri, 02 Mar 2018 22:13:53 GMT
COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Fri, 02 Mar 2018 22:13:54 GMT
EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Fri, 02 Mar 2018 22:13:54 GMT
ENTRYPOINT ["/gnatsd"]
# Fri, 02 Mar 2018 22:13:55 GMT
CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bd670005fb569d6108cd2f6f5d66adac644f1466b0ed94c2458c2aafd973f325`  
		Last Modified: Fri, 02 Mar 2018 22:14:20 GMT  
		Size: 2.3 MB (2256304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9a0727475b8b918cda3943167bba8f2172579a6826e73ed1760d0269721eb19`  
		Last Modified: Fri, 02 Mar 2018 22:14:19 GMT  
		Size: 476.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.14393.2125; amd64

```console
$ docker pull nats@sha256:6b0c758d8fc949f47e2c3ad33ed68c8b3bb5b6569dc201cc84d1009e5f7fd70a
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.2 MB (411178714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25def874af6f5efe376530d39603c2fe993cd440695249cd8e692e42d3aca2b4`
-	Entrypoint: `["gnatsd"]`
-	Default Command: `["-c","gnatsd.conf"]`

```dockerfile
# Tue, 13 Dec 2016 10:47:17 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Mar 2018 00:52:57 GMT
RUN Install update 10.0.14393.2125
# Tue, 13 Mar 2018 23:39:00 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Tue, 13 Mar 2018 23:39:02 GMT
RUN cmd /S /C #(nop) WORKDIR C:\gnatsd
# Tue, 13 Mar 2018 23:39:03 GMT
RUN cmd /S /C #(nop) COPY file:3278feddd924b82f37ba78291a4d2812b05205cb187af1a883532fe2ae75db15 in gnatsd.exe 
# Tue, 13 Mar 2018 23:39:05 GMT
RUN cmd /S /C #(nop) COPY file:8fad70d15db71db30b9945fba2b3d29035a631ee4fe410e797aef6981c2a1879 in gnatsd.conf 
# Tue, 13 Mar 2018 23:39:05 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222/tcp 6222/tcp 8222/tcp
# Tue, 13 Mar 2018 23:39:06 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["gnatsd"]
# Tue, 13 Mar 2018 23:39:08 GMT
RUN cmd /S /C #(nop)  CMD ["-c" "gnatsd.conf"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Tue, 13 Dec 2016 10:47:17 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:5b557cd80a9856d964887c4ea407b85fca10ce6aaa539984be9dd3570c60fd66`  
		Last Modified: Tue, 13 Mar 2018 00:52:57 GMT  
		Size: 156.0 MB (156003306 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cd6679018c86917df531ece3d8500b5dfaccb8b79ba313225e6b0f40be5f9f9d`  
		Last Modified: Tue, 13 Mar 2018 23:39:33 GMT  
		Size: 915.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c387e8ea34c5c1c13ee3963292c86a3edb8d40b2fef7f0bdbb4870fece8252`  
		Last Modified: Tue, 13 Mar 2018 23:39:33 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0874ae97d7ba4fd3a3f6d24dd3fc9ddb1bcea58d21224a6666b35e3f48a78f3f`  
		Last Modified: Tue, 13 Mar 2018 23:39:32 GMT  
		Size: 2.5 MB (2477806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb63b29731b6fa514eb80e6de9712806eac798efcbf4813926613dc37e2da379`  
		Last Modified: Tue, 13 Mar 2018 23:39:31 GMT  
		Size: 1.7 KB (1704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5dba6a309d8eb6740f1be31301dff8e1284ca56f5099d86a56a2c40e0f754858`  
		Last Modified: Tue, 13 Mar 2018 23:39:31 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f2b797127640cc97749fd9d13adab0125ec3c2d1d124ae2188047f8533ec3a`  
		Last Modified: Tue, 13 Mar 2018 23:39:31 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2a87a8424ae96126a1cf62534cc89c4a7f308e02d99c0abe4e2bccce5621b27`  
		Last Modified: Tue, 13 Mar 2018 23:39:32 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

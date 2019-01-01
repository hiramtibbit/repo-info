## `hello-world:nanoserver-sac2016`

```console
$ docker pull hello-world@sha256:878fd913010d26613319ec7cc83b400cb92113c314da324681d9fecfb5082edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.14393.2551; amd64

### `hello-world:nanoserver-sac2016` - windows version 10.0.14393.2551; amd64

```console
$ docker pull hello-world@sha256:c1be6e1468485757698af528fff774d474e69f448eef43c368fa2f2be1288b4d
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.4 MB (435399440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c911f8d79dba2c870d4b99746cd3571f647375bcbebbc10adc9ca378302e0d5`
-	Default Command: `["cmd","\/C","type C:\\hello.txt"]`

```dockerfile
# Mon, 17 Sep 2018 20:04:15 GMT
RUN Apply image 10.0.14393.0
# Tue, 09 Oct 2018 18:02:39 GMT
RUN Install update 10.0.14393.2551
# Tue, 01 Jan 2019 10:20:14 GMT
RUN cmd /S /C #(nop) COPY file:5d663ccbfe061954e576992403c9920ed47d659acd70d3093fbce20e12273acb in C: 
# Tue, 01 Jan 2019 10:20:16 GMT
RUN cmd /S /C #(nop)  CMD ["cmd" "/C" "type C:\\hello.txt"]
```

-	Layers:
	-	`sha256:bce2fbc256ea437a87dadac2f69aabd25bed4f56255549090056c1131fad0277`  
		Last Modified: Mon, 17 Sep 2018 20:04:15 GMT  
		Size: 252.7 MB (252691002 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:6f2071dcd7294537bba55b3061704ef1370748e91982193b9e0fa4ebc114589b`  
		Last Modified: Tue, 09 Oct 2018 18:02:39 GMT  
		Size: 182.7 MB (182705816 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:909cdbafc9e10d7e00b283cf6433d989a797898c33142863f66f2ae380db5e18`  
		Last Modified: Tue, 01 Jan 2019 10:20:47 GMT  
		Size: 1.7 KB (1671 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a43e426cc5c9d179fbd310ddac734cf9ae634c737c5554c76c190030aaf47529`  
		Last Modified: Tue, 01 Jan 2019 10:20:47 GMT  
		Size: 951.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

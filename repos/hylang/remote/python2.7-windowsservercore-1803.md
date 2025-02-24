## `hylang:python2.7-windowsservercore-1803`

```console
$ docker pull hylang@sha256:b372d3f0c45dff6d9e40172b1796de95b455be3059aace3529067ad21ae5abdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `hylang:python2.7-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull hylang@sha256:91b8ecb895282d349fdaa169ea77ddd0a2b789d4dc6b7e737d5d7610064b849e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2355267333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2acffda9b9ffdc3e43b525f66e14bbef40105e148f6a4f1bcfc1c01cde2be774`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:35:11 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 12 Jun 2019 14:35:13 GMT
ENV PYTHON_RELEASE=2.7.16
# Wed, 12 Jun 2019 14:37:04 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}.amd64.msi' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.msi'; 		Write-Host 'Installing ...'; 	Start-Process msiexec -Wait 		-ArgumentList @( 			'/i', 			'python.msi', 			'/quiet', 			'/qn', 			'TARGETDIR=C:\Python', 			'ALLUSERS=1', 			'ADDLOCAL=DefaultFeature,Extensions,TclTk,Tools,PrependPath' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.msi -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:37:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:38:09 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:38:40 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 12 Jun 2019 14:38:41 GMT
CMD ["python"]
# Wed, 12 Jun 2019 18:34:12 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 18:34:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 18:34:55 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2de32ee3b543cb2d1e3b6dd5d2578256c4bde975bc92e959325ff83ae8ed617b`  
		Last Modified: Tue, 11 Jun 2019 18:21:27 GMT  
		Size: 648.5 MB (648518427 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:206778a210152eae038ff9a90449b1070a39e0fb0f5ae857ae539e996315adec`  
		Last Modified: Wed, 12 Jun 2019 13:23:24 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e13c83a94ea1164722d13b82a09c74f325dc8174f84127a5557ad75b5b6f8853`  
		Last Modified: Wed, 12 Jun 2019 14:50:45 GMT  
		Size: 1.2 KB (1183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de2f9fcd437be539e0ef3239c8fa9ceaac2c8b1ede59b8d37b5c755c3eaa068`  
		Last Modified: Wed, 12 Jun 2019 14:50:44 GMT  
		Size: 1.2 KB (1181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:418f8fac34b027bdfb2f95d73de0c72ffa57d42259f6321370103d980ed393ad`  
		Last Modified: Wed, 12 Jun 2019 14:51:03 GMT  
		Size: 38.8 MB (38770624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad596b7cadcf0f29d29c426664ec4c0d93215569c385b1ddd4b600c2c750a691`  
		Last Modified: Wed, 12 Jun 2019 14:50:45 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:789a9a08b5e43a64255e7d007f6a0547aa478dc3c371a9404420c5ff980b90c4`  
		Last Modified: Wed, 12 Jun 2019 14:50:53 GMT  
		Size: 4.9 MB (4852618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ef21b7b268bddbcb6e69f0ae8cee0f2d863062b91af6544d64ca8421f6f14b`  
		Last Modified: Wed, 12 Jun 2019 14:50:43 GMT  
		Size: 2.4 MB (2365147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:387c72061c7e1b45d25fdd87e8f92c2a29f92354a7f4debeb0da96793a8744eb`  
		Last Modified: Wed, 12 Jun 2019 14:50:41 GMT  
		Size: 1.2 KB (1184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6ab50e4517dfcd791266977aa970cd2e6a113e929cde723a8977b9384c73577`  
		Last Modified: Wed, 12 Jun 2019 19:12:06 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db6c34eee166d7fbb78018ae9938d4727b85a6fdc21f96520e0cd141b81db8a1`  
		Last Modified: Wed, 12 Jun 2019 19:12:07 GMT  
		Size: 1.1 MB (1064075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fec64a4331666d1c54fff07c54b6843c9caf9c9ce8a6fa0463b5722dd20e3295`  
		Last Modified: Wed, 12 Jun 2019 19:12:06 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

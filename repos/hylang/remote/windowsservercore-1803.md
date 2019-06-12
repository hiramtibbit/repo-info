## `hylang:windowsservercore-1803`

```console
$ docker pull hylang@sha256:b757f3a2025b5bfa37df003a56866684863963df68cb24aa145c28a835343a87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `hylang:windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull hylang@sha256:83ab8ac18d65309a6dcfcdfe94d043e4283af0598388f2b6fc0b068a62e22cb8
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2363933978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f6c06bfc84e8727e6062c140cfe06f509fcf8e6bfbcef760a540582a7f2831`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:11:15 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 12 Jun 2019 14:11:17 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 12 Jun 2019 14:13:31 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:13:33 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:14:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:14:37 GMT
CMD ["python"]
# Wed, 12 Jun 2019 17:27:04 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 17:27:47 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 17:27:48 GMT
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
	-	`sha256:b2813922152018e46f5b6e0e79635b7e186ac3f89a6df1c8bb9bb583b369e28c`  
		Last Modified: Wed, 12 Jun 2019 14:46:33 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed111f1c930e0f7fd945c1077ef619bf583be1a183d25c7a48d8f36091f3af35`  
		Last Modified: Wed, 12 Jun 2019 14:46:29 GMT  
		Size: 1.2 KB (1191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73947f59420f22d0768167212235a9ef1074e0ef59cf806bc2a080874fcd228`  
		Last Modified: Wed, 12 Jun 2019 14:46:52 GMT  
		Size: 49.4 MB (49433277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d47c0da282d783d2778de8dbb1b4f1f9ce0a92e410a27a47c6d18c388bf818`  
		Last Modified: Wed, 12 Jun 2019 14:46:30 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85bd58b8b5e13342e349964cfea728f05c123d3fff865ce6ecf9234d353d14e3`  
		Last Modified: Wed, 12 Jun 2019 14:46:39 GMT  
		Size: 5.1 MB (5123475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c01eac564564471bc789f74c112e6a30631bc2ca8d6e91c79d5bcde9339eb495`  
		Last Modified: Wed, 12 Jun 2019 14:46:30 GMT  
		Size: 1.1 KB (1143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f04ac1234e088c3007319b42f2c959ec86822417f7f646292da6c5dfc8c2875`  
		Last Modified: Wed, 12 Jun 2019 19:08:40 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a0f932171ba040892878b32fd301af5a225fdddc0f3b65b836a61ce9377c666`  
		Last Modified: Wed, 12 Jun 2019 19:08:42 GMT  
		Size: 1.2 MB (1162365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d74635eecc04ea4eea6a872e92f0acd4a2d8805497eb7f87b8fb28d695b97eea`  
		Last Modified: Wed, 12 Jun 2019 19:08:40 GMT  
		Size: 1.1 KB (1141 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

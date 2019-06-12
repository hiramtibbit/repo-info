## `hylang:0-python3.6-windowsservercore-1809`

```console
$ docker pull hylang@sha256:c30ebd115c0c4bb2bf6317edad4f0313154831ace9280d556f1e91ad2fd1eb22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.557; amd64

### `hylang:0-python3.6-windowsservercore-1809` - windows version 10.0.17763.557; amd64

```console
$ docker pull hylang@sha256:30f2edbde53de0a35e1e6e2728d28dbabe3fc13aeb42fb5a1173e85077137294
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2440222683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bfc0255a195484fc520fcba594cee79fb8d495d780b29e1c699bacf6bbdcee`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 08 Jun 2019 04:13:36 GMT
RUN Install update 1809-amd64
# Wed, 12 Jun 2019 12:57:46 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:26:28 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 12 Jun 2019 14:26:29 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 12 Jun 2019 14:28:37 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:28:39 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:29:41 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:29:42 GMT
CMD ["python"]
# Wed, 12 Jun 2019 17:59:44 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 18:00:29 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 18:00:30 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:266cffe9d908cf404f555fd6f60ff19167f6393ce6d42f4c9e6e4014cd04bccd`  
		Last Modified: Tue, 11 Jun 2019 18:25:33 GMT  
		Size: 851.4 MB (851381073 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:2c0c4ec7a15b931644ced0837c5a43642233d0cbdf67b1a3971033461576ee05`  
		Last Modified: Wed, 12 Jun 2019 13:25:19 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cd69ea31bfa6f84598504ac6d4e08c0c3b5f2eb5c2ac62270086ae9e906234a`  
		Last Modified: Wed, 12 Jun 2019 14:49:24 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7da449a57897834c67a9053113adfd5c9105e20d1dbd1179ea271b54d7947f3`  
		Last Modified: Wed, 12 Jun 2019 14:49:21 GMT  
		Size: 1.2 KB (1185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:441abe4142e4648612cc4f213673d8693be9dc9c7244b15f047701edb40dd60e`  
		Last Modified: Wed, 12 Jun 2019 14:49:44 GMT  
		Size: 47.8 MB (47803735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0923fca54dc9bf19c242806922fe854bd74e5f571ea89d433f5ef29e09e4379c`  
		Last Modified: Wed, 12 Jun 2019 14:49:21 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68bde11336bd0d9635c91a2076a16be5012daaaebbb351839a52d1eaaa47fc0c`  
		Last Modified: Wed, 12 Jun 2019 14:49:32 GMT  
		Size: 5.2 MB (5179643 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716216d79d818c81bffd5af1f6884a05a416242157055f3ec6a04ea3d3c40514`  
		Last Modified: Wed, 12 Jun 2019 14:49:21 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c933ff4a9a6aecc7fa3d4649a30ccfa59b44b145b3e18bfd74e43c5ee6e111`  
		Last Modified: Wed, 12 Jun 2019 19:10:15 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2382d2a69f1437f164c330d2003fc598a6b5cf631ba0359bcad2bd883996b4ff`  
		Last Modified: Wed, 12 Jun 2019 19:10:17 GMT  
		Size: 1.2 MB (1164576 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa120f229e21fa99966a260ad937381570118751a59c5c728e0691a6c319e2d9`  
		Last Modified: Wed, 12 Jun 2019 19:10:15 GMT  
		Size: 1.2 KB (1180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

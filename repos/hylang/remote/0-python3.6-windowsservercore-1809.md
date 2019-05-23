## `hylang:0-python3.6-windowsservercore-1809`

```console
$ docker pull hylang@sha256:d4be608b4b6b42c56d685d8d364ff400556cdeae84110394970a824359efc914
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17763.504; amd64

### `hylang:0-python3.6-windowsservercore-1809` - windows version 10.0.17763.504; amd64

```console
$ docker pull hylang@sha256:b9acc7cf37fcc3db99a6300ea2f50fd0d1e5b014c6571ff1898af3999635e926
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2133262116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9b0c739a4a45e04d3d555073d6abedc1099d00bcace40c4b22ccbcf00ed49a`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:30:19 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 22 May 2019 14:30:20 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 22 May 2019 14:32:28 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:32:30 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:33:31 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:33:33 GMT
CMD ["python"]
# Thu, 23 May 2019 00:19:08 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:19:54 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Thu, 23 May 2019 00:19:56 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da476c697ef0b939f29435197d00433d52c8366bda031aa1323065b9fa37caeb`  
		Last Modified: Wed, 22 May 2019 14:54:50 GMT  
		Size: 1.2 KB (1211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3dd46b5222ca81e4afa7529abb3d2cbb71bf332bb34deaea23d16d0bef68d1c`  
		Last Modified: Wed, 22 May 2019 14:54:46 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8c9e831eb1a905242786cbb442aacf21607278e64f60f761f91c065aae15d4`  
		Last Modified: Wed, 22 May 2019 14:55:14 GMT  
		Size: 47.8 MB (47783264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b230a3ddbb06a41f18a27265e961e38512cd97e3ce189b37df8ca0e2667b1086`  
		Last Modified: Wed, 22 May 2019 14:54:46 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d3556e8bb1cbf1af58d1b94fa11a329beb39062fafd66bee21ba4713946a6ed`  
		Last Modified: Wed, 22 May 2019 14:54:58 GMT  
		Size: 5.2 MB (5179529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e823a4f3a4aa65dd59757bab40e83de886a35e235bc83deedd859e5531941b6`  
		Last Modified: Wed, 22 May 2019 14:54:47 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:051ec26fca6f5011c1109bcae39a7e8b97fd71ce13cb452bcf0eb0aa90c3ad5f`  
		Last Modified: Thu, 23 May 2019 00:29:11 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a19058a6518f16791f088d0164232b5f2ac51d3fc7aa5d4b91b96d5f44c309`  
		Last Modified: Thu, 23 May 2019 00:29:14 GMT  
		Size: 1.2 MB (1164241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a81d037f34fc1c7a10055f1a99b87cc92c15e0f6a82fd023978ad793631dee0a`  
		Last Modified: Thu, 23 May 2019 00:29:11 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

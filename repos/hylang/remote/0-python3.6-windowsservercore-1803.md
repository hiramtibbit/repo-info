## `hylang:0-python3.6-windowsservercore-1803`

```console
$ docker pull hylang@sha256:1ee9e069aa601d62657008a7ddcb0a6204e27a3befdd216f8fda76a3382232ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.17134.829; amd64

### `hylang:0-python3.6-windowsservercore-1803` - windows version 10.0.17134.829; amd64

```console
$ docker pull hylang@sha256:f266d53d165c869cea6943ed0451a4d01909394c8031d412759b0bdc3908aaca
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2362775296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c024d563aa26b80472145dbe81289cc0382c465e0849717dab479fa2d40354cf`
-	Default Command: `["hy"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 08 Jun 2019 17:13:11 GMT
RUN Install update 1803-amd64
# Wed, 12 Jun 2019 12:50:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 12 Jun 2019 14:22:59 GMT
ENV PYTHON_VERSION=3.6.8
# Wed, 12 Jun 2019 14:23:01 GMT
ENV PYTHON_RELEASE=3.6.8
# Wed, 12 Jun 2019 14:25:14 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:25:15 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 12 Jun 2019 14:26:15 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 12 Jun 2019 14:26:16 GMT
CMD ["python"]
# Wed, 12 Jun 2019 18:00:38 GMT
ENV HY_VERSION=0.17.0
# Wed, 12 Jun 2019 18:01:22 GMT
RUN pip install --no-cache-dir ('hy == {0}' -f $env:HY_VERSION)
# Wed, 12 Jun 2019 18:01:23 GMT
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
	-	`sha256:39169665915220a67dd1d41f662bd7f6b2772d6693479a5c809ba3e8ed2e17f8`  
		Last Modified: Wed, 12 Jun 2019 14:48:47 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffd52eaf3e67caba1678f3cf97a2722343c16f3374ea7eda6426907ae6f8262e`  
		Last Modified: Wed, 12 Jun 2019 14:48:44 GMT  
		Size: 1.2 KB (1186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ea5da428bbc86c392764fdf7cde505c2f0f87a69f5c5d6336eb71ad920f6d8b`  
		Last Modified: Wed, 12 Jun 2019 14:49:07 GMT  
		Size: 48.2 MB (48210064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fbd77482b4e82e4b9798f369882257d1356502fb9e8eb1306ef07b2d7f15036`  
		Last Modified: Wed, 12 Jun 2019 14:48:44 GMT  
		Size: 1.2 KB (1179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48b7e3d478d4fcc6cb5398b1a1b723bf012fee303c17b4d5519d9011c5ad1dcc`  
		Last Modified: Wed, 12 Jun 2019 14:48:55 GMT  
		Size: 5.2 MB (5187787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9099ac55f5648de9a573e8d9f79f1d3878a57f1fa5482c527154b07ce633b347`  
		Last Modified: Wed, 12 Jun 2019 14:48:44 GMT  
		Size: 1.1 KB (1144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd76012efb5154a732e2dc4cde917bd436ba240a02bc8d741866165d95eac954`  
		Last Modified: Wed, 12 Jun 2019 19:10:42 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a96c46f4d9d8edc4609e3475639578946da524925cd0eafd1a9880ee2091fb3`  
		Last Modified: Wed, 12 Jun 2019 19:10:44 GMT  
		Size: 1.2 MB (1162592 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5afee02fb242f9f3355618a974edaca85ca03ccb928cefa25d1396faa1aa79ae`  
		Last Modified: Wed, 12 Jun 2019 19:10:42 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:a3ada8d339f93a4d020b00752490eaf5b0261764786c9676d4b355fe710f00f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.611; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.611; amd64

```console
$ docker pull python@sha256:4db678f3a565608b795f79d6ba7fbb4d5564add899c6cd13376517e921a88190
```

-	Docker Version: 17.06.2-ee-13
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 GB (3169929985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c1f87e8f7f3aab78e367264a1fd00373d979712a53ed0ab5259cc50022f1669`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Wed, 08 Aug 2018 23:20:54 GMT
RUN Install update 10.0.16299.611
# Wed, 15 Aug 2018 09:39:55 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 23 Aug 2018 09:57:25 GMT
ENV PYTHON_VERSION=3.7.0
# Thu, 23 Aug 2018 09:57:26 GMT
ENV PYTHON_RELEASE=3.7.0
# Thu, 23 Aug 2018 10:00:22 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:00:23 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 23 Aug 2018 10:02:06 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 23 Aug 2018 10:02:07 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:c4047f78756c2319eb99557ec7139906cf11af6c91aefcc0e44ac49a5481d8e4`  
		Last Modified: Thu, 06 Sep 2018 21:37:41 GMT  
		Size: 837.8 MB (837835144 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:ddd10e03dfdc774fc9b5f720df0030a8f59a8c2c78e843c72b45c30af480dc60`  
		Last Modified: Wed, 15 Aug 2018 09:54:44 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cfeb9a0099e0dbc37517a7b68ea8900c7b52f3a0c76a8c7a509254203b18c84`  
		Last Modified: Thu, 23 Aug 2018 10:25:43 GMT  
		Size: 1.2 KB (1199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd4bfc070340c9d9b89f9498ba96d72ccb60b3e34eaaaf6b04c183199e625c`  
		Last Modified: Thu, 23 Aug 2018 10:25:40 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9e8dabadaa769f9ef9ba94a3c50e16119bb20feeafb10fc6eb2e8d99f92df19`  
		Last Modified: Thu, 23 Aug 2018 10:26:08 GMT  
		Size: 48.3 MB (48287454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45826319f371d229dacf2a1939492315459c0f499be8e1b114b18bcb0c044a25`  
		Last Modified: Thu, 23 Aug 2018 10:25:39 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd9e0a0653c43db40db196a407b4467442e3cd8f33ff5e03a4b53944ee18b9c3`  
		Last Modified: Thu, 23 Aug 2018 10:25:55 GMT  
		Size: 9.5 MB (9500825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:782007d2c867c815c778a0d132b865a08f0e15d0eed18813dc1cc70df8d98fb9`  
		Last Modified: Thu, 23 Aug 2018 10:25:39 GMT  
		Size: 1.2 KB (1195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `python:windowsservercore-1709`

```console
$ docker pull python@sha256:2f4ebc06d354884df834bf5e696b81d749d1ee89af98d18036d6c9f2a96e3a8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	windows version 10.0.16299.1029; amd64

### `python:windowsservercore-1709` - windows version 10.0.16299.1029; amd64

```console
$ docker pull python@sha256:8f3ad91341be0670de037330d90c252e34d120ea79f5a666046755eaaa172442
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 GB (3269866977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f6012e6ed614633ca132fd879d6f2494cf49032322872ac80ad4e40487fa98`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Sat, 09 Mar 2019 05:26:00 GMT
RUN Install update 10.0.16299.1029
# Sat, 16 Mar 2019 09:35:33 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Thu, 28 Mar 2019 09:41:07 GMT
ENV PYTHON_VERSION=3.7.3
# Thu, 28 Mar 2019 09:41:08 GMT
ENV PYTHON_RELEASE=3.7.3
# Thu, 28 Mar 2019 09:43:39 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Thu, 28 Mar 2019 09:43:43 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Thu, 28 Mar 2019 09:45:10 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Thu, 28 Mar 2019 09:45:12 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 18 Sep 2018 22:35:04 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:7f4a716683dc03db3521ed040924c24ea9bd17c7f134c09bf22e33f6af33ade8`  
		Last Modified: Mon, 11 Mar 2019 21:13:17 GMT  
		Size: 936.6 MB (936551125 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:81856e9377a060d58cb8798fbc456fc8414158afec682bdd098149edc0a7d1fc`  
		Last Modified: Sat, 16 Mar 2019 10:41:06 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd261aaf94711f57f6cfb498a92b11f46326205e1b651ff54b827f2edd77ae10`  
		Last Modified: Thu, 28 Mar 2019 09:57:38 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f68038d7a0007a626a3533ed73ba8e1f327a220e78ab097938eaecb179c6827`  
		Last Modified: Thu, 28 Mar 2019 09:57:35 GMT  
		Size: 1.2 KB (1210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5874ac55f27c29f509b54f8379e17a47678e27b1f6ace6055cef64f46ef0dc19`  
		Last Modified: Thu, 28 Mar 2019 09:57:58 GMT  
		Size: 49.5 MB (49466594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f7691db093ea4000e98632e89a564da2aa8e19800252a475d619fcbd4a593d8`  
		Last Modified: Thu, 28 Mar 2019 09:57:35 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:746238da00c5669bb81b3bdcfbb1e7187fdca65baad0d72e4fadb0405035d0ba`  
		Last Modified: Thu, 28 Mar 2019 09:57:45 GMT  
		Size: 9.5 MB (9542647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bffa041465679721efe762cb4cbc193a45906ac5436c925dc2d159462d225d84`  
		Last Modified: Thu, 28 Mar 2019 09:57:35 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

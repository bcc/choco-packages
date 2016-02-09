# Chocolatey Packages

To build:

     choco pack urlrewrite/urlrewrite.nuspec

# Packages

## urlrewrite 

https://chocolatey.org/packages/UrlRewrite

IIS URL Rewrite 2.0. Requires IIS to be installed or installation will fail.

### Changes
#### 2.0.20160107

* Renaming unreleased package to UrlRewrite for compatibility with existing chocolatey.org package. 
* Installs rewrite.dll 7.1.1952 (May 2015), updating 7.1.0761 (February 2010) from the 2.0.2 chocolatey package.
* Installation is now silent.
		 
#### 2.0.20160209

* Added github URLs to manifest.
* Cosmetic package name change for consistency with previous chocolatey.org versions.

## iis-externalcache

External Cache Module for IIS.

## iis-arr

Application Request Routing 3.0. Requires IIS to be installed, and the iis-externalcache and urlrewrite packages. 
## GeoSpatial Implementation: Linux Mint Setup

### Process Number: 301-01

### Purpose

To install and configure suitable server software for use with a geospatial software system.  Linux Mint 17 will be used as the example.

| **Step** | **Major Activity**                                              | **References, Forms and Details**             |
|---------|------------------------------------------------------|--------------------------|
| 1	      |Download Linux Mint:                                  |* the flavour of Linux Mint is a free choice.  Linux Mint 17 was used                          |
|	      |  * Download an ISO image from http://www.linuxmint.com |* the 64-bit version is often preferred, because it has a large address space                          |
|	      |  * Save the result to a CD	                         ||
| 2	      |Install Linux Mint.                                   |* The installation will normally reformat the hard drive.  Options are presented to install multiple versions, and to change hard drive partitions                           |
|         |* start the hardware with the CD in an optical drive  ||
|	      |* answer the questions                                ||
|	      |*  Choose a strong master user password               |                          |
| 3	      |Run Update Manager to get any changes since the version release.	|* This will fully update the operating system so that no known flaws are unpatched. |
| 4	      |Run Device Manager	                                 |* This will update the operating system for any special wifi or graphics adapter software |
| 5       |Install firewall||
|         |* issue “Sudo apt-install gufw”                       |* Or choose another firewall, but the graphical Uncomplicated FireWall works well for most situations |
|         |* select gufw to ON                                   |                          |
|         |* on incoming, Deny all, but allow port 8080 (geonetwork) ||
|	      |* A virus checker is not required         ||
| 6       |Program Router                                        |                          |
|         |* ensure router password is strong                    |                          |
|         |* open port 8080                                      |                          |
|         |* place the computer in the DMZ                       |                          |

Created by:
===========
Terry Curran

Approved by process owner / date:
=================================
Terry Curran, P.Eng. / 2014-08-06

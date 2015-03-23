#!/usr/bin/python
# this is gn_iso19139_to_mef2.0_example.py

"""
Script to create GeoNetwork's Metadata Exchange Format 2.0 (MEF2.0) archive from ISO 19139 metadata XML files

Usage: make sure to edit mef_siteId, info_xml, etc.

Change history:
2009-11-06 Wolfgang Grunberg, Arizona Geological Survey.  Original Python 2.6 template
2012-05-23 TAC Changed paths to metadata locations, MEF final locations, and 
           temporary work locations.  Changed siteID.  Changed metadata dateTime 
           to just date.  Major change to loop on MEF, include graphics files.
2012-06-06 TAC changes to generate MEF2 metadata           
2013-08-13 TAC various changes to application
2014-04-27 TAC revisit to add query paths to metadata, thumbnails, and data


NOTE: MEF temporary folder and final MEF folder result areas are emptied at application start!!

Upon 'build' completion, MEF files are ZIP archives with the following structure:
+-<uuid>.mef        zip archive with the metadata's UUID (must be valid) as the file name
 | -info.xml        GeoNetwork (GN) specific metadata such as privileges, 
                                        related data & thumbnail image files, etc.
 | +metadata        directory which contains ISO 19139 metadata record
 | +public          directory with public thumbnail and data files - can be empty
 | +private         directory with private data files such as shape files etc.
                                                                   - can be empty

Addresses to the source folders for all metadata, data and graphics to be processed.

"""










# Library Imports
import os
import sys
import cProfile
import re
import shutil
import time
import mimetypes
import uuid
from xml.dom import minidom
from xml.dom import Node
from time import strftime

# module globals and constants
#  globals
__author1__ = "Wolfgang Grunberg"
__email1__ = "wgrunberg@azgs.az.gov"
__author2__ = "Terry Curran"
__email2__ = "terry.curran@shaw.ca"
__license__ = "GPL"
__version__ = "3.0.0"


#==========================
# start of main application
#==========================
def createMef():
    print "*****\n START Create MEF "+strftime("%Y-%m-%d %H:%M:%S")+" \n*****"
    
    #==========================
    # environment path settings
    #==========================
    # source metadata path
    # metadata = "F:\\metadataToolsPractices\\tasksMEF\\sourceMetadata\\"
    metadata = "F:\\metadataData\\bcmca\\metadata\\5.iso19115_gml\\transportation\\"
    
    # source graphics path
    graphicsL = "F:\\metadataData\\bcmca\\imagesPNG\\lg_img\\"
    graphicsS = "F:\\metadataData\\bcmca\\imagesPNG\\sm_img\\"
    
    # source data path
    data = "F:\\metadataData\\bcmca\\shapeFiles\\"
    
    # result folder path
    # results = "F:\\metadataToolsPractices\\tasksMEF\\mef2.0Results\\"
    results = "F:\\metadataData\\bcmca\\mefVersion2\\"
    
    # Temporary workspace to place MEF content before zipping up
    main_path = "F:\\metadataToolsPractices\\tasksMEF\\" 
    tmp_path = main_path + "_tmp\\"
    
    # ensure temporary folder is empty
    for file_object in os.listdir(tmp_path):
        file_object_path = os.path.join(tmp_path, file_object)
        if os.path.isfile(file_object_path):
            os.unlink(file_object_path)
        else:
            shutil.rmtree(file_object_path)

    # establish a logging file
    import logging
    mefLogFile = main_path + "mef_log.txt"
    logging.basicConfig(filename=mefLogFile,level=logging.DEBUG,)
    
    output = open(mefLogFile, 'w' )
    output.write ("***** START Create MEF "+strftime("%Y-%m-%d %H:%M:%S")+" *****\n")

    
    # must be *VALID* metadata site and UUID
    mef_siteId = "4a8e5b33-051d-443f-90f6-5f171f4ac80e"
    siteName = "Pacific Salmon Foundation Data Centre - Development"
    
    
    #======================================================
    # get list of filenames to process (to be folder names)
    #======================================================
    try:
        dir = os.listdir(metadata)
        # print dir    #debug
    except os.error:
        print "    EXCEPTION: directory containing metadata files does not exist ("+metadata+") "
        return
    
    #reset uuid to dummy
    recordId = "00000000-0000-0000-0000-000000000000"
    





    
    
    
    #=================================================================
    # loop through source metadata, moving each file to temp location, 
    # then modifying and saving
    #==========================================================
    for metaFile in dir:
        recordName = os.path.splitext(metaFile)[0].lower()
        print '\nmef folder under construction: ', recordName    #debug
        output.write ("mef folder under construction: " + recordName +"\n")
        
        #==========================================
        # select the metadata record, 
        #      retrieve key metadata contents
        #==========================================
        f = open(metadata+metaFile, 'r')
        
        # Load ISO metadata string into XML object
        xmldoc = minidom.parseString(f.read() )
        # print xmldoc.toxml()    #debug
        
        # get metadata uuid
        recordId = xmldoc.getElementsByTagName('gmd:fileIdentifier')[0].getElementsByTagName('gco:CharacterString')[0].firstChild.data
        
        # get metadata creation date
        create_date = xmldoc.getElementsByTagName('gmd:dateStamp')[0].getElementsByTagName('gco:Date')[0].firstChild.data
        
        # get download filename, if it exists
        try:
            recordData = xmldoc.getElementsByTagName('gmd:onLine')[1]
        except:
            print >>sys.stderr, "    no data file "
        else:
            recordData = xmldoc.getElementsByTagName('gmd:onLine')[1].getElementsByTagName('gmd:CI_OnlineResource')[0].getElementsByTagName('gmd:name')[0].getElementsByTagName('gco:CharacterString')[0].firstChild.data
		
        """
        # confirm extracted information
        print "uuid:       ", recordId
        print "createDate: ", create_date
        print "recordData: ", recordData
        """
        
        # cleanup DOM for improved performance
        xmldoc.unlink()
        f.close()
        



        # create temporary folder
        mef_dir = recordId + "\\"     # Temporary folder that is created and deleted
        # print mef_dir
        



                # tmp paths for mef folders and files
        mefMetaPath         = tmp_path +mef_dir +"metadata\\"
        mefPrivatePath      = tmp_path +mef_dir +"private\\"
        mefPublicPath       = tmp_path +mef_dir +"public\\"
        mefApplischemaPath  = tmp_path +mef_dir +"applischema\\"
        
        mefMetadata         = mefMetaPath +"metadata.xml"
        mefInfoFile         = tmp_path +mef_dir +"info.xml"
        







        #===============================
        # create mef directory structure
        #===============================
        try:
            os.mkdir(tmp_path+mef_dir)
        except OSError, err:
            print >>sys.stderr, "    EXCEPTION: ", err
            return
            
        # create empty 'metadata' directory, if it does not exist
        if os.path.exists(mefMetaPath) == False:
            try:
                os.mkdir(mefMetaPath)
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err
                return
            
        # create empty 'public' (graphics) directory, if it does not exist
        if os.path.exists(mefPublicPath) == False:
            try:
                os.mkdir(mefPublicPath)
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err
                return
        
        # create empty 'private' (data) directory, if it does not exist
        if os.path.exists(mefPrivatePath) == False:
            try:
                os.mkdir(mefPrivatePath)
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err
                return
        # create empty 'Application Schema' directory, if it does not exist
        if os.path.exists(mefApplischemaPath) == False:
            try:
                os.mkdir(mefApplischemaPath)
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err
                return
        
        #=============================================
        # copy metadata record to mef metadata folder
        #=============================================
        if os.path.exists(metadata + metaFile) == True:
            shutil.copy2(metadata+metaFile, mefMetaPath+"metadata.xml")
        
        #=======================================
        # copy data record to mef private folder
        #=======================================
        if os.path.exists(data + recordData) == True:
            shutil.copy2(data + recordData, mefPrivatePath + recordData)
        
        #=======================================
        #add graphics files to mef public folder
        #=======================================
        if os.path.exists(graphicsL+recordName+".png") == True:
            try:
                shutil.copy2(graphicsL+recordName+".png", mefPublicPath+recordName+".png")
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err
            
        if os.path.exists(graphicsS+recordName+"_s.png") == True:
            try:
                shutil.copy2(graphicsS+recordName+"_s.png", mefPublicPath+recordName+"_s.png")
            except OSError, err:
                print >>sys.stderr, "    EXCEPTION: ", err

        
        # set graphics names
        graphics_s = recordName+"_s.png"
        graphics_l = recordName+".png"
        
        #====================
        # construct info file
        #====================
        info_xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
        
        info_xml += "<info version=\"2.0\">\n<general>\n"
        
        info_xml +="<uuid>"+recordId+"</uuid>\n"        
              # universally unique identifier assigned to the metadata and must be a valid UUID. This element is optional and, when omitted, the reader should generate one
        
        # when the metadata was created
        info_xml +="<createDate>"+create_date+"</createDate>\n"
        
        # most recent change to the metadata
        info_xml +="<changeDate>"+strftime("%Y-%m-%d" +"T" + "%H:%M:%S")+"</changeDate>\n"
        
        info_xml +="<siteId>" +mef_siteId +"</siteId>\n"    # This is an UUID that identifies the actor that created the metadata and must be a valid UUID. When the UUID element is missing, this element should be missing too. If present, it will be ignored.
        info_xml +="<siteName>" +siteName +"</siteName>\n"     # Site Name
        
        # metadata type: dublin-core, fgdc-std, iso19115, iso19139
        info_xml +="<schema>iso19139</schema>\n"
        
        # MEF format: simple, partial, full
        if os.path.exists(mefPrivatePath+recordData):
            info_xml +="<format>full</format>\n"
        elif os.path.exists(mefPublicPath+graphics_s):
            info_xml +="<format>partial</format>\n"
        else:    
            info_xml +="<format>simple</format>\n"
        
        info_xml +="<isTemplate>false</isTemplate>\n" # A boolean field that indicates if this metadata is a template used to create new ones. There is no real distinction between a real metadata and a template but some actors use it to allow fast metadata creation.
        
        info_xml +="<rating>0</rating>\n"                 # If present, indicates the users' rating of the metadata ranging from 1 (a bad rating) to 5 (an excellent rating). The special value 0 means that the metadata has not been rated yet. Can be used to sort search results.
        
        info_xml +="<popularity>0</popularity>\n"     # If present, indicates the popularity of the metadata. The value must be positive and high values mean high popularity. The criteria used to set the popularity is left to the writer. Its main purpose is to provide a metadata ordering during a search.
        info_xml +="</general>\n<categories>\n\
        <category name=\"datasets\" />\n"
        info_xml +="</categories>\n"
        
        info_xml +="<privileges>\n"                   # and privileges 
        info_xml +="<group name=\"all\">\n\
        <operation name=\"view\" />\n\
        <operation name=\"download\"/>\n\
        <operation name=\"dynamic\"/>\n\
        <operation name=\"featured\"/>\n</group>\n</privileges>"
        
        # GN public files - thumbnails
        info_xml +="\n<public>"
        if os.path.exists(mefPublicPath+graphics_s):
              info_xml +="\n\
          <file name=\"" +graphics_s +"\" changeDate=\"" +strftime('%Y-%m-%d' +'T' + '%H:%M:%S',time.localtime(os.path.getmtime(mefPublicPath+graphics_s))) +"\" />\n\
          <file name=\"" +graphics_l +"\" changeDate=\"" +strftime('%Y-%m-%d' +'T' + '%H:%M:%S',time.localtime(os.path.getmtime(mefPublicPath+graphics_l))) +"\" />\n</public>\n"
        else:
                info_xml +="</public>\n"
          
        # GN private file - data; require authentication during download request
        if os.path.exists(mefPrivatePath+recordData):
            info_xml +="\n<private>\n\
        <file name=\"" +recordData +"\" changeDate=\"" +strftime('%Y-%m-%d' +'T' + '%H:%M:%S',time.localtime(os.path.getmtime(mefPrivatePath+recordData))) +"\" />\n</private>"
        info_xml +="\n</info>"
         
        # print info_xml      # debug
        
        #=====================================================
        # save 'info_xml' in tmp_path\mef folder as 'info.xml'
        #======================================================
        try: 
            f = open(mefInfoFile,'w')
            f.write(info_xml)
            f.close()
            True
        except:
            print "    EXCEPTION: failed to write " + mefInfoFile
        

        
        
        
        
        
        
        
           
    #===============================================
    # save whole _tmp folder in mef2 (zipped) format
    #===============================================
    # go to folder above temporary directory
    os.chdir( main_path )

    folderToZip = '_tmp'
    print "\ncompressing to mef2:", os.getcwd() +"\\" +folderToZip
    
    mefFile = str(uuid.uuid4())
    shutil.make_archive(results + mefFile, "zip", folderToZip)
    print "\nsaved as:", results +mefFile +".zip"
    
    #===================================
    # end of creation of all mef2 folder
    #===================================
    print "\n*****\n END Create MEF "+strftime("%Y-%m-%d %H:%M:%S")+" \n*****"
    
    output.write ("***** END Create MEF "+strftime("%Y-%m-%d %H:%M:%S")+"*****")



#=======================
# trigger the processing
#=======================
createMef()
# execution performance information
# cProfile.run('createMef()')   

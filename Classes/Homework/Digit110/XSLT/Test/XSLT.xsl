<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet  xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
        xmlns="http://www.w3.org/1999/xhtml">
        
        <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
            include-content-type="no" indent="yes"/>
   <xsl:template match="/">
    <html>
        <source>        
          <xsl:apply-templates select="descendant::title"/>
            <link rel="stylesheet" type="text/css" href="styleSheet.css"/>
        </source>
            <body>
                <xsl:apply-templates select="descendant::body"/>
            </body>
        
    </html>
   </xsl:template>
    
                <xsl:template match="para">
                        <p xml:id="skyrim-{preceding::para => count()+1}">
                        <xsl:apply-templates/></p>
                </xsl:template>
    
    <xsl:template match="place">
        <span class="place"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="soCalled">
        <span class="soCalled"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="faction" mode="toc">
        <span class="faction"><xsl:apply-templates/></span>
    </xsl:template>
    
    <xsl:template match="faction[@ref='daedra']">
        <em><xsl:apply-templates/></em>      
    </xsl:template>
    
    <xsl:template match="char">
        <span class="char"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="event">
        <span class="event"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    <xsl:template match="item">
        <span class="item"><xsl:apply-templates/></span>
    </xsl:template>
    
    
    
    
   
</xsl:stylesheet>
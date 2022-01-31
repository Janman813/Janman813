<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    xmlns="http://www.w3.org/1999/xhtml"
    version="3.0">
    
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    <xsl:template match="/">
        <html>      
            <head>
                <title>
                    Montage Of A Dream Deffered
                </title>
                <link rel="StyleSheet" type="text/css" href="webstyle.css"/>
            </head>
            <body>
                <section id="poemTitle">
                    <xsl:apply-templates select="descendant::poem"/>
                </section>
            </body>
        </html>       
    </xsl:template>
    
    <xsl:template match="poem">
        <div class="poem">
            <h1><xsl:apply-templates select="descendant::poemTitle"/></h1>
            <xsl:apply-templates select="descendant::line"/>
        </div>
    </xsl:template>    
    
    <xsl:template match="stanza"> 
        <xsl:apply-templates select="line"/>
    </xsl:template>
    
    <xsl:template match="line">
        <p><span class="parNum"><xsl:value-of select="@n"/>
        </span>
        </p>
        <xsl:apply-templates/>
    </xsl:template>
    
</xsl:stylesheet> 

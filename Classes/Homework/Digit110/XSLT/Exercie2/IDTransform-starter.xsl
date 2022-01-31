<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs math"
    version="3.0">
    <!--Tasks: Write XSLT to output an HTML list representing titles and first lines of poems 
        in the Montage collection. 
        We need an OUTPUT LINE, and to set up the namespaces we're processing!
    -->
 
    <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
        include-content-type="no" indent="yes"/>
    
    <xsl:template match="/">
        <html>
        <head>
            <title>list of Poems in the Montage Collection</title>
        </head>
            <body>
                <h1>Poem in the montage Collection with first line</h1>
                <ol>
                    <xsl:apply-templates select="descendant::poemTitle"/>
                </ol>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="poemTitle">
        <li><xsl:apply-templates/></li>: First line:
        <xsl:apply-templates></xsl:apply-templates>
        
    </xsl:template>
    <xsl:template match="line">
        <i><xsl:apply-templates/></i>
    </xsl:template>
   
</xsl:stylesheet>
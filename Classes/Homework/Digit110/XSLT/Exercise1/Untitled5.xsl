<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    <?xml version="1.0" encoding="UTF-8"?>
    <xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
        xmlns="http://www.w3.org/1999/xhtml"
        xpath-default-namespace="http://www.tei-c.org/ns/1.0">
        
        <xsl:output method="xhtml" html-version="5" omit-xml-declaration="yes" 
            include-content-type="no" indent="yes"/>
        
        <xsl:template match="/">
            <html>
                <head>
                    <title>Organizations in Digital Mitford</title>
                </head>
                <body>
                    <h1>Digital Mitford Lists of Organizations</h1> 
                    <!--ebb: XPath shows us we have three <listOrg> elements in the si-modified.xml source document. 
                   Let's set up a numbered list. -->
                    <ol>
                        <xsl:apply-templates select="descendant::listOrg"/>
                    </ol> 
                    
                </body> 
            </html>
        </xsl:template>
        <!--JEP: this is what I thought you meant, but I am pretty sure I am wrong.-->
        <!--<xsl:template match="listOrg">
        <li><xsl:apply-templates/></li>: First line:
        <xsl:apply-templates></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="orgName">
        <ul num="(@n)"><xsl:apply-templates/></ul>
    </xsl:template>
    <xsl:template match="orgName">
        <orgName xml:id="{preceding::orgName => count()+1}"></orgName>
        <xsl:apply-templates/>
    </xsl:template>-->
        
        <xsl:template match="listOrg">
            <li><xsl:apply-templates select="child::head ! normalize-space()"/>
                <ul>
                    <xsl:apply-templates select="child::org"/>
                </ul>
            </li>
            <xsl:template match="org">
                <li><xsl:apply-templates/></li>
            </xsl:template>
            <!--JEP: I lost track as to where we are because I was helping a student-->
            
            <!--ebb: Continue writing template rules to match on elements to populate the numbered list. Also, set up each list item to contain its own nested bulleted list,
    using <ul> . You'll need to write a third template rule to handle the sublist items. -->
            
            
    </xsl:stylesheet>
</xsl:stylesheet>
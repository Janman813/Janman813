<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:math="http://www.w3.org/2005/xpath-functions/math"
    exclude-result-prefixes="xs math"
    version="3.0">
    
    <!--Jep: heres the extra special line you need to do an identy transfer-->
    
    <xsl:mode on-no-match="shallow-copy"/> 
    
    <!--JEP: If you put no new element change nothing will show up in the output also make sure you spell everything correctly.-->
    <xsl:template match="line">
       <ln n="{preceding-sibling::line => count()+ 1 }"/><xsl:apply-templates/>
             
    </xsl:template>
    
    
</xsl:stylesheet> 
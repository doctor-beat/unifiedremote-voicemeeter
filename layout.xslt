<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"  xmlns="http://www.w3.org/1999/xhtml" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:foo="http://www.foo.org/" xmlns:bar="http://www.bar.org">
<xsl:template match="/layout">
  <html>
    <style>
        body {margin: 0;}
        div, span {border: 1px solid white; width: 100%}
        div.raster span {height: 50px; vertical-align: center;}
        div.raster span img {border-top: 10px solid transparent;}
    </style>
  <body >
      <xsl:for-each select="row">
         <xsl:variable name="widthperc" select="90 div count(button)"/>
           <div class="raster"  bgcolor="#E6E6FA">
              <xsl:for-each select="button">
                <span align="center" style="background-color: {@color}; float: left; width: {$widthperc}%; display: block">
                   <xsl:choose>
                     <xsl:when test="@image">
                        <img src="{@image}"  height="30" width="30"/>
                     </xsl:when>
                     <xsl:otherwise>
                        <xsl:value-of select="@text"/>
                     </xsl:otherwise>
                   </xsl:choose>                    
                </span>
              </xsl:for-each>
           </div>
      </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

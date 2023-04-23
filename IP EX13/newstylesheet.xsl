<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
        <html>  
            <body>  
                <h2>BOOK DETAILS</h2>   
                <table border = "2">    
                    <th>title</th>   
                    <th>author</th>   
                    <th>genre</th>  
                    <th>price</th>        
                    <xsl:for-each select="books/book">
                        <xsl:if test="genre='Mystery' or price>25">
                            <tr bgcolor="#F0E68C"></tr>
                        </xsl:if>
                        <tr>
                        <td>
                            <xsl:value-of select="title"/>
                        </td>
                        <td>
                            <xsl:value-of select="author"/>
                        </td>
                        <td>
                            <xsl:value-of select="genre"/>
                        </td>
                        <td>
                            <xsl:value-of select="concat('$',format-number(price,'0.00'))"/>
                        </td>
                        </tr>
                    </xsl:for-each>   
                </table>   
            </body>   
        </html>   
    </xsl:template>    
</xsl:stylesheet> 
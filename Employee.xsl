xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>employee.xsl</title>
            </head>
            <body>
                <style>
                    table,tr,td,th
                    {
                      border: 1px SOLID BLACK;
                    }
                </style>
                <h2>Employee Information</h2>
      <table>
        <tr>
          <th>Name</th>
          <th>JobTitle</th>
          <th>Salary</th>
        </tr>
       
   <xsl:for-each select="root/Employee">
  <tr>
        <td><xsl:value-of select="Name"/></td>
        <td><xsl:value-of select="JobTitle"/></td>
      <xsl:choose>
        <xsl:when test="Salary &gt; 50000">
            <td><b><xsl:value-of select="Salary"/></b></td>
           
        </xsl:when>
        <xsl:otherwise>
           
         <td> <xsl:value-of select="Salary"/></td>
        </xsl:otherwise>
      </xsl:choose>
   
      </tr>
 
  </xsl:for-each>
</table>
   </body>
  </html>
           
    </xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head>
      <style>
		body{
			font-family:Calibri;
			font-size:14px;
            text-align: center;
		}
		.fila1 {
			background-color:#9acd32;
			text-align:center; 
			height:40px;
        }
        table {
            border: solid 1px black;
            box-shadow: 3px 3px 3px 3px black;
            width: 200px;
            margin: 5px;
        }
      </style>  
  </head>
  <body>
    <h2>ALUMNOS</h2>
    <xsl:for-each select="colegio/curso">   
    <table> 
      <tr class="fila1">
        <th><xsl:value-of select="nombre"/> <xsl:value-of select="colegio/curso/nivel"/></th>
      </tr>
      <xsl:for-each select="alumno">
      <tr>
        <td><xsl:value-of select="nombre-alumno"/></td>
      </tr>
      </xsl:for-each>
    </table>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head>
      <style>
			body {
				font-family:Calibri;
				font-size:14px;
			}
			.fila1 {
				background-color:#9acd32;
				text-align:center; 
				height:40px;
        }
      </style>  
  </head>
  <body>
    <h2>Biblioteca</h2>
    <table>
      <tr class="fila1">
        <th>Título</th>
        <th>Autor</th>
        <th>Año publicación</th>
      </tr>
      <xsl:for-each select="libreria/libro[autor='Suzanne Collins']">
      <tr>
        <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="autor"/></td>
        <td><xsl:value-of select="anio"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
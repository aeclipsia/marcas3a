<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head>
      <style>
			body {
				font-family: Arial;
				font-size:14px;
                text-align:center;
                width: 200px;
			}
			.fila1 {
				background-color:#9acd32;
				text-align:center;
				height:40px;
            }
      table *{
        margin: 1px;
        border: solid black 1px;
      }
      </style>
  </head>
  <body>
    <table>
      <tr class="fila1">
        <th>Título</th>
      </tr>
      <xsl:for-each select="libreria/libro">
      <tr>
        <td><xsl:value-of select="titulo"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

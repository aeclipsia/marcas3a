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
            table *{
                padding:5px 20px;
                text-align: center;
                border: solid 1px black;
                box-shadow: 3px 3px 3px black;
            }
      </style>
  </head>
  <body>
    <h2>Alumno</h2>
    <table>
      <xsl:for-each select="colegio/curso/alumno">
      <tr>
        <xsl:if test="asignatura/falta/numero &lt;= 1">
            <xsl:choose>
                <td><xsl:value-of select="nombre-alumno"/>en
                    <xsl:value-of select="asignatura/nombre-asignatura"/></td>
            </xsl:choose>
        </xsl:if>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

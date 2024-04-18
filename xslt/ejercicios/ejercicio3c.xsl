<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head>
      <style>
			body {
				font-family:Arial;
				font-size:14px;
			}
            table *{
                padding:20px 30px;
                text-align: center;
                border: solid 1px black;
                box-shadow: 3px 3px 3px black;
            }
      div {
        position: absolute;
        left: 40%;
      }
      h2{
        text-align: center;
        text-transform: uppercase;
        background-color: #de4e44;
        box-shadow: 3px 3px 3px black;
      }
      </style>
  </head>
  <body>
    <div>
      <h2>Alumno</h2>
    <table>
      <xsl:for-each select="colegio/curso/alumno/asignatura/falta">
      <tr>
        <xsl:if test="numero &lt; 1">
            <td><xsl:value-of select="../../nombre-alumno"/> en <xsl:value-of select="../nombre-asignatura"/>:<xsl:value-of select="numero"/> faltas el <xsl:value-of select="fecha/@dia"/></td>
        </xsl:if>
      </tr>
      </xsl:for-each>
    </table>
    </div>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>

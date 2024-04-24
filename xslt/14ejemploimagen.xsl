<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <style>
    body {
      font-family:Calibri;
      font-size:18px;
    }
    h2 {
      color:#9acd32;
      text-decoration: underline;
    }
    .fila1 {
      background-color: #9acd32;
      height: 40px;
    }
    th {
      text-align:center;
      height: 30px;
      width:200px;
    }
    tr {
		height:100px;
		text-align:center;
    }
    img {
        height:80px;
        width:auto;
    }
    </style>
  <body>
    <h2>Biblioteca</h2>
    <table>
      <tr class="fila1">
        <th>Título</th>
        <th>Autor</th>
        <th>Categoría</th>
        <th>Idioma</th>
        <th>Imagen</th>
        <th>Web</th>
      </tr>
      <xsl:for-each select="libreria/libro">
      <tr>
        <td><xsl:value-of select="titulo"/></td>
        <td><xsl:value-of select="autor"/></td>
        <td><xsl:value-of select="@categoria"/></td>
        <td><xsl:value-of select="titulo/@idioma"/></td>		
        <td>
          <img>
			  <xsl:attribute name="src">
				<xsl:value-of select="imagen"/>
			  </xsl:attribute>
          </img>
        </td>
        <td>
            <a>
                 <xsl:attribute name="href">
                   <xsl:value-of select="web"/>
                 </xsl:attribute>
                 <xsl:value-of select="web"/>
            </a>
        </td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
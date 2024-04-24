<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
  <style>
  body {
    font-family:Century Gothic;
    font-size:18px;
  }
  h1 {
    color:#FF637D;
    text-decoration: underline;
  }
  .fila1 {
    background-color: #FF637D;
    height: 40px;
  }

  th {
    text-align:center;
    height: 30px;
    width:200px;
  }
  td {
    text-align:center;
    height: 40px;
  }
  .amarillo {
      background-color: #F4F1BB;
  }
  .azul {
      background-color: #66D7D1;
  }
  </style>
</head>
<body>
  <h1>Librería</h1>
  <table>
    <tr class="fila1">
      <th>Título</th>
      <th>Autor</th>
      <th>Año publicación</th>
      <th>Precio</th>
    </tr>
   
<xsl:for-each select="libreria/libro">
  <tr>
    <xsl:choose>
        <xsl:when test="autor = 'J K. Rowling'">
            <td class="amarillo">
                <xsl:value-of select="titulo"/>
            </td>
        </xsl:when>
        <xsl:otherwise>
            <td>
              <xsl:value-of select="titulo"/>
            </td>
        </xsl:otherwise>
    </xsl:choose>
        <td><xsl:value-of select="autor"/></td>
    <td><xsl:value-of select="anio"/></td>
    <td><xsl:value-of select="precio"/>€</td> 
  </tr>
</xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
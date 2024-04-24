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
      background-color: #FFF87F;
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
    <td><xsl:value-of select="titulo"/></td>
    <xsl:choose>
        <xsl:when test="precio &gt; 30">
            <td class="amarillo">
                <xsl:value-of select="autor"/>
            </td>
        </xsl:when>
        <xsl:when test="precio &lt; 20">
            <td class="azul">
              <xsl:value-of select="autor"/>
            </td>
        </xsl:when>
        <xsl:otherwise>
            <td>
              <xsl:value-of select="autor"/>
            </td>
        </xsl:otherwise>
    </xsl:choose>
    <xsl:choose>
        <xsl:when test="anio = 2003">
          <td class="azul">
            <xsl:value-of select="anio"/>
          </td>
        </xsl:when>
        <xsl:otherwise>
          <td class="amarillo">
            <xsl:value-of select="anio"/>
          </td>				
        </xsl:otherwise>
    </xsl:choose>
    <td><xsl:value-of select="precio"/>€</td> 
  </tr>
</xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
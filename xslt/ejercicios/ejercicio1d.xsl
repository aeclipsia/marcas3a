<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<style>
body {
  font-family:Arial;
  font-size:18px;
}
h1 {
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
td {
  text-align:center;
}
table *{
  margin: 1px;
  border: solid black 1px;
}
</style>
</head>
<body>
  <h1>Librería</h1>
  <table>
    <tr class="fila1">
      <th>Título</th>
      <th>Precio</th>
    </tr>
    <xsl:for-each select="libreria/libro">
		<xsl:if test="precio &gt; 35">
			<tr>
			  <td><xsl:value-of select="titulo"/></td>
			  <td><xsl:value-of select="precio"/>€</td>
			</tr>
		</xsl:if>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>

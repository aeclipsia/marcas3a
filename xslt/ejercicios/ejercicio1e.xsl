<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
<style>
body {
  font-family:Arial;
  font-size:18px;
  background-color: #dbebfa;
}
h1 {
  color:#005670;
  border-bottom: solid 1px #005670;
}
div{
    padding: 10px;
}
</style>
</head>
<body>
    <h1>Libros</h1>
    
    <div>
        <xsl:for-each select="libreria/libro">
            <ul>
                <li>Título: <xsl:value-of select="titulo"/></li>
                <li>Precio: <xsl:value-of select="precio"/>€</li>
            </ul>
        </xsl:for-each>   
    </div> 
</body>
</html>
</xsl:template>
</xsl:stylesheet>

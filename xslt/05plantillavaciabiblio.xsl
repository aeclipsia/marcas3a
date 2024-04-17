<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
<head>
  <style>
      body {
          font-family:Calibri;
          color: purple;
        }
        h2 {
            text-decoration: underline;
            background-color: silver;
            width:200px;
        }
  </style>  
</head>
<body>
  <h2>Biblioteca</h2>
    <xsl:for-each select="libreria/libro">
        <p></p>
        <xsl:value-of select="titulo"/> - 
        <xsl:value-of select="anio"/>
    </xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
﻿<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <xsl:for-each select="libreria/libro">
        <p></p>
        <xsl:value-of select="titulo"/> - 
        <xsl:value-of select="anio"/>
    </xsl:for-each>
</xsl:template>
</xsl:stylesheet>
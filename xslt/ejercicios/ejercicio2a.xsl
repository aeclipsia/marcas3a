<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
    <html>
    <head>
    <style>
        body{
            font-family: Arial;
            background-color: #ebe1df;
            color: #bc6ca7;
            text-align: center;
        }
        div{
            border: solid 1px #bc6ca7;
        }
        table{
            position: relative;
            left: 28.7%;
        }
        .c1{
            width: 100px;
        }
        .c2{
            width: 200px
        }
        td{
            padding:0px 20px;
        }
    </style>
    </head>
    <body>
        <h1>PARQUE ATRACCIONES</h1>
        <xsl:for-each select="parque/atraccion">
            <h2><xsl:value-of select="nombre"></xsl:value-of></h2>
            <div>
                <table>
                    <xsl:for-each select="revision">
                        <tr>
                            <td class="c1"><xsl:value-of select="codigo"></xsl:value-of></td>
                            <td class="c1"><xsl:value-of select="fecha"></xsl:value-of></td>
                            <td class="c1">Tipo:<xsl:value-of select="@tipo"></xsl:value-of></td>
                            <td class="c4"><xsl:value-of select="descripcion"></xsl:value-of></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </xsl:for-each>
    </body>
    </html>
</xsl:template>
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
    <style>
        body{
            background-color: #eeeee4;
            color: #bf9a77;
            font-family: sans-serif;
            text-align: center;
        }
        table{
            margin:auto;
        }
        .c1{
            background-color: #86a5db;
            padding: 5px;
        }
        td{
            padding: 5px;
            background-color: #fff;
        }
        img{
            height: 100px;
            width: auto;
        }
        div{
            padding:10px;
        }

    </style>
  <body>
    <h2>Peliculas</h2>
    <xsl:for-each select="peliculas/pelicula">
        <div>
        <xsl:if test="anio &gt;= 2018">
            <img>
                <xsl:attribute name="src">
                  <xsl:value-of select="img"/>
                </xsl:attribute>
            </img>
            <p>Pelicula:<xsl:value-of select="nombre"/></p>
            <p>Dirección:<xsl:value-of select="direccion"/></p>
            <p>Año:<xsl:value-of select="anio"/></p>
            <table>
                <xsl:for-each select="no_animacion/actor">
                    <tr>
                        <td class="c1">
                            <xsl:value-of select="@sexo"/>
                        </td>
                        <td>
                            <xsl:value-of select="text()"/>
                        </td>
                    </tr>
                </xsl:for-each>
            </table>
        </xsl:if>
        </div>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
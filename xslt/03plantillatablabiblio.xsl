<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
  <html>
  <head>
	<title>Ejempllo tabla</title>
	<style>
		.fila1 {
			background-color: #9acd32;
		}
		th {
			text-align:center;
		}
	</style>
  </head>
  <body>
    <h2>Biblioteca</h2>
    <table>
      <tr class="fila1">
        <th>Título</th>
        <th>Autor</th>
        <th>Fecha publicación</th>
      </tr>
      <tr>
        <td>.</td>
        <td>.</td>
        <td>.</td>
      </tr>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
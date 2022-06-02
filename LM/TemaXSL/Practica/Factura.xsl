<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">

        <style>
            table, th, td{
            border: 1px solid black;
            }
        </style>

        <htm>
            <body>
                <!-- Sacar los distintos tipos de factura en una tabla con applay templates-->

                <h1>Facturas</h1>
                <table>
                    <tr>
                        <th>Datos de la empresa</th>
                    </tr>
                    <xsl:value-of select="//datosEmpresa">
                        <tr>
                            <td>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:value-of>
                </table>

            </body>

        </htm>
    </xsl:template>

</xsl:stylesheet>
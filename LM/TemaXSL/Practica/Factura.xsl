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
                    <!-- encabezado -->
                    <tr>
                        <th>Trimestre </th>
                        <th>Factura</th>
                        <th> Datos de la empresa </th>
                    </tr>
                    <!-- fin encabezado -->
                    <tr>
                        <td>
                            <xsl:for-each select="/">
                                <xsl:value-of select="facturas/@trimestre "></xsl:value-of>
                            </xsl:for-each>
                        </td>
                        <td>
                            <xsl:for-each select="/">
                                <xsl:value-of select="facturas/factura/@numero"></xsl:value-of>
                            </xsl:for-each>

                        </td>
                        <xsl:for-each select="//datosEmpresa">
                            <td>
                                <td>Nombre de la empresa</td>
                                <td>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                            </td>

                            <td>
                                <td>Direccion</td>
                                <td>
                                    <xsl:value-of select="direccion"></xsl:value-of>
                                </td>
                            </td>

                        </xsl:for-each>
                    </tr>

                </table>

            </body>

        </htm>
    </xsl:template>

</xsl:stylesheet>
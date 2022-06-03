<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">

        <style>

            table, th, td{
                border: 1px solid black;
            }
            img{
                width:100px;
                height: 100px;
            }

        </style>

        <html>
            <body>
                <xsl:for-each select="centro">
                    <h1>
                        <xsl:value-of select="@nombre"></xsl:value-of>
                        -
                        <xsl:for-each select="//curso">
                            <span>
                                <xsl:value-of select="@nivel"></xsl:value-of>
                            </span>
                        </xsl:for-each>
                    </h1>
                    <h2>Fichas del Alumnado</h2>

                    <table>

                        <!-- <tr>
                            <img src="//alumno{foto}"></img>
                        </tr> -->

                        <!-- <xsl:for-each select="/*/alumno">  -->

                        <xsl:for-each select="//alumno">
                            <tr>
                                <td rowspan="2">
                                    <xsl:element name="img">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select=" foto"></xsl:value-of>
                                        </xsl:attribute>
                                    </xsl:element>
                                </td>

                                <td>
                                    Nombre:
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    Apellido:
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                </td>

                            </tr>

                        </xsl:for-each>
                        <td colspan="2">
                            Altas capacidades
                        </td>

                    </table>


                </xsl:for-each>


            </body>
        </html>

    </xsl:template>

</xsl:stylesheet>
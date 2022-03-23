<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <body>
                <h1>Listado de personas</h1>
                <table border="1">

                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Edad</th>
                    </tr>

                    <!-- <xsl:for-each select="personas">
                        <xsl:for-each select="//persona">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="edad"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </xsl:for-each>


                    <xsl:for-each select="personas">
                        <xsl:for-each select="persona">
                            <tr>
                                <td>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                </td>
                                <td>
                                    <xsl:value-of select="edad"></xsl:value-of>
                                </td>
                            </tr>
                        </xsl:for-each>

                    </xsl:for-each> -->


                </table>

                <xsl:template match="edad"></xsl:template>
                <xsl:template match="/"></xsl:template>
                Prueba
            </body>


        </html>


    </xsl:template>


</xsl:stylesheet>
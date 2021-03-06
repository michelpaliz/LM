<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">

        <style>
                table, th, td{
                    border: 1px solid black;
                }
                table tr:first-child td{
                    font-weight:bold;
                    text-align: center;
                }
                img{
                    height:100px;
                }
        </style>

        <html>
            <body>
                <h1>Profesores</h1>
                <table>
                    <tr>
                        <td> Foto</td>
                        <td>Nombre</td>
                        <td>Apellido</td>
                    </tr>
                    <xsl:for-each select="*/*/profesor">
                        <xsl:sort select="apellido"></xsl:sort>
                        <tr>
                            <td>
                                <xsl:element name="img">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="@foto"></xsl:value-of>
                                    </xsl:attribute>
                                </xsl:element>
                            </td>
                            <td>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="apellido"></xsl:value-of>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>

                <h1>Alumnos</h1>

                <ol>
                    <xsl:for-each select="*/*/alumno">
                        <xsl:choose>
                            <xsl:when test="nota &lt; 5">
                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    ,
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                    (suspendido)
                                </li>
                            </xsl:when>
                            <xsl:when test="nota  &gt; 8">

                                <li>
                                    <b>
                                        <xsl:value-of select="apellido"></xsl:value-of>
                                        ,
                                        <xsl:value-of select="nombre"></xsl:value-of>
                                    </b>
                                </li>

                            </xsl:when>

                            <xsl:otherwise>

                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    ,
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </li>

                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:for-each>
                </ol>

                <!-- <xsl:for-each select="*/*/alumno">
                    <xsl:choose>
                        <ol>
                            <xsl:when test="nota &lt; 5">
                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                    (suspendido)
                                </li>
                            </xsl:when>
                            <xsl:when test="nota  &gt; 8">
                                <li>
                                    <b>
                                        <xsl:value-of select="apellido"></xsl:value-of>
                                        <xsl:value-of select="nombre"></xsl:value-of>
                                    </b>
                                </li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </li>
                            </xsl:otherwise>
                        </ol>
                    </xsl:choose>
                </xsl:for-each> -->

                <!-- 
                <xsl:for-each select="*/*/alumno">
                <xsl:if test="nota > 5 ">
                    <ol>
                        <li>
                            <xsl:value-of select="apellido"></xsl:value-of>
                            <xsl:value-of select="nombre"></xsl:value-of>
                        </li>
                    </ol>
                </xsl:if>
            </xsl:for-each> -->

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
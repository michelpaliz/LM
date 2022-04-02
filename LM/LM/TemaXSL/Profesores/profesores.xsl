<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <head>
                <title>Clase</title>
            </head>

            <body>
                <!-- Alumnos -->
                <h1>Alumnos</h1>


                <ol>
                    <xsl-for-each select="*/*/alumno">
                        <xsl:sort order="descending" select="nombre" />
                        <xsl-choose>
                            <xsl:when test="edad &gt; 25">
                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    ,
                                    <strong>
                                        <xsl:value-of select="nombre"></xsl:value-of>
                                    </strong>
                                </li>
                            </xsl:when>
                            <xsl:when test="edad &gt; 20">
                                <li>
                                    <xsl:value-of select="apellido"></xsl:value-of>
                                    ,
                                    <strong>
                                        <xsl:value-of select="nombre"></xsl:value-of>
                                    </strong>
                                </li>
                            </xsl:when>
                            <xsl:otherwise>
                                <li>
                                    <xsl-value-of select="apellido"></xsl-value-of>
                                </li>
                                ,
                                <li>
                                    <xsl:value-of select="nombre"></xsl:value-of>
                                </li>
                            </xsl:otherwise>
                        </xsl-choose>
                    </xsl-for-each>
                </ol>


                <h1>Profesores</h1>

                <xsl:for-each select="*/*/profesor">

                    <xsl:sort select="nombre"></xsl:sort>
                    <xsl:choose>

                        <xsl:when test="nota &gt; 8">
                            <xsl:value-of select="apellido"></xsl:value-of>
                            ,
                            <strong>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </strong>


                        </xsl:when>

                        <xsl:otherwise>
                            <xsl:value-of select="apellido"></xsl:value-of>
                            ,
                            <em>
                                <xsl:value-of select="nombre"></xsl:value-of>
                            </em>
                            <br />
                        </xsl:otherwise>

                    </xsl:choose>

                </xsl:for-each>

            </body>
        </html>

    </xsl:template>


</xsl:stylesheet> 
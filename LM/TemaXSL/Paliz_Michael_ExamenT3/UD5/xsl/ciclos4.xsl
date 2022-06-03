<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <body>

                <h1>When, otherwise, arraytemplate </h1>
                <!-- <ul>
                    <xsl:for-each select="*/ciclo">
                        <xsl:if test="grado = 'Superior' ">
                            <li>
                                <u>
                                    <xsl:value-of select="@codigo" />
                                </u>
                            </li>
                        </xsl:if>

                    </xsl:for-each>
                </ul> -->

                <ul>
                    <xsl:for-each select="*/ciclo">
                        <xsl:choose>
                            <xsl:when test="@codigo = 'SMR'" />
                            <xsl:otherwise>
                                <li>
                                    <u>
                                        <xsl:value-of select="@codigo"></xsl:value-of>
                                    </u>
                                </li>
                            </xsl:otherwise>
                        </xsl:choose>

                    </xsl:for-each>
                </ul>


            </body>
        </html>


    </xsl:template>

</xsl:stylesheet>
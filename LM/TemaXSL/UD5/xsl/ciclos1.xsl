<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <body>
                <h1>CICLOS </h1>
                <!-- ciclos/ciclo -->
                <!-- <xsl:for-each select="*/ciclo">
                    <p>
                        <xsl:value-of select="nombre"></xsl:value-of>
                    </p>
                </xsl:for-each> -->

                <xsl:apply-templates select="/ciclo" />


                <!-- <xsl:for-each select="*/ciclos">
                    <p>
                        <xsl:value-of select="nombre"></xsl:value-of>
                    </p>
                </xsl:for-each>

                <xsl:for-each select="/ciclos">
                    <p>
                        <xsl:value-of select="nombre"></xsl:value-of>
                    </p>
                </xsl:for-each> -->

            </body>
        </html>


        <xsl:template match="ciclo">
            <br>
                <xsl:value-of select="nombre" />
            </br>
        </xsl:template>


    </xsl:template>

</xsl:stylesheet>
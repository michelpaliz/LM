<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <body>

                <!-- <xsl:apply-templates select="/vivero" /> -->
                <xsl:for-each select="//especie[nombre='Litchi']">
                    <p>
                        <xsl:value-of select="precio" />
                        <br />
                    </p>
                </xsl:for-each>
                <!-- <xsl:for-each select="//especie[precio > 9]">
                    <p>
                        <xsl:value-of select="otros_datos/maduracion" />
                    </p>
                </xsl:for-each>
                <xsl:for-each select="//especie[@siembra = 2018]">
                    <p>
                        <xsl:for-each select="origen"></xsl:for-each>
                    </p>
                </xsl:for-each> -->


            </body>
            <!-- 
            <xsl:template match="vivero">
                <b>
                    <xsl:value-of select="nombre" />
                    <br />
                </b>
            </xsl:template> -->
        </html>
    </xsl:template>
</xsl:stylesheet>
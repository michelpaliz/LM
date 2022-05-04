<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <body>
                <xsl:for-each select="//especie[nombre='Litchi']">
                    <p>
                        <xsl:value-of select="precio" />
                    </p>
                </xsl:for-each>
                <xsl:for-each select="//especie[precio > 9]">
                    <p>
                        <xsl:value-of select="otros_datos/maduracion" />
                    </p>
                </xsl:for-each>
                <xsl:for-each select="//especie[@siembra = 2018]">
                    <p>
                        <xsl:for-each select="origen"></xsl:for-each>
                    </p>
                </xsl:for-each>


            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
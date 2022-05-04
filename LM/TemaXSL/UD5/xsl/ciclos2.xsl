<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>
    <xsl:template match="/">
        <html>
            <body>

                <h1>CICLOS </h1>
                <ul>
                    <xsl:for-each select="*/ciclo">
                        <u>
                            <xsl:value-of select="nombre"></xsl:value-of>
                        </u>
                    </xsl:for-each>
                </ul>

            </body>
        </html>


    </xsl:template>

</xsl:stylesheet>
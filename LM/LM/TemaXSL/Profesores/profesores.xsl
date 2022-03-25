<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html"></xsl:output>

    <html>
        <body>
            <header>
                <h1>ALUMNOS</h1>
            </header>
            <xsl:template match="">
                <xsl:apply-templates></xsl:apply-templates>
            </xsl:template>
             

        </body>

    </html>

    <!-- <xsl:template match="profesor">
        <xsl:apply-templates select="*/*/*/*/alumno"></xsl:apply-templates>

    </xsl:template>

    <xsl:template match="alumno">
        *****
        <xsl:value-of select="."></xsl:value-of>
        *****
    </xsl:template> -->


</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"></xsl:output>

    <xsl:template match="/">
        <xsl:apply-templates select="*/*/alumno"></xsl:apply-templates>
    </xsl:template>
    <xsl:template match="/">
        <xsl:apply-templates select="*/*/profesor"></xsl:apply-templates>
    </xsl:template>


</xsl:stylesheet>
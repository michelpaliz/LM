<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"></xsl:output>
    <xsl:template match="/">
        <xsl:apply-templates></xsl:apply-templates>

    </xsl:template>
    <xsl:template match="edad">
        esta es mi edad
    </xsl:template>


</xsl:stylesheet>
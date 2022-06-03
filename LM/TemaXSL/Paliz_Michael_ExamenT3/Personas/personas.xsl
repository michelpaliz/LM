<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="nombre">
    este es el nombre
    </xsl:template>

<xsl:template match="edad">
        <xsl:value-of select="."></xsl:value-of>
    </xsl:template>


</xsl:stylesheet>
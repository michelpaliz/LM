<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="text"></xsl:output>


    <xsl:template match="/">
        Alumnos
        -------------
        <xsl:value-of select="*/*/alumno"></xsl:value-of>
        Profesores
        ---------------
        <xsl:apply-templates select="*/*/profesor"></xsl:apply-templates>
        <!-- para que salgan los apellidos -->
        <xsl:apply-templates match=""></xsl:apply-templates>

    </xsl:template>


    <!-- HTML -->
    <!-- <xsl:template match="/">
        <html>
            <body>
                <header>
                    <h1>ALUMNOS</h1>
                </header>
                <xsl:template match="profesores">
                    <xsl:apply-templates select="*/*/nombre"></xsl:apply-templates>
                </xsl:template>

            </body>

        </html>
    </xsl:template> -->


</xsl:stylesheet>
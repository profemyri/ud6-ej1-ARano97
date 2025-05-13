<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog of Vintage Video Games</title>
                <style>
                    body { font-family: Arial, sans-serif; line-height: 1.6; max-width: 800px; margin: 0 auto; padding: 20px; }
                    h1 { color: #333; border-bottom: 2px solid #eee; padding-bottom: 10px; }
                    h2 { color: #444; margin-top: 30px; }
                    p { margin: 10px 0; }
                    strong { font-weight: bold; }
                </style>
            </head>
            <body>
                <h1>Catalog of Vintage Video Games</h1>
                <xsl:apply-templates select="games/game"/>
            </body>
        </html>
    </xsl:template>
    
    <xsl:template match="game">
        <h2><xsl:value-of select="title"/></h2>
        <p><xsl:value-of select="description"/></p>
        <p><strong>Platform:</strong> <xsl:value-of select="platform"/></p>
    </xsl:template>
</xsl:stylesheet>
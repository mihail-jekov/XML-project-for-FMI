<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
    <xsl:template match="/">
        *************************************************
                             САМОЛЕТИ
        *************************************************
        <xsl:for-each select="/aircraft-carrier/aircrafts/aircraft">
            <xsl:variable name="aircrafts_id" select="@battle" />
            &#10;
            &#10;
            Роля: <xsl:choose>
                <xsl:when test="@role = 'bomber'">Бомбандировач</xsl:when>
                <xsl:when test="@role = 'fighter'">Изтребител</xsl:when>
                <xsl:when test="@role = 'reconnaissance'">Разузнавателен</xsl:when>
                <xsl:when test="@role = 'electronic-warfare'">Радиоелектронна война</xsl:when>
                <xsl:otherwise>Многоцелеви изтребител</xsl:otherwise>
            </xsl:choose>
            Модел: <xsl:value-of select="model" />
            Цена: <xsl:value-of select="cost" />
            Характеристики:
                Екипаж: <xsl:value-of select="specifications/crew" />
                Обхват: <xsl:value-of select="specifications/range" />
                Тегло: <xsl:value-of select="specifications/weight" />
            
            Битки, в които са участвали самолетите от този тип:
                <xsl:for-each select="/aircraft-carrier/battles/battle">
                    <xsl:if test="contains($aircrafts_id, @id)"><xsl:value-of select="battle-name" />, </xsl:if>
                </xsl:for-each>
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
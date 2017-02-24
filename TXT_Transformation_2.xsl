<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
    
    <xsl:output method="text" indent="no" />
    <xsl:template match="/">
       ***************************************************
       ВОЙНИЦИ, УЧАСТВАЛИ В БИТКИ И ПИЛОТИРАЩИ САМОЛЕТИ :D
       ***************************************************
        <xsl:for-each select="/aircraft-carrier/personel/soldier">
            <xsl:sort select="gender" />
            <xsl:variable name="aircraft_id" select="@aircraft" />
            <xsl:variable name="battle_id" select="@battle" />
            &#10;
            &#10;
            Име: <xsl:value-of select="first-name" /><xsl:text> </xsl:text><xsl:value-of select="last-name" />
            Пол: <xsl:choose>
                <xsl:when test="gender = 'жена'">женски пол</xsl:when>
                <xsl:when test="gender = 'мъж'">мъжки пол</xsl:when>
                <xsl:otherwise>неопределено</xsl:otherwise>
            </xsl:choose>
            Години: <xsl:value-of select="age" />
            
            <xsl:if test="@aircraft">
            Самолети, които пилотира:
            <xsl:for-each select="/*/*/aircraft"><xsl:if test="contains($aircraft_id, @id)"><xsl:value-of select="model" /></xsl:if></xsl:for-each>
            </xsl:if>
            
            <xsl:if test="@battle">
            Битки, в които е участвал:
                <xsl:for-each select="/*/*/battle"><xsl:if test="contains($battle_id, @id)"><xsl:value-of select="battle-name" />, </xsl:if></xsl:for-each>
            </xsl:if>
            
        </xsl:for-each>
    </xsl:template>
</xsl:stylesheet>
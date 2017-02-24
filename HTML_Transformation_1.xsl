<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8" />
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/aircraft-carrier/battles/battle">
			<xsl:variable name="battle-id" select="@id" />
			<div class="element-wrapper battle">
				<img class="airplane-image" src="images/{@id}.jpg" />
				<h2><xsl:value-of select="battle-name" /></h2>
				<div class="admirals"><span>Адмирали: </span>
					<xsl:for-each select="/*/*/soldier">
						<xsl:if test="contains(@battle, $battle-id) and (current()/position = 'адмирал' or 'адмирал на флота')">
							<span>	<xsl:value-of select="current()/first-name" />
									<xsl:text> </xsl:text>
									<xsl:value-of select="current()/last-name" />
									(<xsl:value-of select="current()/age" /> години),
							</span>
						</xsl:if>
					</xsl:for-each>
				</div>
				<br/>
				<xsl:if test="description"><div class="battle-description"><xsl:value-of select="description" /></div></xsl:if>
			</div>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
			<head>
				<title>Битки, в които е участвал самолетоносач <xsl:value-of select="aircraft-carrier/name" /></title>
				<meta http-equiv="content-type" content="application/html; charset=utf-8" />
				<link rel="stylesheet" href="index.css" type="text/css" />
			</head>
			<body style="background-image: url(images/shokaku.jpg)">
				<div id="main-wrapper">
					<div id="main-top">
						<h1>Проект по XML програмиране: "Самолетоносач"</h1>
						<h2>Битки, в които е участвал самолетоносач <xsl:value-of select="aircraft-carrier/name" /></h2>
					</div>
					<div id="main-center">
						<xsl:call-template name="airplanes-list"></xsl:call-template>
					</div>
					<div id="main-bottom">
						<span>Изработено от Михаил Жеков, фн. 24469</span>
					</div>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
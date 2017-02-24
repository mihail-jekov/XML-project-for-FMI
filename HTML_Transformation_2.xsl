<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8" />
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/aircraft-carrier/personel/soldier">
			<xsl:sort select="string-length(@battle) - string-length(translate(@battle, ' ', '')) + 1" order="descending" />
			<xsl:variable name="battles" select="@battle" />
			<div class="element-wrapper biography">
				<img class="airplane-image" src="images/{@id}.jpg" />
				<h2><xsl:value-of select="first-name" />&#160;<xsl:value-of select="last-name" /></h2>
				<div class="biography-text">
					<xsl:value-of select="first-name" />&#160;<xsl:value-of select="last-name" /> е адмирал от Съединените американски щати.
					В началото на Втората светона войната е бил на <xsl:value-of select="age" /> години. Участва в следните битки от тихоокенаския театър
					на военните действия във войната: <span class="bold">
					<xsl:for-each select="/aircraft-carrier/battles/battle">
						<xsl:if test="contains($battles, @id)">
							<xsl:value-of select="battle-name" />,&#160;
						</xsl:if>
					</xsl:for-each>
					</span>
				</div>
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
			<body style="background-image: url(images/enterprise.jpg)">
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
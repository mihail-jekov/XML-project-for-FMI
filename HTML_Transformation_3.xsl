<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8" />
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/aircraft-carrier/aircrafts/aircraft">
			<div class="element-wrapper">
				<img class="airplane-image" src="images/{@id}.jpg" />
				<xsl:choose>
					<xsl:when test="helicopter">
						<h2>Хеликоптер: <xsl:value-of select="model" /></h2>
						<ul class="helicopter-ul">
							<li>Диаметър на ротора: <xsl:value-of select="helicopter/main-rotor-diameter" /></li>
							<li>Площ на ротора: <xsl:value-of select="helicopter/main-rotor-area" /></li>
						</ul>
					</xsl:when>
					<xsl:otherwise>
						<h2>Самолет: <xsl:value-of select="model" /></h2>
					</xsl:otherwise>
				</xsl:choose>
				<ul>
					<li>Роля: <xsl:value-of select="@role" /></li>
					<li>Цена: <xsl:value-of select="cost" /></li>
					<li>Обхват: <xsl:value-of select="range" /></li>
					<li>Производител: <xsl:value-of select="manufactuer/name" /></li>
				</ul>
			</div>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
			<head>
				<title>Самолети пренасяни от самолетоносач, от клас <xsl:value-of select="@class" /></title>
				<meta http-equiv="content-type" content="application/html; charset=utf-8" />
				<link rel="stylesheet" href="index.css" type="text/css" />
			</head>
			<body style="background-image: url(images/degaulle.jpg)">
				<div id="main-wrapper">
					<div id="main-top">
						<h1>Проект по XML програмиране: "Самолетоносач"</h1>
						<h2>Самолети пренасяни от самолетоносач, от клас <xsl:value-of select="aircraft-carrier/@class" /></h2>
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
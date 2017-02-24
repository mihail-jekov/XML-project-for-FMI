<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">
	
	<xsl:output method="html" version="1.0" encoding="UTF-8" />
	
	<xsl:template name="airplanes-list">
		<xsl:for-each select="/aircraft-carrier/manufacturers/manufacturer">
			<xsl:sort select="count(/aircraft-carrier/aircrafts/aircraft[@manufacturer = current()/@id])" order="descending" />
			<div class="manufacturer">
				<div class="manufacturer-text">
					<h2><xsl:value-of select="current()/manufacturer-name" /></h2><xsl:value-of select="current()/manufacturer-name" /> е създаден през <xsl:value-of select="current()/established" /> година, като служителите му
					наброяват <xsl:value-of select="current()/staff-count" />
				</div>
				<xsl:for-each select="/aircraft-carrier/aircrafts/aircraft[@manufacturer = current()/@id]">
					<div class="element-wrapper">
						<img class="airplane-image" src="images/{@id}.jpg" />
						<h2><xsl:value-of select="model" /></h2>
						<ul>
							<li>Роля: <xsl:value-of select="@role" /></li>
							<li>Цена: <xsl:value-of select="cost" /></li>
							<li>Екипаж: <xsl:value-of select="specifications/crew" /></li>
							<li>Обхват: <xsl:value-of select="specifications/range" /></li>
							<li>Тегло: <xsl:value-of select="specifications/weight" /></li>
						</ul>
					</div>
				</xsl:for-each>
			</div>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="/">
		<html xmlns="http://www.w3.org/1999/xhtml" lang="bg">
			<head>
				<title>Производители на самолети, носени от <xsl:value-of select="aircraft-carrier/name" /></title>
				<meta http-equiv="content-type" content="application/html; charset=utf-8" />
				<link rel="stylesheet" href="index.css" type="text/css" />
			</head>
			<body style="background-image: url(images/nimitz.jpg)">
				<div id="main-wrapper">
					<div id="main-top">
						<h1>Проект по XML програмиране: "Самолетоносач"</h1>
						<h2>Производители на самолети, носени от <xsl:value-of select="aircraft-carrier/name" /></h2>
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
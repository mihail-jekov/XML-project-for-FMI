<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output method="xml" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<battles>
			<xsl:for-each select="/aircraft-carrier/battles/battle">
				<xsl:variable name="id" select="@id" />
				<battle id="{@id}" units-lost="{units-lost}">
					<name><xsl:value-of select="battle-name" /></name>
					<description><xsl:value-of select="description" /></description>
					<personel>
						<xsl:for-each select="/*/*/soldier">
							<xsl:if test="contains(@battle, $id)">
								<soldier>
									<first-name><xsl:value-of select="first-name" /></first-name>
									<last-name><xsl:value-of select="last-name" /></last-name>
									<age><xsl:value-of select="age" /></age>
								</soldier>
							</xsl:if>
						</xsl:for-each>
					</personel>
					<airplanes>
						<xsl:for-each select="/*/*/aircraft">
							<xsl:if test="contains(@battle, $id)">
								<aircraft>
									<model><xsl:value-of select="model" /></model>
									<cost><xsl:value-of select="cost" /></cost>
									<specifications>
										<crew><xsl:value-of select="specifications/crew" /></crew>
										<range><xsl:value-of select="specifications/range" /></range>
										<weight><xsl:value-of select="specifications/weight" /></weight>
									</specifications>
								</aircraft>
							</xsl:if>
						</xsl:for-each>
					</airplanes>
				</battle>
			</xsl:for-each>
		</battles>
	</xsl:template>
</xsl:stylesheet>
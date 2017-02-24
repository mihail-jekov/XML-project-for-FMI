<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform" version="1.0">

	<xsl:output method="xml" indent="yes" />
	<xsl:template match="/">
		<manufacturers>
			<xsl:for-each select="/aircraft-carrier/manufacturers/manufacturer">
				<xsl:variable name="id" select="@id" />
				<manufacturer profit="{profit}">
					<name><xsl:value-of select="manufacturer-name" /></name>
					<staff-count><xsl:value-of select="staff-count" /></staff-count>
					<airplanes>
						<xsl:for-each select="/*/*/aircraft">
							<xsl:if test="@manufacturer = $id">
								<aircraft id="{@id}">
									<model><xsl:value-of select="model" /></model>
									<cost><xsl:value-of select="cost" /></cost>
									<specifications>
										<crew><xsl:value-of select="specifications/crew" /></crew>
										<range><xsl:value-of select="specifications/range" /></range>
										<weight><xsl:value-of select="specifications/weight" /></weight>
									</specifications>
									<xsl:if test="@battle">
										<battles>
											<xsl:variable name="battles" select="@battle" />
											<xsl:for-each select="/*/*/battle">
												<xsl:if test="contains($battles, @id)">
													<battle>
														<battle-name><xsl:value-of select="battle-name" /></battle-name>
													</battle>
												</xsl:if>
											</xsl:for-each>
										</battles>
									</xsl:if>
								</aircraft>
							</xsl:if>
						</xsl:for-each>
					</airplanes>
				</manufacturer>
			</xsl:for-each>
		</manufacturers>
	</xsl:template>
</xsl:stylesheet>
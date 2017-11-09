<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:oxm="https://www.openxsl.com">
    <xsl:template match="/root" name="wurui.travel-qa">
    	<xsl:param name="link">#s</xsl:param>
        <!-- className 'J_OXMod' required  -->
        <div class="J_OXMod oxmod-travel-qa" ox-mod="travel-qa">
            <ul>
            	<xsl:for-each select="data/qa/i">
	            	<li>
	            		<a href="{$link}">
		            		<h3 class="q"><xsl:value-of select="q"/></h3>
		            		<div class="a">
		            			<xsl:value-of select="a"/>
		            		</div>
		            		<div class="bottom">
		            			<span>
		            				<xsl:value-of select="fav_count"/>有用
		            			</span>
		            			<span>
		            				<xsl:value-of select="a_count"/>人回答
		            			</span>
		            		</div>
	            		</a>
	            	</li>
            	</xsl:for-each>
            </ul>
        </div>
    </xsl:template>
</xsl:stylesheet>

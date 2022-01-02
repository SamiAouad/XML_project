<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="emploi" page-height="720px" page-width="1280px" >
                    <fo:region-body region-name="only_region"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="emploi">
                <fo:flow flow-name="only_region">
                    <xsl:call-template name="main"/>
                </fo:flow>
            </fo:page-sequence>        
            
        </fo:root>
        
    </xsl:template>
    <xsl:template match="modules" name="main">
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px"  padding="1cm" font-family="Sans_serif">
            Emploi du temps : <xsl:value-of select="modules/@codeFiliere"/>
        </fo:block>
        <fo:table margin-left="15px" border="1px solid">
            <fo:table-column  border="1px solid" column-width="100px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            <fo:table-column  border="1px solid" column-width="195px"/>
            
            <fo:table-body text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell><fo:block></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Lundi</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Mardi</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Mercredi</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Jeudi</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Vendredi</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Samedi</fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid" text-align="center">
                    <fo:table-cell><fo:block font-size="14px" text-align="center">09:00 - 10:30</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF34']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF31']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element1"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid">
                    <fo:table-cell><fo:block>09:00</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF34']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF31']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row height="80px">
                    <fo:table-cell number-columns-spanned="7"><fo:block></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid">
                    <fo:table-cell><fo:block>09:00</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid">
                    <fo:table-cell><fo:block>09:00</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
</xsl:stylesheet>
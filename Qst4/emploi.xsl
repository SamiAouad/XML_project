<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="emploi" page-height="22cm" page-width="29.7cm" margin-top="2cm" margin-bottom="2cm" margin-left="1cm"  >
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
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="25pt" space-before="0pt" text-align="center">
            Emploi du temps : <xsl:value-of select="modules/@codeFiliere"/>
        </fo:block>
        <fo:table  border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
            <fo:table-column  border=" solid" column-width="130px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            
            <fo:table-body text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell padding="8pt" border="1pt solid black" background-color="#FFD369" number-rows-spanned="1"  color="white" font-weight="bold" font-size="15pt"><fo:block > Horaires</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black" font-weight="bold" font-size="15pt" color="white"  background-color="#222831"><fo:block>Lundi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black" font-weight="bold" font-size="15pt" color="white"  background-color="#222831"><fo:block>Mardi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" color="white"  background-color="#222831"><fo:block>Mercredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" color="white"  background-color="#222831"><fo:block>Jeudi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" color="white" background-color="#222831"><fo:block>Vendredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" color="white"  background-color="#222831"><fo:block>Samedi</fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  height="15mm" text-align="center">
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#222831" number-rows-spanned="1"><fo:block color="white" font-size="15px"  margin-top="5mm" text-align="center">09:00 - 10:30</fo:block></fo:table-cell>
                    <fo:table-cell  padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block  margin-top="2mm"><xsl:value-of select="modules/module[@codeModule = 'GINF34']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block  margin-top="6mm"><xsl:value-of select="modules/module[@codeModule = 'GINF31']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="6mm"><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element1"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  height="15mm" border="1px solid">
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#222831" number-rows-spanned="1"><fo:block  color="white" font-size="15px"  margin-top="5mm" text-align="center">11:00-12:30</fo:block></fo:table-cell>
                    <fo:table-cell  padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#D3ECA7" number-rows-spanned="1"><fo:block margin-top="2mm"><xsl:value-of select="modules/module[@codeModule = 'GINF34']/element1"/></fo:block ></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#FFE162" number-rows-spanned="1"><fo:block margin-top="6mm"><xsl:value-of select="modules/module[@codeModule = 'GINF31']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="6mm"><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row height="50px">
                    <fo:table-cell  padding="6pt" border="1pt solid black" background-color="#EEEEEE"  number-columns-spanned="7"><fo:block  margin-top="4mm">PAUSE DEJEUNER </fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid">
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#222831" number-rows-spanned="1"><fo:block color="white" font-size="15px"   margin-top="5mm" text-align="center">14:00-15:30</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#D3ECA7" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="4mm"><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
                <fo:table-row  border="1px solid">
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#222831" number-rows-spanned="1"><fo:block  color="white" font-size="15px"  margin-top="5mm" text-align="center">16:00 - 17:30</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#FFE162" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF33']/element1"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF35']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell background-color="#EEEEEE"  ><fo:block></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#7882A4" number-rows-spanned="1"><fo:block  margin-top="5mm"><xsl:value-of select="modules/module[@codeModule = 'GINF36']/element2"/></fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#D3ECA7" number-rows-spanned="1"><fo:block margin-top="1mm"><xsl:value-of select="modules/module[@codeModule = 'GINF32']/element2"/></fo:block></fo:table-cell>
                </fo:table-row>
            </fo:table-body>
            
        </fo:table>
        <fo:block margin-top="15mm"></fo:block>
        <fo:table  border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-body text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell border="0.5pt solid black"  font-weight="bold" font-size="10pt" background-color="#7882A4"><fo:block>Cours</fo:block></fo:table-cell>
                    <fo:table-cell border="0.5pt solid black"  font-weight="bold" font-size="10pt" background-color="#FFE162"><fo:block>Td</fo:block></fo:table-cell>
                    <fo:table-cell border="0.5pt solid black"  font-weight="bold" font-size="10pt" background-color="#D4ECDD"><fo:block>Tp</fo:block></fo:table-cell>
                </fo:table-row>
               
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
</xsl:stylesheet>
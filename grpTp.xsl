<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template match="/">
        
            <fo:root>
                <fo:layout-master-set>
                    <fo:simple-page-master master-name="releveClasse" page-height="297mm"
                        page-width="210mm">
                        <fo:region-body region-name="only_region"/>
                    </fo:simple-page-master>
                </fo:layout-master-set>
                <fo:page-sequence master-reference="releveClasse">
                    <fo:flow flow-name="only_region">
                        <xsl:call-template name="page1"/>
                    </fo:flow>
                </fo:page-sequence>
                <fo:page-sequence master-reference="releveClasse">
                    <fo:flow flow-name="only_region">
                        <xsl:call-template name="page2"/>
                    </fo:flow>
                </fo:page-sequence>
                
            </fo:root>
            
        </xsl:template>

    <xsl:template match="groupes" name="page1">
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px" padding="1cm"
            font-family="Sans_serif"> Groupe 1 </fo:block>
       
        <fo:table table-layout="fixed" margin-left="100px" border="1px solid" text-align="center">
            <fo:table-column border="1px solid" column-width="20mm"/>
            <fo:table-column border="1px solid" column-width="60mm"/>
            <fo:table-column border="1px solid" column-width="20mm"/>
            
            
            <fo:table-body margin-left="-100px" text-align="center" display-align="center">
                <fo:table-row border="1px solid">
                    <fo:table-cell>
                        <fo:block>Code Module</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>Elements</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>Note</fo:block>
                    </fo:table-cell>
                  
                </fo:table-row>
                
                <xsl:for-each select="groupes/student[@groupe=1]">
                    <fo:table-row border="solid">
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="CNE"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="FirstName"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="LastName"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                
            </fo:table-body>
        </fo:table>
        
    </xsl:template>
    <xsl:template match="notes" name="page2">
        
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px" padding="1cm"
            font-family="Sans_serif"> Groupe 2 </fo:block>
        <fo:table border="0.5pt solid black" border-spacing="3pt" table-layout="fixed"   margin-left="200px">
            <fo:table-column  column-number="1"  column-width="40mm"/>
            <fo:table-column border="1px solid"  column-width="40mm"/>
            <fo:table-column border="1px solid" column-width="40mm" />
            
            
            <fo:table-body>
                <fo:table-row border="1px solid">
                    <fo:table-cell>
                        <fo:block>Code Module</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>Elements</fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>Note</fo:block>
                    </fo:table-cell>
                    
                </fo:table-row>
                
                <xsl:for-each select="groupes/student[@groupe=2]">
                    <fo:table-row border="solid">
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="CNE"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="FirstName"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="LastName"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                
            </fo:table-body>
        </fo:table>
        
        
    </xsl:template>
</xsl:stylesheet>
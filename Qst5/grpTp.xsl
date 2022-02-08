<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template match="/">
        
            <fo:root>
                <fo:layout-master-set>
                    <fo:simple-page-master master-name="releveClasse" page-height="30cm" page-width="21cm" margin-top="2cm" margin-bottom="2cm" margin-left="5cm" margin-right="2cm">
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

    <xsl:template match="groupes" name="page2">
       
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="40pt" margin-left="-3cm"  space-before.minimum="6pt"  text-align="center"> 
            Groupe 2
        </fo:block>
       
        <fo:table  table-layout="fixed"  border="1px solid" text-align="center" >
            <fo:table-column border=" solid" column-width="40mm"/>
            <fo:table-column border=" solid" column-width="40mm"/>
            <fo:table-column border=" solid" column-width="40mm"/>
            
            <fo:table-header>
                
                <fo:table-row>
                    <fo:table-cell padding="4pt" border=" solid black" background-color="#222831">
                        <fo:block text-align="center" color="white" font-weight="bold">Code Etudiant</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt"  border=" solid black" background-color="#222831">
                        <fo:block  color="white" text-align="center" font-weight="bold"> NOM</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border=" solid black" background-color="#222831">
                        <fo:block color="white" text-align="center" font-weight="bold"> PRENOM</fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            
            <fo:table-body  >
                
                
                <xsl:for-each select="groupes/student[@groupe=2]">
                    <fo:table-row >
                        <fo:table-cell border="1pt solid black" padding="2pt" >
                            <fo:block   ><xsl:value-of select="CNE"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="2pt">
                            <fo:block    ><xsl:value-of select="FirstName"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="2pt" >
                            <fo:block  ><xsl:value-of select="LastName"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                
            </fo:table-body>
        </fo:table>
        
    </xsl:template>
    
    
    
    
    <xsl:template match="groupes" name="page1">
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="40pt" margin-left="-3cm"  space-before.minimum="6pt"  text-align="center"> 
            Ecole Nationale des Sciences Appliquees 
        </fo:block>
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="40pt" margin-left="-3cm"  space-before.minimum="6pt"  text-align="center"> 
            Groupe 1
        </fo:block>
        
        <fo:table  table-layout="fixed"  border="1px solid" text-align="center" >
            <fo:table-column border=" solid" column-width="40mm"/>
            <fo:table-column border=" solid" column-width="40mm"/>
            <fo:table-column border=" solid" column-width="40mm"/>
            
            <fo:table-header>
                
                <fo:table-row>
                    <fo:table-cell padding="4pt" border=" solid black" background-color="#222831">
                        <fo:block text-align="center" color="white" font-weight="bold">Code Etudiant</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt"  border=" solid black" background-color="#222831">
                        <fo:block  color="white" text-align="center" font-weight="bold"> NOM</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border=" solid black" background-color="#222831">
                        <fo:block color="white" text-align="center" font-weight="bold"> PRENOM</fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            
            <fo:table-body  >
                
                
                <xsl:for-each select="groupes/student[@groupe=1]">
                    <fo:table-row >
                        <fo:table-cell border="1pt solid black" padding="2pt" >
                            <fo:block   ><xsl:value-of select="CNE"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="2pt">
                            <fo:block    ><xsl:value-of select="FirstName"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="2pt" >
                            <fo:block  ><xsl:value-of select="LastName"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                
            </fo:table-body>
        </fo:table>
        
    </xsl:template>
</xsl:stylesheet>
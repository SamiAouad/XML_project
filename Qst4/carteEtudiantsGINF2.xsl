<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="carteEtudiant" page-height="5.5cm"
                    page-width="8cm">
                    <fo:region-body region-name="only_region"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="carteEtudiant">
                <fo:flow flow-name="only_region">
                    <xsl:call-template name="main"/>
                    
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
        
    </xsl:template>
    
    <xsl:template match="students" name="main">
        <xsl:variable name="cne" select="document('../user.xml')/user/cne"/>
        <xsl:variable name="student" select="students/student[@CNE = $cne]"/>        
        
        <fo:block-container background-color="#B1D0E0" border-bottom-style="solid"
            border-bottom-color="black" font-weight="bold" font-family="sans-serif" text-align="left" margin-bottom=" 1cm"
            color="#ffffff" height="15mm"  width="auto">
            
            <fo:block  >
                
                <fo:external-graphic content-width="15mm"  
                    src="../images/logoENSAT.png"/>
                <fo:block padding-left="20mm" padding-top ="-10mm"  margin-left="0mm" >
                    Carte d'etudiant
                </fo:block>
                
                <fo:block >
                    <fo:external-graphic padding-top ="-55mm" margin-left="0mm"  padding-bottom="3mm" padding-left="58mm" content-width="20mm"
                        src="../images/logoUni.png"/>
                </fo:block> 
            </fo:block>
            
            <fo:block>
                <fo:block>
                    <xsl:variable name="image"  select="concat('../images/', concat($cne, '.png'))"/>
                    <fo:external-graphic  line-height="0pt" padding-left="5mm"   padding-top="5mm" content-height="18mm" content-width="20mm"
                        src="{$image}"/>
                </fo:block>
                
                <fo:block margin-left="10mm" color="black"  >
                    <xsl:value-of select="$cne"/>
                </fo:block> 
                
                <fo:block color="black" margin-left="35mm" padding-top="-20mm">
                    <xsl:value-of select="$student/nom"/>
                </fo:block>
                
                <fo:block color="black" margin-left="35mm">
                    <xsl:value-of select="$student/prenom"/>
                </fo:block>
                
                <fo:block color="black" margin-left="35mm" font-size="8px">
                    Date de Naissance : 
                    <xsl:value-of select="$student/dateDeNaiss/day"/>/<xsl:value-of
                        select="$student/dateDeNaiss/month"/>/<xsl:value-of
                            select="$student/dateDeNaiss/year"/>
                </fo:block>
                
                <fo:block color="black" margin-left="35mm" font-size="8px"> Année d'inscription:
                    <xsl:value-of select="$student/dateInscription/year"/>
                </fo:block>
                <fo:block >
                    <fo:external-graphic  padding-bottom="-10mm"  height="5mm" width="55mm" 
                        src="../images/footerCarteEtudiant.png"/>
                </fo:block>
            </fo:block>
            
        </fo:block-container>
        
        
    </xsl:template>
    
    
    
    
</xsl:stylesheet>

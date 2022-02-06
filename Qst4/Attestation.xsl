<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="carteEtudiant"  page-height="30cm" page-width="21cm" >
                    <fo:region-body/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="carteEtudiant">
                <fo:flow flow-name="xsl-region-body">
                    <xsl:call-template name="main"/>
                    
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
        
    </xsl:template>
    
    <xsl:template match="students" name="main">
        <xsl:variable name="student" select="students/student[@CNE = 'B1']"/>
        <xsl:variable name="notes" select="document('../notes/notes_GINF2.xml')"/>
        <xsl:variable name="moyenne" select="sum($notes/notes/student[@cne = 'B1']/module/*) div 12"/>
        
        
            
        <fo:block >
            <fo:block>  <fo:external-graphic   padding-left="160mm"    content-width="40mm"
                src="../images/logoUni.png"/> </fo:block>
               
             
            <fo:external-graphic padding-top="-15mm" content-width="30mm"   src="../images/logoENSAT.png"/>
        </fo:block>
        <fo:block  margin-top="15mm"  font-weight="bold" font-size="33pt" text-indent="0pc" space-after="40pt"   space-before.minimum="6pt"  text-align="center">
            <xsl:text> Ecole Nationale des Sciences Appliquées de Tanger </xsl:text>
        </fo:block>
        <fo:block  margin-top="25mm"   font-weight="bold" font-size="23pt"  space-after="40pt"   space-before.minimum="6pt"  text-align="center">
            <xsl:text> Attestation de reussite </xsl:text>
        </fo:block>
               
        <fo:block font-weight="bold"  margin-top="10mm" margin-left="10mm"  text-indent="0pc" space-after="7pt"   space-before.minimum="6pt" space-before.optimum="8pt"     space-before.maximum="10pt">
            <xsl:text>
			 Je soussigne , Ahmed Moussa , Directeur de l'Ecole Nationale des Sciences Appliquées de Tanger (ENSAT), certifie que :
			</xsl:text>
        </fo:block>
            <fo:block>
                <fo:block   margin-left="15mm">
                    <xsl:text> L'Etudiant </xsl:text>
                    <xsl:value-of select="$student/nom"/>
                    <xsl:text >  </xsl:text>
                    <xsl:value-of select="$student/prenom"/>
                    <xsl:text> Ayant Numero de CIN :   </xsl:text>
                    <xsl:value-of select="$student/@CNE"/>
                    <xsl:text> Etudiant Actuellement en :   </xsl:text>
                    <xsl:value-of select="$student/classeName"/>
                    <xsl:text> Qu'il  a reussie son annee universitaire 2021/2022   </xsl:text>
                    <xsl:text> En Ayant une note :  </xsl:text>
                    <xsl:value-of select="$moyenne"/>
                </fo:block>
                <fo:block margin-top="15mm" margin-left="60mm" font-weight="bold" text-indent="0pc" space-after="20pt"   space-before.minimum="6pt" space-before.optimum="8pt"     space-before.maximum="10pt">
                    <xsl:text> Fait pour servir et valoir ce que de droit </xsl:text>
                </fo:block>
               
                <fo:block font-weight="bold" font-size="15pt" text-indent="0pc" space-after="10pt"   space-before="30pt" text-align="end" margin-right="60pt">
                    <xsl:text> SIGNATURE : </xsl:text>
                </fo:block>
                <fo:block  font-size="15pt" text-indent="0pc" space-after="15pt"  text-align="end" margin-right="50pt">
                    <xsl:text> Ahmed Moussa </xsl:text>
                </fo:block>
                
                
                
            </fo:block>

    </xsl:template>
    
</xsl:stylesheet>
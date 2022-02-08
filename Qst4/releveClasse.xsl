<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="releveClasse" page-height="30cm" page-width="43cm" margin-top="1cm" margin-bottom="2cm" margin-left="10cm" margin-right="2cm" >
                    <fo:region-body region-name="only_region"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="releveClasse">
                <fo:flow flow-name="only_region">
                    <xsl:call-template name="page1"/>
                </fo:flow>
                
            </fo:page-sequence> 
 
        </fo:root>
        
    </xsl:template>
    <xsl:template match="notes" name="page1">
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="40pt"  margin-left="-8cm" space-before.minimum="6pt"  text-align="center">
            ECOLE NATIONALE DES SCIENCES APPLIQUEES 
        </fo:block>
        <fo:table border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
            <fo:table-column  border=" solid" column-width="18mm"/>
            <fo:table-column  border=" solid" column-width="30mm"/>
            <fo:table-column  border=" solid" column-width="30mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="20mm"/>
            <fo:table-column  border=" solid" column-width="25mm"/>
            
            <fo:table-header>        
                <fo:table-row>
                    <fo:table-cell padding="6pt" border="1pt solid black" background-color="#FFD369" number-columns-spanned="10">
                        <fo:block text-align="center" font-weight="bold" font-size="20pt">
                            Releve de Note GINF2
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
            </fo:table-header>
            
            <fo:table-body >
                <fo:table-row  >
                    <fo:table-cell padding="4pt" border="1pt solid black" background-color="#222831">
                        <fo:block text-align="center" font-weight="bold" color="white" >CNE</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block text-align="center" font-weight="bold"  color="white" >Nom</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block text-align="center" font-weight="bold" color="white" >Prenom</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white">GINF31</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white" >GINF32</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white" >GINF33</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white" >GINF34</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white" >GINF35</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black"  background-color="#222831">
                        <fo:block color="white" >GINF36</fo:block>
                    </fo:table-cell>
                    <fo:table-cell padding="4pt" border="1pt solid black" background-color="#393E46">
                        <fo:block color="white" >Moyenne</fo:block>
                    </fo:table-cell>
                </fo:table-row>
                
                <xsl:for-each select="notes/student">
                    <xsl:variable name="cne" select="@cne"/>
                    <fo:table-row>
                        <fo:table-cell border="1pt solid black" padding="4pt" ><fo:block><xsl:value-of select="@cne"/></fo:block></fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt"><fo:block><xsl:value-of select="document('../students/students_GINF2.xml')/students/student[@CNE = $cne]/nom"/></fo:block></fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt"><fo:block><xsl:value-of select="document('../students/students_GINF2.xml')/students/student[@CNE = $cne]/prenom"/></fo:block></fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt" >
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF31']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF31']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt">
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF32']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF32']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt">
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF33']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF33']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt">
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF34']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF34']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt">
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF35']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF35']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt"> 
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF36']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF36']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell border="1pt solid black" padding="4pt">
                            <fo:block>
                                <xsl:variable name="somme1" select="sum(.//note1)"/>
                                <xsl:variable name="somme2" select="sum(.//note2)"/>
                                <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 12 "/>
                                <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                            </fo:block>
                        </fo:table-cell >
                    </fo:table-row>
                </xsl:for-each>
                <fo:table-row>
                    <fo:table-cell number-columns-spanned="3" border="1pt solid black" padding="4pt"  background-color="#ec4646"><fo:block>Moyenne Par Module </fo:block></fo:table-cell>
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0">
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF31']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF31']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0">
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF32']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF32']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0">
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF33']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF33']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0" >
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF34']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF34']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0">
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF35']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF35']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#ECA0A0" >
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF36']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF36']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 96 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell border="1pt solid black" padding="4pt" background-color="#FF4C29" >
                        <fo:block color="white" font-weight="bold" >
                            <xsl:variable name="somme1" select="sum(notes/student/module/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 576 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                    
                
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
   
</xsl:stylesheet>
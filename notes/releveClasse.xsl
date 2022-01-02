<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="releveClasse" page-height="297mm" page-width="210mm" >
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
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px"  padding="1cm" font-family="Sans_serif">
            Relevé de notes GINF2
        </fo:block>
        <fo:table margin-left="15px" border="1px solid">
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="30mm"/>
            <fo:table-column  border="1px solid" column-width="30mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            <fo:table-column  border="1px solid" column-width="18mm"/>
            
            <fo:table-body text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell><fo:block>cne</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Nom</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Prenom</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF31</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF32</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF33</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF34</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF35</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>GINF36</fo:block></fo:table-cell>
                    <fo:table-cell><fo:block>Moyenne</fo:block></fo:table-cell>
                </fo:table-row>
                
                <xsl:for-each select="notes/student">
                    <xsl:variable name="cne" select="@cne"/>
                    <fo:table-row>
                        <fo:table-cell><fo:block><xsl:value-of select="@cne"/></fo:block></fo:table-cell>
                        <fo:table-cell><fo:block><xsl:value-of select="document('../students/students_GINF2.xml')/students/student[@CNE = $cne]/nom"/></fo:block></fo:table-cell>
                        <fo:table-cell><fo:block><xsl:value-of select="document('../students/students_GINF2.xml')/students/student[@CNE = $cne]/prenom"/></fo:block></fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF31']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF31']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF32']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF32']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF33']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF33']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF34']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF34']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF35']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF35']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="note1" select="module[@codeModule = 'GINF36']/note1"/>
                                <xsl:variable name="note2" select="module[@codeModule = 'GINF36']/note2"/>
                                <xsl:variable name="note" select="($note1 + $note2) div 2 "/>
                                <xsl:value-of select="$note"/>
                            </fo:block>
                        </fo:table-cell>
                        <fo:table-cell>
                            <fo:block>
                                <xsl:variable name="somme1" select="sum(.//note1)"/>
                                <xsl:variable name="somme2" select="sum(.//note2)"/>
                                <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 12 "/>
                                <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                            </fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                <fo:table-row>
                    <fo:table-cell number-columns-spanned="3"><fo:block>Moyenne Generale</fo:block></fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF31']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF31']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF32']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF32']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF33']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF33']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF34']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF34']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF35']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF35']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module[@codeModule = 'GINF36']/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module[@codeModule = 'GINF36']/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 26 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                    <fo:table-cell>
                        <fo:block>
                            <xsl:variable name="somme1" select="sum(notes/student/module/note1)"/>
                            <xsl:variable name="somme2" select="sum(notes/student/module/note2)"/>
                            <xsl:variable name="moyenneG" select="xs:decimal($somme1 + $somme2) div 156 "/>
                            <xsl:value-of select="format-number($moyenneG, '0.00')"/>
                        </fo:block>
                    </fo:table-cell>
                </fo:table-row>
                    
                
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
   
</xsl:stylesheet>
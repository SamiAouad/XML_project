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
                    <xsl:call-template name="page1"/>
                </fo:flow>
            </fo:page-sequence> 
            <fo:page-sequence master-reference="emploi">
                <fo:flow flow-name="only_region">
                    <xsl:call-template name="page2"/>
                </fo:flow>
            </fo:page-sequence> 
            
        </fo:root>
        
    </xsl:template>
    <xsl:template match="Emploi" name="page1">
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="25pt" space-before="0pt" text-align="center">
            Emploi du temps : GINF2 Semestre 1
        </fo:block>
        <fo:table border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
            <fo:table-column  border=" solid" column-width="130px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            
            <fo:table-body text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Horaires</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Lundi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Mardi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Mercredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Jeudi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Vendredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Samedi</fo:block></fo:table-cell>
                </fo:table-row>
                <xsl:call-template name="loop">
                    <xsl:with-param name="counter" select="number(1)"/>
                    <xsl:with-param name="semestreNum" select="number(1)"/>
                </xsl:call-template>
                
                
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
    <xsl:template match="Emploi" name="page2">
        
        <fo:block font-weight="bold" font-size="23pt" text-indent="0pc" space-after="25pt" space-before="0pt" text-align="center">
            Emploi du temps : GINF2 Semestre 2
        </fo:block>
        <fo:table  border="0.5pt solid black" text-align="center" border-spacing="3pt" table-layout="fixed">
            <fo:table-column  border=" solid" column-width="130px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            <fo:table-column  border=" solid" column-width="195px"/>
            
            
            <fo:table-body  text-align="center">
                <fo:table-row  border="1px solid">
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Horaires</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Lundi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Mardi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Mercredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Jeudi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Vendredi</fo:block></fo:table-cell>
                    <fo:table-cell padding="6pt" border="0.5pt solid black"  font-weight="bold" font-size="15pt" background-color="#D4ECDD"><fo:block>Samedi</fo:block></fo:table-cell>
                </fo:table-row>
            
                <xsl:call-template name="loop">
                    <xsl:with-param name="counter" select="number(1)"/>
                    <xsl:with-param name="semestreNum" select="number(2)"/>
                </xsl:call-template>
                
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
    
    <xsl:template name="loop">
        <xsl:param name="counter"/>
        <xsl:param name="semestreNum"/>

            <xsl:if test="$counter &lt;= number(4)">
                <fo:table-row border="1px solid">
                    <fo:table-cell>
                        <xsl:choose>
                            <xsl:when test="$counter = number(1)">
                                <fo:block  font-weight="bold" margin-top="10mm">09:00 - 10:30</fo:block>
                            </xsl:when>
                            <xsl:when test="$counter = number(2)">
                                <fo:block font-weight="bold" margin-top="10mm">11:00-12:30</fo:block>
                            </xsl:when>
                            <xsl:when test="$counter = number(3)">
                                <fo:block font-weight="bold" margin-top="10mm">14:00-15:30</fo:block>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:block font-weight="bold" margin-top="10mm" >16:00-17:30</fo:block>
                            </xsl:otherwise>
                            
                        </xsl:choose>
                    </fo:table-cell>
                    <xsl:for-each select="Emploi/Semestre[@numero=$semestreNum]/Semaine[@numero=1]/*/Seance[@seance=$counter]">
                        
                        <fo:table-cell>
                            <fo:block >
                                <fo:block margin-top="5mm">
                                    <xsl:value-of select="Matiere"/>
                                </fo:block>
                                <fo:block>
                                    <xsl:value-of select="Enseignant"/>
                                </fo:block>
                                <fo:block>
                                    <xsl:value-of select="Salle"/>
                                </fo:block>
                                <xsl:variable name="type" select="Type"/>
                                
                                <xsl:choose>
                                    
                                    <xsl:when test="$type = 'Cours'">
                                        <fo:block background-color="#7882A4"  >
                                          
                                            <xsl:value-of select="Type"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:when test="$type = 'TD'">
                                        <fo:block background-color="#FFE162">
                                            <xsl:value-of select="Type"/>
                                        </fo:block>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <fo:block background-color="#D3ECA7" >
                                            <xsl:value-of select="Type"/>
                                        </fo:block>
                                    </xsl:otherwise>
                                    
                                </xsl:choose>
                                
                            </fo:block>
                        </fo:table-cell>
                    </xsl:for-each>
                </fo:table-row>
                <xsl:call-template name="loop">
                    <xsl:with-param name="counter" select="$counter + 1"/>
                    <xsl:with-param name="semestreNum" select="$semestreNum"></xsl:with-param>
                    
                </xsl:call-template>
            </xsl:if>

    </xsl:template>
    
</xsl:stylesheet>
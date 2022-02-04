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
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px"  padding="1cm" font-family="Sans_serif">
            Emploi du temps : GINF2
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
                <xsl:call-template name="loop">
                    <xsl:with-param name="counter" select="number(1)"/>
                    <xsl:with-param name="semestreNum" select="number(1)"/>
                </xsl:call-template>
                
                
            </fo:table-body>
        </fo:table>
    </xsl:template>
    
    <xsl:template match="Emploi" name="page2">
        
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px"  padding="1cm" font-family="Sans_serif">
            Emploi du temps : GINF2
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
                                <fo:block>09:00 - 10:30</fo:block>
                            </xsl:when>
                            <xsl:when test="$counter = number(2)">
                                <fo:block>11:00-12:30</fo:block>
                            </xsl:when>
                            <xsl:when test="$counter = number(3)">
                                <fo:block>14:00-15:30</fo:block>
                            </xsl:when>
                            <xsl:otherwise>
                                <fo:block>16:00-17:30</fo:block>
                            </xsl:otherwise>
                            
                        </xsl:choose>
                    </fo:table-cell>
                    <xsl:for-each select="Emploi/Semestre[@numero=$semestreNum]/Semaine[@numero=1]/*/Seance[@seance=$counter]">
                        
                        <fo:table-cell>
                            <fo:block >
                                <fo:block>
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
                                        <fo:block background-color="#7882A4">
                                            <xsl:value-of select="Type"/>
                                        </fo:block>
                                    </xsl:when>
                                    <xsl:when test="$type = 'TD'">
                                        <fo:block background-color="#FFE162">
                                            <xsl:value-of select="Type"/>
                                        </fo:block>
                                    </xsl:when>
                                    
                                    <xsl:otherwise>
                                        <fo:block background-color="#D3ECA7">
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
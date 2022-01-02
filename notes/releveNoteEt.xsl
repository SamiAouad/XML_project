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

        </fo:root>

    </xsl:template>
    <xsl:template match="notes" name="page1">
        <xsl:variable name="cne" select="document('../user.xml')/user/cne"/>
        <xsl:variable name="filiere" select="document('../user.xml')/user/filiere"/>
        <xsl:variable name="infoEtudiant" select="document('../students/students_GINF2.xml')/students/student[@CNE = $cne]"/>
        <xsl:variable name="etudiant" select="document('notes_GINF2.xml')/notes/student[@cne = $cne]"/>
        <fo:block text-align="center" margin-bottom="1cm" font-size="36px" padding="1cm"
            font-family="Sans_serif"> Relevé de notes et résultats </fo:block>
        <fo:block-container margin-left="5mm" padding-top="-10mm" padding-bottom="10mm">
            <fo:block><xsl:value-of select="$infoEtudiant/nom"/>&#160;<xsl:value-of select="$infoEtudiant/prenom"
                /></fo:block>
            <fo:block>N°carte nationale : <xsl:value-of select="$infoEtudiant/@CNE"/></fo:block>
            <fo:block>Née le : <xsl:value-of select="$infoEtudiant/dateDeNaiss/day"/>/<xsl:value-of
                    select="$infoEtudiant/dateDeNaiss/month"/>/<xsl:value-of
                    select="$infoEtudiant/dateDeNaiss/year"/>
            </fo:block>
            <fo:block>CNE : <xsl:value-of select="$infoEtudiant/@CNE"/></fo:block>
            <fo:block>Filiere : <xsl:value-of select="$filiere"/></fo:block>
        </fo:block-container>
        <fo:table table-layout="fixed" margin-left="100px" border="1px solid" text-align="center">
            <fo:table-column border="1px solid" column-width="20mm"/>
            <fo:table-column border="1px solid" column-width="60mm"/>
            <fo:table-column border="1px solid" column-width="20mm"/>
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
                    <fo:table-cell>
                        <fo:block>Moyenne</fo:block>
                    </fo:table-cell>
                </fo:table-row>
                <xsl:for-each select="$etudiant/module">
                    <fo:table-row border="solid">
                        <fo:table-cell text-align="center" display-align="center">
                            <fo:block><xsl:value-of select="@codeModule"/></fo:block>
                        </fo:table-cell>
                        <xsl:variable name="codeModule" select="@codeModule"/>
                        <xsl:variable name="module" select="document('../modules/module_GINF2.xml')/modules/module[@codeModule = $codeModule]"/>
                        <fo:table-cell display-align="center" text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="$module/element1"/></fo:block>
                            <fo:block  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="$module/element2"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center">
                            <fo:block border-bottom="solid"  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="note1"/></fo:block>
                            <fo:block  padding-top="10px" padding-bottom="10px" ><xsl:value-of select="note2"/></fo:block>
                        </fo:table-cell>
                        <fo:table-cell text-align="center">
                            <xsl:variable name="note1" select="note1"/>
                            <xsl:variable name="note2" select="note2"/>
                            <xsl:variable name="moyenne" select="($note1 + $note2) div 2 "/>
                            <fo:block><xsl:value-of select="$moyenne"/></fo:block>
                        </fo:table-cell>
                    </fo:table-row>
                </xsl:for-each>
                
            </fo:table-body>
        </fo:table>
    </xsl:template>


</xsl:stylesheet>

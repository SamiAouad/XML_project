<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="attestation" page-height="297mm"
                    page-width="210mm">
                    <fo:region-body region-name="only_region"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="attestation">
                <fo:flow flow-name="only_region">
                    <xsl:call-template name="main"/>
                    
                </fo:flow>
            </fo:page-sequence>
            
        </fo:root>
        
    </xsl:template>
    
    <xsl:template match="students" name="main">
        <xsl:variable name="cne" select="document('../user.xml')/user/cne"/>
        <xsl:variable name="student" select="students/student[@CNE = $cne]"/>        
        
        <fo:block-container width="210mm">
            
            <fo:block width="210mm">
                       
                       <fo:external-graphic content-width="40mm" text-align="right" 
                           src="../images/logoENSAT.png"/>
                                         
                       <fo:wrapper font-size="35px" margin-right="0px">Attestation</fo:wrapper>
                       <fo:wrapper margin-left="0mm">
                           <fo:external-graphic content-width="50mm" padding-right="-10px"
                               src="../images/logoUni.png"/>
                       </fo:wrapper>
                       
                   </fo:block>
                
        </fo:block-container>
            
            
        
        
        
            </xsl:template>
    
    
    
    
</xsl:stylesheet>

<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:fo="http://www.w3.org/1999/XSL/Format">
    <xsl:template match="/">
        <fo:root>
            <fo:layout-master-set>
                <fo:simple-page-master master-name="emploi" page-height="55mm" page-width="85mm" >
                    <fo:region-body region-name="only_region"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="carteEtudiant">
                <fo:flow flow-name="only_region">
                    
                </fo:flow>
            </fo:page-sequence>        
            
        </fo:root>
        
    </xsl:template>
    
    
    
</xsl:stylesheet>
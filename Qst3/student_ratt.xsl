<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="utf-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
                <!-- Bootstrap CSS -->
                <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
                <link rel="stylesheet" href="style.css"></link>
            </head>
            <body>
                <div class="container">
                    <div class="col-4"></div>
                    <table class="table table-bordered">
                        <thead class="thead-dark">
                            <tr>
                                <th scope="col">cne</th>
                                <th scope="col">nom</th>
                                <th scope="col">prenom</th>
                                <th scope="col">code module</th>
                                <th scope="col">moyenne</th>
                            </tr>
                        </thead>
                        
                        <xsl:for-each select="notes/student/module[@codeModule = 'GINF34']">
                            <xsl:variable name="cne" select="parent::student/@cne"/>
                            <xsl:variable name="noteAvant" select="document('../notes/notes_GINF2.xml')/notes/student[@cne = $cne]/module[@codeModule = 'GINF34']"/>
                            
                            <xsl:variable name="note1Ratt" select="note1"/>
                            <xsl:variable name="note2Ratt" select="note2"/>
                            <xsl:variable name="note1" select="$noteAvant/note1"/>
                            <xsl:variable name="note2" select="$noteAvant/note2"/>
                             
                            
                            <xsl:variable name="note" select="($note1 + $note2 + $note1Ratt + $note2Ratt) div 4"/>
                            
                                
                                
                                <xsl:variable name="students" select="document('../students/students_GINF2.xml')"/>
                                
                                <tr>
                                    <td><xsl:value-of select="$cne"/></td>
                                    <td><xsl:value-of select="$students/students/student[@CNE = $cne]/nom"/></td>
                                    <td><xsl:value-of select="$students/students/student[@CNE = $cne]/prenom"/></td>
                                    <td><xsl:value-of select="@codeModule"/></td>
                                    <xsl:choose>
                                        <xsl:when test="$note &lt; 12 and $note &gt; 8 or $note = 8">
                                            <td class="bg-warning"><xsl:value-of select="$note"/></td>
                                        </xsl:when>
                                        <xsl:when test="$note &lt; 8">
                                            <td class="bg-danger"><xsl:value-of select="$note"/></td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td class="bg-success"><xsl:value-of select="$note"/></td>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                    
                                </tr>
                                
                            
                            
                        </xsl:for-each>
                    </table>   
                    <div class="col-4"></div>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
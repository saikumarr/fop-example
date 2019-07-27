<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:fo="http://www.w3.org/1999/XSL/Format" exclude-result-prefixes="fo">

    <xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>
    <xsl:param name="version" select="'1.0'"/>
    <xsl:template match="invoices">
        <fo:root  xmlns:fo="http://www.w3.org/1999/XSL/Format">
            <fo:layout-master-set>
                <fo:simple-page-master master-name="simpleA4" page-height="29.7cm" margin-top="2cm" margin-bottom="2cm" margin-left="2cm" margin-right="2cm">
                    <fo:region-body margin-top="0.5cm"/>
                </fo:simple-page-master>
            </fo:layout-master-set>
            <fo:page-sequence master-reference="simpleA4">
                <fo:flow flow-name="xsl-region-body">
                    <fo:block  text-align="center" font-size="7pt">
                        <fo:block font-weight="bold" >
                            E3 Global Inc
                        </fo:block>
                        <fo:block >
                            1526 katy Gap Road, Unit #501
                        </fo:block>
                        <fo:block>Katy, TX 77494</fo:block>
                        <fo:block>(281)7127543</fo:block>
                        <fo:block>venkat@e3globalinc.com</fo:block>
                        <fo:block>www.e3globalinc.com</fo:block>
                    </fo:block>
<fo:block>

</fo:block>
                    <fo:block font-size="10pt">
                        <fo:table table-layout="fixed" border-collapse="separate">
                            <fo:table-column column-width="6cm"/>
                            <fo:table-column column-width="4cm"/>
                            <fo:table-column column-width="4cm"/>
                            <fo:table-column column-width="4cm"/>
                            <fo:table-header background-color="lightblue">
                                <fo:table-row>
                                    <fo:table-cell  padding="2px" font-weight="bold"
                                                   text-align="justify">
                                        <fo:block>ACTIVITY</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell  padding="2px" font-weight="bold"
                                                   text-align="center">
                                        <fo:block>QTY</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell  padding="2px" font-weight="bold"
                                                   text-align="center">
                                        <fo:block>RATE</fo:block>
                                    </fo:table-cell>
                                    <fo:table-cell  padding="2px" font-weight="bold"
                                                   text-align="center">
                                        <fo:block>AMOUNT</fo:block>
                                    </fo:table-cell>
                                </fo:table-row>
                            </fo:table-header>
                            <fo:table-footer>
                                <fo:table-cell>
                                    <fo:block text-align="right">
                                        TOTAL DUE
<!--                                        <xsl:value-of select=""></xsl:value-of>-->
                                    </fo:block>
                                </fo:table-cell>
                            </fo:table-footer>
                            <fo:table-body>
                                <xsl:apply-templates select="invoice"/>
                            </fo:table-body>

                        </fo:table>
                    </fo:block>
<!--<fo:block text-align="right">-->
<!--    <fo:block>TOTAL DUE-->
<!--        <xsl:value-of select="quantity * rate"/></fo:block>-->
<!--</fo:block>-->
                </fo:flow>
            </fo:page-sequence>
        </fo:root>
    </xsl:template>

    <xsl:template match="invoice">
        <fo:table-row border-bottom-style="dashed" border="solid 1px blue" border-style="dashed">
            <fo:table-cell text-align="start">
                <fo:block>
                    <xsl:value-of select="name"/>
                </fo:block>
                <fo:block text-align="justify">
                    <xsl:value-of select="activity"/>
            </fo:block>
                <fo:block>
                    <xsl:value-of select="date"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell text-align="center">
                <fo:block>
                    <xsl:value-of select="quantity"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell text-align="center">
                <fo:block>
                    <xsl:value-of select="rate"/>
                </fo:block>
            </fo:table-cell>
            <fo:table-cell text-align="center">
                <fo:block>
                    <xsl:value-of select="quantity * rate"/>
                </fo:block>
            </fo:table-cell>
        </fo:table-row>
    </xsl:template>
</xsl:stylesheet>

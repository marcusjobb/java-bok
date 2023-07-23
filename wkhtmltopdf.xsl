<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:outline="http://wkhtmltopdf.org/outline"
                xmlns="http://www.w3.org/1999/xhtml">
    <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
                doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
                indent="yes" />
    <xsl:template match="outline:outline">
        <html>
            <head>
                <title>Table of Contents</title>
                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                <style type="text/css">
                    @page {
                      margin: 1cm; /* Adjust the margin values as needed */
                    }

                    footer {
                      position: fixed;
                      bottom: 0;
                      left: 0;
                      width: 100%;
                    }

                    #header, #header h1 {
                        text-align:left;
                        font-size:24px;
                        font-weight: bold;
                        font-family:arial;
                        margin-bottom: 5px;
                    }

                    #header {
                        display: inline;
                    }

                    #header h1 {
                        display: inline;
                    }

                    ol li {
                        font-size: 16px;
                        font-weight: normal;
                    }

                    ol {
                        max-width: 100%;
                        overflow-x: hidden;
                        list-style: upper-roman;
                    }

                    ol li ol {
                        list-style: upper-alpha;
                    }


                    .title {
                        background: #fff;
                        padding-right: 5px;
                    }

                    .page {
                        background: #fff;
                        padding: 0 0 0 5px;
                        position: absolute;
                        right: 0;
                    }

                    li:before {
                        float: left;
                        width: 0;
                        white-space: nowrap;
                        content:
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                            ". . . . . . . . . . . . . . . . . . . . "
                    }

                    li, ol {
                        padding-top: 0 !important;
                        padding-bottom: 0 !important;
                        margin-top: 0 !important;
                        margin-bottom: 0 !important;
                    }

                    ol > li > ol {
                        padding-left: 20px !important;
                    }

                    a {
                        color: #000;
                        text-decoration: none;
                    }
                </style>
            </head>
            <body>
                <div id="header">I. <h1>Table of Contents</h1></div>
                <div class="table-of-contents-container">
                    <ol><xsl:apply-templates select="outline:item/outline:item"/></ol>
                </div>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="outline:item">
        <li>
            <xsl:if test="@title!=''">
                <span class="title">
                    <a>
                        <xsl:if test="@link">
                            <xsl:attribute name="href"><xsl:value-of select="@link"/></xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@backLink">
                            <xsl:attribute name="name"><xsl:value-of select="@backLink"/></xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="@title" />
                    </a>
                </span>
                <span class="page"><xsl:value-of select="@page" /> </span>
            </xsl:if>
            <ol>
                <xsl:comment>added to prevent self-closing tags in QtXmlPatterns</xsl:comment>
                <xsl:apply-templates select="outline:item"/>
            </ol>
        </li>
    </xsl:template>
</xsl:stylesheet>
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:outline="http://wkhtmltopdf.org/outline"
                xmlns="http://www.w3.org/1999/xhtml">
  <xsl:output doctype-public="-//W3C//DTD XHTML 1.0 Strict//EN"
              doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"
              indent="yes"/>
  <xsl:template match="outline:outline">
    <html>
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <style>
            <!-- Your CSS goes here -->
        </style>
      </head>
      <body>
        <h1 class="doc-toc-title">Table of Contents</h1>
        <ol class="doc-toc-list">
          <xsl:apply-templates select="outline:item/outline:item"/>
        </ol>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="outline:item[count(ancestor::outline:item)&lt;=6]">
    <li class="doc-toc-item level_{count(ancestor::outline:item)}">
      <xsl:if test="@title!=''">
        <div class="doc-toc-item-inner">

          <span class="doc-toc-item-pagenum">
            <xsl:value-of select="@page"/>
          </span>

          <a class="doc-toc-item-title">
            <xsl:if test="@link">
              <xsl:attribute name="href">
                <xsl:value-of select="@link"/>
              </xsl:attribute>
            </xsl:if>

            <xsl:if test="@backLink">
              <xsl:attribute name="name">
                <xsl:value-of select="@backLink"/>
              </xsl:attribute>
            </xsl:if>

            <span class="text">
              <span class="text-inner">
                <xsl:value-of select="@title"/>
              </span>
            </span>
          </a>

        </div>
      </xsl:if>

      <ol class="doc-toc-list">
        <xsl:comment>added to prevent self-closing tags in QtXmlPatterns</xsl:comment>
        <xsl:apply-templates select="outline:item"/>
      </ol>
    </li>
  </xsl:template>
</xsl:stylesheet>
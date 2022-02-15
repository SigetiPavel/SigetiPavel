<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
	<head>
		<title></title>
	</head>
<body>
	<math><xsl:apply-templates/></math>	
</body>
<script>//<![CDATA[
  var script = document.createElement('script');
  script.type = 'text/javascript';
  script.src = 'https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js';
  document.head.appendChild(script);
  MathJax = {
    loader: {load: ['[mml]/mml3']}
  };
//]]></script>
</html>
</xsl:template>

	<xsl:template match="операнд">
    <mi><xsl:apply-templates/></mi>
  </xsl:template>
  <xsl:template match="оператор">
    <mo><xsl:apply-templates/></mo>
  </xsl:template>
  <xsl:template match="строка">
    <mrow><xsl:apply-templates/></mrow>
  </xsl:template>
  <xsl:template match="корень">
    <msqrt><xsl:apply-templates/></msqrt>
  </xsl:template>
  <xsl:template match="дробь">
    <mfrac><xsl:apply-templates/></mfrac>
  </xsl:template>
  <xsl:template match="число">
    <mn><xsl:apply-templates/></mn>
  </xsl:template>
  <xsl:template match="низверх">
    <munderover><xsl:apply-templates/></munderover>
  </xsl:template>
  <xsl:template match="верх">
    <msup><xsl:apply-templates/></msup>
  </xsl:template>
  <xsl:template match="низ">
    <msub><xsl:apply-templates/></msub>
  </xsl:template>


</xsl:stylesheet>



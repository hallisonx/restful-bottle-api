<?xml version="1.0" encoding="utf8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="utf-8" indent="yes" standalone="yes" omit-xml-declaration="yes" doctype-public="html" doctype-system="html" />

<xsl:template match="/"><html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<head>
<link rel="stylesheet" href="_assets/css.css" media="all" />
</head>
<body>
<div id="measured_height_container">
  <div id="recipe_title"><xsl:value-of select="/recipe/title" /></div>

  <div id="recipe_contents">

    <div id="recipe_directions">
    <ol>
      <xsl:for-each select="/recipe/directions/step">
        <li> <xsl:value-of select="." /></li>
      </xsl:for-each>
    </ol>
    </div>

    <div id="sidebar">

      <div id="recipe_ingredients">
        Serves <xsl:value-of select="/recipe/ingredients/serves" />
        <xsl:for-each select="/recipe/ingredients/group">
          <xsl:if test="name != '' ">
            <h4><xsl:value-of select="name" /></h4>
          </xsl:if>
          <dl>
            <xsl:for-each select="ingredient">
              <dt>
                  <span class="ingredient_quantity"><xsl:value-of select="quantity" /></span>
                  <span class="ingredient_measurement"><xsl:value-of select="measurement" /></span>
              </dt>
              <dd>
                  <span class="ingredient_name"><xsl:value-of select="name" /></span>
                  <span class="ingredient_preparation"><xsl:if test="preparation != ''">, </xsl:if><xsl:value-of select="preparation" /></span>
              </dd>
            </xsl:for-each>
          </dl>
          </xsl:for-each>

      </div>

      <div id="recipe_description">
      <xsl:value-of select="/recipe/description" />
      </div>
    </div>
  </div>
</div>

</body>
</html>
</xsl:template>

</xsl:stylesheet>
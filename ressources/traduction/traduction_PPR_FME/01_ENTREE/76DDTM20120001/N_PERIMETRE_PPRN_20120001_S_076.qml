<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" minScale="1e+8" simplifyLocal="1" hasScaleBasedVisibilityFlag="0" labelsEnabled="0" version="3.0.1-Girona" simplifyDrawingHints="1" simplifyMaxScale="1" simplifyDrawingTol="1" readOnly="0" maxScale="0">
  <renderer-v2 forceraster="0" type="singleSymbol" symbollevels="0" enableorderby="0">
    <symbols>
      <symbol type="fill" alpha="1" clip_to_extent="1" name="0">
        <layer locked="0" class="SimpleFill" enabled="1" pass="0">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="153,174,211,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="35,35,35,0"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" value="" name="name"/>
              <Option name="properties"/>
              <Option type="QString" value="collection" name="type"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
    <rotation/>
    <sizescale/>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"ID_GASPAR"</value>
    </property>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory penWidth="0" backgroundAlpha="255" height="15" maxScaleDenominator="1e+8" minimumSize="0" penAlpha="255" sizeType="MM" labelPlacementMethod="XHeight" enabled="0" minScaleDenominator="0" lineSizeScale="3x:0,0,0,0,0,0" sizeScale="3x:0,0,0,0,0,0" scaleDependency="Area" barWidth="5" scaleBasedVisibility="0" opacity="1" rotationOffset="270" width="15" diagramOrientation="Up" lineSizeType="MM" backgroundColor="#ffffff" penColor="#000000">
      <fontProperties style="" description="MS Shell Dlg 2,6.6,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" obstacle="0" placement="0" priority="0" linePlacementFlags="18" zIndex="0" showAll="1">
    <properties>
      <Option type="Map">
        <Option type="QString" value="" name="name"/>
        <Option name="properties"/>
        <Option type="QString" value="collection" name="type"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <fieldConfiguration>
    <field name="ID_GASPAR">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LIBELLE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TYPE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DATEVALID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="ID_GASPAR" index="0" name=""/>
    <alias field="LIBELLE" index="1" name=""/>
    <alias field="TYPE" index="2" name=""/>
    <alias field="DATEVALID" index="3" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default applyOnUpdate="0" expression="" field="ID_GASPAR"/>
    <default applyOnUpdate="0" expression="" field="LIBELLE"/>
    <default applyOnUpdate="0" expression="" field="TYPE"/>
    <default applyOnUpdate="0" expression="" field="DATEVALID"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="0" unique_strength="0" field="ID_GASPAR" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" field="LIBELLE" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" field="TYPE" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" unique_strength="0" field="DATEVALID" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint desc="" field="ID_GASPAR" exp=""/>
    <constraint desc="" field="LIBELLE" exp=""/>
    <constraint desc="" field="TYPE" exp=""/>
    <constraint desc="" field="DATEVALID" exp=""/>
  </constraintExpressions>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig actionWidgetStyle="dropDown" sortExpression="" sortOrder="0">
    <columns>
      <column type="field" hidden="0" name="ID_GASPAR" width="-1"/>
      <column type="field" hidden="0" name="LIBELLE" width="-1"/>
      <column type="field" hidden="0" name="TYPE" width="-1"/>
      <column type="field" hidden="0" name="DATEVALID" width="-1"/>
      <column type="actions" hidden="1" width="-1"/>
    </columns>
  </attributetableconfig>
  <editform></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
Les formulaires QGIS peuvent avoir une fonction Python qui sera appelée à l'ouverture du formulaire.

Utilisez cette fonction pour ajouter plus de fonctionnalités à vos formulaires.

Entrez le nom de la fonction dans le champ "Fonction d'initialisation Python".
Voici un exemple à suivre:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
    geom = feature.geometry()
    control = dialog.findChild(QWidget, "MyLineEdit")

]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="DATEVALID"/>
    <field editable="1" name="ID_GASPAR"/>
    <field editable="1" name="LIBELLE"/>
    <field editable="1" name="TYPE"/>
  </editable>
  <labelOnTop>
    <field name="DATEVALID" labelOnTop="0"/>
    <field name="ID_GASPAR" labelOnTop="0"/>
    <field name="LIBELLE" labelOnTop="0"/>
    <field name="TYPE" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <expressionfields/>
  <previewExpression>ID_GASPAR</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>

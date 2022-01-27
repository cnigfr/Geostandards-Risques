<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.4.5-Madeira" simplifyDrawingTol="1" simplifyMaxScale="1" maxScale="1000" hasScaleBasedVisibilityFlag="0" minScale="100000" simplifyDrawingHints="1" simplifyLocal="1" readOnly="0" labelsEnabled="1" simplifyAlgorithm="0" styleCategories="AllStyleCategories">
  <flags>
    <Identifiable>1</Identifiable>
    <Removable>1</Removable>
    <Searchable>1</Searchable>
  </flags>
  <renderer-v2 enableorderby="0" symbollevels="1" forceraster="0" type="RuleRenderer">
    <rules key="{adb6d258-f134-4b20-a50a-d93e4dd027fc}">
      <rule label="PPRI annulé" key="{2fce934b-2fcf-4184-9ea7-e4b2af042531}" symbol="0" filter="&quot;Source&quot; = 'PPRI annulé'">
        <rule label="Zone rouge" key="{5a342e86-9a67-4569-9273-9debaf8bcfab}" symbol="1" filter="&quot;Caracteris&quot; = 'Zone rouge'"/>
        <rule label="Zone bleue" key="{d249095e-fd9a-4c08-8c90-56e01136b2ed}" symbol="2" filter="&quot;Caracteris&quot; = 'Zone bleue'"/>
      </rule>
      <rule label="PAC" key="{6fbd081a-ab8f-46ef-b991-0db8fdfefa5e}" symbol="3" filter="&quot;Source&quot; = 'PAC'">
        <rule label="Aléa déferlement" key="{4f46bf1e-a795-46ce-a1ef-9eb45d0ddcbd}" symbol="4" filter="&quot;Caracteris&quot; = 'Aléa déferlement'"/>
        <rule label="Aléa fort" key="{7c48b236-d51f-47f0-b100-2a13b55c143d}" symbol="5" filter="&quot;Caracteris&quot; = 'Aléa fort'"/>
        <rule label="Aléa modéré" key="{bab058fb-9fa5-4ea6-b2cf-51cd6f841e8b}" symbol="6" filter="&quot;Caracteris&quot; = 'Aléa modéré'"/>
        <rule label="Aléa Changement climatique 2100" key="{69c80c59-7802-442c-b3a4-f4ea7c83e3c3}" symbol="7" filter="&quot;Caracteris&quot; = 'Aléa 2100'"/>
        <rule label="Aléa résiduel" key="{5efaad05-63cf-4a41-8481-de338baf1953}" symbol="8" filter="&quot;Caracteris&quot; = 'Aléa résiduel'"/>
        <rule label="Emprise de la ZI - Aléa indifférencié" key="{368669b5-6774-4fe5-8eaf-8cfd670ea66f}" symbol="9" filter="&quot;Caracteris&quot; = 'Emprise de la ZI'"/>
        <rule label="Lit mineur et surface en eau" key="{baa6ed3e-b8bc-45f7-9b32-e3923c284bc3}" symbol="10" filter="&quot;Caracteris&quot; = 'Lit mineur et surface en eau'"/>
      </rule>
      <rule label="Etude Emprise de la ZI" key="{438ee0ca-7029-4597-8fbf-cf24044c4925}" symbol="11" filter="&quot;Source&quot; = 'Etude' or &quot;Source&quot; = 'A confirmer' "/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="0" alpha="1">
        <layer locked="0" pass="2" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="170,228,104,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="1" alpha="1">
        <layer locked="0" pass="7" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="248,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="248,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="10" alpha="1">
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="160,192,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="160,192,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="11" alpha="1">
        <layer locked="0" pass="0" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="247,139,235,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="174,11,163,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="2" alpha="1">
        <layer locked="0" pass="6" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,0,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="3" alpha="1">
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="204,119,88,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,0,0,255"/>
          <prop k="outline_style" v="no"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="no"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="4" alpha="1">
        <layer locked="0" pass="5" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="248,0,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="248,0,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="dense6"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="5" alpha="1">
        <layer locked="0" pass="4" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,170,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,170,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="6" alpha="1">
        <layer locked="0" pass="3" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,255,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,255,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="7" alpha="1">
        <layer locked="0" pass="2" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="255,255,0,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="255,255,0,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="8" alpha="1">
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="166,166,166,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="166,166,166,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol clip_to_extent="1" force_rhr="0" type="fill" name="9" alpha="1">
        <layer locked="0" pass="1" class="SimpleFill" enabled="1">
          <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="color" v="0,192,255,255"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="offset" v="0,0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="outline_color" v="0,192,255,255"/>
          <prop k="outline_style" v="solid"/>
          <prop k="outline_width" v="0.26"/>
          <prop k="outline_width_unit" v="MM"/>
          <prop k="style" v="solid"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="simple">
    <settings>
      <text-style fontUnderline="0" textColor="0,0,0,255" fontStrikeout="0" fontWeight="75" fontItalic="0" blendMode="0" fontSizeUnit="Point" isExpression="0" fontWordSpacing="0" fontFamily="Arial" textOpacity="1" fontCapitals="0" fontSize="8.25" fontLetterSpacing="0" multilineHeight="1" namedStyle="Bold" fieldName="Risque" previewBkgrdColor="#ffffff" fontSizeMapUnitScale="3x:0,0,0,0,0,0" useSubstitutions="0">
        <text-buffer bufferJoinStyle="64" bufferOpacity="1" bufferDraw="1" bufferColor="255,255,255,255" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferSize="1" bufferSizeUnits="MM" bufferNoFill="0" bufferBlendMode="0"/>
        <background shapeJoinStyle="64" shapeOffsetY="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeType="0" shapeDraw="0" shapeOpacity="1" shapeSizeUnit="MM" shapeRotation="0" shapeSizeX="0" shapeBorderColor="128,128,128,255" shapeBorderWidthUnit="MM" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeOffsetX="0" shapeRotationType="0" shapeFillColor="255,255,255,255" shapeRadiiY="0" shapeSVGFile="" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiX="0" shapeBorderWidth="0" shapeSizeType="0" shapeBlendMode="0" shapeSizeY="0" shapeRadiiUnit="MM" shapeOffsetUnit="MM" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0"/>
        <shadow shadowOffsetDist="1" shadowRadius="1.5" shadowRadiusAlphaOnly="0" shadowOffsetAngle="135" shadowOffsetGlobal="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6" shadowOffsetUnit="MM" shadowUnder="0" shadowScale="100" shadowDraw="0" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusUnit="MM" shadowOpacity="0.7" shadowColor="0,0,0,255"/>
        <substitutions/>
      </text-style>
      <text-format wrapChar="" addDirectionSymbol="0" rightDirectionSymbol=">" multilineAlign="0" placeDirectionSymbol="0" reverseDirectionSymbol="0" decimals="3" leftDirectionSymbol="&lt;" plussign="0" formatNumbers="0" autoWrapLength="0" useMaxLineLengthForAutoWrap="1"/>
      <placement fitInPolygonOnly="0" priority="5" yOffset="0" rotationAngle="0" maxCurvedCharAngleIn="20" distUnits="MM" centroidInside="1" maxCurvedCharAngleOut="-20" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" preserveRotation="1" dist="0" offsetUnits="MapUnit" centroidWhole="0" repeatDistance="0" xOffset="0" quadOffset="4" placement="0" distMapUnitScale="3x:0,0,0,0,0,0" placementFlags="10" offsetType="0" repeatDistanceUnits="MM" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR"/>
      <rendering labelPerPart="1" fontLimitPixelSize="0" limitNumLabels="0" scaleVisibility="1" mergeLines="0" zIndex="0" fontMaxPixelSize="10000" obstacle="1" displayAll="0" scaleMax="15000" scaleMin="1" minFeatureSize="0" fontMinPixelSize="3" obstacleFactor="1" maxNumLabels="2000" obstacleType="0" drawLabels="1" upsidedownLabels="0"/>
      <dd_properties>
        <Option type="Map">
          <Option type="QString" name="name" value=""/>
          <Option name="properties"/>
          <Option type="QString" name="type" value="collection"/>
        </Option>
      </dd_properties>
    </settings>
  </labeling>
  <customproperties>
    <property key="dualview/previewExpressions" value="Insee"/>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory enabled="0" width="15" scaleBasedVisibility="0" backgroundColor="#ffffff" labelPlacementMethod="XHeight" minimumSize="0" sizeScale="3x:0,0,0,0,0,0" lineSizeScale="3x:0,0,0,0,0,0" penAlpha="255" sizeType="MM" backgroundAlpha="255" height="15" opacity="1" penWidth="0" maxScaleDenominator="1e+08" penColor="#000000" scaleDependency="Area" barWidth="5" rotationOffset="270" lineSizeType="MM" minScaleDenominator="1000" diagramOrientation="Up">
      <fontProperties description="MS Shell Dlg 2,7.8,-1,5,50,0,0,0,0,0" style=""/>
      <attribute label="" field="" color="#000000"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings dist="0" linePlacementFlags="18" obstacle="0" priority="0" showAll="1" zIndex="0" placement="1">
    <properties>
      <Option type="Map">
        <Option type="QString" name="name" value=""/>
        <Option name="properties"/>
        <Option type="QString" name="type" value="collection"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <geometryOptions removeDuplicateNodes="0" geometryPrecision="0">
    <activeChecks/>
    <checkConfiguration/>
  </geometryOptions>
  <fieldConfiguration>
    <field name="Insee">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Commune">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Risque">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DateApprob">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="DateSaisie">
      <editWidget type="DateTime">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Caracteris">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Reference">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Dossier">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Source">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="Id">
      <editWidget type="Range">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias field="Insee" index="0" name=""/>
    <alias field="Commune" index="1" name=""/>
    <alias field="Risque" index="2" name=""/>
    <alias field="DateApprob" index="3" name=""/>
    <alias field="DateSaisie" index="4" name=""/>
    <alias field="Caracteris" index="5" name=""/>
    <alias field="Reference" index="6" name=""/>
    <alias field="Dossier" index="7" name=""/>
    <alias field="Source" index="8" name=""/>
    <alias field="Id" index="9" name=""/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default expression="" field="Insee" applyOnUpdate="0"/>
    <default expression="" field="Commune" applyOnUpdate="0"/>
    <default expression="" field="Risque" applyOnUpdate="0"/>
    <default expression="" field="DateApprob" applyOnUpdate="0"/>
    <default expression="" field="DateSaisie" applyOnUpdate="0"/>
    <default expression="" field="Caracteris" applyOnUpdate="0"/>
    <default expression="" field="Reference" applyOnUpdate="0"/>
    <default expression="" field="Dossier" applyOnUpdate="0"/>
    <default expression="" field="Source" applyOnUpdate="0"/>
    <default expression="" field="Id" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint field="Insee" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Commune" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Risque" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="DateApprob" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="DateSaisie" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Caracteris" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Reference" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Dossier" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Source" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
    <constraint field="Id" notnull_strength="0" exp_strength="0" constraints="0" unique_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint field="Insee" desc="" exp=""/>
    <constraint field="Commune" desc="" exp=""/>
    <constraint field="Risque" desc="" exp=""/>
    <constraint field="DateApprob" desc="" exp=""/>
    <constraint field="DateSaisie" desc="" exp=""/>
    <constraint field="Caracteris" desc="" exp=""/>
    <constraint field="Reference" desc="" exp=""/>
    <constraint field="Dossier" desc="" exp=""/>
    <constraint field="Source" desc="" exp=""/>
    <constraint field="Id" desc="" exp=""/>
  </constraintExpressions>
  <expressionfields/>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
    <actionsetting capture="0" isEnabledOnlyWhenEditable="0" notificationMessage="" shortTitle="" type="5" name="C'est quoi cette couche?" id="{69743018-6a7b-4668-949b-8388a1984cda}" icon="" action="http://10.34.8.57/geo-ide-base/index.php/data/view?idDataSet=Jdd_75eff35f-70df-4769-b157-aecec4c83b1e">
      <actionScope id="Canvas"/>
      <actionScope id="Feature"/>
      <actionScope id="Field"/>
    </actionsetting>
  </attributeactions>
  <attributetableconfig sortExpression="&quot;Insee&quot;" actionWidgetStyle="dropDown" sortOrder="0">
    <columns>
      <column width="-1" hidden="0" type="field" name="Insee"/>
      <column width="-1" hidden="0" type="field" name="Commune"/>
      <column width="255" hidden="0" type="field" name="Risque"/>
      <column width="-1" hidden="0" type="field" name="DateApprob"/>
      <column width="-1" hidden="0" type="field" name="DateSaisie"/>
      <column width="139" hidden="0" type="field" name="Caracteris"/>
      <column width="353" hidden="0" type="field" name="Reference"/>
      <column width="447" hidden="0" type="field" name="Dossier"/>
      <column width="115" hidden="0" type="field" name="Source"/>
      <column width="-1" hidden="1" type="actions"/>
      <column width="-1" hidden="0" type="field" name="Id"/>
      <column width="-1" hidden="0" type="field" name="layer"/>
      <column width="-1" hidden="0" type="field" name="path"/>
    </columns>
  </attributetableconfig>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <editform tolerant="1">.</editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath>.</editforminitfilepath>
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
    <field editable="1" name="Caracteris"/>
    <field editable="1" name="Commune"/>
    <field editable="1" name="DateApprob"/>
    <field editable="1" name="DateSaisie"/>
    <field editable="1" name="Dossier"/>
    <field editable="1" name="Id"/>
    <field editable="1" name="Insee"/>
    <field editable="1" name="Reference"/>
    <field editable="1" name="Risque"/>
    <field editable="1" name="Source"/>
    <field editable="1" name="layer"/>
    <field editable="1" name="path"/>
  </editable>
  <labelOnTop>
    <field labelOnTop="0" name="Caracteris"/>
    <field labelOnTop="0" name="Commune"/>
    <field labelOnTop="0" name="DateApprob"/>
    <field labelOnTop="0" name="DateSaisie"/>
    <field labelOnTop="0" name="Dossier"/>
    <field labelOnTop="0" name="Id"/>
    <field labelOnTop="0" name="Insee"/>
    <field labelOnTop="0" name="Reference"/>
    <field labelOnTop="0" name="Risque"/>
    <field labelOnTop="0" name="Source"/>
    <field labelOnTop="0" name="layer"/>
    <field labelOnTop="0" name="path"/>
  </labelOnTop>
  <widgets/>
  <previewExpression>Insee</previewExpression>
  <mapTip>CodeCommune</mapTip>
  <layerGeometryType>2</layerGeometryType>
</qgis>

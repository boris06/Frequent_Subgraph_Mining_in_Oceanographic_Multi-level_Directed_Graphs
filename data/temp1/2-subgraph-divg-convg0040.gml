<?xml version="1.0" encoding="UTF-8"?>
<graphml xmlns="http://graphml.graphdrawing.org/xmlns"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://graphml.graphdrawing.org/xmlns
         http://graphml.graphdrawing.org/xmlns/1.0/graphml.xsd">
<!-- Created by igraph -->
  <key id="months" for="graph" attr.name="months" attr.type="string"/>
  <key id="support" for="graph" attr.name="support" attr.type="double"/>
  <key id="season" for="graph" attr.name="season" attr.type="string"/>
  <key id="support_season" for="graph" attr.name="support_season" attr.type="string"/>
  <key id="type" for="graph" attr.name="type" attr.type="string"/>
  <key id="name" for="node" attr.name="name" attr.type="string"/>
  <key id="lon_wmc" for="node" attr.name="lon_wmc" attr.type="double"/>
  <key id="lat_wmc" for="node" attr.name="lat_wmc" attr.type="double"/>
  <key id="attribute" for="edge" attr.name="attribute" attr.type="string"/>
  <key id="weight" for="edge" attr.name="weight" attr.type="double"/>
  <graph id="G" edgedefault="directed">
    <data key="months">8, 9, 14, 16, 18, 21, 26, 28, 30, 34, 35, 43, 48, 50, 54, 57, 58, 59, 60, 62, 63, 75, 81, 82, 84, 88, 93, 95, 96, 99, 101, 106, 107, 108, 110, 118, 119, 120, 123, 130, 131, 132, 141, 142, 144, 147</data>
    <data key="support">46</data>
    <data key="season">summer</data>
    <data key="support_season">13, 4, 15, 14</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A520</data>
      <data key="lon_wmc">19.0248</data>
      <data key="lat_wmc">40.4671</data>
    </node>
    <node id="n1">
      <data key="name">A521</data>
      <data key="lon_wmc">19.0476</data>
      <data key="lat_wmc">40.9717</data>
    </node>
    <node id="n2">
      <data key="name">A496</data>
      <data key="lon_wmc">18.4404</data>
      <data key="lat_wmc">40.5156</data>
    </node>
    <edge source="n0" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">1</data>
    </edge>
  </graph>
</graphml>

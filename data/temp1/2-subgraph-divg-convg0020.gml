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
    <data key="months">6, 9, 11, 12, 18, 24, 25, 30, 33, 43, 46, 47, 48, 49, 66, 68, 72, 78, 79, 83, 90, 92, 93, 94, 96, 102, 106, 107, 108, 114, 118, 119, 120, 130, 131, 132, 135, 143, 144, 151</data>
    <data key="support">40</data>
    <data key="season">autumn</data>
    <data key="support_season">3, 8, 13, 16</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A428</data>
      <data key="lon_wmc">16.2871</data>
      <data key="lat_wmc">43.0707</data>
    </node>
    <node id="n1">
      <data key="name">A404</data>
      <data key="lon_wmc">15.5938</data>
      <data key="lat_wmc">43.0938</data>
    </node>
    <node id="n2">
      <data key="name">A427</data>
      <data key="lon_wmc">16.3125</data>
      <data key="lat_wmc">42.5625</data>
    </node>
    <edge source="n2" target="n0">
      <data key="attribute">weight</data>
      <data key="weight">2</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

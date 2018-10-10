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
    <data key="months">12, 13, 16, 20, 22, 25, 26, 29, 30, 31, 32, 33, 34, 35, 36, 48, 49, 56, 60, 61, 68, 73, 74, 77, 85, 97, 99, 103, 105, 111, 116, 117, 120, 123, 132, 133, 140, 143, 145, 146, 147</data>
    <data key="support">41</data>
    <data key="season">winter</data>
    <data key="support_season">17, 3, 13, 8</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A356</data>
      <data key="lon_wmc">14.3188</data>
      <data key="lat_wmc">42.6375</data>
    </node>
    <node id="n1">
      <data key="name">A379</data>
      <data key="lon_wmc">14.9063</data>
      <data key="lat_wmc">42.5625</data>
    </node>
    <node id="n2">
      <data key="name">A380</data>
      <data key="lon_wmc">14.9063</data>
      <data key="lat_wmc">43.0938</data>
    </node>
    <edge source="n0" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

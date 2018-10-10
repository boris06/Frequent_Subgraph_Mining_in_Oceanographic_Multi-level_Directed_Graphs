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
    <data key="months">9, 12, 16, 17, 18, 24, 26, 28, 29, 31, 36, 38, 43, 44, 45, 49, 53, 54, 60, 62, 66, 69, 72, 73, 76, 77, 78, 85, 89, 91, 98, 100, 108, 111, 112, 122, 123, 124, 129, 131, 132, 138, 143, 144, 149</data>
    <data key="support">45</data>
    <data key="season">winter</data>
    <data key="support_season">16, 11, 8, 10</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A428</data>
      <data key="lon_wmc">16.2871</data>
      <data key="lat_wmc">43.0707</data>
    </node>
    <node id="n1">
      <data key="name">A405</data>
      <data key="lon_wmc">15.5676</data>
      <data key="lat_wmc">43.5498</data>
    </node>
    <node id="n2">
      <data key="name">A429</data>
      <data key="lon_wmc">16.075</data>
      <data key="lat_wmc">43.3875</data>
    </node>
    <edge source="n0" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">2</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

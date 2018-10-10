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
    <data key="months">6, 7, 12, 18, 25, 26, 29, 30, 31, 32, 33, 36, 41, 42, 44, 45, 47, 55, 56, 57, 59, 60, 61, 65, 66, 67, 68, 69, 70, 71, 73, 76, 77, 78, 79, 80, 81, 84, 85, 89, 90, 91, 92, 95, 97, 102, 108, 112, 113, 114, 115, 118, 119, 120, 121, 129, 131, 132, 137, 139, 143, 145</data>
    <data key="support">62</data>
    <data key="season">summer</data>
    <data key="support_season">10, 16, 22, 14</data>
    <data key="type">divg</data>
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
      <data key="name">A357</data>
      <data key="lon_wmc">14.2056</data>
      <data key="lat_wmc">43.1024</data>
    </node>
    <edge source="n2" target="n0">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

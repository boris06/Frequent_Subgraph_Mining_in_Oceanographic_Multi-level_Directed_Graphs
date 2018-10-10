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
    <data key="months">7, 9, 10, 11, 12, 19, 20, 22, 25, 26, 29, 30, 31, 32, 33, 34, 35, 36, 41, 42, 43, 44, 45, 46, 47, 56, 57, 58, 59, 60, 61, 65, 66, 67, 68, 69, 70, 72, 73, 77, 79, 80, 81, 82, 83, 84, 85, 89, 90, 91, 92, 94, 95, 96, 97, 102, 105, 107, 108, 114, 115, 118, 119, 120, 129, 131, 132, 139, 143, 145</data>
    <data key="support">70</data>
    <data key="season">summer</data>
    <data key="support_season">7, 11, 33, 19</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A357</data>
      <data key="lon_wmc">14.2056</data>
      <data key="lat_wmc">43.1024</data>
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

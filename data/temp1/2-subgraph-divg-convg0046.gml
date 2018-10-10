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
    <data key="months">5, 6, 9, 11, 18, 19, 24, 25, 26, 28, 30, 34, 36, 39, 40, 43, 44, 45, 49, 53, 60, 61, 62, 66, 70, 73, 74, 75, 76, 79, 81, 84, 89, 90, 92, 93, 94, 95, 97, 102, 113, 114, 115, 119, 127, 129, 130, 131, 139, 140, 142, 150, 151</data>
    <data key="support">53</data>
    <data key="season">summer</data>
    <data key="support_season">13, 12, 20, 8</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A311</data>
      <data key="lon_wmc">12.859</data>
      <data key="lat_wmc">44.1841</data>
    </node>
    <node id="n1">
      <data key="name">A335</data>
      <data key="lon_wmc">13.5</data>
      <data key="lat_wmc">44.125</data>
    </node>
    <node id="n2">
      <data key="name">A312</data>
      <data key="lon_wmc">12.8161</data>
      <data key="lat_wmc">44.6537</data>
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

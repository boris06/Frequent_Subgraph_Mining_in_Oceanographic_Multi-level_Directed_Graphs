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
    <data key="months">1, 6, 7, 10, 11, 19, 32, 37, 39, 43, 44, 45, 53, 67, 68, 77, 78, 79, 82, 83, 90, 91, 94, 95, 101, 102, 114, 115, 116, 119, 126, 129, 130, 131, 132, 139, 141, 142, 151, 152</data>
    <data key="support">40</data>
    <data key="season">summer</data>
    <data key="support_season">3, 9, 22, 6</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A381</data>
      <data key="lon_wmc">14.9026</data>
      <data key="lat_wmc">43.5914</data>
    </node>
    <node id="n1">
      <data key="name">A358</data>
      <data key="lon_wmc">14.1875</data>
      <data key="lat_wmc">43.5938</data>
    </node>
    <node id="n2">
      <data key="name">A335</data>
      <data key="lon_wmc">13.5</data>
      <data key="lat_wmc">44.125</data>
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

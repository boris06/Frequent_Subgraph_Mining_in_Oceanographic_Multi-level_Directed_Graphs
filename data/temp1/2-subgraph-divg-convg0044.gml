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
    <data key="months">3, 9, 13, 18, 20, 24, 26, 29, 31, 32, 36, 38, 39, 40, 41, 43, 66, 70, 75, 79, 91, 95, 96, 97, 98, 100, 104, 110, 111, 112, 116, 117, 121, 125, 126, 127, 128, 131, 133, 136, 142, 143, 144, 146, 147, 152</data>
    <data key="support">46</data>
    <data key="season">winter</data>
    <data key="support_season">18, 6, 15, 7</data>
    <data key="type">convg</data>
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
      <data key="name">A359</data>
      <data key="lon_wmc">14.1875</data>
      <data key="lat_wmc">44.125</data>
    </node>
    <edge source="n0" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">2</data>
    </edge>
  </graph>
</graphml>

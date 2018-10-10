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
    <data key="months">2, 6, 7, 8, 10, 11, 12, 17, 19, 21, 22, 23, 25, 30, 33, 34, 35, 44, 45, 49, 53, 58, 62, 63, 64, 65, 68, 72, 73, 77, 78, 80, 81, 82, 83, 84, 85, 86, 99, 105, 106, 107, 108, 115, 118, 119, 120, 122, 129, 132, 134, 137, 138, 139, 141, 145</data>
    <data key="support">56</data>
    <data key="season">summer</data>
    <data key="support_season">13, 9, 22, 12</data>
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
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

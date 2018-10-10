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
    <data key="months">1, 8, 9, 12, 13, 15, 16, 17, 22, 23, 24, 25, 34, 37, 38, 45, 46, 48, 57, 62, 68, 73, 74, 75, 76, 80, 87, 93, 95, 98, 99, 100, 104, 120, 121, 122, 123, 124, 132, 133, 136, 137, 141, 144, 146, 147, 149</data>
    <data key="support">47</data>
    <data key="season">winter</data>
    <data key="support_season">24, 3, 12, 8</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A474</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n1">
      <data key="name">A498</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n2">
      <data key="name">A497</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">40.9688</data>
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

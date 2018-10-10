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
    <data key="months">5, 9, 12, 13, 14, 15, 16, 17, 20, 24, 25, 26, 28, 29, 34, 35, 37, 38, 41, 46, 47, 50, 51, 57, 60, 61, 62, 63, 69, 73, 74, 75, 81, 82, 89, 93, 97, 98, 99, 100, 105, 108, 114, 115, 117, 118, 120, 121, 122, 123, 124, 130, 132, 133, 134, 135, 142, 143, 144, 146, 147, 149, 155</data>
    <data key="support">63</data>
    <data key="season">winter</data>
    <data key="support_season">30, 7, 15, 11</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n1">
      <data key="name">A475</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n2">
      <data key="name">A498</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">41.5</data>
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

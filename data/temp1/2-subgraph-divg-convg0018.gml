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
    <data key="months">4, 5, 6, 8, 9, 10, 12, 14, 16, 17, 20, 24, 25, 26, 27, 28, 29, 34, 36, 37, 38, 39, 41, 46, 49, 51, 57, 58, 59, 60, 61, 65, 66, 67, 68, 69, 70, 72, 73, 74, 75, 76, 77, 78, 81, 88, 89, 93, 95, 96, 98, 99, 100, 101, 104, 105, 108, 111, 114, 117, 120, 121, 123, 124, 125, 126, 129, 130, 131, 132, 133, 135, 136, 137, 138, 141, 142, 143, 144, 145, 147, 149, 155</data>
    <data key="support">83</data>
    <data key="season">winter</data>
    <data key="support_season">30, 17, 21, 15</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A522</data>
      <data key="lon_wmc">19.0625</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n1">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n2">
      <data key="name">A498</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">41.5</data>
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

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
    <data key="months">2, 4, 5, 6, 8, 12, 13, 17, 21, 24, 25, 26, 27, 28, 31, 34, 36, 38, 39, 40, 41, 42, 44, 46, 47, 49, 59, 60, 63, 64, 65, 66, 69, 70, 72, 73, 76, 81, 82, 83, 85, 87, 88, 93, 94, 95, 96, 99, 100, 101, 102, 104, 106, 107, 109, 111, 120, 121, 122, 123, 124, 125, 128, 130, 131, 132, 133, 134, 135, 136, 137, 138, 141, 143, 144, 145, 147, 155</data>
    <data key="support">78</data>
    <data key="season">winter</data>
    <data key="support_season">32, 12, 17, 17</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n1">
      <data key="name">A476</data>
      <data key="lon_wmc">17.6748</data>
      <data key="lat_wmc">42.4932</data>
    </node>
    <node id="n2">
      <data key="name">A500</data>
      <data key="lon_wmc">18.2795</data>
      <data key="lat_wmc">42.408</data>
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

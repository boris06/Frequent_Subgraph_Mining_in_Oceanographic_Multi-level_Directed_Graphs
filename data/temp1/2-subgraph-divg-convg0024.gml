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
    <data key="months">1, 8, 9, 10, 12, 13, 19, 20, 21, 22, 24, 29, 30, 31, 32, 33, 34, 35, 36, 41, 42, 44, 45, 46, 47, 48, 58, 59, 60, 61, 63, 68, 69, 70, 72, 73, 76, 78, 79, 80, 82, 83, 84, 93, 95, 96, 102, 103, 106, 120, 121, 127, 132, 137, 138, 140, 141, 145, 146</data>
    <data key="support">59</data>
    <data key="season">summer</data>
    <data key="support_season">9, 8, 27, 15</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A426</data>
      <data key="lon_wmc">16.3365</data>
      <data key="lat_wmc">42.0553</data>
    </node>
    <node id="n1">
      <data key="name">A450</data>
      <data key="lon_wmc">17</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n2">
      <data key="name">A451</data>
      <data key="lon_wmc">17</data>
      <data key="lat_wmc">42.0313</data>
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

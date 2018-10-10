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
    <data key="months">9, 10, 18, 20, 21, 34, 35, 45, 46, 51, 55, 59, 60, 66, 68, 69, 70, 73, 79, 82, 83, 84, 94, 95, 96, 99, 100, 106, 107, 109, 121, 123, 126, 127, 130, 135, 136, 139, 145, 146, 149</data>
    <data key="support">41</data>
    <data key="season">summer</data>
    <data key="support_season">11, 4, 18, 8</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A425</data>
      <data key="lon_wmc">16.3691</data>
      <data key="lat_wmc">41.5346</data>
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
      <data key="weight">1</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

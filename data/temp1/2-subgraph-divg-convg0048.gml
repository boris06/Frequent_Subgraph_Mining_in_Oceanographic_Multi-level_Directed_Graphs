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
    <data key="months">4, 8, 14, 18, 27, 29, 30, 32, 61, 65, 67, 77, 78, 79, 89, 90, 91, 92, 95, 98, 101, 102, 103, 104, 110, 115, 116, 125, 126, 127, 133, 134, 136, 139, 145, 146, 149, 150, 154</data>
    <data key="support">39</data>
    <data key="season">spring</data>
    <data key="support_season">11, 14, 13, 1</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A449</data>
      <data key="lon_wmc">17.0964</data>
      <data key="lat_wmc">41.1328</data>
    </node>
    <node id="n1">
      <data key="name">A473</data>
      <data key="lon_wmc">17.7131</data>
      <data key="lat_wmc">40.9928</data>
    </node>
    <node id="n2">
      <data key="name">A450</data>
      <data key="lon_wmc">17</data>
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

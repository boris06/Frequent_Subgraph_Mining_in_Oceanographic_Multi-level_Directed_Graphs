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
    <data key="months">4, 13, 14, 17, 18, 19, 20, 21, 29, 35, 36, 37, 41, 43, 44, 45, 48, 59, 60, 66, 69, 71, 72, 80, 92, 101, 107, 111, 114, 115, 121, 123, 135, 138, 140, 142, 146, 147, 148</data>
    <data key="support">39</data>
    <data key="season">summer</data>
    <data key="support_season">11, 8, 12, 8</data>
    <data key="type">convg</data>
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
      <data key="name">A474</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">41.5</data>
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

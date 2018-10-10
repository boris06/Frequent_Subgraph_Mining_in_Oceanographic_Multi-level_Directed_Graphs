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
    <data key="months">3, 11, 13, 14, 19, 22, 25, 27, 28, 35, 36, 37, 44, 45, 48, 65, 68, 69, 70, 71, 72, 73, 82, 90, 93, 96, 97, 98, 102, 103, 107, 110, 119, 120, 121, 129, 131, 136, 137, 138, 141, 144, 145, 147, 150</data>
    <data key="support">45</data>
    <data key="season">winter</data>
    <data key="support_season">15, 6, 12, 12</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A474</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">41.5</data>
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

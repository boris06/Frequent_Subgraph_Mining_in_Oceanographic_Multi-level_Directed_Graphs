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
    <data key="months">5, 13, 14, 15, 16, 17, 19, 22, 26, 27, 28, 35, 37, 44, 45, 46, 48, 50, 51, 56, 72, 73, 74, 90, 96, 97, 98, 99, 102, 103, 107, 110, 111, 113, 120, 121, 122, 123, 124, 132, 135, 136, 138, 147, 150</data>
    <data key="support">45</data>
    <data key="season">winter</data>
    <data key="support_season">24, 7, 7, 7</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A450</data>
      <data key="lon_wmc">17</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n1">
      <data key="name">A474</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n2">
      <data key="name">A475</data>
      <data key="lon_wmc">17.6875</data>
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

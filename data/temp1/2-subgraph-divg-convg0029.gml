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
    <data key="months">6, 9, 12, 13, 20, 25, 29, 30, 31, 32, 34, 35, 36, 41, 42, 43, 44, 57, 58, 61, 68, 69, 72, 73, 78, 80, 82, 89, 91, 93, 102, 103, 106, 113, 116, 117, 121, 127, 128, 132, 137, 138, 140, 141, 154</data>
    <data key="support">45</data>
    <data key="season">summer</data>
    <data key="support_season">5, 11, 24, 5</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A450</data>
      <data key="lon_wmc">17</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n1">
      <data key="name">A425</data>
      <data key="lon_wmc">16.3691</data>
      <data key="lat_wmc">41.5346</data>
    </node>
    <node id="n2">
      <data key="name">A426</data>
      <data key="lon_wmc">16.3365</data>
      <data key="lat_wmc">42.0553</data>
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

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
    <data key="months">4, 6, 7, 8, 9, 11, 12, 13, 14, 18, 19, 20, 24, 25, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 41, 44, 45, 48, 49, 60, 61, 65, 67, 68, 69, 70, 71, 72, 77, 78, 80, 89, 90, 91, 92, 93, 95, 98, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 114, 115, 116, 118, 120, 121, 125, 126, 133, 134, 136, 138, 139, 141, 144, 146, 147, 149, 150, 154</data>
    <data key="support">79</data>
    <data key="season">summer</data>
    <data key="support_season">18, 18, 29, 14</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A450</data>
      <data key="lon_wmc">17</data>
      <data key="lat_wmc">41.5</data>
    </node>
    <node id="n1">
      <data key="name">A473</data>
      <data key="lon_wmc">17.7131</data>
      <data key="lat_wmc">40.9928</data>
    </node>
    <node id="n2">
      <data key="name">A449</data>
      <data key="lon_wmc">17.0964</data>
      <data key="lat_wmc">41.1328</data>
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

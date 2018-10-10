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
    <data key="months">6, 7, 8, 10, 11, 13, 14, 17, 18, 19, 20, 21, 22, 23, 30, 31, 32, 34, 35, 36, 37, 42, 43, 44, 45, 48, 53, 54, 57, 59, 60, 68, 69, 77, 78, 79, 81, 82, 83, 90, 91, 92, 94, 95, 96, 97, 103, 104, 105, 106, 114, 116, 117, 119, 120, 121, 127, 128, 129, 130, 131, 132, 133, 139, 143, 144</data>
    <data key="support">66</data>
    <data key="season">summer</data>
    <data key="support_season">6, 11, 33, 16</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A471</data>
      <data key="lon_wmc">17.6715</data>
      <data key="lat_wmc">39.9282</data>
    </node>
    <node id="n1">
      <data key="name">A447</data>
      <data key="lon_wmc">17.0064</data>
      <data key="lat_wmc">39.933</data>
    </node>
    <node id="n2">
      <data key="name">A448</data>
      <data key="lon_wmc">17.056</data>
      <data key="lat_wmc">40.3276</data>
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

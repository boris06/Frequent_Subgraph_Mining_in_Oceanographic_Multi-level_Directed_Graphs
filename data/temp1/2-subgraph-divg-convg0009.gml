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
    <data key="months">8, 18, 19, 27, 29, 30, 32, 33, 34, 35, 41, 42, 43, 45, 49, 50, 51, 58, 59, 60, 64, 65, 66, 68, 72, 76, 77, 78, 80, 82, 83, 84, 89, 91, 93, 96, 98, 103, 105, 106, 107, 108, 114, 120, 121, 122, 123, 132, 143, 144, 145, 146, 147</data>
    <data key="support">53</data>
    <data key="season">summer</data>
    <data key="support_season">13, 11, 16, 13</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A405</data>
      <data key="lon_wmc">15.5676</data>
      <data key="lat_wmc">43.5498</data>
    </node>
    <node id="n1">
      <data key="name">A380</data>
      <data key="lon_wmc">14.9063</data>
      <data key="lat_wmc">43.0938</data>
    </node>
    <node id="n2">
      <data key="name">A404</data>
      <data key="lon_wmc">15.5938</data>
      <data key="lat_wmc">43.0938</data>
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

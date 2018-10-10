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
    <data key="months">10, 12, 17, 18, 19, 22, 27, 28, 29, 34, 35, 36, 37, 38, 40, 43, 45, 47, 49, 50, 52, 58, 60, 63, 64, 66, 68, 70, 71, 72, 75, 76, 77, 78, 82, 83, 84, 87, 89, 91, 93, 96, 98, 101, 107, 108, 111, 112, 122, 123, 124, 125, 126, 132, 134, 135, 141, 143, 144, 145</data>
    <data key="support">60</data>
    <data key="season">winter</data>
    <data key="support_season">22, 10, 13, 15</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A429</data>
      <data key="lon_wmc">16.075</data>
      <data key="lat_wmc">43.3875</data>
    </node>
    <node id="n1">
      <data key="name">A405</data>
      <data key="lon_wmc">15.5676</data>
      <data key="lat_wmc">43.5498</data>
    </node>
    <node id="n2">
      <data key="name">A404</data>
      <data key="lon_wmc">15.5938</data>
      <data key="lat_wmc">43.0938</data>
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

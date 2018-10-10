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
    <data key="months">6, 9, 10, 11, 12, 20, 40, 43, 44, 45, 46, 57, 59, 60, 62, 66, 69, 71, 76, 77, 78, 79, 80, 86, 88, 89, 90, 91, 94, 95, 101, 106, 113, 114, 115, 124, 127, 129, 131, 132, 136, 137, 138, 139, 140</data>
    <data key="support">45</data>
    <data key="season">summer</data>
    <data key="support_season">7, 11, 19, 8</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A358</data>
      <data key="lon_wmc">14.1875</data>
      <data key="lat_wmc">43.5938</data>
    </node>
    <node id="n1">
      <data key="name">A357</data>
      <data key="lon_wmc">14.2056</data>
      <data key="lat_wmc">43.1024</data>
    </node>
    <node id="n2">
      <data key="name">A334</data>
      <data key="lon_wmc">13.6011</data>
      <data key="lat_wmc">43.6715</data>
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

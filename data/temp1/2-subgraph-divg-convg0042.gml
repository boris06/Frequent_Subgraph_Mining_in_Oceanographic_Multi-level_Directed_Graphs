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
    <data key="months">6, 7, 33, 34, 35, 36, 41, 42, 57, 58, 59, 60, 65, 66, 67, 68, 80, 81, 83, 84, 89, 90, 91, 94, 95, 96, 101, 102, 104, 105, 120, 127, 129, 141, 144, 149, 151, 152, 153</data>
    <data key="support">39</data>
    <data key="season">summer</data>
    <data key="support_season">0, 10, 19, 10</data>
    <data key="type">convg</data>
    <node id="n0">
      <data key="name">A378</data>
      <data key="lon_wmc">15.0042</data>
      <data key="lat_wmc">42.1389</data>
    </node>
    <node id="n1">
      <data key="name">A426</data>
      <data key="lon_wmc">16.3365</data>
      <data key="lat_wmc">42.0553</data>
    </node>
    <node id="n2">
      <data key="name">A402</data>
      <data key="lon_wmc">15.5938</data>
      <data key="lat_wmc">42.0938</data>
    </node>
    <edge source="n0" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">1</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

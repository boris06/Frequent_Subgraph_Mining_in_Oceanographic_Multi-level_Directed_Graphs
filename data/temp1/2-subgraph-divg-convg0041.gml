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
    <data key="months">1, 3, 5, 12, 13, 15, 24, 26, 28, 31, 37, 42, 48, 49, 59, 62, 63, 69, 70, 75, 77, 83, 84, 88, 90, 96, 97, 100, 106, 108, 111, 114, 117, 118, 119, 123, 124, 131, 132, 134, 135, 136, 138, 141, 142, 143, 144, 145, 146</data>
    <data key="support">49</data>
    <data key="season">winter</data>
    <data key="support_season">22, 6, 8, 13</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n1">
      <data key="name">A500</data>
      <data key="lon_wmc">18.2795</data>
      <data key="lat_wmc">42.408</data>
    </node>
    <node id="n2">
      <data key="name">A523</data>
      <data key="lon_wmc">18.9438</data>
      <data key="lat_wmc">41.9787</data>
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
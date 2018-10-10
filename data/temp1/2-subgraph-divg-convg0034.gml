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
    <data key="months">1, 4, 5, 12, 14, 17, 25, 26, 27, 28, 29, 30, 33, 37, 38, 41, 42, 44, 45, 46, 60, 65, 66, 67, 69, 75, 76, 83, 84, 88, 89, 93, 96, 98, 108, 109, 111, 112, 117, 120, 121, 123, 124, 131, 132, 133, 135, 136, 137, 138, 141, 142, 143, 145, 155</data>
    <data key="support">55</data>
    <data key="season">winter</data>
    <data key="support_season">23, 11, 10, 11</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A523</data>
      <data key="lon_wmc">18.9438</data>
      <data key="lat_wmc">41.9787</data>
    </node>
    <node id="n1">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n2">
      <data key="name">A522</data>
      <data key="lon_wmc">19.0625</data>
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

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
    <data key="months">2, 3, 5, 9, 12, 14, 30, 34, 36, 37, 38, 41, 43, 49, 50, 51, 63, 65, 73, 74, 76, 77, 89, 91, 95, 97, 99, 100, 101, 102, 108, 109, 113, 120, 121, 123, 125, 145, 146, 155</data>
    <data key="support">40</data>
    <data key="season">winter</data>
    <data key="support_season">20, 10, 4, 6</data>
    <data key="type">divg</data>
    <node id="n0">
      <data key="name">A500</data>
      <data key="lon_wmc">18.2795</data>
      <data key="lat_wmc">42.408</data>
    </node>
    <node id="n1">
      <data key="name">A475</data>
      <data key="lon_wmc">17.6875</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <node id="n2">
      <data key="name">A499</data>
      <data key="lon_wmc">18.375</data>
      <data key="lat_wmc">42.0313</data>
    </node>
    <edge source="n2" target="n0">
      <data key="attribute">weight</data>
      <data key="weight">2</data>
    </edge>
    <edge source="n2" target="n1">
      <data key="attribute">weight</data>
      <data key="weight">3</data>
    </edge>
  </graph>
</graphml>

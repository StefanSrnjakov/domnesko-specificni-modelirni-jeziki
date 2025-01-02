<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f0d5cd92-f504-48d1-b86e-ed64e10a8d4e(ReykilLanguage.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="3ba2139d-18a1-4caa-99b1-d518013c442f" name="ReykilLanguage" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="3ba2139d-18a1-4caa-99b1-d518013c442f" name="ReykilLanguage">
      <concept id="7264919180947442331" name="ReykilLanguage.structure.RApi" flags="ng" index="2qAmsr">
        <property id="7264919180947442332" name="base" index="2qAmss" />
        <child id="7264919180947442334" name="endPointList" index="2qAmsu" />
      </concept>
      <concept id="7264919180947442337" name="ReykilLanguage.structure.REndPoint" flags="ng" index="2qAmsx">
        <property id="7264919180947442338" name="name" index="2qAmsy" />
        <property id="7264919180947442340" name="url" index="2qAms$" />
      </concept>
      <concept id="7264919180947228429" name="ReykilLanguage.structure.ReykillDSL" flags="ng" index="2qAyEd">
        <property id="7264919180947228433" name="dsl_name" index="2qAyEh" />
        <property id="7264919180947228441" name="title" index="2qAyEp" />
        <property id="7264919180947228444" name="description" index="2qAyEs" />
        <property id="7264919180947228448" name="port" index="2qAyEw" />
        <child id="7264919180947442353" name="api" index="2qAmsL" />
        <child id="7264919180947228454" name="listOfComponents" index="2qAyEA" />
        <child id="1180691636451215685" name="renders" index="2V$q6c" />
      </concept>
      <concept id="7264919180947228458" name="ReykilLanguage.structure.RComponent" flags="ng" index="2qAyEE">
        <property id="7264919180947228462" name="url" index="2qAyEI" />
      </concept>
      <concept id="1180691636451029919" name="ReykilLanguage.structure.ComponentRender" flags="ng" index="2V$DHm">
        <reference id="3287138861566333602" name="cName" index="36_l72" />
        <child id="3287138861565525808" name="elemRender" index="37ofLg" />
      </concept>
      <concept id="3287138861565676404" name="ReykilLanguage.structure.TitleRender" flags="ng" index="36BOwk">
        <property id="3287138861565676424" name="title" index="36BOzC" />
      </concept>
      <concept id="3287138861565525811" name="ReykilLanguage.structure.ParagraphRender" flags="ng" index="37ofLj">
        <property id="3287138861565525816" name="text" index="37ofLo" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="2qAyEd" id="11yEcAFVUMT">
    <property role="TrG5h" value="MyToDoApp" />
    <property role="2qAyEh" value="NotesApplication" />
    <property role="2qAyEp" value="Notes application" />
    <property role="2qAyEs" value="This is a Notes Application" />
    <property role="2qAyEw" value="4100" />
    <node concept="2qAyEE" id="2QugQ3F4aPC" role="2qAyEA">
      <property role="TrG5h" value="Home" />
      <property role="2qAyEI" value="/" />
    </node>
    <node concept="2qAyEE" id="2QugQ3F4aPE" role="2qAyEA">
      <property role="TrG5h" value="About" />
      <property role="2qAyEI" value="/about" />
    </node>
    <node concept="2qAyEE" id="2QugQ3F4aPH" role="2qAyEA">
      <property role="TrG5h" value="ToDo" />
      <property role="2qAyEI" value="/todo" />
    </node>
    <node concept="2V$DHm" id="2QugQ3F3_1$" role="2V$q6c">
      <ref role="36_l72" node="2QugQ3F4aPC" resolve="Home" />
      <node concept="36BOwk" id="2QugQ3F865g" role="37ofLg">
        <property role="36BOzC" value="Hello to Notes Application" />
      </node>
      <node concept="37ofLj" id="2QugQ3F865m" role="37ofLg">
        <property role="37ofLo" value="This is our main page" />
      </node>
    </node>
    <node concept="2V$DHm" id="2QugQ3F3PEx" role="2V$q6c">
      <ref role="36_l72" node="2QugQ3F4aPE" resolve="About" />
      <node concept="36BOwk" id="2QugQ3F3PEE" role="37ofLg">
        <property role="36BOzC" value="About application" />
      </node>
      <node concept="37ofLj" id="2QugQ3FbLNW" role="37ofLg">
        <property role="37ofLo" value="This application shows TODOs " />
      </node>
    </node>
    <node concept="2V$DHm" id="2QugQ3F3PE_" role="2V$q6c">
      <ref role="36_l72" node="2QugQ3F4aPH" resolve="ToDo" />
      <node concept="36BOwk" id="2QugQ3F865q" role="37ofLg">
        <property role="36BOzC" value="ToDo page" />
      </node>
      <node concept="37ofLj" id="2QugQ3F3PGi" role="37ofLg">
        <property role="37ofLo" value="Table  with all items" />
      </node>
    </node>
    <node concept="2qAmsr" id="11yEcAFVUN3" role="2qAmsL">
      <property role="2qAmss" value="http://localhost:3000/" />
      <node concept="2qAmsx" id="11yEcAFVUN5" role="2qAmsu">
        <property role="2qAmsy" value="items" />
        <property role="2qAms$" value="itmes-todo" />
      </node>
    </node>
  </node>
</model>


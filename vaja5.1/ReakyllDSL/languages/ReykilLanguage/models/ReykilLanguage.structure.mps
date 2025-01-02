<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)">
  <persistence version="9" />
  <languages>
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169125989551" name="jetbrains.mps.lang.structure.structure.InterfaceConceptDeclaration" flags="ig" index="PlHQZ" />
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <property id="241647608299431129" name="propertyId" index="IQ2nx" />
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <property id="241647608299431140" name="linkId" index="IQ2ns" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6jibo3Yi0sd">
    <property role="EcuMT" value="7264919180947228429" />
    <property role="TrG5h" value="ReykillDSL" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="6jibo3Yi0sf" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
    <node concept="1TJgyi" id="6jibo3Yi0sh" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228433" />
      <property role="TrG5h" value="dsl_name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6jibo3Yi0sp" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228441" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6jibo3Yi0ss" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228444" />
      <property role="TrG5h" value="description" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6jibo3Yi0sw" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228448" />
      <property role="TrG5h" value="port" />
      <ref role="AX2Wp" to="tpck:fKAQMTA" resolve="integer" />
    </node>
    <node concept="1TJgyj" id="6jibo3Yi0sA" role="1TKVEi">
      <property role="IQ2ns" value="7264919180947228454" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="listOfComponents" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6jibo3Yi0sE" resolve="RComponent" />
    </node>
    <node concept="1TJgyj" id="6jibo3YiOEL" role="1TKVEi">
      <property role="IQ2ns" value="7264919180947442353" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="api" />
      <ref role="20lvS9" node="6jibo3YiOEr" resolve="RApi" />
    </node>
    <node concept="1TJgyj" id="11yEcAFWK_5" role="1TKVEi">
      <property role="IQ2ns" value="1180691636451215685" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="renders" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="11yEcAFW3ev" resolve="ComponentRender" />
    </node>
  </node>
  <node concept="1TIwiD" id="6jibo3Yi0sE">
    <property role="EcuMT" value="7264919180947228458" />
    <property role="TrG5h" value="RComponent" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6jibo3Yi0sI" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228462" />
      <property role="TrG5h" value="url" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6jibo3Yi0sM" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947228466" />
      <property role="TrG5h" value="menu" />
      <ref role="AX2Wp" to="tpck:fKAQMTB" resolve="boolean" />
    </node>
    <node concept="PrWs8" id="2QugQ3F3PGB" role="PzmwI">
      <ref role="PrY4T" to="tpck:h0TrEE$" resolve="INamedConcept" />
    </node>
  </node>
  <node concept="1TIwiD" id="6jibo3YiOEr">
    <property role="EcuMT" value="7264919180947442331" />
    <property role="TrG5h" value="RApi" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6jibo3YiOEs" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947442332" />
      <property role="TrG5h" value="base" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="6jibo3YiOEu" role="1TKVEi">
      <property role="IQ2ns" value="7264919180947442334" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="endPointList" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="6jibo3YiOEx" resolve="REndPoint" />
    </node>
  </node>
  <node concept="1TIwiD" id="6jibo3YiOEx">
    <property role="EcuMT" value="7264919180947442337" />
    <property role="TrG5h" value="REndPoint" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyi" id="6jibo3YiOEy" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947442338" />
      <property role="TrG5h" value="name" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyi" id="6jibo3YiOE$" role="1TKVEl">
      <property role="IQ2nx" value="7264919180947442340" />
      <property role="TrG5h" value="url" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="11yEcAFW3ev">
    <property role="EcuMT" value="1180691636451029919" />
    <property role="TrG5h" value="ComponentRender" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="1TJgyj" id="2QugQ3EZFWK" role="1TKVEi">
      <property role="IQ2ns" value="3287138861565525808" />
      <property role="20lmBu" value="fLJjDmT/aggregation" />
      <property role="20kJfa" value="elemRender" />
      <property role="20lbJX" value="fLJekj5/_0__n" />
      <ref role="20lvS9" node="2QugQ3EZFWI" resolve="IElementRender" />
    </node>
    <node concept="1TJgyj" id="2QugQ3F2Lay" role="1TKVEi">
      <property role="IQ2ns" value="3287138861566333602" />
      <property role="20kJfa" value="cName" />
      <property role="20lbJX" value="fLJekj4/_1" />
      <ref role="20lvS9" node="6jibo3Yi0sE" resolve="RComponent" />
    </node>
  </node>
  <node concept="PlHQZ" id="2QugQ3EZFWI">
    <property role="EcuMT" value="3287138861565525806" />
    <property role="TrG5h" value="IElementRender" />
  </node>
  <node concept="1TIwiD" id="2QugQ3EZFWN">
    <property role="EcuMT" value="3287138861565525811" />
    <property role="TrG5h" value="ParagraphRender" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2QugQ3EZFWP" role="PzmwI">
      <ref role="PrY4T" node="2QugQ3EZFWI" resolve="IElementRender" />
    </node>
    <node concept="1TJgyi" id="2QugQ3EZFWS" role="1TKVEl">
      <property role="IQ2nx" value="3287138861565525816" />
      <property role="TrG5h" value="text" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
  <node concept="1TIwiD" id="2QugQ3F0gHO">
    <property role="EcuMT" value="3287138861565676404" />
    <property role="TrG5h" value="TitleRender" />
    <ref role="1TJDcQ" to="tpck:gw2VY9q" resolve="BaseConcept" />
    <node concept="PrWs8" id="2QugQ3F0gHP" role="PzmwI">
      <ref role="PrY4T" node="2QugQ3EZFWI" resolve="IElementRender" />
    </node>
    <node concept="1TJgyi" id="2QugQ3F0gI8" role="1TKVEl">
      <property role="IQ2nx" value="3287138861565676424" />
      <property role="TrG5h" value="title" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
  </node>
</model>


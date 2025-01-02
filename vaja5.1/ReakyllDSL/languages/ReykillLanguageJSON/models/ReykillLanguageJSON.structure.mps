<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:4347da0c-2208-4074-8209-1ce4b06368fc(ReykillLanguageJSON.structure)">
  <persistence version="9" />
  <languages>
    <use id="3ba2139d-18a1-4caa-99b1-d518013c442f" name="ReykilLanguage" version="0" />
    <devkit ref="78434eb8-b0e5-444b-850d-e7c4ad2da9ab(jetbrains.mps.devkit.aspect.structure)" />
  </languages>
  <imports>
    <import index="vbi9" ref="3ba2139d-18a1-4caa-99b1-d518013c442f/i:f010101(ReykilLanguage/ReykilLanguage@descriptor)" />
    <import index="ir0d" ref="r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="6714410169261853888" name="conceptId" index="EcuMT" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <property id="1096454100552" name="rootable" index="19KtqR" />
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="2QugQ3Fayx_">
    <property role="EcuMT" value="3287138861568370789" />
    <property role="TrG5h" value="JSONReykill" />
    <property role="19KtqR" value="true" />
    <ref role="1TJDcQ" to="ir0d:6jibo3Yi0sd" resolve="ReykillDSL" />
  </node>
</model>


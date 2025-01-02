<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f8c15713-5b54-4338-b7f7-7d71d20309d9(LAFLang.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fa73d85a-ac7f-447b-846c-fcdc41caa600(jetbrains.mps.devkit.aspect.textgen)" />
  </languages>
  <imports>
    <import index="jjss" ref="r:b1a94a14-22d3-46bf-a434-442a7523a97d(LAFLang.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305557638" name="jetbrains.mps.lang.textGen.structure.ConstantStringAppendPart" flags="ng" index="la8eA">
        <property id="1237305576108" name="value" index="lacIc" />
      </concept>
      <concept id="1237306079178" name="jetbrains.mps.lang.textGen.structure.AppendOperation" flags="nn" index="lc7rE">
        <child id="1237306115446" name="part" index="lcghm" />
      </concept>
      <concept id="1233670071145" name="jetbrains.mps.lang.textGen.structure.ConceptTextGenDeclaration" flags="ig" index="WtQ9Q">
        <reference id="1233670257997" name="conceptDeclaration" index="WuzLi" />
        <child id="45307784116711884" name="filename" index="29tGrW" />
        <child id="1233749296504" name="textGenBlock" index="11c4hB" />
        <child id="7991274449437422201" name="extension" index="33IsuW" />
        <child id="7844911294523354450" name="filePath" index="1Knhgg" />
      </concept>
      <concept id="1233748055915" name="jetbrains.mps.lang.textGen.structure.NodeParameter" flags="nn" index="117lpO" />
      <concept id="1233749247888" name="jetbrains.mps.lang.textGen.structure.GenerateTextDeclaration" flags="in" index="11bSqf" />
      <concept id="7844911294523361055" name="jetbrains.mps.lang.textGen.structure.FilePathQuery" flags="ig" index="1KnnTt" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="2daCR7bKVqH">
    <ref role="WuzLi" to="jjss:1MPk1Sv$rrs" resolve="AppDescription" />
    <node concept="29tfMY" id="2daCR7bKVqI" role="29tGrW">
      <node concept="3clFbS" id="2daCR7bKVqJ" role="2VODD2">
        <node concept="3clFbF" id="2daCR7bKVET" role="3cqZAp">
          <node concept="2OqwBi" id="2daCR7bKW51" role="3clFbG">
            <node concept="117lpO" id="2daCR7bKVES" role="2Oq$k0" />
            <node concept="3TrcHB" id="2daCR7bKXSS" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="2daCR7bKYiM" role="1Knhgg">
      <node concept="3clFbS" id="2daCR7bKYiO" role="2VODD2">
        <node concept="3clFbF" id="2daCR7bKYjX" role="3cqZAp">
          <node concept="Xl_RD" id="2daCR7bKYjW" role="3clFbG">
            <property role="Xl_RC" value="myApp/" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="2daCR7bKYms" role="33IsuW">
      <node concept="3clFbS" id="2daCR7bKYmt" role="2VODD2">
        <node concept="3clFbF" id="2daCR7bKYnF" role="3cqZAp">
          <node concept="Xl_RD" id="2daCR7bKYnE" role="3clFbG">
            <property role="Xl_RC" value="ts" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2daCR7bKYVv" role="11c4hB">
      <node concept="3clFbS" id="2daCR7bKYVw" role="2VODD2">
        <node concept="lc7rE" id="2daCR7bKZeT" role="3cqZAp">
          <node concept="la8eA" id="2daCR7bKZfj" role="lcghm">
            <property role="lacIc" value="import react from react" />
          </node>
        </node>
      </node>
    </node>
  </node>
</model>


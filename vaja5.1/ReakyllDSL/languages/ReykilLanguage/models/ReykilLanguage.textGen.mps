<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:bf2bc5b5-b6a6-4700-b3a6-32fb49780966(ReykilLanguage.textGen)">
  <persistence version="9" />
  <languages>
    <use id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen" version="1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ir0d" ref="r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1154032098014" name="jetbrains.mps.baseLanguage.structure.AbstractLoopStatement" flags="nn" index="2LF5Ji">
        <child id="1154032183016" name="body" index="2LFqv$" />
      </concept>
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
      <concept id="1068580123152" name="jetbrains.mps.baseLanguage.structure.EqualsExpression" flags="nn" index="3clFbC" />
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123157" name="jetbrains.mps.baseLanguage.structure.Statement" flags="nn" index="3clFbH" />
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
    </language>
    <language id="b83431fe-5c8f-40bc-8a36-65e25f4dd253" name="jetbrains.mps.lang.textGen">
      <concept id="45307784116571022" name="jetbrains.mps.lang.textGen.structure.FilenameFunction" flags="ig" index="29tfMY" />
      <concept id="8931911391946696733" name="jetbrains.mps.lang.textGen.structure.ExtensionDeclaration" flags="in" index="9MYSb" />
      <concept id="1237305208784" name="jetbrains.mps.lang.textGen.structure.NewLineAppendPart" flags="ng" index="l8MVK" />
      <concept id="1237305334312" name="jetbrains.mps.lang.textGen.structure.NodeAppendPart" flags="ng" index="l9hG8">
        <child id="1237305790512" name="value" index="lb14g" />
      </concept>
      <concept id="1237305491868" name="jetbrains.mps.lang.textGen.structure.CollectionAppendPart" flags="ng" index="l9S2W">
        <child id="1237305945551" name="list" index="lbANJ" />
      </concept>
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
      <concept id="1233920501193" name="jetbrains.mps.lang.textGen.structure.IndentBufferOperation" flags="nn" index="1bpajm" />
      <concept id="1236188139846" name="jetbrains.mps.lang.textGen.structure.WithIndentOperation" flags="nn" index="3izx1p">
        <child id="1236188238861" name="list" index="3izTki" />
      </concept>
      <concept id="7844911294523361055" name="jetbrains.mps.lang.textGen.structure.FilePathQuery" flags="ig" index="1KnnTt" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1143234257716" name="jetbrains.mps.lang.smodel.structure.Node_GetModelOperation" flags="nn" index="I4A8Y" />
      <concept id="1171315804604" name="jetbrains.mps.lang.smodel.structure.Model_RootsOperation" flags="nn" index="2RRcyG">
        <child id="6750920497477046361" name="conceptArgument" index="3MHsoP" />
      </concept>
      <concept id="3562215692195599741" name="jetbrains.mps.lang.smodel.structure.SLinkImplicitSelect" flags="nn" index="13MTOL">
        <reference id="3562215692195600259" name="link" index="13MTZf" />
      </concept>
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1153943597977" name="jetbrains.mps.baseLanguage.collections.structure.ForEachStatement" flags="nn" index="2Gpval">
        <child id="1153944400369" name="variable" index="2Gsz3X" />
        <child id="1153944424730" name="inputSequence" index="2GsD0m" />
      </concept>
      <concept id="1153944193378" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariable" flags="nr" index="2GrKxI" />
      <concept id="1153944233411" name="jetbrains.mps.baseLanguage.collections.structure.ForEachVariableReference" flags="nn" index="2GrUjf">
        <reference id="1153944258490" name="variable" index="2Gs0qQ" />
      </concept>
    </language>
  </registry>
  <node concept="WtQ9Q" id="2ailr2k1wN1">
    <ref role="WuzLi" to="ir0d:6jibo3Yi0sE" resolve="RComponent" />
    <node concept="29tfMY" id="2ailr2k1xmc" role="29tGrW">
      <node concept="3clFbS" id="2ailr2k1xmd" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1xsu" role="3cqZAp">
          <node concept="2OqwBi" id="2ailr2k1xHh" role="3clFbG">
            <node concept="117lpO" id="2ailr2k1xst" role="2Oq$k0" />
            <node concept="3TrcHB" id="2ailr2k1xYk" role="2OqNvi">
              <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="2ailr2k1y6B" role="1Knhgg">
      <node concept="3clFbS" id="2ailr2k1y6D" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1yfr" role="3cqZAp">
          <node concept="Xl_RD" id="2ailr2k1yfq" role="3clFbG">
            <property role="Xl_RC" value="myNotes/" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="2ailr2k1yko" role="33IsuW">
      <node concept="3clFbS" id="2ailr2k1ykp" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1ylD" role="3cqZAp">
          <node concept="Xl_RD" id="2ailr2k1ylC" role="3clFbG">
            <property role="Xl_RC" value="js" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2ailr2k1ypH" role="11c4hB">
      <node concept="3clFbS" id="2ailr2k1ypI" role="2VODD2">
        <node concept="3clFbH" id="2ailr2k2VJa" role="3cqZAp" />
        <node concept="lc7rE" id="2ailr2k2nO3" role="3cqZAp">
          <node concept="la8eA" id="2ailr2k2nRB" role="lcghm">
            <property role="lacIc" value="import React, {} from 'react';" />
          </node>
          <node concept="l8MVK" id="2ailr2k2LAE" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2ailr2k1zfK" role="3cqZAp">
          <node concept="l8MVK" id="2ailr2k2nC_" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2ailr2k2JaM" role="3cqZAp">
          <node concept="la8eA" id="2ailr2k2Jeh" role="lcghm">
            <property role="lacIc" value="function " />
          </node>
          <node concept="l9hG8" id="2ailr2k2JfP" role="lcghm">
            <node concept="2OqwBi" id="2ailr2k2Jqf" role="lb14g">
              <node concept="117lpO" id="2ailr2k2JgO" role="2Oq$k0" />
              <node concept="3TrcHB" id="2ailr2k2JE4" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2ailr2k2JHz" role="lcghm">
            <property role="lacIc" value="() {" />
          </node>
          <node concept="l8MVK" id="2ailr2k2L$y" role="lcghm" />
        </node>
        <node concept="3izx1p" id="2ailr2k1_jx" role="3cqZAp">
          <node concept="3clFbS" id="2ailr2k1_jz" role="3izTki">
            <node concept="1bpajm" id="2ailr2k2012" role="3cqZAp" />
            <node concept="lc7rE" id="2ailr2k2y_8" role="3cqZAp">
              <node concept="la8eA" id="2ailr2k2yAN" role="lcghm">
                <property role="lacIc" value="return (" />
              </node>
              <node concept="l8MVK" id="2ailr2k2LwF" role="lcghm" />
            </node>
            <node concept="3izx1p" id="2ailr2k1_oF" role="3cqZAp">
              <node concept="3clFbS" id="2ailr2k1_oH" role="3izTki">
                <node concept="1bpajm" id="2ailr2k2a5p" role="3cqZAp" />
                <node concept="lc7rE" id="2ailr2k2yM7" role="3cqZAp">
                  <node concept="la8eA" id="2ailr2k2yNX" role="lcghm">
                    <property role="lacIc" value="&lt;div&gt;" />
                  </node>
                  <node concept="l8MVK" id="2ailr2k2Lvt" role="lcghm" />
                </node>
                <node concept="3izx1p" id="2ailr2k1_se" role="3cqZAp">
                  <node concept="3clFbS" id="2ailr2k1_sg" role="3izTki">
                    <node concept="2Gpval" id="2QugQ3F8tJi" role="3cqZAp">
                      <node concept="2GrKxI" id="2QugQ3F8tJj" role="2Gsz3X">
                        <property role="TrG5h" value="render" />
                      </node>
                      <node concept="2OqwBi" id="2QugQ3F8wUm" role="2GsD0m">
                        <node concept="2OqwBi" id="2QugQ3F8utg" role="2Oq$k0">
                          <node concept="2OqwBi" id="2QugQ3F8tUV" role="2Oq$k0">
                            <node concept="117lpO" id="2QugQ3F8tKA" role="2Oq$k0" />
                            <node concept="I4A8Y" id="2QugQ3F8uf0" role="2OqNvi" />
                          </node>
                          <node concept="2RRcyG" id="2QugQ3F8uEn" role="2OqNvi">
                            <node concept="chp4Y" id="2QugQ3F8uGt" role="3MHsoP">
                              <ref role="cht4Q" to="ir0d:6jibo3Yi0sd" resolve="ReykillDSL" />
                            </node>
                          </node>
                        </node>
                        <node concept="13MTOL" id="2QugQ3F8_4U" role="2OqNvi">
                          <ref role="13MTZf" to="ir0d:11yEcAFWK_5" resolve="renders" />
                        </node>
                      </node>
                      <node concept="3clFbS" id="2QugQ3F8tJl" role="2LFqv$">
                        <node concept="3clFbJ" id="2QugQ3F8_95" role="3cqZAp">
                          <node concept="3clFbS" id="2QugQ3F8_97" role="3clFbx">
                            <node concept="lc7rE" id="2QugQ3F8CT1" role="3cqZAp">
                              <node concept="l9hG8" id="2QugQ3F8CTw" role="lcghm">
                                <node concept="2GrUjf" id="2QugQ3F8CU3" role="lb14g">
                                  <ref role="2Gs0qQ" node="2QugQ3F8tJj" resolve="render" />
                                </node>
                              </node>
                            </node>
                          </node>
                          <node concept="3clFbC" id="2QugQ3F8ANX" role="3clFbw">
                            <node concept="2OqwBi" id="2QugQ3F8BqI" role="3uHU7B">
                              <node concept="2OqwBi" id="2QugQ3F8AXy" role="2Oq$k0">
                                <node concept="2GrUjf" id="2QugQ3F8APn" role="2Oq$k0">
                                  <ref role="2Gs0qQ" node="2QugQ3F8tJj" resolve="render" />
                                </node>
                                <node concept="3TrEf2" id="2QugQ3F8Bgd" role="2OqNvi">
                                  <ref role="3Tt5mk" to="ir0d:2QugQ3F2Lay" resolve="cName" />
                                </node>
                              </node>
                              <node concept="3TrcHB" id="2QugQ3F8Btd" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                            <node concept="2OqwBi" id="2QugQ3F8CGb" role="3uHU7w">
                              <node concept="117lpO" id="2QugQ3F8Chu" role="2Oq$k0" />
                              <node concept="3TrcHB" id="2QugQ3F8CQA" role="2OqNvi">
                                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
                              </node>
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node concept="1bpajm" id="2ailr2k2odQ" role="3cqZAp" />
                <node concept="lc7rE" id="2ailr2k2yZ5" role="3cqZAp">
                  <node concept="la8eA" id="2ailr2k2z8c" role="lcghm">
                    <property role="lacIc" value="&lt;/div&gt;" />
                  </node>
                  <node concept="l8MVK" id="2ailr2k2L5I" role="lcghm" />
                </node>
              </node>
            </node>
            <node concept="1bpajm" id="2ailr2k2ogQ" role="3cqZAp" />
            <node concept="lc7rE" id="2ailr2k2zjt" role="3cqZAp">
              <node concept="la8eA" id="2ailr2k2zl5" role="lcghm">
                <property role="lacIc" value=")" />
              </node>
              <node concept="l8MVK" id="2ailr2k2Luf" role="lcghm" />
            </node>
          </node>
        </node>
        <node concept="lc7rE" id="2ailr2k2zqI" role="3cqZAp">
          <node concept="la8eA" id="2ailr2k2zue" role="lcghm">
            <property role="lacIc" value="}" />
          </node>
          <node concept="l8MVK" id="2ailr2k2Lt1" role="lcghm" />
        </node>
        <node concept="lc7rE" id="2ailr2k1Cqj" role="3cqZAp">
          <node concept="la8eA" id="2ailr2k2Ldd" role="lcghm">
            <property role="lacIc" value="export default " />
          </node>
          <node concept="l9hG8" id="2ailr2k1CsW" role="lcghm">
            <node concept="2OqwBi" id="2ailr2k1D79" role="lb14g">
              <node concept="117lpO" id="2ailr2k1CZq" role="2Oq$k0" />
              <node concept="3TrcHB" id="2ailr2k1Dnx" role="2OqNvi">
                <ref role="3TsBF5" to="tpck:h0TrG11" resolve="name" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2QugQ3Fae62" role="lcghm">
            <property role="lacIc" value=";" />
          </node>
          <node concept="l8MVK" id="2ailr2k2LrC" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2ailr2k1NDb">
    <ref role="WuzLi" to="ir0d:6jibo3Yi0sd" resolve="ReykillDSL" />
    <node concept="29tfMY" id="2ailr2k1NDd" role="29tGrW">
      <node concept="3clFbS" id="2ailr2k1NDe" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1NJv" role="3cqZAp">
          <node concept="2OqwBi" id="2ailr2k1O1c" role="3clFbG">
            <node concept="117lpO" id="2ailr2k1NJu" role="2Oq$k0" />
            <node concept="3TrcHB" id="2QugQ3F9U8K" role="2OqNvi">
              <ref role="3TsBF5" to="ir0d:6jibo3Yi0sh" resolve="dsl_name" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="1KnnTt" id="2ailr2k1OnJ" role="1Knhgg">
      <node concept="3clFbS" id="2ailr2k1OnL" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1OoW" role="3cqZAp">
          <node concept="Xl_RD" id="2ailr2k1OoV" role="3clFbG">
            <property role="Xl_RC" value="myNotes/" />
          </node>
        </node>
      </node>
    </node>
    <node concept="9MYSb" id="2ailr2k1OwI" role="33IsuW">
      <node concept="3clFbS" id="2ailr2k1OwJ" role="2VODD2">
        <node concept="3clFbF" id="2ailr2k1O$2" role="3cqZAp">
          <node concept="Xl_RD" id="2ailr2k1O$1" role="3clFbG">
            <property role="Xl_RC" value="js" />
          </node>
        </node>
      </node>
    </node>
    <node concept="11bSqf" id="2ailr2k1OIA" role="11c4hB">
      <node concept="3clFbS" id="2ailr2k1OIB" role="2VODD2">
        <node concept="lc7rE" id="2ailr2k1OSc" role="3cqZAp">
          <node concept="l9S2W" id="2ailr2k1OSD" role="lcghm">
            <node concept="2OqwBi" id="2ailr2k1P1a" role="lbANJ">
              <node concept="117lpO" id="2ailr2k1OT8" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2ailr2k1Pa1" role="2OqNvi">
                <ref role="3TtcxE" to="ir0d:6jibo3Yi0sA" resolve="listOfComponents" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2QugQ3F0xHC">
    <ref role="WuzLi" to="ir0d:11yEcAFW3ev" resolve="ComponentRender" />
    <node concept="11bSqf" id="2QugQ3F0xHD" role="11c4hB">
      <node concept="3clFbS" id="2QugQ3F0xHE" role="2VODD2">
        <node concept="lc7rE" id="2QugQ3F0Bb6" role="3cqZAp">
          <node concept="l9S2W" id="2QugQ3F0BbN" role="lcghm">
            <node concept="2OqwBi" id="2QugQ3F0BjU" role="lbANJ">
              <node concept="117lpO" id="2QugQ3F0Bci" role="2Oq$k0" />
              <node concept="3Tsc0h" id="2QugQ3F0BrO" role="2OqNvi">
                <ref role="3TtcxE" to="ir0d:2QugQ3EZFWK" resolve="elemRender" />
              </node>
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2QugQ3F0Bue">
    <ref role="WuzLi" to="ir0d:2QugQ3F0gHO" resolve="TitleRender" />
    <node concept="11bSqf" id="2QugQ3F0Bug" role="11c4hB">
      <node concept="3clFbS" id="2QugQ3F0Buh" role="2VODD2">
        <node concept="1bpajm" id="2QugQ3F8Y7b" role="3cqZAp" />
        <node concept="lc7rE" id="2QugQ3F0BuG" role="3cqZAp">
          <node concept="la8eA" id="2QugQ3F0Bv8" role="lcghm">
            <property role="lacIc" value="&lt;h1&gt;" />
          </node>
          <node concept="l9hG8" id="2QugQ3F0Bwp" role="lcghm">
            <node concept="2OqwBi" id="2QugQ3F0BDI" role="lb14g">
              <node concept="117lpO" id="2QugQ3F0BwX" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QugQ3F0BNb" role="2OqNvi">
                <ref role="3TsBF5" to="ir0d:2QugQ3F0gI8" resolve="title" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2QugQ3F0BQR" role="lcghm">
            <property role="lacIc" value="&lt;/h1&gt;" />
          </node>
          <node concept="l8MVK" id="2QugQ3F0R$j" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
  <node concept="WtQ9Q" id="2QugQ3F0BSP">
    <ref role="WuzLi" to="ir0d:2QugQ3EZFWN" resolve="ParagraphRender" />
    <node concept="11bSqf" id="2QugQ3F0BSQ" role="11c4hB">
      <node concept="3clFbS" id="2QugQ3F0BSR" role="2VODD2">
        <node concept="1bpajm" id="2QugQ3F8Y0w" role="3cqZAp" />
        <node concept="lc7rE" id="2QugQ3F0BTi" role="3cqZAp">
          <node concept="la8eA" id="2QugQ3F0BTI" role="lcghm">
            <property role="lacIc" value="&lt;p&gt;" />
          </node>
          <node concept="l9hG8" id="2QugQ3F0BUV" role="lcghm">
            <node concept="2OqwBi" id="2QugQ3F0C4g" role="lb14g">
              <node concept="117lpO" id="2QugQ3F0BVv" role="2Oq$k0" />
              <node concept="3TrcHB" id="2QugQ3F0CdH" role="2OqNvi">
                <ref role="3TsBF5" to="ir0d:2QugQ3EZFWS" resolve="text" />
              </node>
            </node>
          </node>
          <node concept="la8eA" id="2QugQ3F0Chl" role="lcghm">
            <property role="lacIc" value="&lt;/p&gt;" />
          </node>
          <node concept="l8MVK" id="2QugQ3F0RvF" role="lcghm" />
        </node>
      </node>
    </node>
  </node>
</model>


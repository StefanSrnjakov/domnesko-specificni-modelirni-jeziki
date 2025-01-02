<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:f5d757be-8c86-446e-86ce-c68d726d6995(ReykilLanguage.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="14" />
    <use id="aee9cad2-acd4-4608-aef2-0004f6a1cdbd" name="jetbrains.mps.lang.actions" version="4" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="ir0d" ref="r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414928363" name="jetbrains.mps.lang.editor.structure.SelectableStyleSheetItem" flags="ln" index="VPM3Z" />
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ngI" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073389882823" name="jetbrains.mps.lang.editor.structure.CellModel_RefNode" flags="sg" stub="730538219795960754" index="3F1sOY" />
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6jibo3Yican">
    <ref role="1XX52x" to="ir0d:6jibo3Yi0sE" resolve="RComponent" />
    <node concept="3EZMnI" id="6jibo3Yica_" role="2wV5jI">
      <node concept="3EZMnI" id="6jibo3YicaO" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YicaQ" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YicaZ" role="3EZMnx">
          <property role="3F0ifm" value="title" />
        </node>
        <node concept="l2Vlx" id="6jibo3YicaT" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yicb5" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yicbd" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6jibo3YicaC" role="2iSdaV" />
      <node concept="3EZMnI" id="6jibo3Yicby" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yicb$" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YicbA" role="3EZMnx">
          <property role="3F0ifm" value="url" />
        </node>
        <node concept="l2Vlx" id="6jibo3YicbB" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YicbR" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3YicbZ" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sI" resolve="url" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yicci" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yicck" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yiccm" role="3EZMnx">
          <property role="3F0ifm" value="menu" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yiccn" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YiccG" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3YiccO" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sM" resolve="menu" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6jibo3Yixlq">
    <ref role="1XX52x" to="ir0d:6jibo3Yi0sd" resolve="ReykillDSL" />
    <node concept="3EZMnI" id="6jibo3Yixls" role="2wV5jI">
      <node concept="3EZMnI" id="6jibo3Yixlz" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yixl_" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yixm_" role="3EZMnx">
          <property role="3F0ifm" value="reykill" />
        </node>
        <node concept="l2Vlx" id="6jibo3YixlC" role="2iSdaV" />
        <node concept="3F0A7n" id="6jibo3YixmF" role="3EZMnx">
          <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
        </node>
        <node concept="3F0ifn" id="6jibo3YixmN" role="3EZMnx">
          <property role="3F0ifm" value="{" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6jibo3Yixlv" role="2iSdaV" />
      <node concept="3EZMnI" id="6jibo3YixlT" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YixlV" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YixlX" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="l2Vlx" id="6jibo3YixlY" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YixmV" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yixn3" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sh" resolve="dsl_name" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yi$8P" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yi$8R" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yi$8T" role="3EZMnx">
          <property role="3F0ifm" value="title" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yi$8U" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yi$9j" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yi$9s" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sp" resolve="title" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yi$9T" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yi$9V" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yi$9X" role="3EZMnx">
          <property role="3F0ifm" value="description" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yi$9Y" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yi$at" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yi$a_" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0ss" resolve="description" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yi$b8" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yi$ba" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yi$bJ" role="3EZMnx">
          <property role="3F0ifm" value="port" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yi$bd" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yi$bP" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yi$bX" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sw" resolve="port" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3YjpfO" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YjpfQ" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YjpfS" role="3EZMnx">
          <property role="3F0ifm" value="components" />
        </node>
        <node concept="l2Vlx" id="6jibo3YjpfT" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YjpgE" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F2HdR" id="6jibo3YjpgW" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3Yi0sA" resolve="listOfComponents" />
          <node concept="2iRkQZ" id="6jibo3YjpgZ" role="2czzBx" />
          <node concept="VPM3Z" id="6jibo3Yjph0" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3YiOIo" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YiOIq" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YiOIs" role="3EZMnx">
          <property role="3F0ifm" value="api" />
        </node>
        <node concept="l2Vlx" id="6jibo3YiOIt" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YiOJf" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F1sOY" id="6jibo3YiSZp" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3YiOEL" resolve="api" />
        </node>
      </node>
      <node concept="3EZMnI" id="11yEcAFSFZz" role="3EZMnx">
        <node concept="VPM3Z" id="11yEcAFSFZ_" role="3F10Kt" />
        <node concept="3F0ifn" id="11yEcAFSG0u" role="3EZMnx">
          <property role="3F0ifm" value="render" />
        </node>
        <node concept="3F0ifn" id="11yEcAFSG0$" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="l2Vlx" id="11yEcAFSFZC" role="2iSdaV" />
        <node concept="3F2HdR" id="11yEcAFXbRH" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:11yEcAFWK_5" resolve="renders" />
          <node concept="2iRkQZ" id="11yEcAFXbRK" role="2czzBx" />
          <node concept="VPM3Z" id="11yEcAFXbRL" role="3F10Kt" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yixmi" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yixmk" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yixmm" role="3EZMnx">
          <property role="3F0ifm" value="}" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yixmn" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="6jibo3YiXfq">
    <ref role="1XX52x" to="ir0d:6jibo3YiOEx" resolve="REndPoint" />
    <node concept="3EZMnI" id="6jibo3YiXgR" role="2wV5jI">
      <node concept="3EZMnI" id="6jibo3YiXgY" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YiXh0" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YiXhc" role="3EZMnx">
          <property role="3F0ifm" value="name" />
        </node>
        <node concept="l2Vlx" id="6jibo3YiXh3" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YiXhi" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3YiXhq" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3YiOEy" resolve="name" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3YiXhB" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3YiXhD" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3YiXhF" role="3EZMnx">
          <property role="3F0ifm" value="url:" />
        </node>
        <node concept="l2Vlx" id="6jibo3YiXhG" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3YiXhV" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3YiXig" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3YiOE$" resolve="url" />
        </node>
      </node>
      <node concept="2iRkQZ" id="6jibo3YiXgU" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6jibo3Yj2p4">
    <ref role="1XX52x" to="ir0d:6jibo3YiOEr" resolve="RApi" />
    <node concept="3EZMnI" id="6jibo3Yj2p6" role="2wV5jI">
      <node concept="2iRkQZ" id="6jibo3Yj2p9" role="2iSdaV" />
      <node concept="3EZMnI" id="6jibo3Yj2q7" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yj2q9" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yj2qb" role="3EZMnx">
          <property role="3F0ifm" value="base" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yj2qc" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yj2qs" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F0A7n" id="6jibo3Yj2q$" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3YiOEs" resolve="base" />
        </node>
      </node>
      <node concept="3EZMnI" id="6jibo3Yj2sL" role="3EZMnx">
        <node concept="VPM3Z" id="6jibo3Yj2sN" role="3F10Kt" />
        <node concept="3F0ifn" id="6jibo3Yj2sP" role="3EZMnx">
          <property role="3F0ifm" value="endpoints" />
        </node>
        <node concept="l2Vlx" id="6jibo3Yj2sQ" role="2iSdaV" />
        <node concept="3F0ifn" id="6jibo3Yj2tc" role="3EZMnx">
          <property role="3F0ifm" value=":" />
        </node>
        <node concept="3F2HdR" id="6jibo3Yj2tk" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:6jibo3YiOEu" resolve="endPointList" />
          <node concept="l2Vlx" id="6jibo3Yj2tn" role="2czzBx" />
        </node>
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="11yEcAFW3ey">
    <ref role="1XX52x" to="ir0d:11yEcAFW3ev" resolve="ComponentRender" />
    <node concept="3EZMnI" id="11yEcAFW3e$" role="2wV5jI">
      <node concept="3EZMnI" id="11yEcAFW3eF" role="3EZMnx">
        <node concept="VPM3Z" id="11yEcAFW3eH" role="3F10Kt" />
        <node concept="3F0ifn" id="2QugQ3F2roX" role="3EZMnx">
          <property role="3F0ifm" value="(" />
        </node>
        <node concept="1iCGBv" id="2QugQ3F3kbg" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:2QugQ3F2Lay" resolve="cName" />
          <node concept="1sVBvm" id="2QugQ3F3kbi" role="1sWHZn">
            <node concept="3F0A7n" id="2QugQ3F3kbu" role="2wV5jI">
              <property role="1Intyy" value="true" />
              <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
            </node>
          </node>
        </node>
        <node concept="3F0ifn" id="11yEcAFW3f0" role="3EZMnx">
          <property role="3F0ifm" value="=&gt;" />
        </node>
        <node concept="l2Vlx" id="11yEcAFW3eK" role="2iSdaV" />
      </node>
      <node concept="2iRkQZ" id="11yEcAFW3eB" role="2iSdaV" />
      <node concept="3EZMnI" id="2QugQ3EZFX1" role="3EZMnx">
        <node concept="VPM3Z" id="2QugQ3EZFX3" role="3F10Kt" />
        <node concept="3F2HdR" id="2QugQ3EZFXh" role="3EZMnx">
          <ref role="1NtTu8" to="ir0d:2QugQ3EZFWK" resolve="elemRender" />
          <node concept="2iRkQZ" id="2QugQ3EZFXk" role="2czzBx" />
          <node concept="VPM3Z" id="2QugQ3EZFXl" role="3F10Kt" />
        </node>
        <node concept="l2Vlx" id="2QugQ3EZFX6" role="2iSdaV" />
      </node>
    </node>
  </node>
  <node concept="24kQdi" id="2QugQ3EZFXr">
    <ref role="1XX52x" to="ir0d:2QugQ3EZFWN" resolve="ParagraphRender" />
    <node concept="3EZMnI" id="2QugQ3EZFXt" role="2wV5jI">
      <node concept="3F0A7n" id="2QugQ3EZFX$" role="3EZMnx">
        <ref role="1NtTu8" to="ir0d:2QugQ3EZFWS" resolve="text" />
      </node>
      <node concept="l2Vlx" id="2QugQ3EZFXw" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="2QugQ3F0gHR">
    <ref role="1XX52x" to="ir0d:2QugQ3F0gHO" resolve="TitleRender" />
    <node concept="3EZMnI" id="2QugQ3F0gHT" role="2wV5jI">
      <node concept="3F0ifn" id="2QugQ3F0gI0" role="3EZMnx">
        <property role="3F0ifm" value="#" />
      </node>
      <node concept="l2Vlx" id="2QugQ3F0gHW" role="2iSdaV" />
      <node concept="3F0A7n" id="2QugQ3F0gIb" role="3EZMnx">
        <ref role="1NtTu8" to="ir0d:2QugQ3F0gI8" resolve="title" />
      </node>
    </node>
  </node>
</model>


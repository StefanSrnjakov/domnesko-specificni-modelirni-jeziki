<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:2c17903e-d80a-4810-9382-12cc4985cca2(LAFLang.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="b82b0909-bdfe-46ca-b902-1bba8a0c6791" name="LAFLang" version="0" />
  </languages>
  <imports />
  <registry>
    <language id="b82b0909-bdfe-46ca-b902-1bba8a0c6791" name="LAFLang">
      <concept id="2068647694155495132" name="LAFLang.structure.AppDescription" flags="ng" index="39er2">
        <property id="2068647694155497510" name="description" index="3990S" />
        <property id="2068647694155497507" name="host" index="3990X" />
        <property id="2068647694155497504" name="title" index="3990Y" />
        <property id="2068647694155547304" name="port" index="39XaQ" />
        <child id="3734161451826723775" name="theme" index="1_LdeL" />
        <child id="3734161451828500447" name="pages" index="1_SVZh" />
        <child id="3734161451828729526" name="components" index="1_TNUS" />
        <child id="3734161451827766181" name="layout" index="1_XcIF" />
        <child id="3734161451828046561" name="api" index="1_Y8bJ" />
      </concept>
      <concept id="3734161451829486654" name="LAFLang.structure.ListFoundLink" flags="ng" index="1_$CKK" />
      <concept id="3734161451829486652" name="LAFLang.structure.ReportFoundLink" flags="ng" index="1_$CKM" />
      <concept id="3734161451829486653" name="LAFLang.structure.ListLostLink" flags="ng" index="1_$CKN" />
      <concept id="3734161451829486644" name="LAFLang.structure.ReportLostLink" flags="ng" index="1_$CKU" />
      <concept id="3734161451826723751" name="LAFLang.structure.Theme" flags="ng" index="1_LdeD" />
      <concept id="3734161451828500384" name="LAFLang.structure.Pages" flags="ng" index="1_SVYI">
        <child id="3734161451828883563" name="Home" index="1_Ttx_" />
        <child id="3734161451829039406" name="ReportLost" index="1_U7$w" />
        <child id="3734161451829039407" name="ReportFound" index="1_U7$x" />
        <child id="3734161451829039404" name="LostItems" index="1_U7$y" />
        <child id="3734161451829039405" name="FoundItems" index="1_U7$z" />
        <child id="3734161451829039408" name="About" index="1_U7$Y" />
      </concept>
      <concept id="3734161451828883537" name="LAFLang.structure.Home" flags="ng" index="1_Ttxv">
        <property id="3734161451829204762" name="title" index="1_VJWk" />
        <property id="3734161451829204763" name="content" index="1_VJWl" />
        <property id="3734161451829204761" name="url" index="1_VJWn" />
        <child id="3734161451829204834" name="quickLinks" index="1_VJXG" />
      </concept>
      <concept id="3734161451828652686" name="LAFLang.structure.Components" flags="ng" index="1_T$a0" />
      <concept id="3734161451829039294" name="LAFLang.structure.LostItems" flags="ng" index="1_U7yK">
        <property id="3734161451829711146" name="view" index="1__z$$" />
      </concept>
      <concept id="3734161451829039295" name="LAFLang.structure.FoundItems" flags="ng" index="1_U7yL" />
      <concept id="3734161451829039298" name="LAFLang.structure.About" flags="ng" index="1_U7zc" />
      <concept id="3734161451829039296" name="LAFLang.structure.ReportLost" flags="ng" index="1_U7ze" />
      <concept id="3734161451829039297" name="LAFLang.structure.ReportFound" flags="ng" index="1_U7zf" />
      <concept id="3734161451829297197" name="LAFLang.structure.Links" flags="ng" index="1_V6wz">
        <child id="3734161451829486790" name="listLostItem" index="1_$CN8" />
        <child id="3734161451829486791" name="listFoundItem" index="1_$CN9" />
        <child id="3734161451829486788" name="reportLostItem" index="1_$CNa" />
        <child id="3734161451829486789" name="reportFoundItem" index="1_$CNb" />
      </concept>
      <concept id="3734161451829204795" name="LAFLang.structure.QuickLinks" flags="ng" index="1_VJWP">
        <child id="3734161451829297226" name="links" index="1_V6x4" />
      </concept>
      <concept id="3734161451827766174" name="LAFLang.structure.Layout" flags="ng" index="1_XcIg">
        <property id="3734161451827766176" name="showMenu" index="1_XcII" />
      </concept>
      <concept id="3734161451827970143" name="LAFLang.structure.Api" flags="ng" index="1_YUxh">
        <child id="3734161451827970278" name="endpoints" index="1_YUzC" />
      </concept>
      <concept id="3734161451827970150" name="LAFLang.structure.ApiPost" flags="ng" index="1_YUxC" />
      <concept id="3734161451827970146" name="LAFLang.structure.ApiGet" flags="ng" index="1_YUxG">
        <property id="3734161451827970147" name="lostItems" index="1_YUxH" />
      </concept>
      <concept id="3734161451827970273" name="LAFLang.structure.Endpoints" flags="ng" index="1_YUzJ">
        <child id="3734161451827970274" name="get" index="1_YUzG" />
        <child id="3734161451827970275" name="post" index="1_YUzH" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ngI" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="39er2" id="3fiq0Tm6d1v">
    <property role="3990Y" value="myApp" />
    <property role="3990S" value="asdasdasd" />
    <property role="39XaQ" value="123123" />
    <property role="3990X" value="asdasdasd" />
    <node concept="1_LdeD" id="3fiq0Tm6d1w" role="1_LdeL">
      <property role="TrG5h" value="a" />
    </node>
    <node concept="1_XcIg" id="3fiq0Tm9Nxj" role="1_XcIF">
      <property role="1_XcII" value="true" />
    </node>
    <node concept="1_YUxh" id="3fiq0Tmb0Ya" role="1_Y8bJ">
      <node concept="1_YUzJ" id="3fiq0Tmb0Yb" role="1_YUzC">
        <node concept="1_YUxG" id="3fiq0Tmb0Yc" role="1_YUzG">
          <property role="1_YUxH" value="dfas" />
        </node>
        <node concept="1_YUxC" id="3fiq0Tmb0Yd" role="1_YUzH" />
      </node>
    </node>
    <node concept="1_SVYI" id="3fiq0Tmd2Ed" role="1_SVZh">
      <node concept="1_Ttxv" id="3fiq0TmePng" role="1_Ttx_">
        <property role="1_VJWl" value="Content of the page should be written in markdown" />
        <property role="1_VJWn" value="/home" />
        <property role="1_VJWk" value="Home Here" />
        <node concept="1_VJWP" id="3fiq0TmfQJB" role="1_VJXG">
          <node concept="1_V6wz" id="3fiq0TmfQJC" role="1_V6x4">
            <node concept="1_$CKU" id="3fiq0TmgAJ7" role="1_$CNa" />
            <node concept="1_$CKM" id="3fiq0TmgAJ8" role="1_$CNb" />
            <node concept="1_$CKN" id="3fiq0TmgAJ9" role="1_$CN8" />
            <node concept="1_$CKK" id="3fiq0TmgAJa" role="1_$CN9" />
          </node>
        </node>
      </node>
      <node concept="1_U7yL" id="3fiq0TmePni" role="1_U7$z" />
      <node concept="1_U7yK" id="3fiq0Tmh54$" role="1_U7$y">
        <property role="1__z$$" value="3fiq0Tmfw0C/list" />
      </node>
      <node concept="1_U7ze" id="3fiq0TmicVF" role="1_U7$w" />
      <node concept="1_U7zf" id="3fiq0TmicVG" role="1_U7$x" />
      <node concept="1_U7zc" id="3fiq0TmicVH" role="1_U7$Y" />
    </node>
    <node concept="1_T$a0" id="3fiq0TmdV0R" role="1_TNUS" />
  </node>
</model>


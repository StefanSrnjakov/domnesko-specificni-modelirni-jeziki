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
      <concept id="3734161451829486654" name="LAFLang.structure.ListFoundLink" flags="ng" index="1_$CKK">
        <property id="3734161451829586944" name="link" index="1_$0ge" />
        <property id="3734161451829586945" name="text" index="1_$0gf" />
      </concept>
      <concept id="3734161451829486652" name="LAFLang.structure.ReportFoundLink" flags="ng" index="1_$CKM">
        <property id="3734161451829586926" name="text" index="1_$0fw" />
        <property id="3734161451829586925" name="link" index="1_$0fz" />
      </concept>
      <concept id="3734161451829486653" name="LAFLang.structure.ListLostLink" flags="ng" index="1_$CKN">
        <property id="3734161451829586928" name="link" index="1_$0fY" />
        <property id="3734161451829586929" name="text" index="1_$0fZ" />
      </concept>
      <concept id="3734161451829486644" name="LAFLang.structure.ReportLostLink" flags="ng" index="1_$CKU">
        <property id="3734161451829486650" name="text" index="1_$CKO" />
        <property id="3734161451829486648" name="link" index="1_$CKQ" />
      </concept>
      <concept id="3734161451826723751" name="LAFLang.structure.Theme" flags="ng" index="1_LdeD">
        <property id="3734161451826723772" name="error_btn_color" index="1_LdeM" />
        <property id="3734161451826723770" name="warning_btn_color" index="1_LdeO" />
        <property id="3734161451826723768" name="primary_btn_color" index="1_LdeQ" />
        <property id="3734161451826723769" name="secondary_btn_color" index="1_LdeR" />
        <property id="3734161451826723767" name="primary_color" index="1_LdeT" />
        <property id="3734161451826723762" name="secondary_color" index="1_LdeW" />
      </concept>
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
        <property id="3734161451829711145" name="data" index="1__z$B" />
        <property id="3734161451829711142" name="url" index="1__z$C" />
        <property id="3734161451829711143" name="description" index="1__z$D" />
        <property id="3734161451829711141" name="header" index="1__z$F" />
      </concept>
      <concept id="3734161451829039295" name="LAFLang.structure.FoundItems" flags="ng" index="1_U7yL">
        <property id="3734161451829850696" name="data" index="1__1D6" />
        <property id="3734161451829850694" name="url" index="1__1D8" />
        <property id="3734161451829850695" name="description" index="1__1D9" />
        <property id="3734161451829850693" name="header" index="1__1Db" />
      </concept>
      <concept id="3734161451829039298" name="LAFLang.structure.About" flags="ng" index="1_U7zc">
        <property id="3734161451830342788" name="content" index="1_BTMa" />
        <property id="3734161451830342787" name="title" index="1_BTMd" />
        <property id="3734161451830342785" name="url" index="1_BTMf" />
      </concept>
      <concept id="3734161451829039296" name="LAFLang.structure.ReportLost" flags="ng" index="1_U7ze">
        <property id="3734161451830005546" name="url" index="1_AEs$" />
        <property id="3734161451830005547" name="post" index="1_AEs_" />
      </concept>
      <concept id="3734161451829039297" name="LAFLang.structure.ReportFound" flags="ng" index="1_U7zf">
        <property id="3734161451830005548" name="url" index="1_AEsy" />
        <property id="3734161451830005549" name="post" index="1_AEsz" />
      </concept>
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
        <property id="3734161451827970145" name="base" index="1_YUxJ" />
        <child id="3734161451827970278" name="endpoints" index="1_YUzC" />
      </concept>
      <concept id="3734161451827970150" name="LAFLang.structure.ApiPost" flags="ng" index="1_YUxC">
        <property id="3734161451827970154" name="register" index="1_YUx$" />
        <property id="3734161451827970152" name="reportFound" index="1_YUxA" />
        <property id="3734161451827970153" name="login" index="1_YUxB" />
        <property id="3734161451827970151" name="reportLost" index="1_YUxD" />
      </concept>
      <concept id="3734161451827970146" name="LAFLang.structure.ApiGet" flags="ng" index="1_YUxG">
        <property id="3734161451827970148" name="foundItems" index="1_YUxE" />
        <property id="3734161451827970149" name="profile" index="1_YUxF" />
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
      <property role="1_LdeT" value="test" />
      <property role="1_LdeW" value="test" />
      <property role="1_LdeQ" value="test" />
      <property role="1_LdeR" value="test" />
      <property role="1_LdeO" value="test" />
      <property role="1_LdeM" value="test" />
    </node>
    <node concept="1_XcIg" id="3fiq0Tm9Nxj" role="1_XcIF">
      <property role="1_XcII" value="true" />
    </node>
    <node concept="1_YUxh" id="3fiq0Tmb0Ya" role="1_Y8bJ">
      <property role="1_YUxJ" value="test" />
      <node concept="1_YUzJ" id="3fiq0Tmb0Yb" role="1_YUzC">
        <node concept="1_YUxG" id="3fiq0Tmb0Yc" role="1_YUzG">
          <property role="1_YUxH" value="dfas" />
          <property role="1_YUxE" value="test" />
          <property role="1_YUxF" value="qweqwe" />
        </node>
        <node concept="1_YUxC" id="3fiq0Tmb0Yd" role="1_YUzH">
          <property role="1_YUxD" value="qweqwe" />
          <property role="1_YUxA" value="qwe" />
          <property role="1_YUxB" value="qwe" />
          <property role="1_YUx$" value="qwe" />
        </node>
      </node>
    </node>
    <node concept="1_SVYI" id="3fiq0Tmd2Ed" role="1_SVZh">
      <node concept="1_Ttxv" id="3fiq0TmePng" role="1_Ttx_">
        <property role="1_VJWl" value="Conte of the page should be written in markdown" />
        <property role="1_VJWn" value="/home" />
        <property role="1_VJWk" value="Home Here" />
        <node concept="1_VJWP" id="3fiq0TmfQJB" role="1_VJXG">
          <node concept="1_V6wz" id="3fiq0TmfQJC" role="1_V6x4">
            <node concept="1_$CKU" id="3fiq0TmgAJ7" role="1_$CNa">
              <property role="1_$CKQ" value="qweqwe" />
              <property role="1_$CKO" value="qweqwe" />
            </node>
            <node concept="1_$CKM" id="3fiq0TmgAJ8" role="1_$CNb">
              <property role="1_$0fz" value="qweqwe" />
              <property role="1_$0fw" value="qweqwe" />
            </node>
            <node concept="1_$CKN" id="3fiq0TmgAJ9" role="1_$CN8">
              <property role="1_$0fY" value="qweqwe" />
              <property role="1_$0fZ" value="qweqwe" />
            </node>
            <node concept="1_$CKK" id="3fiq0TmgAJa" role="1_$CN9">
              <property role="1_$0ge" value="qweqwe" />
              <property role="1_$0gf" value="qweqwe" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1_U7yL" id="3fiq0TmePni" role="1_U7$z">
        <property role="1__1Db" value="qweqwe" />
        <property role="1__1D8" value="qweqwe" />
        <property role="1__1D9" value="qweqwe" />
        <property role="1__1D6" value="qweqe" />
      </node>
      <node concept="1_U7yK" id="3fiq0Tmh54$" role="1_U7$y">
        <property role="1__z$$" value="3fiq0Tmfw0C/list" />
        <property role="1__z$F" value="qweqwe" />
        <property role="1__z$C" value="qweqwe" />
        <property role="1__z$D" value="qweqwe" />
        <property role="1__z$B" value="qweqwe" />
      </node>
      <node concept="1_U7ze" id="3fiq0TmicVF" role="1_U7$w">
        <property role="1_AEs$" value="qwe" />
        <property role="1_AEs_" value="qwe" />
      </node>
      <node concept="1_U7zf" id="3fiq0TmicVG" role="1_U7$x">
        <property role="1_AEsy" value="qwe" />
        <property role="1_AEsz" value="qwe" />
      </node>
      <node concept="1_U7zc" id="3fiq0TmicVH" role="1_U7$Y">
        <property role="1_BTMf" value="qwe" />
        <property role="1_BTMd" value="qwe" />
        <property role="1_BTMa" value="qwe" />
      </node>
    </node>
    <node concept="1_T$a0" id="3fiq0TmdV0R" role="1_TNUS" />
  </node>
</model>


<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:0f1bbf76-e39a-467c-9afd-098f51838591(com.mbeddr.ext.concurrency.c.structure)">
  <persistence version="9" />
  <languages>
    <use id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="5wll" ref="r:8bfc0edf-00dc-40ce-9659-fb90c9bd31c8(com.mbeddr.ext.concurrency.structure)" implicit="true" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="mj1l" ref="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" implicit="true" />
    <import index="c4fa" ref="r:9f0e84b6-2ec7-4f9e-83e0-feedc77b63a3(com.mbeddr.core.statements.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="c72da2b9-7cce-4447-8389-f407dc1158b7" name="jetbrains.mps.lang.structure">
      <concept id="1169125787135" name="jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration" flags="ig" index="PkWjJ">
        <property id="5092175715804935370" name="conceptAlias" index="34LRSv" />
        <child id="1071489727083" name="linkDeclaration" index="1TKVEi" />
        <child id="1071489727084" name="propertyDeclaration" index="1TKVEl" />
      </concept>
      <concept id="1169127622168" name="jetbrains.mps.lang.structure.structure.InterfaceConceptReference" flags="ig" index="PrWs8">
        <reference id="1169127628841" name="intfc" index="PrY4T" />
      </concept>
      <concept id="1071489090640" name="jetbrains.mps.lang.structure.structure.ConceptDeclaration" flags="ig" index="1TIwiD">
        <reference id="1071489389519" name="extends" index="1TJDcQ" />
        <child id="1169129564478" name="implements" index="PzmwI" />
      </concept>
      <concept id="1071489288299" name="jetbrains.mps.lang.structure.structure.PropertyDeclaration" flags="ig" index="1TJgyi">
        <reference id="1082985295845" name="dataType" index="AX2Wp" />
      </concept>
      <concept id="1071489288298" name="jetbrains.mps.lang.structure.structure.LinkDeclaration" flags="ig" index="1TJgyj">
        <property id="1071599776563" name="role" index="20kJfa" />
        <property id="1071599893252" name="sourceCardinality" index="20lbJX" />
        <property id="1071599937831" name="metaClass" index="20lmBu" />
        <reference id="1071599976176" name="target" index="20lvS9" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="1TIwiD" id="6_bq3Opb_fM">
    <property role="TrG5h" value="PlainCStrategy" />
    <property role="34LRSv" value="plainC" />
    <ref role="1TJDcQ" to="5wll:12_KeTzXJV3" resolve="ConcurrencyGenerationStrategy" />
  </node>
  <node concept="1TIwiD" id="5gYn0x83brQ">
    <property role="TrG5h" value="TimeSourceConstraint" />
    <property role="34LRSv" value="timeSource" />
    <ref role="1TJDcQ" to="5wll:66UaKxBOkrZ" resolve="SchedulingConstraint" />
    <node concept="1TJgyj" id="5gYn0x83cOx" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="currentTimeExpression" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="mj1l:7FQByU3CrCM" resolve="Expression" />
    </node>
  </node>
  <node concept="1TIwiD" id="5gYn0x8dfvo">
    <property role="TrG5h" value="TaskSection" />
    <property role="34LRSv" value="section" />
    <ref role="1TJDcQ" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
    <node concept="1TJgyi" id="1TgsdXP2LBY" role="1TKVEl">
      <property role="TrG5h" value="id" />
      <ref role="AX2Wp" to="tpck:fKAOsGN" resolve="string" />
    </node>
    <node concept="1TJgyj" id="5gYn0x8dfwp" role="1TKVEi">
      <property role="20lmBu" value="aggregation" />
      <property role="20kJfa" value="body" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" to="c4fa:3CmSUB7Fp_l" resolve="StatementList" />
    </node>
    <node concept="PrWs8" id="5gYn0x8dgSk" role="PzmwI">
      <ref role="PrY4T" to="c4fa:5Xsg2EBpBVN" resolve="IStatmentListContainer" />
    </node>
    <node concept="PrWs8" id="1TgsdXP61gM" role="PzmwI">
      <ref role="PrY4T" to="tpck:hqLv6T6" resolve="IResolveInfo" />
    </node>
  </node>
  <node concept="1TIwiD" id="5gYn0x8phia">
    <property role="TrG5h" value="GotoSection" />
    <property role="34LRSv" value="goto section" />
    <ref role="1TJDcQ" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
    <node concept="1TJgyj" id="5gYn0x8phii" role="1TKVEi">
      <property role="20lmBu" value="reference" />
      <property role="20kJfa" value="taskSection" />
      <property role="20lbJX" value="1" />
      <ref role="20lvS9" node="5gYn0x8dfvo" resolve="TaskSection" />
    </node>
  </node>
  <node concept="1TIwiD" id="1TgsdXPjRmm">
    <property role="TrG5h" value="TaskFinishedStatement" />
    <property role="34LRSv" value="task finished" />
    <ref role="1TJDcQ" to="c4fa:3CmSUB7FmO3" resolve="Statement" />
  </node>
  <node concept="1TIwiD" id="1TgsdXP$fAc">
    <property role="TrG5h" value="CurrentTimeExpression" />
    <property role="34LRSv" value="currentTime" />
    <ref role="1TJDcQ" to="mj1l:7FQByU3CrCM" resolve="Expression" />
  </node>
</model>


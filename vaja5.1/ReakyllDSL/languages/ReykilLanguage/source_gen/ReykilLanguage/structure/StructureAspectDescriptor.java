package ReykilLanguage.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.BaseStructureAspectDescriptor;
import jetbrains.mps.smodel.runtime.ConceptDescriptor;
import java.util.Collection;
import java.util.Arrays;
import org.jetbrains.annotations.Nullable;
import jetbrains.mps.smodel.adapter.ids.SConceptId;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.impl.ConceptDescriptorBuilder2;
import jetbrains.mps.smodel.adapter.ids.PrimitiveTypeId;

public class StructureAspectDescriptor extends BaseStructureAspectDescriptor {
  /*package*/ final ConceptDescriptor myConceptComponentRender = createDescriptorForComponentRender();
  /*package*/ final ConceptDescriptor myConceptIElementRender = createDescriptorForIElementRender();
  /*package*/ final ConceptDescriptor myConceptParagraphRender = createDescriptorForParagraphRender();
  /*package*/ final ConceptDescriptor myConceptRApi = createDescriptorForRApi();
  /*package*/ final ConceptDescriptor myConceptRComponent = createDescriptorForRComponent();
  /*package*/ final ConceptDescriptor myConceptREndPoint = createDescriptorForREndPoint();
  /*package*/ final ConceptDescriptor myConceptReykillDSL = createDescriptorForReykillDSL();
  /*package*/ final ConceptDescriptor myConceptTitleRender = createDescriptorForTitleRender();
  private final LanguageConceptSwitch myIndexSwitch;

  public StructureAspectDescriptor() {
    myIndexSwitch = new LanguageConceptSwitch();
  }


  @Override
  public void reportDependencies(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.Dependencies deps) {
    deps.extendedLanguage(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, "jetbrains.mps.lang.core");
  }

  @Override
  public Collection<ConceptDescriptor> getDescriptors() {
    return Arrays.asList(myConceptComponentRender, myConceptIElementRender, myConceptParagraphRender, myConceptRApi, myConceptRComponent, myConceptREndPoint, myConceptReykillDSL, myConceptTitleRender);
  }

  @Override
  @Nullable
  public ConceptDescriptor getDescriptor(SConceptId id) {
    switch (myIndexSwitch.index(id)) {
      case LanguageConceptSwitch.ComponentRender:
        return myConceptComponentRender;
      case LanguageConceptSwitch.IElementRender:
        return myConceptIElementRender;
      case LanguageConceptSwitch.ParagraphRender:
        return myConceptParagraphRender;
      case LanguageConceptSwitch.RApi:
        return myConceptRApi;
      case LanguageConceptSwitch.RComponent:
        return myConceptRComponent;
      case LanguageConceptSwitch.REndPoint:
        return myConceptREndPoint;
      case LanguageConceptSwitch.ReykillDSL:
        return myConceptReykillDSL;
      case LanguageConceptSwitch.TitleRender:
        return myConceptTitleRender;
      default:
        return null;
    }
  }


  /*package*/ int internalIndex(SAbstractConcept c) {
    return myIndexSwitch.index(c);
  }

  private static ConceptDescriptor createDescriptorForComponentRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "ComponentRender", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x1062a8c9abf0339fL);
    b.class_(false, false, false);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/1180691636451029919");
    b.version(3);
    b.associate("cName", 0x2d9e4360eb0b12a2L).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe48072aL).optional(false).origin("3287138861566333602").done();
    b.aggregate("elemRender", 0x2d9e4360eafebf30L).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf2eL).optional(true).ordered(true).multiple(true).origin("3287138861565525808").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForIElementRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "IElementRender", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf2eL);
    b.interface_();
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/3287138861565525806");
    b.version(3);
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForParagraphRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "ParagraphRender", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf33L);
    b.class_(false, false, false);
    b.parent(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf2eL);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/3287138861565525811");
    b.version(3);
    b.property("text", 0x2d9e4360eafebf38L).type(PrimitiveTypeId.STRING).origin("3287138861565525816").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRApi() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "RApi", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe4b4a9bL);
    b.class_(false, false, false);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/7264919180947442331");
    b.version(3);
    b.property("base", 0x64d22d80fe4b4a9cL).type(PrimitiveTypeId.STRING).origin("7264919180947442332").done();
    b.aggregate("endPointList", 0x64d22d80fe4b4a9eL).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe4b4aa1L).optional(true).ordered(true).multiple(true).origin("7264919180947442334").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForRComponent() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "RComponent", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe48072aL);
    b.class_(false, false, false);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/7264919180947228458");
    b.version(3);
    b.property("url", 0x64d22d80fe48072eL).type(PrimitiveTypeId.STRING).origin("7264919180947228462").done();
    b.property("menu", 0x64d22d80fe480732L).type(PrimitiveTypeId.BOOLEAN).origin("7264919180947228466").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForREndPoint() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "REndPoint", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe4b4aa1L);
    b.class_(false, false, false);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/7264919180947442337");
    b.version(3);
    b.property("name", 0x64d22d80fe4b4aa2L).type(PrimitiveTypeId.STRING).origin("7264919180947442338").done();
    b.property("url", 0x64d22d80fe4b4aa4L).type(PrimitiveTypeId.STRING).origin("7264919180947442340").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForReykillDSL() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "ReykillDSL", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe48070dL);
    b.class_(false, false, true);
    b.parent(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/7264919180947228429");
    b.version(3);
    b.property("dsl_name", 0x64d22d80fe480711L).type(PrimitiveTypeId.STRING).origin("7264919180947228433").done();
    b.property("title", 0x64d22d80fe480719L).type(PrimitiveTypeId.STRING).origin("7264919180947228441").done();
    b.property("description", 0x64d22d80fe48071cL).type(PrimitiveTypeId.STRING).origin("7264919180947228444").done();
    b.property("port", 0x64d22d80fe480720L).type(PrimitiveTypeId.INTEGER).origin("7264919180947228448").done();
    b.aggregate("listOfComponents", 0x64d22d80fe480726L).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe48072aL).optional(true).ordered(true).multiple(true).origin("7264919180947228454").done();
    b.aggregate("api", 0x64d22d80fe4b4ab1L).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x64d22d80fe4b4a9bL).optional(true).ordered(true).multiple(false).origin("7264919180947442353").done();
    b.aggregate("renders", 0x1062a8c9abf30945L).target(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x1062a8c9abf0339fL).optional(true).ordered(true).multiple(true).origin("1180691636451215685").done();
    return b.create();
  }
  private static ConceptDescriptor createDescriptorForTitleRender() {
    ConceptDescriptorBuilder2 b = new ConceptDescriptorBuilder2("ReykilLanguage", "TitleRender", 0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eb010b74L);
    b.class_(false, false, false);
    b.parent(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf2eL);
    b.origin("r:23b57042-d6ed-4f0d-89db-f3550266e027(ReykilLanguage.structure)/3287138861565676404");
    b.version(3);
    b.property("title", 0x2d9e4360eb010b88L).type(PrimitiveTypeId.STRING).origin("3287138861565676424").done();
    return b.create();
  }
}

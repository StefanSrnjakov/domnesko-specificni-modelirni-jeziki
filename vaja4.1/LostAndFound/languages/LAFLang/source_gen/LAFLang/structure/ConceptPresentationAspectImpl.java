package LAFLang.structure;

/*Generated by MPS */

import jetbrains.mps.smodel.runtime.ConceptPresentationAspectBase;
import jetbrains.mps.smodel.runtime.ConceptPresentation;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import jetbrains.mps.smodel.runtime.ConceptPresentationBuilder;

public class ConceptPresentationAspectImpl extends ConceptPresentationAspectBase {
  private ConceptPresentation props_About;
  private ConceptPresentation props_Api;
  private ConceptPresentation props_ApiGet;
  private ConceptPresentation props_ApiPost;
  private ConceptPresentation props_AppDescription;
  private ConceptPresentation props_Components;
  private ConceptPresentation props_Endpoints;
  private ConceptPresentation props_FoundItems;
  private ConceptPresentation props_Home;
  private ConceptPresentation props_Layout;
  private ConceptPresentation props_Links;
  private ConceptPresentation props_ListFoundLink;
  private ConceptPresentation props_ListLostLink;
  private ConceptPresentation props_LostItems;
  private ConceptPresentation props_Pages;
  private ConceptPresentation props_QuickLinks;
  private ConceptPresentation props_ReportFound;
  private ConceptPresentation props_ReportFoundLink;
  private ConceptPresentation props_ReportLost;
  private ConceptPresentation props_ReportLostLink;
  private ConceptPresentation props_Theme;

  @Override
  @Nullable
  public ConceptPresentation getDescriptor(SAbstractConcept c) {
    StructureAspectDescriptor structureDescriptor = (StructureAspectDescriptor) myLanguageRuntime.getAspect(jetbrains.mps.smodel.runtime.StructureAspectDescriptor.class);
    switch (structureDescriptor.internalIndex(c)) {
      case LanguageConceptSwitch.About:
        if (props_About == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("About");
          props_About = cpb.create();
        }
        return props_About;
      case LanguageConceptSwitch.Api:
        if (props_Api == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Api");
          props_Api = cpb.create();
        }
        return props_Api;
      case LanguageConceptSwitch.ApiGet:
        if (props_ApiGet == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ApiGet");
          props_ApiGet = cpb.create();
        }
        return props_ApiGet;
      case LanguageConceptSwitch.ApiPost:
        if (props_ApiPost == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ApiPost");
          props_ApiPost = cpb.create();
        }
        return props_ApiPost;
      case LanguageConceptSwitch.AppDescription:
        if (props_AppDescription == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_AppDescription = cpb.create();
        }
        return props_AppDescription;
      case LanguageConceptSwitch.Components:
        if (props_Components == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Components");
          props_Components = cpb.create();
        }
        return props_Components;
      case LanguageConceptSwitch.Endpoints:
        if (props_Endpoints == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Endpoints");
          props_Endpoints = cpb.create();
        }
        return props_Endpoints;
      case LanguageConceptSwitch.FoundItems:
        if (props_FoundItems == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("FoundItems");
          props_FoundItems = cpb.create();
        }
        return props_FoundItems;
      case LanguageConceptSwitch.Home:
        if (props_Home == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Home");
          props_Home = cpb.create();
        }
        return props_Home;
      case LanguageConceptSwitch.Layout:
        if (props_Layout == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Layout");
          props_Layout = cpb.create();
        }
        return props_Layout;
      case LanguageConceptSwitch.Links:
        if (props_Links == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Links");
          props_Links = cpb.create();
        }
        return props_Links;
      case LanguageConceptSwitch.ListFoundLink:
        if (props_ListFoundLink == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ListFoundLink");
          props_ListFoundLink = cpb.create();
        }
        return props_ListFoundLink;
      case LanguageConceptSwitch.ListLostLink:
        if (props_ListLostLink == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ListLostLink");
          props_ListLostLink = cpb.create();
        }
        return props_ListLostLink;
      case LanguageConceptSwitch.LostItems:
        if (props_LostItems == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("LostItems");
          props_LostItems = cpb.create();
        }
        return props_LostItems;
      case LanguageConceptSwitch.Pages:
        if (props_Pages == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("Pages");
          props_Pages = cpb.create();
        }
        return props_Pages;
      case LanguageConceptSwitch.QuickLinks:
        if (props_QuickLinks == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("QuickLinks");
          props_QuickLinks = cpb.create();
        }
        return props_QuickLinks;
      case LanguageConceptSwitch.ReportFound:
        if (props_ReportFound == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ReportFound");
          props_ReportFound = cpb.create();
        }
        return props_ReportFound;
      case LanguageConceptSwitch.ReportFoundLink:
        if (props_ReportFoundLink == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ReportFoundLink");
          props_ReportFoundLink = cpb.create();
        }
        return props_ReportFoundLink;
      case LanguageConceptSwitch.ReportLost:
        if (props_ReportLost == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ReportLost");
          props_ReportLost = cpb.create();
        }
        return props_ReportLost;
      case LanguageConceptSwitch.ReportLostLink:
        if (props_ReportLostLink == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.rawPresentation("ReportLostLink");
          props_ReportLostLink = cpb.create();
        }
        return props_ReportLostLink;
      case LanguageConceptSwitch.Theme:
        if (props_Theme == null) {
          ConceptPresentationBuilder cpb = new ConceptPresentationBuilder();
          cpb.presentationByName();
          props_Theme = cpb.create();
        }
        return props_Theme;
    }
    return null;
  }
}
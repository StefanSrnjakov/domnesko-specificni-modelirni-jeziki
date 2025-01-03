package ReykilLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ComponentRender_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    for (SNode item : SLinkOperations.getChildren(ctx.getPrimaryInput(), LINKS.elemRender$AXvW)) {
      tgs.appendNode(item);
    }
  }

  private static final class LINKS {
    /*package*/ static final SContainmentLink elemRender$AXvW = MetaAdapterFactory.getContainmentLink(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x1062a8c9abf0339fL, 0x2d9e4360eafebf30L, "elemRender");
  }
}

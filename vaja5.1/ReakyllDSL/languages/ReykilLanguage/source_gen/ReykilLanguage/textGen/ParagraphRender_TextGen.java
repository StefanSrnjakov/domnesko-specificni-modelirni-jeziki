package ReykilLanguage.textGen;

/*Generated by MPS */

import jetbrains.mps.text.rt.TextGenDescriptorBase;
import jetbrains.mps.text.rt.TextGenContext;
import jetbrains.mps.text.impl.TextGenSupport;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import org.jetbrains.mps.openapi.language.SProperty;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;

public class ParagraphRender_TextGen extends TextGenDescriptorBase {
  @Override
  public void generateText(final TextGenContext ctx) {
    final TextGenSupport tgs = new TextGenSupport(ctx);
    tgs.indent();
    tgs.append("<p>");
    tgs.append(SPropertyOperations.getString(ctx.getPrimaryInput(), PROPS.text$fBQR));
    tgs.append("</p>");
    tgs.newLine();
  }

  private static final class PROPS {
    /*package*/ static final SProperty text$fBQR = MetaAdapterFactory.getProperty(0x3ba2139d18a14caaL, 0x99b1d518013c442fL, 0x2d9e4360eafebf33L, 0x2d9e4360eafebf38L, "text");
  }
}
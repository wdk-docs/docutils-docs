��    �      d              �
     �
  %   �
     �
     �
     �
  5        I     [     v     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �                                                    $     (     ,     0     4     8     <     @     D     H     L     P     T     X     \     _     c     g     p     w     �  	   �     �     �     �     �  �   �     �     �     �     �     �  
   �     �  �   �  3   s     �  �  �  #   u  �   �     x  #   �     �    �  
   �     �  &   �          $     8     M     b     x     �     �  0   �     �     �               #  
   5     @     D     S     f     u     �     �     �     �     �     �     �     �     �               -     A     \     {     �     �     �     �          $     :     X     w     �     �     �     �             %   1     W     f     ~     �     �     �     �     �          &     :     P  !   j     �     �  
   �     �  	   �     �               .     G     W     q     �     �  ~  �     &  %   4     Z     g     w  5   �     �     �     �     �     
          %     '     )     -     1     5     9     =     A     E     I     M     Q     U     Y     ]     a     e     i     m     q     u     y     }     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �     �  	                       -  �   A                     %     ,  
   5     @  �   I  3   �       �    #   �   �   !     �!  #   "     ("    G"  
   N#     Y#  &   k#     �#     �#     �#     �#     �#     �#     $     "$  0   =$     n$     s$     x$     �$     �$  
   �$     �$     �$     �$     �$     �$     �$     �$     %     %     )%     <%     J%     W%     h%     %     �%     �%     �%     �%     �%     &     -&     L&     g&     �&     �&     �&     �&     �&     '     "'     >'     ['     t'     �'  %   �'     �'     �'     �'     (     (     9(     T(     m(     �(     �(     �(     �(  !   �(      )     )  
   /)     :)  	   T)     ^)     w)     �)     �)     �)     �)     �)     �)     *   "class" (d/p) "contents" (d/p), peps.Contents (t/p) "meta" (d/p) "sectnum" (d/p) "target-notes" (d/p) $Date: 2012-10-16 14:40:36 +0200 (Di, 16. Okt 2012) $ $Revision: 7530 $ (/p): Via a "pending" node (d): Directive (r): Reader (t): Transform (w): Writer 0 1 100 199 200 210 220 260 299 300 320 340 350 360 380 399 400 420 440 460 520 540 620 640 660 699 700 710 720 740 760 780 799 800 820 830 840 850 860 870 880 899 900 910 920 99 990 999 Added By Author Category Contact Copyright Date David Goodger Docutils Transforms DocutilsTestSupport For more about transforms and the Transformer object, see also `PEP 258`_. (The ``default_transforms()`` attribute of component classes mentioned there is deprecated. Use the ``get_transforms()`` method instead.) From Key: None Parser Priority Reader (r) Revision There are `transforms added by components`_, others (e.g. ``parts.Contents``) are added by the parser, if a corresponding directive is found in the document. This document has been placed in the public domain. To To add a transform, components (objects inheriting from Docutils.Component like Readers, Parsers, Writers, Input, Output) overwrite the ``get_transforms()`` method of their base class. After the Reader has finished processing, the Publisher calls ``Transformer.populate_from_components()`` with a list of components and all transforms returned by the component's ``get_transforms()`` method are stored in a `transformer object` attached to the document tree. Transform Priority Range Categories Transform classes each have a default_priority attribute which is used by the Transformer to apply transforms in order (low to high). The default priority can be overridden when adding transforms to the Transformer object. Transform: module.Class Transforms Listed in Priority Order Transforms added by components Transforms change the document tree in-place, add to the tree, or prune it. Transforms resolve references and footnote numbers, process interpreted text, and do other context-sensitive processing. Each transform is a subclass of ``docutils.tranforms.Transform``. Writer (w) components.Filter docutils-develop@lists.sourceforge.net early frontmatter.DocInfo frontmatter.DocInfo, frontmatter.DocTitle frontmatter.DocTitle, frontmatter.SectSubTitle frontmatter.SectionSubTitle, html4css1 (w), latex2e (w) immediate execution (added by another transform) late main misc.CallBack misc.Transitions misc.Transitions, misc.class n/a newlatex2e (w) parsers.rst.Parser parts.Contents parts.SectNum pep (r) peps.Contents peps.Contents, peps.Headers peps.Headers (t/p) peps.Headers, peps.PEPZero peps.TargetNotes peps.TargetNotes (t/p) readers.ReReader: readers.Reader: readers.pep.Reader: readers.standalone.Reader: references.AnonymousHyperlinks references.AnonymousHyperlinks, references.DanglingReferences references.DanglingReferences, references.ExternalTargets references.ExternalTargets, references.Footnotes references.Footnotes, references.IndirectHyperlinks references.IndirectHyperlinks, references.InternalTargets references.InternalTargets, references.PropagateTargets references.PropagateTargets, references.Substitutions references.Substitutions, references.TargetNotes removes references.DanglingReferences standalone (r) standalone (r), pep (r) universal.Decorations universal.Decorations, universal.ExposeInternals universal.ExposeInternals, universal.FilterMessages universal.FilterMessages, universal.Messages universal.Messages, universal.SmartQuotes universal.StripClasses... universal.StripClassesAndElements universal.StripComments universal.TestMessages very early very early (non-standard) very late very late (non-standard) writer_aux.Admonitions writer_aux.Compound writers.UnfilteredWriter writers.Writer: writers.html4css1.Writer: writers.latex2e.Writer writers.odf_odt.Writer: 目录 Project-Id-Version: docutils-docs 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-22 22:32+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 "class" (d/p) "contents" (d/p), peps.Contents (t/p) "meta" (d/p) "sectnum" (d/p) "target-notes" (d/p) $Date: 2012-10-16 14:40:36 +0200 (Di, 16. Okt 2012) $ $Revision: 7530 $ (/p): Via a "pending" node (d): Directive (r): Reader (t): Transform (w): Writer 0 1 100 199 200 210 220 260 299 300 320 340 350 360 380 399 400 420 440 460 520 540 620 640 660 699 700 710 720 740 760 780 799 800 820 830 840 850 860 870 880 899 900 910 920 99 990 999 Added By Author Category Contact Copyright Date David Goodger Docutils变换 DocutilsTestSupport For more about transforms and the Transformer object, see also `PEP 258`_. (The ``default_transforms()`` attribute of component classes mentioned there is deprecated. Use the ``get_transforms()`` method instead.) From Key: None Parser Priority Reader (r) Revision There are `transforms added by components`_, others (e.g. ``parts.Contents``) are added by the parser, if a corresponding directive is found in the document. This document has been placed in the public domain. To To add a transform, components (objects inheriting from Docutils.Component like Readers, Parsers, Writers, Input, Output) overwrite the ``get_transforms()`` method of their base class. After the Reader has finished processing, the Publisher calls ``Transformer.populate_from_components()`` with a list of components and all transforms returned by the component's ``get_transforms()`` method are stored in a `transformer object` attached to the document tree. Transform Priority Range Categories Transform classes each have a default_priority attribute which is used by the Transformer to apply transforms in order (low to high). The default priority can be overridden when adding transforms to the Transformer object. Transform: module.Class Transforms Listed in Priority Order Transforms added by components Transforms change the document tree in-place, add to the tree, or prune it. Transforms resolve references and footnote numbers, process interpreted text, and do other context-sensitive processing. Each transform is a subclass of ``docutils.tranforms.Transform``. Writer (w) components.Filter docutils-develop@lists.sourceforge.net early frontmatter.DocInfo frontmatter.DocInfo, frontmatter.DocTitle frontmatter.DocTitle, frontmatter.SectSubTitle frontmatter.SectionSubTitle, html4css1 (w), latex2e (w) immediate execution (added by another transform) late main misc.CallBack misc.Transitions misc.Transitions, misc.class n/a newlatex2e (w) parsers.rst.Parser parts.Contents parts.SectNum pep (r) peps.Contents peps.Contents, peps.Headers peps.Headers (t/p) peps.Headers, peps.PEPZero peps.TargetNotes peps.TargetNotes (t/p) readers.ReReader: readers.Reader: readers.pep.Reader: readers.standalone.Reader: references.AnonymousHyperlinks references.AnonymousHyperlinks, references.DanglingReferences references.DanglingReferences, references.ExternalTargets references.ExternalTargets, references.Footnotes references.Footnotes, references.IndirectHyperlinks references.IndirectHyperlinks, references.InternalTargets references.InternalTargets, references.PropagateTargets references.PropagateTargets, references.Substitutions references.Substitutions, references.TargetNotes removes references.DanglingReferences standalone (r) standalone (r), pep (r) universal.Decorations universal.Decorations, universal.ExposeInternals universal.ExposeInternals, universal.FilterMessages universal.FilterMessages, universal.Messages universal.Messages, universal.SmartQuotes universal.StripClasses... universal.StripClassesAndElements universal.StripComments universal.TestMessages very early very early (non-standard) very late very late (non-standard) writer_aux.Admonitions writer_aux.Compound writers.UnfilteredWriter writers.Writer: writers.html4css1.Writer: writers.latex2e.Writer writers.odf_odt.Writer: 目录 
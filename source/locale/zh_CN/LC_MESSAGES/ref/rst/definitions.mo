��    S      �              L  7   M     �     �     �  "   �  ,   �  &     -   *  $   X  %   }     �     �     �     �     �  	   �  �        �     �     �     �     �     �  �   �     �     �     �  �   �    �	  �   �
  +   �     �  %   �          ,     =     R  
   n     y     �     �     �  �   �  �   �  d  K  �   �  �  A  (  �  3        6  1   D     v  &   �     �     �     �     �     �     �                    *     6     C     P     ]     p     }     �     �     �     �     �     �     �     �  *   	     4     E     Y     l  ~  s  7   �     *     <     J  "   X  ,   {  &   �  -   �  $   �  %   "     H     b     i     ~     �  	   �  �   �     7     <     J     V     h     x  �   �     i     {     �  �   �    c  �   v  +   V     �  %   �     �     �     �     �  
             '     8     L  �   e  �   L  d  �  �   U!  �  �!  (  ~#  3   �$     �$  1   �$     %  &   4%     [%     h%     u%     �%     �%     �%     �%     �%     �%     �%     �%     �%     �%     &     &     "&     /&     B&     U&     h&     t&     �&     �&     �&  "   �&     �&     �&     �&     	'   $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Added Latin 1 Added Latin 2 Added Mathematical Symbols: Arrows Added Mathematical Symbols: Binary Operators Added Mathematical Symbols: Delimiters Added Mathematical Symbols: Negated Relations Added Mathematical Symbols: Ordinary Added Mathematical Symbols: Relations Alternative Greek Symbols Author Box and Line Drawing Character Entity Sets Contact Copyright Custom substitution definitions may use the `"unicode" directive`__. Whitespace is ignored and removed, effectively sqeezing together the text:: Date David Goodger Description Diacritical Marks Entity Set File Extra names added by MathML For example, the copyright symbol is defined as the XML character entity ``&copy;``.  The equivalent reStructuredText substitution reference (defined in both ``isonum.txt`` and ``xhtml1-lat1.txt``) is ``|copy|``. General Technical Greek Letters Greek Symbols In addition, the "ltrim", "rtrim", and "trim" options may be used with the "unicode" directive to automatically trim spaces from the left, right, or both sides (respectively) of substitution references:: Individual substitution definitions can also be copied from definition files and pasted into documents.  This has two advantages: it removes dependencies, and it saves processing of unused definitions.  However, multiple substitution definitions add clutter to the document. Many of the standard definition files contain sets of `substitution definitions`__, which can be used in documents via `substitution references`__.  For example, the copyright symbol is defined in ``isonum.txt`` as "copy":: MathML aliases for entities from other sets Mathematical Fraktur Mathematical Openface (Double-struck) Mathematical Script Monotoniko Greek Non-Russian Cyrillic Numeric and Special Graphic Publishing Revision Russian Cyrillic S5/HTML Definitions Substitution Definitions Substitution references require separation from the surrounding text with whitespace or punctuation.  To use a substitution without intervening whitespace, you can use the disappearing-whitespace escape sequence, backslash-space:: The "s5defs.txt_" standard definition file contains interpreted text roles (classes) and other definitions for documents destined to become `S5/HTML slide shows`_. The following files contain substitution definitions corresponding to XML character entity sets, from the following standards: ISO 8879 & ISO 9573-13 (combined), MathML, and XHTML1.  They were generated by the ``tools/dev/unicode2rstsubs.py`` program from the input file unicode.xml__, which is maintained as part of the MathML 2 Recommentation XML source. The individual data files are stored with the Docutils source code in the "docutils" package, in the ``docutils/parsers/rst/include`` directory. There are ``*-wide.txt`` variants for each of these character entity set files, containing characters outside of the Unicode basic multilingual plane or BMP (wide-Unicode; code points greater than U+FFFF).  Most pre-built Python distributions are "narrow" and do not support wide-Unicode characters.  Python *can* be built with wide-Unicode support though; consult the Python build instructions for details. This document describes standard definition files, such as sets of substitution definitions and interpreted text roles, that can be included in reStructuredText documents.  The `"include" directive`__ has a special syntax for these standard definition files, angle brackets around the file name:: This document has been placed in the public domain. XHTML Latin 1 XHTML Mathematical, Greek and Symbolic Characters XHTML Special Characters docutils-develop@lists.sourceforge.net isoamsa.txt_ isoamsb.txt_ isoamsc.txt_ isoamsn.txt_ isoamso.txt_ isoamsr.txt_ isobox.txt_ isocyr1.txt_ isocyr2.txt_ isodia.txt_ isogrk1.txt_ isogrk2.txt_ isogrk3.txt_ isogrk4.txt_  [1]_ isolat1.txt_ isolat2.txt_ isomfrk.txt_  [1]_ isomopf.txt_  [1]_ isomscr.txt_  [1]_ isonum.txt_ isopub.txt_ isotech.txt_ mmlalias.txt_ mmlextra.txt_ [1]_ reStructuredText Standard Definition Files xhtml1-lat1.txt_ xhtml1-special.txt_ xhtml1-symbol.txt_ 目录 Project-Id-Version: docutils-docs 
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
 $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Added Latin 1 Added Latin 2 Added Mathematical Symbols: Arrows Added Mathematical Symbols: Binary Operators Added Mathematical Symbols: Delimiters Added Mathematical Symbols: Negated Relations Added Mathematical Symbols: Ordinary Added Mathematical Symbols: Relations Alternative Greek Symbols Author Box and Line Drawing Character Entity Sets Contact Copyright Custom substitution definitions may use the `"unicode" directive`__. Whitespace is ignored and removed, effectively sqeezing together the text:: Date David Goodger Description Diacritical Marks Entity Set File Extra names added by MathML For example, the copyright symbol is defined as the XML character entity ``&copy;``.  The equivalent reStructuredText substitution reference (defined in both ``isonum.txt`` and ``xhtml1-lat1.txt``) is ``|copy|``. General Technical Greek Letters Greek Symbols In addition, the "ltrim", "rtrim", and "trim" options may be used with the "unicode" directive to automatically trim spaces from the left, right, or both sides (respectively) of substitution references:: Individual substitution definitions can also be copied from definition files and pasted into documents.  This has two advantages: it removes dependencies, and it saves processing of unused definitions.  However, multiple substitution definitions add clutter to the document. Many of the standard definition files contain sets of `substitution definitions`__, which can be used in documents via `substitution references`__.  For example, the copyright symbol is defined in ``isonum.txt`` as "copy":: MathML aliases for entities from other sets Mathematical Fraktur Mathematical Openface (Double-struck) Mathematical Script Monotoniko Greek Non-Russian Cyrillic Numeric and Special Graphic Publishing Revision Russian Cyrillic S5/HTML Definitions Substitution Definitions Substitution references require separation from the surrounding text with whitespace or punctuation.  To use a substitution without intervening whitespace, you can use the disappearing-whitespace escape sequence, backslash-space:: The "s5defs.txt_" standard definition file contains interpreted text roles (classes) and other definitions for documents destined to become `S5/HTML slide shows`_. The following files contain substitution definitions corresponding to XML character entity sets, from the following standards: ISO 8879 & ISO 9573-13 (combined), MathML, and XHTML1.  They were generated by the ``tools/dev/unicode2rstsubs.py`` program from the input file unicode.xml__, which is maintained as part of the MathML 2 Recommentation XML source. The individual data files are stored with the Docutils source code in the "docutils" package, in the ``docutils/parsers/rst/include`` directory. There are ``*-wide.txt`` variants for each of these character entity set files, containing characters outside of the Unicode basic multilingual plane or BMP (wide-Unicode; code points greater than U+FFFF).  Most pre-built Python distributions are "narrow" and do not support wide-Unicode characters.  Python *can* be built with wide-Unicode support though; consult the Python build instructions for details. This document describes standard definition files, such as sets of substitution definitions and interpreted text roles, that can be included in reStructuredText documents.  The `"include" directive`__ has a special syntax for these standard definition files, angle brackets around the file name:: This document has been placed in the public domain. XHTML Latin 1 XHTML Mathematical, Greek and Symbolic Characters XHTML Special Characters docutils-develop@lists.sourceforge.net isoamsa.txt_ isoamsb.txt_ isoamsc.txt_ isoamsn.txt_ isoamso.txt_ isoamsr.txt_ isobox.txt_ isocyr1.txt_ isocyr2.txt_ isodia.txt_ isogrk1.txt_ isogrk2.txt_ isogrk3.txt_ isogrk4.txt_  [1]_ isolat1.txt_ isolat2.txt_ isomfrk.txt_  [1]_ isomopf.txt_  [1]_ isomscr.txt_  [1]_ isonum.txt_ isopub.txt_ isotech.txt_ mmlalias.txt_ mmlextra.txt_ [1]_ reStructuredText标准定义文件 xhtml1-lat1.txt_ xhtml1-special.txt_ xhtml1-symbol.txt_ 目录 
��    0      �                7        U  |   g  3   �            	   '  �   1     �     �     �  O     (  R  W  {  �   �  �   �	  o   �
     �
  I        Y  6   _     �     �  X   �  �     !   �  L     `   N    �  ^   �  3     q   G  �   �     �     �  <   �  u     &   �  *   �     �     �       (        F     c     k     t  ~  {  7   �     2  |   D  3   �     �     �  	     �        �     �     �  O   �  (  /  W  X  �   �  �   y  o   k     �  I   �     6  6   <     s     �  X   �  �   �  !   �  L   �  `   +    �  ^   �  3   �  q   $   �   �      �!     �!  <   �!  u   �!  &   g"  *   �"     �"     �"     �"  (   �"     ##     @#     H#     Q#   $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ (Extract comments too?  For example, comments at the start of a module would be a good place for bibliographic field lists.) (Or should step 4's transforms come before step 3?) Author Contact Copyright DTD elements: package, module, class, method, function, module_attribute, class_attribute, instance_attribute, variable, parameter, type, exception_class, warning_class. Date David Goodger Docstring Extractor Extract the docstring/namespace [#]_ tree from the module(s) and/or package(s). For definitive element hierarchy details, see the "Python Plaintext Document Interface DTD" XML document type definition, pysource.dtd_ (which modifies the generic docutils.dtd_).  Descriptions below list 'DTD elements' (XML 'generic identifiers' or tag names) corresponding to syntax constructs. For example, say the source of our input is a Python module.  Our "input mode" should be the "Python Source Reader".  It discovers (from ``__docformat__``) that the input parser is "reStructuredText".  If we want HTML, we'll specify the "HTML" output formatter.  But there's a piece missing.  What *kind* or *style* of HTML output do we want? PyDoc-style, LibRefMan style, etc.  (many people will want to specify and control their own style).  Is the output style specific to a particular output format (XML, HTML, etc.)?  Is the style specific to the input mode?  Or can/should they be independent? I envision interaction between the input parser, an "input mode" , and the output formatter.  The same intermediate data format would be used between each of these, being transformed as it progresses. I've had trouble reconciling the roles of input parser and output writer with the idea of modes ("readers" or "directors").  Does the mode govern the tranformation of the input, the output, or both? Perhaps the mode should be split into two. In order to evaluate interpreted text cross-references, namespaces for each of the above will also be required. Interpreted Text Join the docstring trees together into a single tree, running transforms: Model Pass the resulting unified tree to the writer/builder. Python Source Reader Revision Run the parser on each docstring in turn, producing a forest of doctrees (per nodes.py). Run transforms on the combined doctree.  Examples: resolving cross-references/hyperlinks (including interpreted text on Python identifiers); footnote auto-numbering; first field list -> bibliographic elements. See `Docstring Extractor`_ below. See python-dev/docstring-develop thread "AST mining", started on 2001-08-14. The Python Source Reader ("PySource") model that's evolving in my mind goes something like this: The role may be one of 'package', 'module', 'class', 'method', 'function', 'module_attribute', 'class_attribute', 'instance_attribute', 'variable', 'parameter', 'type', 'exception_class', 'exception', 'warning_class', or 'warning'.  Other roles may be defined. This document explores issues around extracting and processing docstrings from Python modules. This document has been placed in the public domain. To classify identifiers explicitly, the role is given along with the identifier in either prefix or suffix form:: We need code that scans a parsed Python module, and returns an ordered tree containing the names, docstrings (including attribute and additional docstrings), and additional info (in parentheses below) of all of the following objects: class attributes (+ values) classes (+ inheritance) convert the above special sections to ordinary doctree nodes create various sections like "Module Attributes", "Functions", "Classes", "Class Attributes", etc.; see pysource.dtd_ docutils-develop@lists.sourceforge.net functions (+ formal parameters & defaults) instance attributes (+ values) merge hyperlinks merge namespaces methods (+ formal parameters & defaults) module attributes (+ values) modules packages 目录 Project-Id-Version: docutils-docs 
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
 $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ (Extract comments too?  For example, comments at the start of a module would be a good place for bibliographic field lists.) (Or should step 4's transforms come before step 3?) Author Contact Copyright DTD elements: package, module, class, method, function, module_attribute, class_attribute, instance_attribute, variable, parameter, type, exception_class, warning_class. Date David Goodger Docstring Extractor Extract the docstring/namespace [#]_ tree from the module(s) and/or package(s). For definitive element hierarchy details, see the "Python Plaintext Document Interface DTD" XML document type definition, pysource.dtd_ (which modifies the generic docutils.dtd_).  Descriptions below list 'DTD elements' (XML 'generic identifiers' or tag names) corresponding to syntax constructs. For example, say the source of our input is a Python module.  Our "input mode" should be the "Python Source Reader".  It discovers (from ``__docformat__``) that the input parser is "reStructuredText".  If we want HTML, we'll specify the "HTML" output formatter.  But there's a piece missing.  What *kind* or *style* of HTML output do we want? PyDoc-style, LibRefMan style, etc.  (many people will want to specify and control their own style).  Is the output style specific to a particular output format (XML, HTML, etc.)?  Is the style specific to the input mode?  Or can/should they be independent? I envision interaction between the input parser, an "input mode" , and the output formatter.  The same intermediate data format would be used between each of these, being transformed as it progresses. I've had trouble reconciling the roles of input parser and output writer with the idea of modes ("readers" or "directors").  Does the mode govern the tranformation of the input, the output, or both? Perhaps the mode should be split into two. In order to evaluate interpreted text cross-references, namespaces for each of the above will also be required. Interpreted Text Join the docstring trees together into a single tree, running transforms: Model Pass the resulting unified tree to the writer/builder. Python Source Reader Revision Run the parser on each docstring in turn, producing a forest of doctrees (per nodes.py). Run transforms on the combined doctree.  Examples: resolving cross-references/hyperlinks (including interpreted text on Python identifiers); footnote auto-numbering; first field list -> bibliographic elements. See `Docstring Extractor`_ below. See python-dev/docstring-develop thread "AST mining", started on 2001-08-14. The Python Source Reader ("PySource") model that's evolving in my mind goes something like this: The role may be one of 'package', 'module', 'class', 'method', 'function', 'module_attribute', 'class_attribute', 'instance_attribute', 'variable', 'parameter', 'type', 'exception_class', 'exception', 'warning_class', or 'warning'.  Other roles may be defined. This document explores issues around extracting and processing docstrings from Python modules. This document has been placed in the public domain. To classify identifiers explicitly, the role is given along with the identifier in either prefix or suffix form:: We need code that scans a parsed Python module, and returns an ordered tree containing the names, docstrings (including attribute and additional docstrings), and additional info (in parentheses below) of all of the following objects: class attributes (+ values) classes (+ inheritance) convert the above special sections to ordinary doctree nodes create various sections like "Module Attributes", "Functions", "Classes", "Class Attributes", etc.; see pysource.dtd_ docutils-develop@lists.sourceforge.net functions (+ formal parameters & defaults) instance attributes (+ values) merge hyperlinks merge namespaces methods (+ formal parameters & defaults) module attributes (+ values) modules packages 目录 
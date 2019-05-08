��    :      �              �  7   �     �            �   #  �   �     o  �   v  .   �     (  	   0     :     ?     X  y  k  �   �  �   �    Q	  p   o
  �   �
     �  !   �  0   �  4   �  %        A  E   V     �     �     �  W   �       �  )  7  �     +  �   >  N  �  �   "  �  �  3   )  �   ]  ]   O  �   �  y   2  %   �     �  ^   �  	   K  T   U  |   �  �   '     �  �     �   �  �   [  &        2  ~  9  7   �     �            �     �   �     j  �   q  .   �     #   	   +      5      :      Q   y  d   �   �!  �   �"    J#  p   h$  �   �$     �%  !   �%  0   �%  4   �%  %   &     :&  E   O&     �&     �&     �&  W   �&    '  �  "(  7  �)     $+  �   7+  N  �+  �   -  �  �-  3   "/  �   V/  ]   H0  �   �0  y   +1  %   �1     �1  ^   �1  	   D2  T   N2  |   �2  �    3     �3  �   �3  �   �4  �   T5  &   6     +6   $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ (To be completed.) Abstract As described in the overview above, Docutils' internal representation of a document is a tree of nodes.  We'll now have a look at the interface of these nodes. Assigning the target URI (from the ``target`` node) to the ``reference`` node is *not* done by the parser (the parser only translates the input document into a node tree). Author By the way, you can also get a "real" XML representation of the node tree by using ``rst2xml.py`` instead of ``rst2pseudoxml.py``. Consider the following reStructuredText file:: Contact Copyright Date Docutils_ Hacker's Guide Extending Docutils First of all, once you are clear about *what* you want to achieve, you have to decide *where* to implement it |---| in the Parser (e.g. by adding a directive or role to the reStructuredText parser), as a Transform, or in the Writer.  There is often one obvious choice among those three (Parser, Transform, Writer).  If you are unsure, ask on the Docutils-develop_ mailing list. For our small test document, the only change is that the ``refname`` attribute of the reference has been replaced by a ``refuri`` attribute |---| the reference has been resolved. In fact, there are quite a lot of Transforms, which do various useful things like creating the table of contents, applying substitution references or resolving auto-numbered footnotes. In order to find out how to start, it is often helpful to look at similar features which are already implemented.  For example, if you want to add a new directive to the reStructuredText parser, look at the implementation of a similar directive in ``docutils/parsers/rst/directives/``. In the node tree above, the ``reference`` node does not contain the target URI (``http://www.python.org/``) yet. Instead, it's done by a **Transform**.  In this case (resolving a reference), it's done by the ``ExternalTargets`` transform in ``docutils/transforms/references.py``. Lea Wiemann Let us now examine the node tree: Modifying the Document Tree Before It Is Written Now you'll ask, "how do I actually extend Docutils?" Overview of the Docutils Architecture Parsing the Document Please see the docstring of publish_doctree for a list of parameters. Prerequisites Reading the Document Revision Since you probably won't need to touch readers, we will just move on to the next stage: So here we finally have our HTML output.  The actual document contents are in the fourth-last line.  Note, by the way, that the HTML writer did not render the (invisible) ``target`` node |---| only the ``paragraph`` node and its children appear in the HTML output. The **Parser** analyzes the the input document and creates a **node tree** representation.  In this case we are using the **reStructuredText parser** (``docutils/parsers/rst/__init__.py``). To see what that node tree looks like, we call ``quicktest.py`` (which can be found in the ``tools/`` directory of the Docutils distribution) with our example file (``test.txt``) as first parameter (Windows users might need to type ``python quicktest.py test.txt``):: The **Reader** reads the document from the source file and passes it to the parser (see below).  The default reader is the standalone reader (``docutils/readers/standalone.py``) which just reads the input data from a single text file.  Unless you want to do really fancy things, there is no need to change that. The Node Interface The Transforms are applied after parsing.  To see how the node tree has changed after applying the Transforms, we use the ``rst2pseudoxml.py`` tool: The top-level node is ``document``.  It has a ``source`` attribute whose value is ``text.txt``.  There are two children: A ``paragraph`` node and a ``target`` node.  The ``paragraph`` in turn has children: A text node ("My "), an ``emphasis`` node, a text node (" language is "), a ``reference`` node, and again a ``Text`` node ("."). The writer receives the node tree and returns the output document. For HTML output, we can test this using the ``rst2html.py`` tool:: These node types (``document``, ``paragraph``, ``emphasis``, etc.) are all defined in ``docutils/nodes.py``.  The node types are internally arranged as a class hierarchy (for example, both ``emphasis`` and ``reference`` have the common superclass ``Inline``).  To get an overview of the node class hierarchy, use epydoc (type ``epydoc nodes.py``) and look at the class hierarchy tree. This document has been placed in the public domain. This document is not complete.  Many topics could (and should) be covered here.  To find out with which topics we should write about first, we are awaiting *your* feedback.  So please ask your questions on the Docutils-develop_ mailing list. This is the introduction to Docutils for all persons who want to extend Docutils in some way. To get an HTML document out of the node tree, we use a **Writer**, the HTML writer in this case (``docutils/writers/html4css1.py``). To give you an understanding of the Docutils architecture, we'll dive right into the internals using a practical example. To retrieve the document tree, call:: Transforming the Document Using the ``rst2html.py`` front-end tool, you would get an HTML output which looks like this:: What Now? When you're done with modifying the document tree, you can write it out by calling:: While this does not look very exciting, transforms are a powerful tool to apply any kind of transformation on the node tree. While this looks very simple, it's enough to illustrate all internal processing stages of Docutils.  Let's see how this document is processed from the reStructuredText source to the final HTML output: Writing the Document You can modify the document tree right before the writer is called. One possibility is to use the publish_doctree_ and publish_from_doctree_ functions. You have used reStructuredText_ and played around with the `Docutils front-end tools`_ before.  Some (basic) Python knowledge is certainly helpful (though not necessary, strictly speaking). ``document`` is the root node of the document tree.  You can now change the document by accessing the ``document`` node and its children |---| see `The Node Interface`_ below. docutils-develop@lists.sourceforge.net 目录 Project-Id-Version: docutils-docs 
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
 $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ (To be completed.) Abstract As described in the overview above, Docutils' internal representation of a document is a tree of nodes.  We'll now have a look at the interface of these nodes. Assigning the target URI (from the ``target`` node) to the ``reference`` node is *not* done by the parser (the parser only translates the input document into a node tree). Author By the way, you can also get a "real" XML representation of the node tree by using ``rst2xml.py`` instead of ``rst2pseudoxml.py``. Consider the following reStructuredText file:: Contact Copyright Date Docutils_ 黑客指南 Extending Docutils First of all, once you are clear about *what* you want to achieve, you have to decide *where* to implement it |---| in the Parser (e.g. by adding a directive or role to the reStructuredText parser), as a Transform, or in the Writer.  There is often one obvious choice among those three (Parser, Transform, Writer).  If you are unsure, ask on the Docutils-develop_ mailing list. For our small test document, the only change is that the ``refname`` attribute of the reference has been replaced by a ``refuri`` attribute |---| the reference has been resolved. In fact, there are quite a lot of Transforms, which do various useful things like creating the table of contents, applying substitution references or resolving auto-numbered footnotes. In order to find out how to start, it is often helpful to look at similar features which are already implemented.  For example, if you want to add a new directive to the reStructuredText parser, look at the implementation of a similar directive in ``docutils/parsers/rst/directives/``. In the node tree above, the ``reference`` node does not contain the target URI (``http://www.python.org/``) yet. Instead, it's done by a **Transform**.  In this case (resolving a reference), it's done by the ``ExternalTargets`` transform in ``docutils/transforms/references.py``. Lea Wiemann Let us now examine the node tree: Modifying the Document Tree Before It Is Written Now you'll ask, "how do I actually extend Docutils?" Overview of the Docutils Architecture Parsing the Document Please see the docstring of publish_doctree for a list of parameters. Prerequisites Reading the Document Revision Since you probably won't need to touch readers, we will just move on to the next stage: So here we finally have our HTML output.  The actual document contents are in the fourth-last line.  Note, by the way, that the HTML writer did not render the (invisible) ``target`` node |---| only the ``paragraph`` node and its children appear in the HTML output. The **Parser** analyzes the the input document and creates a **node tree** representation.  In this case we are using the **reStructuredText parser** (``docutils/parsers/rst/__init__.py``). To see what that node tree looks like, we call ``quicktest.py`` (which can be found in the ``tools/`` directory of the Docutils distribution) with our example file (``test.txt``) as first parameter (Windows users might need to type ``python quicktest.py test.txt``):: The **Reader** reads the document from the source file and passes it to the parser (see below).  The default reader is the standalone reader (``docutils/readers/standalone.py``) which just reads the input data from a single text file.  Unless you want to do really fancy things, there is no need to change that. The Node Interface The Transforms are applied after parsing.  To see how the node tree has changed after applying the Transforms, we use the ``rst2pseudoxml.py`` tool: The top-level node is ``document``.  It has a ``source`` attribute whose value is ``text.txt``.  There are two children: A ``paragraph`` node and a ``target`` node.  The ``paragraph`` in turn has children: A text node ("My "), an ``emphasis`` node, a text node (" language is "), a ``reference`` node, and again a ``Text`` node ("."). The writer receives the node tree and returns the output document. For HTML output, we can test this using the ``rst2html.py`` tool:: These node types (``document``, ``paragraph``, ``emphasis``, etc.) are all defined in ``docutils/nodes.py``.  The node types are internally arranged as a class hierarchy (for example, both ``emphasis`` and ``reference`` have the common superclass ``Inline``).  To get an overview of the node class hierarchy, use epydoc (type ``epydoc nodes.py``) and look at the class hierarchy tree. This document has been placed in the public domain. This document is not complete.  Many topics could (and should) be covered here.  To find out with which topics we should write about first, we are awaiting *your* feedback.  So please ask your questions on the Docutils-develop_ mailing list. This is the introduction to Docutils for all persons who want to extend Docutils in some way. To get an HTML document out of the node tree, we use a **Writer**, the HTML writer in this case (``docutils/writers/html4css1.py``). To give you an understanding of the Docutils architecture, we'll dive right into the internals using a practical example. To retrieve the document tree, call:: Transforming the Document Using the ``rst2html.py`` front-end tool, you would get an HTML output which looks like this:: What Now? When you're done with modifying the document tree, you can write it out by calling:: While this does not look very exciting, transforms are a powerful tool to apply any kind of transformation on the node tree. While this looks very simple, it's enough to illustrate all internal processing stages of Docutils.  Let's see how this document is processed from the reStructuredText source to the final HTML output: Writing the Document You can modify the document tree right before the writer is called. One possibility is to use the publish_doctree_ and publish_from_doctree_ functions. You have used reStructuredText_ and played around with the `Docutils front-end tools`_ before.  Some (basic) Python knowledge is certainly helpful (though not necessary, strictly speaking). ``document`` is the root node of the document tree.  You can now change the document by accessing the ``document`` node and its children |---| see `The Node Interface`_ below. docutils-develop@lists.sourceforge.net 目录 
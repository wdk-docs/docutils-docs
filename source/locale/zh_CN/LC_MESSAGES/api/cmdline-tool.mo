��          �               |  7   }     �     �     �  	   �     �     �  -   �  +   !  �   M  �   @     �  =   �  8   '  =   `  3   �  �   �  ?   �  ]   �    "  &   0  ~  W  7   �     	      	     '	  	   /	     9	     >	  -   L	  +   z	  �   �	  �   �
     9  =   B  8   �  =   �  3   �  �   +  ?   �  ]       {  &   �   $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Author Contact Copyright Date David Goodger Inside A Docutils Command-Line Front-End Tool Next are some comments providing metadata:: Now we call the Publisher convenience function, which takes over. Most of its defaults are used ("standalone" Reader, "reStructuredText" Parser, etc.).  The HTML Writer is chosen by name, and a description for command-line help is passed in:: On Unixish systems, it's best to make the file executable (``chmod +x file``), and supply an interpreter on the first line, the "shebang" or "hash-bang" line:: Revision That's it!  `The Docutils Publisher`_ takes care of the rest. The module docstring describes the purpose of the tool:: The real work will be done by the code that's imported here:: This document has been placed in the public domain. This next block attempts to invoke locale support for internationalization services, specifically text encoding.  It's not supported on all platforms though, so it's forgiving:: We construct a description of the tool, for command-line help:: Windows systems can be set up to associate the Python interpreter with the ``.py`` extension. `The Docutils Publisher`_ class was set up to make building command-line tools easy.  All that's required is to choose components and supply settings for variations.  Let's take a look at a typical command-line front-end tool, ``tools/rst2html.py``, from top to bottom. docutils-develop@lists.sourceforge.net Project-Id-Version: docutils-docs 
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
 $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Author Contact Copyright Date David Goodger Inside A Docutils Command-Line Front-End Tool Next are some comments providing metadata:: Now we call the Publisher convenience function, which takes over. Most of its defaults are used ("standalone" Reader, "reStructuredText" Parser, etc.).  The HTML Writer is chosen by name, and a description for command-line help is passed in:: On Unixish systems, it's best to make the file executable (``chmod +x file``), and supply an interpreter on the first line, the "shebang" or "hash-bang" line:: Revision That's it!  `The Docutils Publisher`_ takes care of the rest. The module docstring describes the purpose of the tool:: The real work will be done by the code that's imported here:: This document has been placed in the public domain. This next block attempts to invoke locale support for internationalization services, specifically text encoding.  It's not supported on all platforms though, so it's forgiving:: We construct a description of the tool, for command-line help:: Windows systems can be set up to associate the Python interpreter with the ``.py`` extension. `The Docutils Publisher`_ class was set up to make building command-line tools easy.  All that's required is to choose components and supply settings for variations.  Let's take a look at a typical command-line front-end tool, ``tools/rst2html.py``, from top to bottom. docutils-develop@lists.sourceforge.net 
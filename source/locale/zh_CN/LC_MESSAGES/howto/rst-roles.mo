��          �               �  7   �     �     �     �  	   �  0   �     "     '     5  �   N  �   �     �  �   �  �   M  3   �  +     >   7  ^   v  �   �  '   �  &   �     �  ~  �  7   j     �     �     �  	   �  +   �     �     �     	  m    	  �   �	     
  �   
  m   �
  !   E  +   g  *   �  O   �  �     "   �  &   �        $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Authors Contact Copyright Creating reStructuredText Interpreted Text Roles Date David Goodger Define the Role Function Function attributes are described below (see `Specify Role Function Options and Content`_).  The role function parameters are as follows: Interpreted text roles are an extension mechanism for inline markup in reStructuredText.  This document aims to make the creation of new roles as easy and understandable as possible. Revision Standard roles are described in `reStructuredText Interpreted Text Roles`_.  See the `Interpreted Text`_ section in the `reStructuredText Markup Specification`_ for syntax details. The role function creates and returns inline elements (nodes) and does any additional processing required.  Its signature is as follows:: This document has been placed in the public domain. ``inliner``: The ``docutils.parsers.rst.sta ``lineno``: The line number where the interpreted text begins. ``name``: The local name of the interpreted role, the role name actually used in the document. ``rawtext``: A string containing the enitre interpreted text input, including the role and markup.  Return it as a ``problematic`` node linked to a system message if a problem is encountered. ``text``: The interpreted text content. docutils-develop@lists.sourceforge.net 目录 Project-Id-Version: docutils-docs 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2019-04-13 09:36+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_CN
Language-Team: zh_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.6.0
 $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $ $Revision: 7302 $ Authors Contact Copyright 创建reStructuredText解释的文本角色 Date David Goodger 定义角色功能 函数属性如下所述(请参阅 `Specify Role Function Options and Content`_ )。角色功能参数如下: 解释的文本角色是reStructuredText中内联标记的扩展机制。本文档旨在使新角色的创建尽可能简单易懂。 Revision 标准角色在 `reStructuredText Interpreted Text Roles`_ 中描述。有关语法详细信息，请参阅 `reStructuredText Markup Specification`_ 中的 `Interpreted Text`_ 部分。 角色函数创建并返回内联元素(节点)，并执行所需的任何其他处理。它的签名如下:: 本文档已置于公共领域。 ``inliner``: The ``docutils.parsers.rst.sta ``lineno``: 解释文本开始的行号。 ``name``: 解释角色的本地名称，文档中实际使用的角色名称。 ``rawtext``: 包含整个解释文本输入的字符串，包括角色和标记。如果遇到问题，将其作为与系统消息链接的 ``problematic`` 节点返回。 ``text``: 解释的文本内容。 docutils-develop@lists.sourceforge.net 目录 
==================================================
 Creating reStructuredText Interpreted Text Roles
==================================================

:Authors: David Goodger
:Contact: docutils-develop@lists.sourceforge.net
:Date: $Date: 2012-01-03 20:23:53 +0100 (Di, 03. J盲n 2012) $
:Revision: $Revision: 7302 $
:Copyright: This document has been placed in the public domain.

Interpreted text roles are an extension mechanism for inline markup in
reStructuredText.  This document aims to make the creation of new
roles as easy and understandable as possible.

Standard roles are described in `reStructuredText Interpreted Text
Roles`_.  See the `Interpreted Text`_ section in the `reStructuredText
Markup Specification`_ for syntax details.

.. _reStructuredText Interpreted Text Roles: ../ref/rst/roles.html
.. _Interpreted Text:
   ../ref/rst/restructuredtext.html#interpreted-text
.. _reStructuredText Markup Specification:
   ../ref/rst/restructuredtext.html


.. contents::


Define the Role Function
========================

The role function creates and returns inline elements (nodes) and does
any additional processing required.  Its signature is as follows::

    def role_fn(name, rawtext, text, lineno, inliner,
                options={}, content=[]):
        code...

    # Set function attributes for customization:
    role_fn.options = ...
    role_fn.content = ...

Function attributes are described below (see `Specify Role Function
Options and Content`_).  The role function parameters are as follows:

* ``name``: The local name of the interpreted role, the role name
  actually used in the document.

* ``rawtext``: A string containing the enitre interpreted text input,
  including the role and markup.  Return it as a ``problematic`` node
  linked to a system message if a problem is encountered.

* ``text``: The interpreted text content.

* ``lineno``: The line number where the interpreted text begins.

* ``inliner``: The ``docutils.parsers.rst.sta
��    4      �              \  5   ]     �  �   �     5  [   N  2   �     �  �   �     �     �  	   �     �       �     �   �     ,  �   @  n   �    A     P	     k	  �   w	     6
     I
     c
     u
  1   ~
  4   �
     �
  #     0   '  �   X  `   �  �   [  3   �  Z     C   k  ~   �  K   .  N   z  C   �  
     �     �   �  *   �  8   �  %   �  2        F  &   d     �  ~  �  5        G  �   Y     �  [     2   ^     �  �   �     r     �  	   �     �     �  �   �  �   _     �  �   �  n   �    �            �   +     �     �          )  1   2  4   d     �  !   �  0   �  �   
  `   �  �     3   �  Z   �  C     ~   a  K   �  N   ,  C   {  
   �  �   �  �   �  *   ;   8   f   %   �   2   �      �   &   !     =!   $Date: 2015-02-24 14:01:43 +0100 (Di, 24. Feb 2015) $ $Revision: 7800 $ (Substitute your preferred repository root for ROOT.)  To check out everything (main tree, sandboxes, web site, and parallel projects), type :: Accessing the Repository Alternatively, use the web interface of the git mirror at http://repo.or.cz/w/docutils.git. As of 2013-03-13 the subversion urls have changed. Author Before commiting changes to the repository, please ensure that the following lines are contained (and uncommented) in your local ~/.subversion/config file, so that new files are added with the correct properties set:: Checking Out the Repository Contact Copyright Creating a local git clone Date Docutils uses a Subversion_ repository located at ``docutils.svn.sourceforge.net``. Subversion is exhaustively documented in the `Subversion Book`_ (svnbook). For the project policy on repository use (check-in requirements, branching, etc.), please see the `Docutils Project Policies`__. General Information If you are going to commit changes to the repository, please read the **whole document**, especially the section "`Information for Developers`_"! If you changed your mind and want to use a different repository root, ``cd`` into your working copy and type:: If you would like to have write access to the repository, register with SourceForge.net_ and send your SourceForge.net user names to docutils-develop@lists.sourceforge.net. (Note that there may be a delay of several hours until you can commit changes to the repository.) Information for Developers Lea Wiemann Note that you probably do *not* want to check out the ROOT itself (without "/trunk"), because then you'd end up fetching the whole Docutils tree for every branch and tag over and over again. Quick Instructions Repository Access Methods Repository Layout Revision Setting Up Your Subversion Client For Development Sourceforge subversion access is documented `here`__ Switching the Repository Root The Docutils_ Subversion Repository The following tree shows the repository layout:: The main source tree lives at ``docutils/trunk/docutils/``, next to the sandboxes (``docutils/trunk/sandbox/``) and the web site files (``docutils/trunk/web/``). The repository can be browsed and examined via the web at http://sourceforge.net/p/docutils/code There is a git_ mirror at http://repo.or.cz/docutils.git providing `web access`_ and the base for `creating a local git clone`_. This document has been placed in the public domain. This will create a working copy of the whole trunk in a new directory called ``docutils``. To check out only the current main source tree of Docutils, type :: To get a checkout of the Docutils repository, first determine the root of the repository depending on your preferred protocol: To get a checkout of the Docutils source tree (with the sandboxes), type :: To update your working copy later on, ``cd`` into the working copy and type :: Users of git_ can clone a mirror of the docutils repository with :: Web Access While Unix and Mac OS X users will probably prefer the standard Subversion command line interface, Windows user may want to try TortoiseSVN_, a convenient explorer extension.  The instructions apply analogously. ``docutils/branches/`` and ``docutils/tags/`` contain (shallow) copies of either the whole trunk or only the main source tree (``docutils/trunk/docutils``). ``http://svn.code.sf.net/p/docutils/code`` ``svn+ssh://<USERNAME>@svn.code.sf.net/p/docutils/code`` `developer access`_: (read and write) and proceed according to the `git documentation`_. anonymous access: (read only) docutils-develop@lists.sourceforge.net 目录 Project-Id-Version: docutils-docs 
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
 $Date: 2015-02-24 14:01:43 +0100 (Di, 24. Feb 2015) $ $Revision: 7800 $ (Substitute your preferred repository root for ROOT.)  To check out everything (main tree, sandboxes, web site, and parallel projects), type :: Accessing the Repository Alternatively, use the web interface of the git mirror at http://repo.or.cz/w/docutils.git. As of 2013-03-13 the subversion urls have changed. Author Before commiting changes to the repository, please ensure that the following lines are contained (and uncommented) in your local ~/.subversion/config file, so that new files are added with the correct properties set:: Checking Out the Repository Contact Copyright Creating a local git clone Date Docutils uses a Subversion_ repository located at ``docutils.svn.sourceforge.net``. Subversion is exhaustively documented in the `Subversion Book`_ (svnbook). For the project policy on repository use (check-in requirements, branching, etc.), please see the `Docutils Project Policies`__. General Information If you are going to commit changes to the repository, please read the **whole document**, especially the section "`Information for Developers`_"! If you changed your mind and want to use a different repository root, ``cd`` into your working copy and type:: If you would like to have write access to the repository, register with SourceForge.net_ and send your SourceForge.net user names to docutils-develop@lists.sourceforge.net. (Note that there may be a delay of several hours until you can commit changes to the repository.) Information for Developers Lea Wiemann Note that you probably do *not* want to check out the ROOT itself (without "/trunk"), because then you'd end up fetching the whole Docutils tree for every branch and tag over and over again. Quick Instructions Repository Access Methods Repository Layout Revision Setting Up Your Subversion Client For Development Sourceforge subversion access is documented `here`__ Switching the Repository Root The Docutils_ Subversion存储库 The following tree shows the repository layout:: The main source tree lives at ``docutils/trunk/docutils/``, next to the sandboxes (``docutils/trunk/sandbox/``) and the web site files (``docutils/trunk/web/``). The repository can be browsed and examined via the web at http://sourceforge.net/p/docutils/code There is a git_ mirror at http://repo.or.cz/docutils.git providing `web access`_ and the base for `creating a local git clone`_. This document has been placed in the public domain. This will create a working copy of the whole trunk in a new directory called ``docutils``. To check out only the current main source tree of Docutils, type :: To get a checkout of the Docutils repository, first determine the root of the repository depending on your preferred protocol: To get a checkout of the Docutils source tree (with the sandboxes), type :: To update your working copy later on, ``cd`` into the working copy and type :: Users of git_ can clone a mirror of the docutils repository with :: Web Access While Unix and Mac OS X users will probably prefer the standard Subversion command line interface, Windows user may want to try TortoiseSVN_, a convenient explorer extension.  The instructions apply analogously. ``docutils/branches/`` and ``docutils/tags/`` contain (shallow) copies of either the whole trunk or only the main source tree (``docutils/trunk/docutils``). ``http://svn.code.sf.net/p/docutils/code`` ``svn+ssh://<USERNAME>@svn.code.sf.net/p/docutils/code`` `developer access`_: (read and write) and proceed according to the `git documentation`_. anonymous access: (read only) docutils-develop@lists.sourceforge.net 目录 
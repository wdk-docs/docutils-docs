��    D      <              \  5   ]     �  �   �     =     E  	   �     �     �     �     �  �     E   �  e   �     B  @   S  L   �  �   �  �   �  +  l	  8   �
  |   �
  �   N  E   !  #  g  o   �  c   �     _     o     x  '   �     �  7   �       F   "  �   i  w  U  �   �  �   �  3   E  }   y  �   �  w   |  
   �  6   �  D   6  �   {  �   "  �          .        F     c     �     �  3   �  "   �  (        :     V      u     �     �  �  �  ;   z  e   �  <        Y  ~  `  5   �       �   '     �     �  	   G     Q     d     i     }  �   �  E      e   ^      �   @   �   L   !  �   c!  �   "  +  �"  8   $  |   S$  �   �$  E   �%  #  �%  o   '  c   }'     �'     �'     �'  '   (     9(  7   X(     �(  F   �(  �   �(  w  �)  �   O+  �   <,  3   �,  }   �,  �   y-  w   �-  
   v.  6   �.  D   �.  �   �.  �   �/  �   �0     �1  .   �1     �1     �1     2     2  3   <2  "   p2  (   �2     �2     �2      �2     3     73  �  W3  ;   �4  e   85  <   �5     �5   $Date: 2017-08-10 19:51:01 +0200 (Do, 10. Aug 2017) $ $Revision: 8162 $ A docutils release has a commitment to support a minimum version and beyond. Before a release is cut, tests must pass in all supported python versions. Authors Before checking in any changes, run the entire Docutils test suite to be sure that you haven't broken anything.  From a shell:: Copyright Creating New Tests Date Directory Structure Docutils_ Testing For Python聽3, the tests must be converted with 2to3. To run the tests with Python聽3, ``cd`` to the package's root directory and do:: For example, ``functional/tests/some_test.py`` could read like this:: For more details on how to write tests, please refer to the documentation of the ``unittest`` module. Functional Tests Good resources covering the differences between Python versions: If defined, ``_test_more`` must be a function with the following signature:: If there is no similar test, you can write a new test from scratch using Python's ``unittest`` module.  For an example, please have a look at the following imaginary ``test_square.py``:: If this is the case and you made an intentional change, check the actual output for validity and correctness, copy it to ``functional/expected/`` (overwriting the old expected output), and commit the change. If you are implementing a new feature, be sure to write a test case covering its functionality.  It happens very frequently that your implementation (or even only a part of it) doesn't work with an older (or even newer) Python version, and the only reliable way to detect those cases is using tests. If you rerun ``test_functional.py`` now, it should pass. If you run ``test_functional.py`` later and the actual output doesn't match the expected output anymore, the test will fail. In order to create a new test, put the input test file into ``functional/input/``.  Then create a config file in ``functional/tests/`` which sets at least input and output file names, reader, parser and writer. Lea Wiemann <LeWiemann@gmail.com>; David Goodger <goodger@python.org> Now run ``test_functional.py``.  The test will fail, of course, because you do not have an expected output yet.  However, an output file will have been generated in ``functional/output/``.  Check this output file for validity and correctness.  Then copy the file to ``functional/expected/``. Often, it's easier to write the test first and then implement the functionality required to make the test pass. Performing functional testing means testing the Docutils system as a whole (i.e. blackbox testing). Python Versions Revision Running the Test Suite Testing across multiple python versions The Default Configuration File The Docutils 0.15 release supports Python 2.6 or later. The Testing Process The directory ``test/functional/`` contains data for functional tests. The file ``functional/tests/_default.py`` contains default settings. It is executed just before the actual configuration files, which has the same effect as if the contents of ``_default.py`` were prepended to every configuration file. The two variables ``test_source`` and ``test_destination`` contain the input file name (relative to ``functional/input/``) and the output file name (relative to ``functional/output/`` and ``functional/expected/``).  Note that the file names can be chosen arbitrarily.  However, the file names in ``functional/output/`` *must* match the file names in ``functional/expected/``. Therefore, you should install python 2.6, 2.7 as well as 3.3 up to the latest Python (3.5 at the time of this writing) installed and always run the tests on all of them. In a pinch, the edge cases (2.6, and 3.5) should cover most of it. This document describes how to run the Docutils test suite, how the tests are organized and how to add new tests or modify existing tests. This document has been placed in the public domain. This function is called from the test case to perform tests beyond the simple comparison of expected and actual output files. This will give you ``python2.6``, ``python2.7``, ``python3.3`` and ``python3.4``. Along with that, ``pip2.6``, ``pip2.7`` and so on. To save time, you can use `tox`_. To install tox, you can use ``easy_install tox`` or ``pip install tox``. From shell:: Unit Tests Unit tests and functional test should generally set :: Unit tests test single functions or modules (i.e. whitebox testing). When adding new functionality (or fixing bugs), be sure to add test cases to the test suite.  Practise test-first programming; it's fun, it's addictive, and it works! When running ``test_functional.py``, all config files in ``functional/tests/`` are processed.  (Config files whose names begin with an underscore are ignored.)  The current working directory is always Docutils' main test directory (``test/``). When writing new tests, it very often helps to see how a similar test is implemented.  For example, the files in the ``test_parsers/test_rst/`` directory all look very similar.  So when adding a test, you don't have to reinvent the wheel. Writing New Tests `PEP 290 - Code Migration and Modernization`__ `What's New in Python 2.6`__ `What's New in Python 2.7`__ `What's New in Python 3.3`__ `What's New in Python 3.4`__ ``_default.py``, the `default configuration file`_. ``expected/`` The expected output. ``functional/`` The main data directory. ``input/`` The input files. ``output/`` The actual output. ``some_test.html``, for example. ``some_test.py``, for example. ``some_test.txt``, for example. ``test_source`` and ``test_destination`` are removed from the namespace, as are all variables whose names begin with an underscore ("_").  The remaining names are passed as keyword arguments to ``docutils.core.publish_file``, so you can set reader, parser, writer and anything else you want to configure.  Note that ``settings_overrides`` is already initialized as a dictionary *before* the execution of the config file. ``tests/`` The config files for processing the input files. `pyenv`_ can be installed and configured (see `installing pyenv`_) to test multiple python versions:: in order to be independent on the users local configuration. 目录 Project-Id-Version: docutils-docs 
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
 $Date: 2017-08-10 19:51:01 +0200 (Do, 10. Aug 2017) $ $Revision: 8162 $ A docutils release has a commitment to support a minimum version and beyond. Before a release is cut, tests must pass in all supported python versions. Authors Before checking in any changes, run the entire Docutils test suite to be sure that you haven't broken anything.  From a shell:: Copyright Creating New Tests Date Directory Structure Docutils_ Testing For Python聽3, the tests must be converted with 2to3. To run the tests with Python聽3, ``cd`` to the package's root directory and do:: For example, ``functional/tests/some_test.py`` could read like this:: For more details on how to write tests, please refer to the documentation of the ``unittest`` module. Functional Tests Good resources covering the differences between Python versions: If defined, ``_test_more`` must be a function with the following signature:: If there is no similar test, you can write a new test from scratch using Python's ``unittest`` module.  For an example, please have a look at the following imaginary ``test_square.py``:: If this is the case and you made an intentional change, check the actual output for validity and correctness, copy it to ``functional/expected/`` (overwriting the old expected output), and commit the change. If you are implementing a new feature, be sure to write a test case covering its functionality.  It happens very frequently that your implementation (or even only a part of it) doesn't work with an older (or even newer) Python version, and the only reliable way to detect those cases is using tests. If you rerun ``test_functional.py`` now, it should pass. If you run ``test_functional.py`` later and the actual output doesn't match the expected output anymore, the test will fail. In order to create a new test, put the input test file into ``functional/input/``.  Then create a config file in ``functional/tests/`` which sets at least input and output file names, reader, parser and writer. Lea Wiemann <LeWiemann@gmail.com>; David Goodger <goodger@python.org> Now run ``test_functional.py``.  The test will fail, of course, because you do not have an expected output yet.  However, an output file will have been generated in ``functional/output/``.  Check this output file for validity and correctness.  Then copy the file to ``functional/expected/``. Often, it's easier to write the test first and then implement the functionality required to make the test pass. Performing functional testing means testing the Docutils system as a whole (i.e. blackbox testing). Python Versions Revision Running the Test Suite Testing across multiple python versions The Default Configuration File The Docutils 0.15 release supports Python 2.6 or later. The Testing Process The directory ``test/functional/`` contains data for functional tests. The file ``functional/tests/_default.py`` contains default settings. It is executed just before the actual configuration files, which has the same effect as if the contents of ``_default.py`` were prepended to every configuration file. The two variables ``test_source`` and ``test_destination`` contain the input file name (relative to ``functional/input/``) and the output file name (relative to ``functional/output/`` and ``functional/expected/``).  Note that the file names can be chosen arbitrarily.  However, the file names in ``functional/output/`` *must* match the file names in ``functional/expected/``. Therefore, you should install python 2.6, 2.7 as well as 3.3 up to the latest Python (3.5 at the time of this writing) installed and always run the tests on all of them. In a pinch, the edge cases (2.6, and 3.5) should cover most of it. This document describes how to run the Docutils test suite, how the tests are organized and how to add new tests or modify existing tests. This document has been placed in the public domain. This function is called from the test case to perform tests beyond the simple comparison of expected and actual output files. This will give you ``python2.6``, ``python2.7``, ``python3.3`` and ``python3.4``. Along with that, ``pip2.6``, ``pip2.7`` and so on. To save time, you can use `tox`_. To install tox, you can use ``easy_install tox`` or ``pip install tox``. From shell:: Unit Tests Unit tests and functional test should generally set :: Unit tests test single functions or modules (i.e. whitebox testing). When adding new functionality (or fixing bugs), be sure to add test cases to the test suite.  Practise test-first programming; it's fun, it's addictive, and it works! When running ``test_functional.py``, all config files in ``functional/tests/`` are processed.  (Config files whose names begin with an underscore are ignored.)  The current working directory is always Docutils' main test directory (``test/``). When writing new tests, it very often helps to see how a similar test is implemented.  For example, the files in the ``test_parsers/test_rst/`` directory all look very similar.  So when adding a test, you don't have to reinvent the wheel. Writing New Tests `PEP 290 - Code Migration and Modernization`__ `What's New in Python 2.6`__ `What's New in Python 2.7`__ `What's New in Python 3.3`__ `What's New in Python 3.4`__ ``_default.py``, the `default configuration file`_. ``expected/`` The expected output. ``functional/`` The main data directory. ``input/`` The input files. ``output/`` The actual output. ``some_test.html``, for example. ``some_test.py``, for example. ``some_test.txt``, for example. ``test_source`` and ``test_destination`` are removed from the namespace, as are all variables whose names begin with an underscore ("_").  The remaining names are passed as keyword arguments to ``docutils.core.publish_file``, so you can set reader, parser, writer and anything else you want to configure.  Note that ``settings_overrides`` is already initialized as a dictionary *before* the execution of the config file. ``tests/`` The config files for processing the input files. `pyenv`_ can be installed and configured (see `installing pyenv`_) to test multiple python versions:: in order to be independent on the users local configuration. 目录 
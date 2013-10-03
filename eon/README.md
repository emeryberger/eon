Eon
===

Software Requirements:
----------------------
* Ant (http://ant.apache.org)
* Dot (http://graphviz.org/)
* Java 1.5 or higher (http://java.sun.com)	
* Python (http://www.python.org/)
* STL (http://www.sgi.com/tech/stl/)
* TinyOS v 1.1 (http://www.tinyos.net/tinyos-1.x/doc/)


Installation Instructions
-------------------------
* Install TinyOS (see the TinyOS home page for instructions)
* Extract the Eon code.
* Use the Eon-generated Makefile in order to compile a program.
* Follow standard TinyOS installation instructions in order to program your mote.


Compilation
-----------

To build Eon:

	% export JAVA_HOME="<insert your java 1.5 directory here>"
	% ant

To build a server manually:

	% mkdir <my server dir>
	% java -cp ./bin:./lib/jdsl.jar:./lib/javacuplex.jar:lib/getopt.jar \
		edu.umass.eon.Main [-s] [-d <dot filename>] -r <my server dir> \ 
		<server-opts> src/apps/webserver/webserver-e
where `-s` means, "generate node stubs".  If you leave this off, you must
write your own nodes.  Stub generation will replace existing node files.

To build a server using `dommake.py`:

	% ./domake.py <app_name> <destination_folder> <generate stubs? Y/N> <copy implementation? Y/N>

where: 
* `<app_name>` is the application name. 
* `<destination_folder>` is the destination folder (must already exist). 
* `<generate stubs?>` indicates whether the existing node files should be replaced with stubs. 
* `<copy implementation?>` indicates whether the existing implementation files should be copied in. 


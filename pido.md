#pido

##Uses
strict
warnings
Dumper

Getopt::Long qw(:config no_ignore_case bundling pass_through no_auto_abbrev );

Pod::Usage;

use Apt;


***
## Debugging

**$debug **is set to undef to turn off debugging. Setting it to a defined value will turn debugging output on. 

***
##Command Line Options
[Getopt::Long](https://perldoc.perl.org/Getopt/Long.htm) documation.

**%operations** - a hash to map the operations to a subroutine call that setups the global @options for processing options for the operation in the command line. 

The format of the hash is 
long-form | single-letter mapped to a function reference

All other opitons are for processing the operation's options. 



***
## Parser Walkthrough
Getopt::Long is called twice. The first time is to determine which operation is going to be used. The hash %operations is used to map
the operation to sub that will configure options required 

## site.pp ##
## Puppet manifest for MODESIM
# $Rev   ::                               $:
# $Date  ::                               $:
# $Author:: bowenha2                      $:
##########################################################
$modesim-environment=""

include files.pp
include packages.pp
include mounts.pp

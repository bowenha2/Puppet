##  define packages ##
### For MODESIM.    ###
#######################################################
# $Rev:: 5                                $:
# $Date:: 2015-10-19 11:28:38 +0200 (Mon,#$:
# $Author:: bowenha2                      $:
#######################################################
package { 'openssh':
    ensure => present,
    }

package { 'environment-modules':
    ensure => present,    
}
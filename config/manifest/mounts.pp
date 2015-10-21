## mounts.pp ##
## Puppet manifest for MODESIM
# $Rev   ::                               $:
# $Date  ::                               $:
# $Author:: bowenha2                      $:
##########################################################

mount { 'nfsdata' :
    name => '/CHBS/data',
    device => "phchbs-s4123.eu.novartis.net:/vol/s4123_phchbs_sp01/${modesim_environment}/data",
    ensure => mounted,
    fstype => 'nfs',
    options => 'soft,defaults',

}

mount { 'nfshome' :
    name => '/CHBS/home',
    device => "phchbs-s4123.eu.novartis.net:/vol/s4123_phchbs_sp01/${modesim_environment}/home",
    ensure => mounted,
    fstype => 'nfs',
    options => 'soft,defaults',

}

mount { 'nfsdata' :
    name => '/CHBS/data',
    device => "phchbs-s4123.eu.novartis.net:/vol/s4123_phchbs_sp01/${modesim_environment}/data",
    ensure => mounted,
    fstype => 'nfs',
    options => 'soft,defaults',
}


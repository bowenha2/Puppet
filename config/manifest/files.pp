### define files ##
### For MODESIM. Works for Puppet Master and Agents ###
#######################################################
# $Rev:: 5                                       $:
# $Date:: 2015-10-19 11:28:38 +0200 (Mon, 19 Oct#$:
# $Author:: bowenha2                             $:
#######################################################

file { 'motd':
    path => '/etc/motd',
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => '0644',
    source => [ "file:///CHBS/data/PuppetFiles/etc/motd",
                "puppet:///PuppetFiles/etc/motd" 
    ],
}

file { '/usr/share/modesim/profile.d':
    ensure => directory,
    recurse => true,
    purge => true,
    owner => 'root',
    group => 'root',
    mode => '0755',
    source => [ "file:///CHBS/data/PuppetFiles/modesim-profiles/",
                "puppet:///PuppetFiles/modesim-profiles/"
    ],
}
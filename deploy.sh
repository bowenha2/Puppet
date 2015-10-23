#!/bin/bash
###############################################################################
# $Date:: 2015-10-19 13:56:56 +0200 (Mon, 19 Oct 2015)                      $:#
# $Rev:: 7                                                                  $:#
# $Author:: bowenha2                                                        $:#
# $URL:: http://chbslx0132/svn/modvms-Puppet/trunk/deploy.sh                $:#
###############################################################################
#                                                                             #
# Function:                                                                   #
#   Deploy the puppet configuration on puppet master.                         #
#   Deploy config to the agents using xCAT's xdcp.                            #
#   Extract the required files                                                #
#                                                                             #
################################################################################
# Variables galore!
#
REALHOSTNAME=`grep $(hostname) /usr/share/doc/modesim-6.0/data/test-mapping | awk '{print $2}'`
PUPDIR="/etc/puppet"
PUPMANDIR="${PUPDIR}/manifest"
PUPCONF="puppet.conf"
PUPFSCONF="fileserver.conf"
MODESIMENV="$(cat /etc/modesim-release | awk -F= '/^Env/{print $2}')"
WRKDIR=$(pwd)

# Check the hostname
if [ "$HOSTNAME" != "manager" ] ; then 
	echo "OOPS! - This is not the manager node. I will not continue!"
	exit 1
if
# Check environment
if [ -z ${MODESIMENV} ]; then
    echo "OOPS! - Unable to determine the MODESIM environment. Bye!"
    exit 1
fi

# First things first kill puppet master
#service puppetmaster stop && echo "Master of Puppets stopped" || exit 1


cp ${WORKDIR}/config/${PUPCONF}   ${PUPDIR}/${PUPCONF}
cp ${WORKDIR}/config/${PUPFSCONF} ${PUPDIR}/${PUPFSCONF}
cp -r manifest ${PUPMANDIR}


# Manipulate the conf files
sed -i "s/XXREALHOSTNAMEXX/${REALHOSTNAME}/g" ${PUPCONF}
sed -i "s/XXMSENVXX/${MODESIMENV}/g" ${PUPMANDIR}/*.pp

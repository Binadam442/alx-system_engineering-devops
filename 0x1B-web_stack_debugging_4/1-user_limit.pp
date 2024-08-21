# This manuscript enables the user alx to login and open files without error

# Increase hard file limit for user alx
exec { 'increase-hard-file-limit-for-alx-user':
  command => 'sed -i "/alx hard/s/5/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}

# Increase soft file limit for user alx
exec { 'increase-soft-file-limit-for-alx-user':
  command => 'sed -i "/alx soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'

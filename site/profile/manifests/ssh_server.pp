class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDoTyfqKwbz5hXP2AVSReYqXbielR+iN75PnPjiU+I4mGEQTUC41juoPoWUkEfDgmBmYliEuEPxyCeQnW2QXkLOAVv+Aqjipb/sOfvRhvypQisn+gW+bvseBndFVvDPK6mPOwB2wvVEh1kOaBl/LHdxJECLpMW9Brz7IRd+cBaVFRovreRiouTxXhAk4opmViGafHeORsV97T3p06xX3xk5+FISWTa9+MYkK2trzVHIGZSDRgNq6nPImjs7Al7egYWJAtStZBxmr1s4lrn5GuuURsGHEKL0PkfdGDah/ep70xmVEBBTYH/hisbVp0L4gUb0pw1nljKYtCf9DNsVwVuX',
	}  
}

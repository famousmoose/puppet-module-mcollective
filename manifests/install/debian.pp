
class mcollective::install::debian {

    package { "libstomp-ruby1.8":
        ensure => "1.0.4-3~bpo50+1",
    }

    package { "mcollective":
        ensure => $mcollective_package_version ? {
            "" => present,
            default => $mcollective_package_version
        },
        require => Package["stomp"],
    }

}

Title: Can install without root, with -u
Vagrant-Box: default
Vagrant-Destroy-If-bash: -d $HOME/sandstorm
Vagrant-Precondition-bash: ! -d $HOME/sandstorm
Cleanup: uninstall_sandstorm(parsed_headers['vagrant-box'])

$[run]CURL_USER_AGENT=testing /vagrant/install.sh -u
$[slow]Sandstorm makes it easy to run web apps on your own server. You can have:

1. A full server with automatic setup (press enter to accept this default)
2. A development server, for writing apps.

How are you going to use this Sandstorm install? [1] $[type]2
Expose to localhost only? [yes] $[type]
Where would you like to put Sandstorm? $[type]
Automatically keep Sandstorm updated? [yes]$[type]
Sandstorm supports 'dev accounts', a feature that lets anyone log in
as admin and other sample users to a Sandstorm server. We recommend
it for app development, and absolutely do not recommend it for
a server on the public Internet.
Enable dev accounts? [yes] $[type]
Server main HTTP port: [6080] $[type]
Database port (choose any unused port): [6081]$[type]
Note: local.sandstorm.io maps to 127.0.0.1, i.e. your local machine.
For reasons that will become clear in the next step, you should use this
instead of 'localhost'.
URL users will enter in browser: [http://local.sandstorm.io:6080]$[type]
Sandstorm requires you to set up a wildcard DNS entry pointing at the server.
This allows Sandstorm to allocate new hosts on-the-fly for sandboxing purposes.
Please enter a DNS hostname containing a '*' which maps to your server. For
example, if you have mapped *.foo.example.com to your server, you could enter
"*.foo.example.com". You can also specify that hosts should have a special
prefix, like "ss-*.foo.example.com". Note that if your server's main page
is served over SSL, the wildcard address must support SSL as well, which
implies that you must have a wildcard certificate. For local-machine servers,
we have mapped *.local.sandstorm.io to 127.0.0.1 for your convenience, so you
can use "*.local.sandstorm.io" here. If you are serving off a non-standard
port, you must include it here as well.
Wildcard host: [*.local.sandstorm.io:6080]$[type]

Config written to
Finding latest build for dev channel...
$[veryslow]Downloading: https://dl.sandstorm.io/sandstorm-
$[veryslow]Start sandstorm at system boot (using sysvinit)? [yes] $[type]
Setup complete. To start your server now, run:
sandstorm start
You should then configure the site at:
  http://local.sandstorm.io:6080/admin/
WARNING: This token expires in 15 minutes.
You can generate a new token by running 'sandstorm admin-token' from the command line

To learn how to control the server, run:
help
$[exitcode]0
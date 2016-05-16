
1. Best way to require all files from a directory in ruby

# file path is /srv/salt/zabbix/generate/templates/test/test1/*.rb

# This is used to change path in the script
$LOAD_PATH.unshift(File.dirname(__FILE__))
Dir.chdir("/srv/salt/zabbix/generate/templates")
path = Dir.pwd

# This is used to require all files in the path
Dir.glob( File.join( path, '{test}', '**', '*.rb' ), &method(:require) )

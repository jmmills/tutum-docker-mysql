if [ -n $DB_PORT ]
then
	perl -E 'say "[client]\nuser=admin\nprotocol=$1\nhost=$2\nport=$3" if $ARGV[0] =~ /(\S+):\/\/(\S+):(\d+)/' $DB_PORT >~/.my.cnf
	echo pass=$DB_ENV_MYSQL_PASS >>~/.my.cnf
fi

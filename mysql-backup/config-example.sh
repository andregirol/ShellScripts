# Database configuration
database="my_database"
dbhost="localhost"
dbuser="userdb"
dbpass="mypass"

# ==========================
# Mail Server configuration
# ==========================

# User Configuration
from='the_sender@domain.com'
to='the_destination@domain.com'
subject="My Subject Here"
message="Write what you want"

# Settings for Gmail.
# For other services, check sendEmail documentation

# Usage: hostname.com:[port]
smtp='smtp.gmail.com:587'

# Gmail username WITHOUT @gmail.com
username='my_gmail_user'
pass='my_password'

# ==========================
# File Server Configuration
# ==========================

sshuser="my_ssh_user"
fileserver="my.host.com"

# Destination folder WITH TRAILING SLASH
serverfolder="backup/destination/"

# Assembles ssh URI
destination="$sshuser@$fileserver:$serverfolder"

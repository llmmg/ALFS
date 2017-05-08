#MAUVAIS SCRIPT
#save result of cmd in variable and display result
VAR="uname -m"

if [[ $VAR !="x86_64" ]]; then
	echo "bonjour"
fi
$VAR

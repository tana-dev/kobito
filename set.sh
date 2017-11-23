echo "'${1}' copy to '${2}'"

echo "Do you want copy ? [Y/n]"
read ANSWER

case $ANSWER in
	"Y" | "y" | "yes" | "Yes" | "YES" )
		echo "copy";;
	* )
		echo "Don't copy"; exit;;
esac

case ${2} in
	"git" )
		if [ -e /Users/${1}/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/ ]; then
			cp /Users/${1}/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/Kobito* ./data/
			echo "success to git"
		fi;;
	"local" )
		if [ -e /Users/${1}/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/ ]; then
			cp ./data/Kobito* /Users/${1}/Library/Containers/com.qiita.Kobito/Data/Library/Kobito/
			echo "success to local"
		fi;;
	* )
		echo "Please input 'git' or 'local'"; exit 1;;
esac


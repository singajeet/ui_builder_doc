if [ $1=="" ]
then
	echo "No commit message provided, will exit now!"
else
	echo "Adding files to repo and will push to github"
	git add .
	git status

	read -p "Proceed with commit and push(y/n):" result

	if [ $result=="y" ]
	then
		git commit -m "$1"
		git push origin master
		echo "Files pushed successfully!"
	else
		echo "Commit & File push cancelled!"
	fi
fi

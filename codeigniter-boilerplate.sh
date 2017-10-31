echo -n "Install CodeIgniter Boilerplate"

git remote add sync git@github.com:JonZiemlich/codeigniter-boilerplate.git
git pull sync master
git branch --set-upstream github sync/master

rm codeigniter-boilerplate.sh
rm README.md
touch README.md

bash init.sh

git rm init.sh
git add *
git commit -m "Init"
git push -u origin master
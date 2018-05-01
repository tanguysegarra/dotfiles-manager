* Fix when you git clone on a new machine, to move the files in correct folders (e.g. config file in .config/i3/config);
* Decide an easy folder architecture for cloned repo;
* Fix script gpdots.sh for when you want to push from the new machine;
* Improve gpdots.sh : use bash array full of paths/to/file and iterate over the array to git add -> easier for users;
```
declare -a arr=("element1" "element2" "element3")
for (( i=1; i<${arraylength}+1; i++ ));
OR for i in "${arr[@]}"
do
   git add ${array[$i-1]}
    OR git add $i
done
```

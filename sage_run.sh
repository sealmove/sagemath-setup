directory=$(dirname "${1}")
filename=$(basename "${1}")
new_filename="_${filename}"
new_path="${directory}/${new_filename}"
echo 'load("/home/sage/.sage/init.sage")' | cat - $1 > ${new_path}
docker exec -it sagemath sage "/home/sage/workspace/$new_path"
rm "${new_path}"
rm "${new_path}.py"
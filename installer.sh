chmod +x cmd && echo -e "\007" >/dev/tty9; sleep 1

cp cmd /usr/bin/
cp cmd /bin
echo "Команда установлена, можете использовать ее, прописав cmd --help"

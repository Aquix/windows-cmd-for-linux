#!/bin/bash
# Windows CMD-Console for Linux | WineHQ
#

PATH=/bin:/usr/bin:/usr/local/bin:$PATH
export PATH

action="$1"

: ${TMPDIR:=/tmp}



TEMPDIR=$TMPDIR/cmd.$$
(umask 077 && mkdir $TEMPDIR) || {
  echo "$0: невозможно создать временную директорию" >&2
  exit 1
}

TEMPFILE1=$TEMPDIR/cmdtemp
TEMPFILE2=$TEMPDIR/cmdtemp

cd $TEMPDIR

USAGE="Использование: cmd [--open|--path|--install|--help]"
while [ $# -gt 0 ]; do
  case "$1" in
  --help)   shift ; do_help=y ;;
  --version)  shift ; do_version=y ;;
  --open)  shift ; do_open=y ;;
  --install)  shift ; do_install=y ;;
  --path)  shift ; do_path=y ;;
  --install-all-kali)  shift ; do_install_all_kali=y ;;
  --)   shift ; break ;;
  -*)   echo -ne "\e[32;1mОШИБКА:\e[0m"; echo "CMD: ${1}: неверная операция" >&2
      echo "$USAGE" >&2
      exit 2 ;;
  *)    break ;;
  esac
done
CMDTESTERS="aquix.official@outlook.com"


case "$action2" in

--alpha*|--beta*|--devel*|--rc*)
    echo "$0: Это временный релиз. Вы можете отправить информацию о баге."
    echo $n "$0: Отправить тестерам? $c"
    read ans
    case "$ans" in
    y*|Y*)  ANS="${ANS},${CMDTESTERS}" ;;
    esac ;;
esac

case "$RELSTATUS" in
alpha*|beta*|devel*|rc*)  ANS=aquix.official@outlook.com ;;
*)        ANS=ayzek-klark-2016@mail.ru ;;
esac

case "$action" in
--open)
cat << HERE_EOF; sleep 2;
  Wine >> cmd wine $HOME/.wine/drive_c/windows/system32/cmd.exe
HERE_EOF
cat << HERE_EOF; sleep 1;
  Open... 
HERE_EOF

trap ctrl_c INT

function ctrl_c() {
        echo " "
}

for i in `seq 1 20`; do
    printf "["
    sleep 0.1
    echo -n ">"
done

echo " "

wine /root/.wine/drive_c/windows/system32/cmd.exe

function ctrl_c() {
        echo "Завершение.."
}

for i in `seq 1 11`; do
    sleep 0.1
    echo -n ">"
done

echo " "
  ;;
--path) 
echo "$HOME/.wine/drive_c/windows/system32/cmd.exe"
  ;;
-p)
  ;;
-o)
  ;;
open) echo -ne "\e[32;1mОШИБКА:\e[0m"; echo " Пропущены символы перед словом open: --"
  ;;
path) echo -ne "\e[32;1mОШИБКА:\e[0m"; echo " Пропущены символы перед словом path: --"
  ;;
--install) sudo dpkg --add-architecture i386 && echo -e "\007" >/dev/tty9 && sudo add-apt-repository ppa:wine/wine-builds && sudo apt-get update
  echo "Installed."
  wine --help
  ;;
--install-all-kali) echo "Installing..."
  sudo apt-get install wine-gecko
  sudo apt-get install winetrics
  sudo apt install wine
  echo "Installed."
  ;;
--help)
  echo "Справка по использованию команды CMD:"
  echo    ${USAGE}
  echo "  Запуск: cmd [--open]"
  echo "  Помощь: cmd [--help]"
  ;;
install)
  echo -ne "\e[32;1mОШИБКА:\e[0m"; echo " Пропущена операционная функция до: install (--)"
  echo "Для справки пропишите cmd --help"
;;

*)
  echo -ne "\e[32;1mОШИБКА:\e[0m"; echo " Неизвестный аргумент: $action"; echo -e "\007" >/dev/tty9
  echo "Использование: $0 [--open|--path]"
  echo "Помощь: cmd --help"
esac


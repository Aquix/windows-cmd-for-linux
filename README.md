**Windows CMD for Linux**
=========================
Данная команда добавит вам функционал командой строки ***Windows*** в ***Linux***, как понятно из описания.

**Установка**
-------------
Чтобы установить команду, вы должны прописать в Терминале:
- git clone https://github.com/Aquix/windows-cmd-for-linux.git
- cd windows-cmd-for-linux
- chmod +x installer.sh
- ./installer.sh

**После установки нужно прописать (Kali GNU/Debian):**
-------------------------------------------
- cmd --install-all-kali

**Ubuntu:**
-------------------
- cmd --install

**Linux Mint:**
-------------------
- cmd --install-mint

**Все, установка завершена, пользуйтесь!** 
=============================

**Связь:**
==========
- VK: https://vk.com/realaquix
- Discord: Aquix-#3866

**Проверено на дистрибутивах:**
==============================
- Ubuntu 18.04
- Kali Linux
- Debian
- Linux Mint 19.1

**Ошибки и их объяснения**
==========================
- i386_error_code | 0x0277: ошибка с добавлением архитектуры, возникает из-за ошибки в **bash**, либо от того, что **скрипт запущен без прав root'a**.
- winehq_error_code | 0x0912: ошибка с **wget**, скорее всего, он у вас не установлен, либо установлена **старая версия**.
Попробуйте прописать **apt-get update**, но возможно, **вы не запустили скрипт как root**.
- add_key_error_code | 0x0052: ошибка с добавлением ключа **apt-key**, возникает из-за ошибки дистрибутива, попробуйте перезагрузить систему, **либо вы не запустили скрипт как root**.
- add_repos_error_code | 0x0092: ошибка с добавлением **winehq-репозитория**, возникает из-за той же ошибки дистрибутива, попробуйте перезагрузить систему, или смените дистрибутив, **либо вы не запустили скрипт как root**.
- winehq_inst_error_code | 0x0932: ошибка с установкой самого **winehq**, возникает из-за ошибок выше. *(исключение: 0x0277)*

либо вы не запустили скрипт как root))
-----------------------------------------
**Дополнительно:**
============================
**Встроенные команды CMD:**
--------------------------------
- ASSOC		Показывает или изменяет сопоставления типов файлов
- ATTRIB		Показывает или изменяет DOS-атрибуты файла
- CALL		Вызывает один bat-файл из другого
- CD (CHDIR)	Изменяет текущий каталог
- CHOICE		Ждёт выбора из списка
- CLS		Очищает экран консоли
- COPY		Копирует файл(ы)
- CTTY		Изменяет устройство ввода/вывода
- DATE		Показывает или изменяет системную дату
- DEL (ERASE)	Удаляет файл или несколько файлов
- DIR		Выводит содержимое каталога
- ECHO		Выводит текст непосредственно в консоль
- ENDLOCAL	Заканчивает действие локальных изменений окружения
- FTYPE		Выводит или изменяет команды открытия, связанные с типами файлов
- HELP		Показывает краткую подсказку по команде
- MD (MKDIR)	Создаёт каталог
- MKLINK	Создаёт символическую ссылку
- MORE		Выводит данные по страницам
- MOVE		Перемещает файл, несколько файлов или дерево каталогов
- PATH		Показывает или изменяет путь поиска программ
- PAUSE		Останавливает исполнение bat-файлa
- POPD		Восстанавливает предыдущий текущий каталог, сохранённый с
		      помощью
- PROMPT		Изменяет приглашение командной строки
- PUSHD		Сохраняет текущий каталог и переходит в другой
- REN (RENAME)	Переименовывает файл
- RD (RMDIR)	Удаляет каталог
- SET		Показывает или изменяет переменные окружения
- SETLOCAL	Начинает действие локальных изменений окружения
- START		Запускает программу, или открывает файл в соответствующей
		      программе
- TIME		Показывает или изменяет текущее системное время
- TITLE		Устанавливает заголовок окна cmd для текущей сессии
- TYPE		Выводит содержимое текстового файла
- VER		Показывает текущую версию CMD
- VOL		Показывает метку тома дискового устройства
- XCOPY		Копирует файлы или деревья каталогов
- EXIT		Закрывает CMD


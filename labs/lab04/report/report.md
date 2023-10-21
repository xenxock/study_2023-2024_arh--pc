---
## Front matter
title: "Лабораторная работа №4"
subtitle: "Cоздание и процесс обработки программ на языке ассемблера NASM"
author: "Налобин Михаил Дмитриевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью данной лабораторной работы является освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Ход работы

Перешли в каталог с лабораторной работой №4, создали текстовый файл hello.asm с помощью команды touch и открыли этот текстовый файл с использованием gedit(рис. @fig:001).

![Создание и открытие файла формата .asm](image/1.png){#fig:001 width=70%}

В текстовом редакторе gedit ввели необходимые команды (рис. @fig:002).

![Заполнение файла командами](image/2.png){#fig:002 width=70%}

Превратили текст программы в объективный код с использованием NASM и проверили корректность выполнения (рис. @fig:003).

![Компиляция программы hello](image/3.png){#fig:003 width=70%}

Путем применения расширенного синтаксиса командной строки NASM выполнили команду компиляции файла hello.o в obj.o, после чего убедились в том, что все файлы были созданы (рис. @fig:004).

![Компиляция программы полным вариантом командной строки NASM](image/4.png){#fig:004 width=70%}

Передали объектный файл hello.o на обработку компоновщику ld и проверили выполнение командой ls (рис. @fig:005).

![Передача компоновщику файла hello.o](image/5.png){#fig:005 width=70%}

Передали объектный файл obj.o в ходе получим исполняемый файл с именем main, далее снова проверяем выполнение обработки компоновщика (рис. @fig:006).

![Передача компоновщику файла obj.o](image/6.png){#fig:006 width=70%}

Запустили на выполнение созданный исполняемый файл, набрав в командой строке ./hello (рис. @fig:007).

![Запуск исполняемого файла](image/7.png){#fig:007 width=70%}

##Самостоятельная работа

Создали копию файла hello.asm с именем lab4.asm с помощью команды cp и проверили на наличие (рис. @fig:008).

![Создание файла lab4.asm](image/8.png){#fig:008 width=70%}

Пользуясь текстовым редактором gedit, внесли изменения в текст программы, в результате чего должны будем получить при выводе мои имя и фамилию (рис. @fig:009 и рис. @fig:010).

![Редактирование файла lab4.asm](image/9.png){#fig:009 width=70%}

![Вид отредактированного файла](image/10.png){#fig:0010 width=70%}

Оттранслировали полученный текст в объектный файл (рис. @fig:011).

![Компиляция программы lab4](image/11.png){#fig:011 width=70%}

Выполнили компоновку объектного файла и запустили получившийся исполняемый файл (рис. @fig:012).

![Передача компоновщику файла hello.o и просмотр результата](image/12.png){#fig:012 width=70%}

Загрузили все файлы на github (рис. @fig:013).

![Загрузка на Github](image/13.png){#fig:013 width=70%}

# Выводы

В ходе данной лабораторной работы освоили процедуры компиляции и сборки программ, написанные на ассемблере NASM, на примере вывода сообщения 'Hello World!' и фамилией с именем.

:::

---
## Front matter
title: "Лабораторная работа №3"
subtitle: "Язык разметки Markdown"
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

Целью данной лабораторной работы является приобретение навыка использования легковесного языка разметки Markdown для оформления отчетов.

# Ход работы

Открыли терминал и ввели стандартные команды для начала работы с центральным репозиторием (рис. @fig:001).

![Выполнение действий, необходимых для работы с файлами](image/step_one.png){#fig:001 width=70%}

При помощи Makefile провели компиляцию шаблона командой make и удалили полученные данные командой make clean, проверяя корректность их работы (рис. @fig:002).

![Использования Makefile](image/step_two.png){#fig:002 width=70%}

После заполнения отчета и его компиляции, загрузили файлы на Github (рис. @fig:003).

![Загруза на Github](image/step_three.png){#fig:003 width=70%}

##Самостаятельная работа

Пользуясь gedit, сделали отчет лабораторной работы №2 в формате Markdown (рис. @fig:004).

![Работа в gedit с отчетом Лабораторной работы №2](image/step_four.png){#fig:004 width=70%}

Провели компиляцию отчета лабораторной работы №2, создав отчет в pfd и docx (рис. @fig:005).

![Компиляция отчета Лабораторной работы №2](image/step_five.png){#fig:005 width=70%}

Загрузили все файлы на github (рис. @fig:006).

![Загрузка на Github](image/step_six.png){#fig:006 width=70%}

# Выводы

В ходе данной лабораторной работы приобрели навык использования языка разметки Markdown на примере создания и оформления отчетов.

:::

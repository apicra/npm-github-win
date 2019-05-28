# ApiCra npm-github-win

[![npm version](https://img.shields.io/npm/v/apicra.svg?style=flat-square)](https://www.npmjs.org/package/apicra)
[![build status](https://img.shields.io/travis/apicra/apicra.svg?style=flat-square)](https://travis-ci.org/apicra/apicra)
[![code coverage](https://img.shields.io/coveralls/mzabriskie/apicra.svg?style=flat-square)](https://coveralls.io/r/mzabriskie/apicra)
[![install size](https://packagephobia.now.sh/badge?p=apicra)](https://packagephobia.now.sh/result?p=apicra)
[![npm downloads](https://img.shields.io/npm/dm/apicra.svg?style=flat-square)](http://npm-stat.com/charts.html?package=apicra)
[![gitter chat](https://img.shields.io/gitter/room/mzabriskie/apicra.svg?style=flat-square)](https://gitter.im/mzabriskie/apicra)
[![code helpers](https://www.codetriage.com/apicra/apicra/badges/users.svg)](https://www.codetriage.com/apicra/apicra)


Api Creator it's DevopsTool with command line for NPMJS packages, connected with Github on Windows OS
+ Scripts for Development
+ Github
+ Npmjs
+ Bash commands (version for windows only), version for linux npm-github-linux

https://apicra.com/


## Features

#### Publishing
Commit, push to github and publish on nodejs.com package with one command:
```bash
-publish.bat
```

#### Versioning
publish the new Version
by file package.json, Apicra is supporting tags versioning on Github and npmjs
```bash
-version.bat
```

#### Tickets
Apicra is supporting tickets for versioning, so you have possibility to generate logs, history of your each version
```bash
-ticket.bat
```

#### Browser Support

![Chrome](https://raw.github.com/alrra/browser-logos/master/src/chrome/chrome_48x48.png) | ![Firefox](https://raw.github.com/alrra/browser-logos/master/src/firefox/firefox_48x48.png) | ![Safari](https://raw.github.com/alrra/browser-logos/master/src/safari/safari_48x48.png) | ![Opera](https://raw.github.com/alrra/browser-logos/master/src/opera/opera_48x48.png) | ![Edge](https://raw.github.com/alrra/browser-logos/master/src/edge/edge_48x48.png) | ![IE](https://raw.github.com/alrra/browser-logos/master/src/archive/internet-explorer_9-11/internet-explorer_9-11_48x48.png) |
--- | --- | --- | --- | --- | --- |
Latest ✔ | Latest ✔ | Latest ✔ | Latest ✔ | Latest ✔ | 11 ✔ |


## Installing

Using npm:

```bash
npm install apicra
```

Using bower:

```bash
bower install apicra
```

Using yarn:

```bash
yarn add apicra
```

Using chocolate:

```bash
choco install apicra
```

### clone testing scripts using git on windows console

    git clone https://github.com/apicra/npm-github-win-test.git


### install apicra tool on windows using git:

    -apicra-install-by-git.bat

All files are copied to folder .apicra

        mkdir .apicra
        echo .apicra/ >> .gitignore
        git clone https://github.com/apicra/npm-github-win.git .apicra


### If you need update apicra tool:

    -apicra-update-by-git.bat


### Create package.json

    -npm-init-package.bat

### Check a version

    -apicra-version.bat


### Create first ticket

    -apicra-ticket.bat

### commit &  push changes to git repository



## How works Tickets

.ticket
+ v1.0.1.txt
+ v1.0.2.txt
...

## How works Variables

.variable
+ homepage.txt
+ package.txt
+ repository.txt
+ version.txt



from .ticket folder should be crating the  LOG.md file with details about all tickets for main version


### Pryzgotować wygląd
https://github.com/verdaccio/verdaccio

### Dependencies

curl-7.65.0-win32-mingw

### Od Autora

Od wielu lat programuję na różnych platformach, obecnie w środowisku windows.
W kilkunastu projektach tworzyłem już indywidualne oraz globalne skrypty do zarządzania projektem
Obecnie Skrypty do automatyzacji DEVOPS nazywam apicra

bazując na ostatnio utworzonym projekcie
https://github.com/gitpad-pl/github
(paczka npmjs) stworzyłem jeszcze bardziej zaawansowane skrypty do aktualizacji projektu bez odchodzenia od konsoli.

Każda sytuacja wymagająca użycia myszki lub wymagająca wielu komend zabiera czas, który przy użyciu skryptów .apicra można zaoszczędzić

Apicra uwzględnia rózne technologie i serwisy wspierające utrzymanie aplikacji i publikację kolejnych wersji.

+ lokalny system plików
+ repozytorium Github
+ npmjs

### Przykładowy workflow przydający się do rozwoju oprogramowania przy uzyciu nodejs:

https://github.com/apicra/win-ticket-version-flow


Nazwa: Ticket - Version flow bierze się z 2 etapowego rozwoju aplikacji
Komendą -ticket.bat tworzy się opis zadania, które wchodzi w skład aktualnej wersji, każy "ticket" jest zapisywany do pliku z numerem wersji w folderze /ticket
wszystkie zadania są publikowane przy każdej aktualizacji wersji (w następnym kroku)

    -ticket.bat "nazwa zadania"


W przypadku zamknięcia wersji uruchamia się komendę, podając lub nie typ aktualizacji wersji MAJOR.MINOR.PATCH

    -version.bat "minor"


#### Oprócz tych komend są jeszcze:

Tworzenie folderu projektu i plików inicjujących, commit i push na server github

    -create.bat "tom-sapletta-com" "projectname"

Pierwsza publikacja paczki na NPMJS, następne są realizowane przez komendę: -version.bat

    -publish.bat "projectname"


Usunięcie z 3 miejsc: lokalny system plików, repozytorium github, paczka npmjs

    -delete.bat "tom-sapletta-com" "projectname"


#### Tutaj trochę więcej informacji o wersjonowaniu
https://semver.org/lang/pl/


#### Podsumowanie

Na przykładzie workflow ticket-version można ocenić na ile takie skrypty pomogą w danym projekcie
Tutaj położyłem nacisk na szybką publikację nowych wersji bez wchodzenia na strony dystrybutorów aplikacji
oraz na możliwość późniejszej rozbudowy o kolejnych dystrybutorów paczek, jak chocolate, packagist, itd


#### Wsparcie projektu
Jeśli uważasz, że projekt jest ciekawy a nawet wypróbowałeś go i przydał się w Twoim projekcie,
lub przeciwnie nie spełnia oczekiwań lub zawiera błędy, to zachęcam do kontaktu na stronie projektu github.
Każdy zalogowany użzytkownik github może stworzyć ticket dla projektu i zgłosić uwagi.

Finansowe wsparcie nie jest obecnie przewidziane, ale pojawi się taka możliwość pod koniec roku 2019

Przyjemnej pracy!





# progettoAsp-Clingo
Progetto in ASP (Clingo) per il corso di Intelligenza Artificiale e Laboratorio - Unito 2022.

## Descrizione progetto

### Calendario da 20 squadre (calendar.cl)

Viene utilizzato il paradigma ASP (Answer Set Programming) per la generazione con Clingo del calendario di una competizione sportiva, in particolare
di un campionato avente le seguenti caratteristiche:
- sono iscritte 20 squadre;
- il campionato prevede 38 giornate, 19 di andata e 19 di ritorno NON
simmetriche, ossia la giornata 1 di ritorno non coincide necessariamente con la
giornata 1 di andata a campi invertiti;
- ogni squadra fa riferimento ad una città, che offre la struttura in cui la squadra
gioca gli incontri in casa;
- ogni squadra affronta due volte tutte le altre squadre, una volta in casa e una
volta fuori casa, ossia una volta nella propria città di riferimento e una volta in
quella dell’altra squadra;
- otto delle 20 squadre fanno riferimento alla medesima città e condividono la
stessa struttura di gioco, quindi non possono giocare entrambe in casa nella
stessa giornata. Ovviamente, fanno eccezione le giornate in cui giocano
l’una contro l’altra (quattro derby);
- ciascuna squadra non deve giocare mai più di due partite consecutive in casa o fuori casa;
- la distanza tra una coppia di gare di andata e ritorno è di almeno 10 giornate, ossia se SquadraA vs SquadraB è programmata per la giornata 12, il ritorno 
SquadraB vs SquadraA verrà schedulato non prima dalla giornata 22.

### Calendario da 14 squadre (calendarMini.cl)

Per il calendario a 14 squadre (versione ridotta per questioni di tempistiche) si utilizzando le stesse caratteristiche (vincoli)
del calendario a 20 squadre, con i seguenti vincoli modificati:
- si prevede UN solo derby;
- distanza tra giornata di andata e giornata di ritorno di almeno 8 giornate.

**Disclaimer: Tutti i dati inseriti nel database da me sono dati di prova, talvolta casuali e talvolta reali a scopo di prova. Non utilizzare alcun dato per nessun scopo particolare. Non mi assumo nessuna responsabilità.**

## Come eseguire

Installare Clingo da https://potassco.org/clingo/. Oppure installarlo tramite conda da riga di comando:
```
conda install -c potassco clingo
```
Una volta installato si può proseguire con le esecuzioni.

Da riga di comando, per eseguire il calendario con 20 squadre, 4 derby (ci mette più di 30 minuti), utilizzando 8 threads:
```
clingo calendar.cl -t 8
```

Per eseguire il calendario con 14 squadre, 1 derby, utilizzando 8 threads:
```
clingo calendarMini.cl -t 8
```

## Video esecuzione del progetto
<a href="http://www.youtube.com/watch?feature=player_embedded&v=Yx1lK06EtuQ
" rel="noopener" target="_blank"><img src="http://img.youtube.com/vi/Yx1lK06EtuQ/0.jpg" 
alt="Esecuzione Clingo" width="400" border="10" /></a>

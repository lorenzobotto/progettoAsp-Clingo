# progettoAsp-Clingo
Progetto in ASP (Clingo) per IA Lab 2022

## Descrizione progetto

### Calendario da 20 squadre (calendar.cl)

Viene utilizzato il paradigma ASP (Answer Set Programming) per la generazione con clingo del calendario di una competizione sportiva, in particolare
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
- Due delle 20 squadre fanno riferimento alla medesima città e condividono la
stessa struttura di gioco, quindi non possono giocare entrambe in casa nella
stessa giornata. Ovviamente, fanno eccezione le due giornate in cui giocano
l’una contro l’altra (derby).

Vincoli Facoltativi:
- ciascuna squadra non deve giocare mai più di due partite consecutive in casa o fuori casa;
- ci sono 2 o più derby;
- la distanza tra una coppia di gare di andata e ritorno è di almeno 10 giornate, ossia se SquadraA vs SquadraB è programmata per la giornata 12, il ritorno 
SquadraB vs SquadraA verrà schedulato non prima dalla giornata 22.

### Calendario da 14 squadre (calendar.cl)

Per il calendario a 14 squadre (versione ridotta per questioni di tempistiche) sono stati modificati i seguenti vincoli:
- si prevede UN solo derby;
- distanza tra giornata di andata e giornata di ritorno di almeno 8 giornate.

## Clingo
Se si vuole eseguire con meno squadre modificare i parametri necessari.

Per eseguire il calendario con 20 squadre, 4 derby (ci mette più di 30 minuti) e 8 threads:
```
clingo calendar.cl -t 8
```

### Link slides di presentazione
```
https://docs.google.com/presentation/d/13S8CoDo5IFBfqHNVrvCG93rtrTC_9ikhPv1X8IMZOJo/edit?usp=sharing
```

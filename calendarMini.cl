squadra(
    milan;
    napoli;
    inter;
    juventus;
    atalanta;
    roma;
    lazio;
    fiorentina;
    sassuolo;
    verona;
    torino;
    bologna;
    empoli;
    udinese;
    sampdoria;
    spezia;
    cagliari;
    venezia;
    genoa;
    salernitana
).

citta(milan, milano).
citta(napoli, napoli).
citta(inter, londra).
citta(juventus, torino).
citta(atalanta, bergamo).
citta(roma, roma).
citta(lazio, monaco).
citta(fiorentina, firenze).
citta(sassuolo, sassuolo).
citta(verona, verona).
citta(torino, torino).
citta(bologna, bologna).
citta(empoli, empoli).
citta(udinese, udine).
citta(sampdoria, genova).
citta(spezia, laspezia).
citta(cagliari, cagliari).
citta(venezia, venezia).
citta(genoa, barcellona).
citta(salernitana, salerno).

giornataAndata(1..19).
giornataRitorno(20..38).

% 5 partite per ogni giornata
10 {partita(G, SquadraCasa, SquadraTrasferta) : squadra(SquadraCasa), squadra(SquadraTrasferta), SquadraCasa <> SquadraTrasferta} 10 :- giornataAndata(G).
10 {partita(G, SquadraCasa, SquadraTrasferta) : squadra(SquadraCasa), squadra(SquadraTrasferta), SquadraCasa <> SquadraTrasferta} 10 :- giornataRitorno(G).

% Nella stessa giornata, una squadra non può giocare più di una partita.
% In giornate diverse, due squadre che si sono già incontrate, non si posso rincontrare.
:- giornataAndata(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa, SquadraTrasferta2), SquadraTrasferta<>SquadraTrasferta2.
:- giornataAndata(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta), SquadraCasa<>SquadraCasa2.
:- giornataAndata(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraCasa==SquadraTrasferta2.
:- giornataAndata(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraTrasferta==SquadraCasa2.
:- giornataAndata(G), giornataAndata(G2), partita(G, SquadraCasa, SquadraTrasferta), partita(G2, SquadraCasa, SquadraTrasferta), G<>G2.
:- giornataAndata(G), giornataAndata(G2), partita(G, SquadraCasa, SquadraTrasferta), partita(G2, SquadraTrasferta, SquadraCasa), G<>G2.
:- giornataRitorno(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa, SquadraTrasferta2), SquadraTrasferta<>SquadraTrasferta2.
:- giornataRitorno(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta), SquadraCasa<>SquadraCasa2.
:- giornataRitorno(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraCasa==SquadraTrasferta2.
:- giornataRitorno(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraTrasferta==SquadraCasa2.
:- giornataRitorno(G), giornataRitorno(G2), partita(G, SquadraCasa, SquadraTrasferta), partita(G2, SquadraCasa, SquadraTrasferta), G<>G2.
:- giornataRitorno(G), giornataRitorno(G2), partita(G, SquadraCasa, SquadraTrasferta), partita(G2, SquadraTrasferta, SquadraCasa), G<>G2.

:- giornataAndata(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraCasa<>SquadraCasa2, citta(SquadraCasa, C), citta(SquadraCasa2, C).
:- giornataRitorno(G), partita(G, SquadraCasa, SquadraTrasferta), partita(G, SquadraCasa2, SquadraTrasferta2), SquadraCasa<>SquadraCasa2, citta(SquadraCasa, C), citta(SquadraCasa2, C).

:- giornataAndata(GA), giornataRitorno(GR), partita(GA, SquadraCasa, SquadraTrasferta), partita(GR, SquadraCasa, SquadraTrasferta).

:-  giornataAndata(G), 
    partita(G, SquadraCasa, SquadraTrasferta), 
    partita(G+1, SquadraCasa, SquadraTrasferta2),
    partita(G+2, SquadraCasa, SquadraTrasferta3).

:-  giornataRitorno(G),
    G <= 36,
    partita(G, SquadraCasa, SquadraTrasferta), 
    partita(G+1, SquadraCasa, SquadraTrasferta2),
    partita(G+2, SquadraCasa, SquadraTrasferta3).

:-  giornataAndata(GA), 
    giornataRitorno(GR), 
    GR <= 29,
    partita(GA, SquadraCasa, SquadraTrasferta),
    partita(GR, SquadraTrasferta, SquadraCasa),
    Risultato = GR-GA,
    Risultato <= 10.

#show partita/3.
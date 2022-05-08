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
citta(inter, milano).
citta(juventus, torino).
citta(atalanta, bergamo).
citta(roma, roma).
citta(lazio, roma).
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
citta(genoa, genova).
citta(salernitana, salerno).

giornataAndata(1..19).
giornataRitorno(20..38).

partita(1, milan, napoli).
partita(1, juventus, inter).
partita(1, atalanta, roma).
partita(1, lazio, fiorentina).
partita(1, sassuolo, verona).
partita(1, bologna, torino).
partita(1, empoli, udinese).
partita(1, sampdoria, spezia).
partita(1, cagliari, venezia).
partita(1, salernitana, genoa).

partita(2, milan, verona).
partita(2, juventus, roma).
partita(2, atalanta, fiorentina).
partita(2, lazio, spezia).
partita(2, sassuolo, venezia).
partita(2, bologna, udinese).
partita(2, empoli, torino).
partita(2, sampdoria, napoli).
partita(2, cagliari, genoa).
partita(2, salernitana, inter).

partita(3, verona, lazio).
partita(3, roma, sassuolo).
partita(3, fiorentina, milan).
partita(3, spezia, bologna).
partita(3, venezia, salernitana).
partita(3, udinese, juventus).
partita(3, torino, sampdoria).
partita(3, napoli, cagliari).
partita(3, genoa, atalanta).
partita(3, inter, empoli).

partita(4, verona, bologna).
partita(4, roma, salernitana).
partita(4, fiorentina, sampdoria).
partita(4, spezia, juventus).
partita(4, venezia, lazio).
partita(4, udinese, milan).
partita(4, torino, cagliari).
partita(4, napoli, sassuolo).
partita(4, genoa, empoli).
partita(4, inter, atalanta).

partita(20, napoli, milan).
partita(20, inter, juventus).
partita(20, roma, atalanta).
partita(20, fiorentina, lazio).
partita(20, verona, sassuolo).
partita(20, torino, bologna).
partita(20, udinese, empoli).
partita(20, spezia, sampdoria).
partita(20, venezia, cagliari).
partita(20, genoa, salernitana).

partita(21, verona, milan).
partita(21, roma, juventus).
partita(21, fiorentina, atalanta).
partita(21, spezia, lazio).
partita(21, venezia, sassuolo).
partita(21, udinese, bologna).
partita(21, torino, empoli).
partita(21, napoli, sampdoria).
partita(21, genoa, cagliari).
partita(21, inter, salernitana).

partita(22, lazio, verona).
partita(22, sassuolo, roma).
partita(22, milan, fiorentina).
partita(22, bologna, spezia).
partita(22, salernitana, venezia).
partita(22, juventus, udinese).
partita(22, sampdoria, torino).
partita(22, cagliari, napoli).
partita(22, atalanta, genoa).
partita(22, empoli, inter).

partita(23, bologna, verona).
partita(23, salernitana, roma).
partita(23, sampdoria, fiorentina).
partita(23, juventus, spezia).
partita(23, lazio, venezia).
partita(23, milan, udinese).
partita(23, cagliari, torino).
partita(23, sassuolo, napoli).
partita(23, empoli, genoa).
partita(23, atalanta, inter).

% 10 partite per ogni giornata
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
    G<=36,
    partita(G, SquadraCasa, SquadraTrasferta), 
    partita(G+1, SquadraCasa, SquadraTrasferta2),
    partita(G+2, SquadraCasa, SquadraTrasferta3).

:-  giornataAndata(GA), 
    giornataRitorno(GR), 
    GR<=29,
    partita(GA, SquadraCasa, SquadraTrasferta),
    partita(GR, SquadraTrasferta, SquadraCasa),
    Risultato = GR-GA,
    Risultato <= 10.

#show partita/3.
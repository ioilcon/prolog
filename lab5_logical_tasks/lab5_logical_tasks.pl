sub_posl([],_):-!.
sub_posl(_,[]):-fail,!.
sub_posl([H|Sub_list],[H|List]):-sub_posl(Sub_list,List),!.
sub_posl(Sub_list,[_|List]):-sub_posl(Sub_list,List).

sub_set([],[]).
sub_set([H|Sub_set],[H|Set]):-sub_set(Sub_set,Set).
sub_set(Sub_set,[_|Set]):-sub_set(Sub_set,Set).

in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


sprava_next(_,_,[_]):-fail.
sprava_next(A,B,[A|[B|_]]).
sprava_next(A,B,[_|List]):-sprava_next(A,B,List).

sleva_next(_,_,[_]):-fail.
sleva_next(A,B,[B|[A|_]]).
sleva_next(A,B,[_|List]):-sleva_next(A,B,List).

next_to(A,B,List):-sprava_next(A,B,List).
next_to(A,B,List):-sleva_next(A,B,List).

el_no(List,Num,El):-el_no(List,Num,1,El).
el_no([H|_],Num,Num,H):-!.
el_no([_|Tail],Num,Ind,El):-Ind1 is Ind+1,el_no(Tail,Num,Ind1,El).

pr_ein:- Houses=[_,_,_,_,_],

		in_list(Houses,[red,english,_,_,_]),
		in_list(Houses,[_,spanish,_,dog,_]),
		in_list(Houses,[green,_,coffee,_,_]),
		in_list(Houses,[_,ukrain,tea,_,_]),
		sprava_next([green,_,_,_,_],[white,_,_,_,_],Houses),
		in_list(Houses,[_,_,_,ulitka,old_gold]),
		in_list(Houses,[yellow,_,_,_,kool]),
		el_no(Houses,3,[_,_,milk,_,_]),
		el_no(Houses,1,[_,norway,_,_,_]),
		next_to([_,_,_,_,chester],[_,_,_,fox,_],Houses),
		next_to([_,_,_,_,kool],[_,_,_,horse,_],Houses),
		in_list(Houses,[_,_,orange,_,lucky]),
		in_list(Houses,[_,japan,_,_,parlament]),
		next_to([_,norway,_,_,_],[blue,_,_,_,_],Houses),


		in_list(Houses,[_,WHO1,water,_,_]),
		in_list(Houses,[_,WHO2,_,zebra,_]),
		write(Houses),
		write(WHO1),nl,write(WHO2).

pr_corona:- Corona=[_,_,_,_],
            %Coronas=[],
           in_list(Corona,[_,italy,_,pohoroni]),
            in_list(Corona,[_,france,_,svadba]),
            in_list(Corona,[_,america,1,_]),
            in_list(Corona,[progger,_,_,conf]),
            in_list(Corona,[chinusha,_,45,_]),
            in_list(Corona,[_,kitai,_,otdih]),
            in_list(Corona,[_,france,15,_]),
            in_list(Corona,[bankir,_,6,_]),

            (   in_list(Corona,[blogger,italy,_,_]);
                in_list(Corona,[blogger,france,_,_]);
                 in_list(Corona,[blogger,america,_,_])),

            (   in_list(Corona,[chinusha,italy,_,_]);
                in_list(Corona,[chinusha,france,_,_]);
                 in_list(Corona,[chinusha,america,_,_])),

            write(Corona).


write_place_people(A,B):-write(A),write(": "),
    in_list(B,[A,WORK1,PLACE1,NUMB1]),write(WORK1),write(", "),
    write(PLACE1),write(", "),write(NUMB1),nl,!.

% Ïîñòàâèë îòñå÷åíèå, ïîòîìó ÷òî ñïèñêè â ñïèñêå ïðîñòî ïåðåìåùàþòñÿ íà
% ðàçíûå ïîçèöèè, íî ýëåìåíòû â ýòèõ ñïèñêàõ îäíè è òå æå;
pr_log:-Seek=[_,_,_,_],
    in_list(Seek,[_,funeral,lake_Koma,_]),
    in_list(Seek,[_,marry,nicca,_]),
    in_list(Seek,[_,_,california,1]),
    in_list(Seek,[programmer,conference,_,_]),
    in_list(Seek,[_,rest,china,_]),
    (in_list(Seek,[programmer,_,china,_]);in_list(Seek,[banker,_,china,_])),
    in_list(Seek,[official,_,_,45]),
    in_list(Seek,[_,_,nicca,15]),
    in_list(Seek,[banker,_,_,6]),
    in_list(Seek,[bloger,_,_,_]),

    write(Seek),nl,nl,
    write_place_people(programmer,Seek),
    write_place_people(banker,Seek),
    write_place_people(bloger,Seek),
    write_place_people(official,Seek).


pr_ein1:-Event=[_,_,_,_],
    in_list(Event,[funeral,italy,_,_]),
    in_list(Event,[wedding,france,_,_]),
    in_list(Event,[_,france,_,15]),
    in_list(Event,[rest,china,_,_]),
    in_list(Event,[conference,_,programmer,_]),
    in_list(Event,[_,usa,_,1]),
    in_list(Event,[_,_,official,45]),
    in_list(Event,[_,_,banker,6]),
    in_list(Event,[_,_,blogger,_]),
    not(in_list(Event,[_,china,blogger,_])),
    not(in_list(Event,[_,china,official,_])),

    in_list(Event,[funeral,F1,F2,F3]),
    in_list(Event,[wedding,S1,S2,S3]),
    in_list(Event,[rest,T1,T2,T3]),
    in_list(Event,[conference,Frth1,Frth2,Frth3]),

    write("funeral "),write(F1),write(" "),write(F2),write(" "),write(F3),nl,
    write("wedding "),write(S1),write(" "),write(S2),write(" "),write(S3),nl,
    write("rest "),write(T1),write(" "),write(T2),write(" "),write(T3),nl,
    write("conference "),write(Frth1),write(" "),write(Frth2),write(" "),write(Frth3).
    
%Tasks

pr2:-Friends=[[belokurov,_],[chernov,_],[rizhov,_]],
    in_list(Friends,[_,blonde]),
    in_list(Friends,[_,black]),
    in_list(Friends,[_,red]),
    
    not(in_list(Friends,[belokurov,blonde])),
    not(in_list(Friends,[chernov,black])),
    not(in_list(Friends,[rizhov,red])),
    not(in_list(Friends,[belokurov,black])),
    
    in_list(Friends,[belokurov,BH]),
    in_list(Friends,[chernov,CH]),
    in_list(Friends,[rizhov,RH]),
    write("Belocurov has "),write(BH),write(" hair."),nl,
    write("Chernov has "),write(CH),write(" hair."),nl,
    write("Rizhov has "),write(RH),write(" hair."),nl,!.

pr3:-Look=[[ann,_,_],[valia,_,_],[natasha,_,_]],
    in_list(Look,[_,white,_]),
    in_list(Look,[_,green,_]),
    in_list(Look,[_,blue,_]),
    in_list(Look,[_,_,white]),
    in_list(Look,[_,_,green]),
    in_list(Look,[_,_,blue]),
    
    in_list(Look,[ann,X,X]),
    not(in_list(Look,[valia,white,_])),
    not(in_list(Look,[valia,_,white])),
    not(in_list(Look,[valia,Y,Y])),
    not(in_list(Look,[valia,Z,Z])),
    in_list(Look,[natasha,_,green]),

    in_list(Look,[ann,AD,AS]),
    in_list(Look,[valia,VD,VS]),
    in_list(Look,[natasha,ND,NS]),
    write("Ann has "),write(AD),write(" dress and "),write(AS),write(" shoes."),nl,
    write("Valia has "),write(VD),write(" dress and "),write(VS),write(" shoes."),nl,
    write("Natasha has "),write(ND),write(" dress and "),write(NS),write(" shoes."),nl,!.
    

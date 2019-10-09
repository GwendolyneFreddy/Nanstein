

/*Dialogo de Nainstein inventor Gnomo del Monte Noimporta                                              */
/*Convierte los objetos legendarios en otro tipo de arma a veces a costa de una disminuci�n de su poder*/
/*Convierte a Carsomyr, Mandoble Vorpalino, Igualadora, Arco de Gesen, Armadura de Dragones y De Anhkeg*/

BEGIN ~nanstein~

// Isaya : removed unnecessary ~~ around nanstein1
IF ~NumTimesTalkedTo(0)~ THEN BEGIN nanstein1
        SAY @0 /* ~Hola amigo mio. Es un placer verte por aqu�. Dejame presentarme, me llamo Nanstein, Ingeniero m�gico en jefe del Monte Noimporta~ */ 
        IF ~~ THEN REPLY @1 /* ~Ingeniero m�gico en jefe, suena como un puesto de gran importancia.~ */  GOTO nanstein2
        IF ~~ THEN REPLY @2 /* ~Si, si, ya lo se �Para que me puedes servir t�?~ */ GOTO nanstein3
        IF ~~ THEN REPLY @3 /* ~Si te crees que voy a dejarme enga�ar por un truco tan est�pido est�s equivocado, no te acerques a mi, ladronzuelo~ */ GOTO nanstein4
END

IF ~~ THEN BEGIN nanstein2
   SAY @4 /* ~Por supuesto, por supuesto, soy altamente respetado gracias a mi habilidad para recombiar la energia m�gica con el campo m�rfico de un objeto.~ */ 
   IF ~~ THEN REPLY @5 /* ~�Que es exactamente eso?. No entiendo nada~ */  GOTO nanstein3
END

IF ~~ THEN BEGIN nanstein3
   SAY @6 /* ~Yo puedo transformar un objeto m�gico poderoso en otro de similares caracter�sticas m�gicas pero de distinto tipo, a costa de perder parte del poder del objeto, eso si.~ */
   IF ~PartyHasItemIdentified("sw2h10")~ THEN REPLY @7 /* ~�Puedes hacer algo con Carsomyr?~ */ GOTO carsomyr1
   IF ~PartyHasItemIdentified("hamm09")~ THEN REPLY @8 /* ~Crom Frayer me resulta un poco inutil �Puedes transformarlo?~ */ GOTO crom1
   IF ~PartyHasItemIdentified("sw1h54")~ THEN REPLY @9 /* ~No necesito m�s espadas, pero los beneficios de la Igualadora me resultarian muy utiles~ */ GOTO eql1
   IF ~PartyHasItemIdentified("plat18")~ THEN REPLY @10 /* ~Mira esta armadura de Dragon Rojo, preferiria proteger a mi mago antes que a mis guerreros~ */ GOTO clk1
   IF ~PartyHasItemIdentified("blun14")~ THEN REPLY @11 /* ~Tengo este mayal, pero no es mi estilo de lucha. Preferiria algo m�s ... bueno, algo m�s alejado del peligro~ */ GOTO age1
   IF ~~THEN REPLY @12 /* ~No, en este momento no deseo nada.~ */ GOTO nanstein4
END

IF ~~ THEN BEGIN nanstein4
   SAY @13 /* ~Como desees, no voy a suplicarte que aceptes mis servicios, al fin y al cabo soy el �nico capaz de transformar objetos de un tipo en otro aunque pierdan parte de su poder. Si lo reconsideras aqu� estar�~ */
   IF ~~ THEN REPLY @14 /* ~Perfecto~ */ EXIT
END

IF ~NumTimesTalkedToGT(0)~ THEN BEGIN nanstein5
   SAY @15 /* ~Hola de nuevo �Interesado en mis servicios?.~ */ 
   IF ~~ THEN REPLY @16 /* ~Por supuesto, para eso he venido~ */ GOTO nanstein6
   IF ~~ THEN REPLY @17 /* ~Me lo he pensado mejor, creo que te dejar� solo~ */ EXIT
END

IF ~~ THEN BEGIN nanstein6
   SAY @18 /* ~�Que tipo de trabajo deseas?~ */ 
   IF ~PartyHasItemIdentified("sw2h10")~ THEN REPLY @7 /* ~�Puedes hacer algo con Carsomyr?~ */ GOTO carsomyr1
   IF ~PartyHasItemIdentified("hamm09")~ THEN REPLY @8 /* ~Crom Frayer me resulta un poco inutil �Puedes transformarlo?~ */ GOTO crom1
   IF ~PartyHasItemIdentified("sw1h54")~ THEN REPLY @9 /* ~No necesito m�s espadas, pero los beneficios de la Igualadora me resultarian muy utiles~ */ GOTO eql1
   IF ~PartyHasItemIdentified("plat18")~ THEN REPLY @10 /* ~Mira esta armadura de Dragon Rojo, preferiria proteger a mi mago antes que a mis guerreros~ */ GOTO clk1
   IF ~PartyHasItemIdentified("blun14")~ THEN REPLY @11 /* ~Tengo este mayal, pero no es mi estilo de lucha. Preferiria algo m�s ... bueno, algo m�s alejado del peligro~ */ GOTO age1
   IF ~PartyHasItemIdentified("wa2robe")~ THEN REPLY @51 GOTO vecna1
   IF ~PartyHasItemIdentified("halb09")~ THEN REPLY @53 GOTO vague1
   IF ~PartyHasItemIdentified("sw1h51")~  THEN REPLY @55 GOTO furiea
   IF ~PartyHasItemIdentified("c2sw1h02")~ THEN REPLY @55 GOTO furieb
   IF ~PartyHasItemIdentified("sw2h15")~ THEN REPLY @57 GOTO argent1
   IF ~PartyHasItemIdentified("leat21")~ THEN REPLY @59 GOTO humaina
   IF ~PartyHasItemIdentified("c2leat01")~ THEN REPLY @59 GOTO humainb
   IF ~PartyHasItemIdentified("wa2shiel")~ THEN REPLY @61 GOTO baldurien1
   IF ~PartyHasItemIdentified("waflail")~ THEN REPLY @63 GOTO easthaven1
   IF ~PartyHasItemIdentified("waninja")~ THEN REPLY @65 GOTO violet1
   IF ~PartyHasItemIdentified("wa2dak")~ THEN REPLY @67 GOTO karash1
   
   IF ~~THEN REPLY @12 /* ~No, en este momento no deseo nada.~ */ GOTO nanstein4
END

IF ~~ THEN BEGIN carsomyr1
   SAY @19 /* ~Puedo convertirla en una espada corta +4 para ladrones y exploradores, perder� algo de su capacidad ofensiva pero poco m�s. Necesitar� 20000 piezas de oro.~ */
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 /* ~Perfecto, adelante~ */ GOTO carsomyr2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 /* ~No tengo tanto dinero, dejalo~ */ GOTO nanstein7
   IF ~~ THEN REPLY @22 /* ~Hummm, no, no me interesa~ */ GOTO nanstein7
END

IF ~~ THEN BEGIN nanstein7
   SAY @23 /* ~Una l�stima. �Deseas algo m�s de mi?~ */
   IF ~~ THEN REPLY @24 /* ~No, de momento no. ~ */ EXIT
   IF ~~ THEN REPLY @25 /* ~Si, todavia necesito tus servicios~ */ GOTO nanstein6
END

IF ~~ THEN BEGIN carsomyr2
   SAY @26 /* ~Como desees~ */
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("sw2h10",1) DestroyItem("sw2h10") DestroyGold(20000) GiveItemCreate("mho_car1", Player1,1,3,0)~ EXIT
END

IF ~~ THEN BEGIN crom1
   SAY @27 /* ~Puedo convertirlo en una maza +4 para cl�rigos, perder� algo de su capacidad ofensiva y de la fuerza que proporciona pero poco m�s. Necesitar� 20000 piezas de oro.~ */
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 /* ~Perfecto, adelante~ */ GOTO crom2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 /* ~No tengo tanto dinero, dejalo~ */ GOTO nanstein7
   IF ~~ THEN REPLY @22 /* ~Hummm, no, no me interesa~ */ GOTO nanstein7
END

IF ~~ THEN BEGIN crom2
   SAY @28 /* ~Tus deseos son ordenes~ */
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("hamm09",1) DestroyItem("hamm09") DestroyGold(20000) GiveItemCreate("mho_cro1", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN eql1
   SAY @29 /* ~Puedo convertirla en un Fajin de Neutralidad activa, te proporcionar� los beneficos que acarrea portar a Igualadora aunque pierdas un arma. Necesitar� 20000 piezas de oro.~ */
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 /* ~Perfecto, adelante~ */ GOTO eql2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 /* ~No tengo tanto dinero, dejalo~ */ GOTO nanstein7
   IF ~~ THEN REPLY @22 /* ~Hummm, no, no me interesa~ */ GOTO nanstein7
END

IF ~~ THEN BEGIN eql2
   SAY @30 /* ~Ser� un placer~ */
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("sw1h54",1) DestroyItem("sw1h54") DestroyGold(20000) GiveItemCreate("mho_eql1", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN clk1
   SAY @31 /* ~Puedo convertirla en una T�nica de mago tremendamente resistene al fuego y al da�o. Necesitar� 15000 piezas de oro.~ */
   IF ~PartyGoldGT(14999)~ THEN REPLY @20 /* ~Perfecto, adelante~ */ GOTO clk2
   IF ~PartyGoldLT(15000)~THEN REPLY @21 /* ~No tengo tanto dinero, dejalo~ */ GOTO nanstein7
   IF ~~ THEN REPLY @22 /* ~Hummm, no, no me interesa~ */ GOTO nanstein7
END

IF ~~ THEN BEGIN clk2
   SAY @32 /* ~Siempre he deseado desarmar una armadura...~ */
   IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItemNum("plat18",1) DestroyItem("plat18") DestroyGold(15000) GiveItemCreate("mho_clk1", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN age1
   SAY @33 /* ~�Qu� veo?. Un arma elemental, no se si lo sabes, pero fuimos los Gnomos quienes creamos las primeras armas elementales. Una maravilla de arma, puedo reformarla y convertirla en un carcaj de Flechas elementales, el da�o ser� el mismo aunque no ralentice al oponente, pero a cambio aumentar� el encantamiento de las flechas. Por este trabajo solo te cobrar� 20000 piezas de oro, me encanta trabajar con armas elementales~ */
   IF ~PartyGoldGT(19999)~ THEN REPLY @34 /* ~Adelante, Gnomo, el Mayal es todo tuyo~ */ GOTO age2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 /* ~No tengo tanto dinero, dejalo~ */ GOTO nanstein7
   IF ~~ THEN REPLY @22 /* ~Hummm, no, no me interesa~ */ GOTO nanstein7
END

IF ~~ THEN BEGIN age2
   SAY @35 /* ~Tus deseos son ordenes. Aunque en este caso no se quien tendr� m�s ganas~ */
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("blun14",1) DestroyItem("blun14") DestroyGold(20000) GiveItemCreate("mho_age1", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN vecna1
   SAY @52
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 GOTO vecna2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN vecna2
   SAY @28
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("wa2robe",1) DestroyItem("wa2robe") DestroyGold(20000) GiveItemCreate("mhopxvec", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN vague1
   SAY @54
   IF ~PartyGoldGT(14999)~ THEN REPLY @73 GOTO vague2
   IF ~PartyGoldLT(15000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN vague2
   SAY @75
   IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItemNum("halb09",1) DestroyItem("halb09") DestroyGold(15000) GiveItemCreate("mhopxvag", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furiea
   SAY @56
   IF ~PartyGoldGT(19999)~ THEN REPLY @74 GOTO furiea2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN furiea2
   SAY @69
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("sw1h51",1) DestroyItem("sw1h51") DestroyGold(20000) GiveItemCreate("mhopxfua", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN furieb
   SAY @56
   IF ~PartyGoldGT(19999)~ THEN REPLY @74 GOTO furieb2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN furieb2
   SAY @69
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("c2sw1h02",1) DestroyItem("c2sw1h02") DestroyGold(20000) GiveItemCreate("mhopxfub", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN argent1
   SAY @58
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 GOTO argent2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN argent2
   SAY @76
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("sw2h15",1) DestroyItem("sw2h15") DestroyGold(20000) GiveItemCreate("mhopxarg", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN humaina
   SAY @60
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 GOTO humaina2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN humaina2
   SAY @70
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("leat21",1) DestroyItem("leat21") DestroyGold(20000) GiveItemCreate("mhopxgaa", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN humainb
   SAY @60
   IF ~PartyGoldGT(19999)~ THEN REPLY @20 GOTO humainb2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN humainb2
   SAY @70
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("c2leat01",1) DestroyItem("c2leat01") DestroyGold(20000) GiveItemCreate("mhopxgab", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN baldurien1
   SAY @62
   IF ~PartyGoldGT(14999)~ THEN REPLY @20 GOTO baldurien2
   IF ~PartyGoldLT(15000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN baldurien2
   SAY @30
   IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItemNum("wa2shiel",1) DestroyItem("wa2shiel") DestroyGold(15000) GiveItemCreate("mhopxbal", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN easthaven1
   SAY @64
   IF ~PartyGoldGT(14999)~ THEN REPLY @34 GOTO easthaven2
   IF ~PartyGoldLT(15000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN easthaven2
   SAY @75
   IF ~~ THEN DO ~TakePartyGold(15000) TakePartyItemNum("waflail",1) DestroyItem("waflail") DestroyGold(15000) GiveItemCreate("mhopxprt", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN violet1
   SAY @66
   IF ~PartyGoldGT(19999)~ THEN REPLY @77 GOTO violet2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN violet2
   SAY @71
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("waninja",1) DestroyItem("waninja") DestroyGold(20000) GiveItemCreate("mhopxvio", Player1,1,0,0)~ EXIT
END

IF ~~ THEN BEGIN karash1
   SAY @68
   IF ~PartyGoldGT(19999)~ THEN REPLY @78 GOTO karash2
   IF ~PartyGoldLT(20000)~THEN REPLY @21 GOTO nanstein7
   IF ~~ THEN REPLY @22 GOTO nanstein7
END

IF ~~ THEN BEGIN karash2
   SAY @72
   IF ~~ THEN DO ~TakePartyGold(20000) TakePartyItemNum("wa2dak",1) DestroyItem("wa2dak") DestroyGold(20000) GiveItemCreate("mhopxzer", Player1,1,0,0)~ EXIT
END

INTERJECT_COPY_TRANS nanstein nanstein1 Minsc
== wsmith01 IF ~True()~ THEN
@36 /* ~Te ha faltado a�adir gorr�n extraordinario, Gnomo.~ */
== nanstein IF ~True()~ THEN
@37 /* ~Vamos, vamos, estimado colega, estoy seguro de que mi compa�ia compensa el peque�o gasto econ�mico que ocasiono...~ */
== wsmith01 IF ~True()~ THEN
@38 /* ~Haria falta todo el tesoro de un dragon rojo para compensar tu insaciable apetito de nabos~ */
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN
@39 /* ~�Qu� dices Bub�?. <CHARNAME>. �Bub� conoce ese lugar!. Dice que es un gran lugar, que cas� todos los dias hay fuegos artificiales. Y que los peque�os Gnomos vuelan con las llamas~ */
== nanstein IF ~IsValidForPartyDialog("Minsc")~ THEN
@40 /* ~�Bub�?. No le conozco...~ */
== MINSCj IF ~IsValidForPartyDialog("Minsc")~ THEN
@41 /* ~���Bub� est� delante tuyo hombrecito!!! Muestra m�s respeto o sufrir�s las iras de la usticia~ */
== nanstein IF ~IsValidForPartyDialog("Minsc")~ THEN
@42 /* ~Ahhh, ya le recuerdo (se gira y te gui�a el ojo) Lleg� desde el espacio porque queria aprender como volabamos los Gnomos sin magia. Aunque nuestro m�todo no le gust� mucho~ */
== MINSCJ IF ~IsValidForPartyDialog("Minsc")~ THEN
@43 /* ~Minsc no sabia que los peque�os Gnomos podian volar. �Teneis alas como los p�jaros?~ */
== nanstein IF ~IsValidForPartyDialog("Minsc")~ THEN
@44 /* ~No,lo siento, tenemos aprendices con las manos muy largas y demasiada curiosidad y tendencia a juntar llamas y polvos desconocidos.~ */
== AERIEJ IF ~IsValidForPartyDialog("Aerie")~ THEN
@45 /* ~Por un momento... pens� que podria aprender a volar de nuevo...~ */
== nanstein IF ~IsValidForPartyDialog("Aerie")~ THEN
@46 /* ~No, mi peque�a Avariel, yo no puedo hacer que vueles otra vez, pero mira a tu alrededor y ver�s que no te hace tanta falta como crees~ */
END

INTERJECT_COPY_TRANS nanstein nanstein2 Jan
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN
@47 /* ~�Ingeniero m�gico en jefe?. Guauuuu, son la �lite de los inventores <CHARNAME>. Seguro que tendr� algo interesante que ofrecernos. Como un nabo bomba o ... ya lo s�. �Un nabo volante!~ */
== nanstein IF ~IsValidForPartyDialog("Jan")~ THEN
@48 /* ~Esa voz... �Pero si es el peque�o Jan!. No te ve�a desde que volaste la sala principal del gremio de armas. �Como t� por aqu�?~ */
== JANJ IF ~IsValidForPartyDialog("Jan")~ THEN
@49 /* ~Estoy ayudando a <CHARNAME> maestro.~ */
== nanstein IF ~IsValidForPartyDialog("Jan")~ THEN
@50 /* ~Eso es bueno, acumula experiencia en el mundo, pero no te olvides de volver alg�n dia al Monte Noimporta. Esa explosi�n fu� de primera, a�n se comenta con admiraci�n como incluso la piedra de las paredes se derriti�...~ */
END
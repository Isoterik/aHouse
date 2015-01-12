waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["Freudenhaus","Freudenhaus"];
player createDiarySubject ["changelog","Change Log"];
player createDiarySubject ["serverrules","Generelle Regeln"];
player createDiarySubject ["policerules","Polizeiregeln"];
player createDiarySubject ["safezones","Safe Zones (No Killing)"];
//player createDiarySubject ["civrules","Civilian Rules"];
player createDiarySubject ["illegalitems","Illegales"];
//player createDiarySubject ["gangrules","Gang Rules"];
//player createDiarySubject ["terrorrules","Terrorism Rules"];
player createDiarySubject ["controls","Controls"];
player createDiarySubject ["asgb1","Strafgesetzbuch"];
//player createDiarySubject ["asgb2","Strafgesetzbuch 2"];
player createDiarySubject ["Fahrzeugwerke","Fahrzeugwerke"];
player createDiarySubject ["Fahrzeuginfo","Fahrzeuginfo"];

/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord ["changelog",
		[
			"Official Change Log",
				"
					The official change log can be found on the BIS forums (search Altis Life RPG)
			"
		]
	];
	
	player createDiaryRecord ["changelog",
		[
			"Custom Change Log",
				"
					- NEU<br/>
					- Update auf v3.1.4.8 <br/>
					- Bekannter Bug: Factorio geht atm nicht <br/>
					
					- ALT<br/>
					- Version 3.1.4 ist aktuell. <br/>
					- fixed bug: illegale waffen werden nicht mehr im rucksack gespeichert<br/>
					- crocodile fix<br/>
					- Wantedliste überarbeitet.<br/>
					- Stationäre Blizer ;) by Preller und Merlin. danke!<br/>
					- Map update<br/>
					- Balancing<br/>
					- Neue Jobs. Illegal: Meth,Crocodile. Legal: Gold und Silber<br/>	
					- added Map update by XiB3<br/>
					- Hubschrauberwartungsplätze Funktionieren wieder<br/>
					- added scripts - credits by Zero thx to F4D<br/>
					- added Werbetafeln<br/>
					- added Neuer Kautions Preis<br/>
					- added Gefängnis Zeit erhöt<br/>
					- added Lizensen zur Herstellung von Drogen werden bei Inhaftierung entfernt, sowie der Waffenschein und die Rebellen-Ausbildung<br/>
					- added mehr Bling Bling an den Polizeifahrzeugen ;)<br/>
					- reworked Polizei SUV skin<br/>
					- added cop uniforms - credits by Isoterik & XiB3<br/>
					- added car Skins - credits by Isoterik & XiB3<br/>
					- addet Map update (Bank|Grenze zur Rebellen Insel) by XiB3<br/>
					- addet Neue Werbetafeln<br/><br/><br/>
					- rebalanced cop stores to fit chain of command<br/>
					- balanced weapon shops for cops and rebels<br/>
					- removed various objects in kavalla to prevent lag<br/>
					- added barries on kavalla market place<br/>
					- slightly reduced garage price for orca<br/><br/>
					- performance tweaks<br/><br/>
					- HOTFIX: removed service truck skins from offroader<br/>
					- HOTFIX: increased HEMMT loading space<br/><br/>
					- kavala HQ rework with automated barriers<br/>
					- ambulance and breakdown service added<br/>
					- service truck added<br/>
					- highway patrol station rework<br/>
					- checkpoint improved<br/>
					- changed diamond mining route<br/>
					- improved altis correction to prevent break out<br/>
					- disabled radio messages<br/>
					- added more anti-cheat procedures<br/>
					- reduced heli storage<br/>
					- slightly reduced selling prices for heroin and cocain<br/>
					- various bugfixes<br/><br/>
					- BRAND new Altis Corrections Facility - credits to Mr.Blue<br/>
					- changed jail release spot<br/>
					- reduced trunk space for various helicopter<br/>
					- added custom cop vehicle skins<br/>
					- removed cop spawn from rebel area<br/>
					- changed selling price for various ressources to fit new map layout<br/>
					- reduced cost for creating a gang<br/><br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Exploits", 
				"
				Hiermit sind Exploits gemeint, für welche man nicht nur gekickt wird, sondern gebannt.<br/><br/>

				1. Das Entkommen aus dem Knast mit anderen Methoden als die Kaution zu zahlen oder per Helikopter zu fliehen.<br/>
				2. Sich selbst umzubringen um aus schwierigen Situationen, wie zum Beispiel einer Festnahme, dem Knast ect. zu entkommen.<br/>
				3. Das Veruntreuen von grossen Geldsummen. Sollte dir jemand direkt am Anfang des Spiels grosse Summen Geld schicken, melde dies sofort einem Admin, andernfalls kannst du gebannt werden.<br/>
				4. Die Benutzung von gehackten Items. Sollte ein Hacker den Server betreten und Items spawnen, nutze diese nicht, sondern melde es sofort einem Admin.<br/>
				5. Der Missbrauch von Bugs. Sollte man dich beim Ausnutzen von Bugs erwischen, ist dies ein Banngrund.<br/>
				6. Dauerhaftes RDM. Wenn du dauerhaft Random Deathmatch betreibst, ist dies ein Banngrund.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["safe zones",
		[
			"Safe Zones",
				"
				Das absichtliche Sprengen von Fahrzeugen, Raub oder das Toeten anderer Spieler in oder um die folgenden Gebiete wird mit einem Bann bestraft.<br/><br/>
				
				Jeder Fahrzeug Shop (Garage und Verkaeufer) Umkreis 100 Meter<br/>
				Jeder Waffenladen Umkreis 100 Meter<br/>
				Alle Polizei Hauptquartiere Umkreis 100 Meter<br/>
				Rebellenstützpunkte Umkreis 100 Meter<br/>
				Donator Shops Umkreis 100 Meter<br/>
				Jeder Bankautomat im Umkreis von 100 Meter<br/><br/>
			"
		]
	];
					
	
	player createDiaryRecord ["serverrules",
		[
			"Bannbare Aktionen", 
				"
				Betrachtet dies als eure einzige Warnung für folgende Faelle.<br/><br/>
				
				1. Hacking<br/>
				2. Cheating<br/>
				3. Exploiting (unter 'Exploits')<br/>
				4. Drei Kicks führen auch zu einem Ban.<br/><br/>			"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Cop Interaktion", 
				"
				Die Folgenden Taten koennen zu einem Bann führen, im Ermessen der Admins.<br/><br/>
				
				1. Zivilisten koennen verhaftet werden wenn sie Cops im Spiel folgen um ihre Position an andere Spieler zu verraten.<br/>
				2. Das Folgen und Belaestigen von Cops über einen beliebingen Zeitraum wird durch einen Bann geahndet.<br/>
				3. Das aktive Blockieren von Cops kann zur Verhaftung führen. Bei wiederholtem Blockieren kann es zu einem Bann führen<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Luftverkehr", 
				"
				Die Folgenden Taten koennen zu einem Bann führen, abhaengig von der Sicht der Admins.<br/><br/>
				
				1. Das absichtliche Rammen von Helikoptern. (In andere HeliKopter, Vehikel, Gebaeude usw.).<br/>
				2. Das dauerhafte Überfliegen von Staedten unterhalb von 150m. Einmalig ist es illegal und wird von Cops geahndet.<br/>
				3. In Staedten gilt ein absolutes Landeverbot, ausser auf unten genannten Stellen.<br/>
				4. Das Klauen von Helikoptern ohne dem Fahrzeugeigentümer mi. 30 sec Zeit zu geben das Fahrzeug abzuschliessen. Wenn jemand landet und weggeht, okay, aber wenn sie gerade erst aussteigen und du einsteigst bevor sie das Fahrzeug abschliessen können ist dies ein Banngrund.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Fahrzeuge", 
				"
				Die folgenden Taten koennen zu einem Bann führen, abhaengig von der Sicht der Admins.<br/><br/>
				
				1. Das Absichtliche überfahren von anderen Spielern ohne RP-Hintergrund.<br/>
				2. Sich absichtlich in den Fahrtweg von Fahrzeugen zu werfen um verletzt/getötet zu werden.<br/>
				3. In andere Fahrzeuge zu rammen mit der Absicht eine Explotion zu erzeugen.<br/>
				4. Das anhaltende Versuchen in Fahzeuge welche dir nicht gehoeren einzusteigen um den Fahrzeughalter zu ärgern ohne jeglichen RP aspekt.<br/>
				5. Ein Fahrzeug zu klauen, nur um es zu zerstoeren (indem man gegen etwas faehrt, ins Meer faehrt usw). Das Klauen und Beschaedigen von Fahrzeugen mit Waffen UND! Roleplay Aspekt ist okay.<br/>
				
			"
		]
	];
		
	player createDiaryRecord ["serverrules",
		[
			"Random Deathmatching (RDM)", 
				"
				Die Folgenden Taten koennen zu einem Bann führen, abhaengig von der Sicht der Admins.<br/><br/>
				
				1. Das Toeten eines Mitspielers ohne Roleplay Grund.<br/>
				2. Cops und Zivilisten dürfen nur in Verbindung mit einem begangenen Verbrechen auf einander Schiessen.<br/>
				3. Wenn du im Kreuzfeuer eines Gefechts erschossen wirst zaehlt dies nicht als RDM.<br/>
				4. Einen Spieler zu erschiessen ohne ihm genügend Zeit zu geben deinen Anweisungen zu folgen zaehlt als RDM.<br/><br/>
				
				Jeder Fall wird von einem oder mehreren Admins beurteilt.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Respawnregeln", 
				"
				An die Respawnregeln müssen sich ALLE halten.<br/><br/>
				
				Die Folgenden Taten koennen zu einem Bann führen, abhaengig von der Sicht der Admins.<br/><br/>

				1. Wenn du getoetet wirst, musst du 15 Minuten warten bevor du an deinen Todesort zurükkehren darfst.<br/>
				2. Wenn du Opfer von RDM wurdest zaehlen die Respawnregeln nicht.<br/>
				3. Wenn du dich absichtlich selbst toetest.<br/>
				4. Wenn du um Wege zu sparen aus- und wieder einloggst, um schnell von einem Ort zum anderen zu Reisen, ist dies ein Grund für einen Bann.<br/>
				5. Wenn du ausloggst, um dem Role Play zu entgehen, ist dies ein Banngrund.<br/>
			"
		]
	];

	player createDiaryRecord ["serverrules",
		[
			"Dies ist ein ROLEPLAY Server!", 
				"
				Benimm dich und halte dich an die grundlegenden Regeln von Rollenspielen.<br/>
				Trolling, Belaestigung, das Unterbrechen von Roleplay usw. wird strengstens bestraft!<br/>
			"
		]
	];
	
	
	
// Seal Team Sloth Section

	player createDiaryRecord ["Freudenhaus",
		[
			"Teamspeak",
				"
				Unser Teamspeak findest du unter:<br/>
				88.198.23.143<br/><br/>
			"
		]
	];
	
	
// Police Section
	player createDiaryRecord ["policerules",
		[
			"Zentralbank",
				"
				1.  Die Zentralbank ist ein gesperrtes Gebiet für Zivilisten. Zivilisten dürfen die Zentralbank nicht ohne Genehmigung betreten. Tun sie dies doch, werden sie entfernt. Bei wiederholtem Vergehen werden Zivilisten Verhaftet. <br/>
				2.  Im Bereich der Zentralbank herrscht Flugverbotszone!<br/>
				3.  Wird die Zentralbank ausgeraubt, ist es Pflicht jedes verfügbaren Polizisten zu versuchen, den Raub zu stoppen. Sollten weniger als 5 Polizisten online sein, müssen diese nicht eingreifen.<br/>
				4.  Die eingeteilten Polizisten sollten sich sofort zur Zentralbank begeben, kleine Verbrechen koennen in diesem Fall ignoriert werden.<br/>
				5.  Waffeneinsatz ist gestattet, allerdings sollte jede Moeglichkeit sie lebend gefangen zu nehmen zuerst versucht werden.<br/>
				6.  Die Polizei darf nicht blind in die Bank feuern.<br/>
				7.  Jeder Zivilist, der sich in unmittelbarer Umgebung des Bankgelaendes aufhaellt, gilt wahrend eins Banküberfalls als potentieller Komplize der Bankraeuber.<br/>
				8.  Im Rahmen eines Banküberfalls gilt die Respawnregel nicht für die Polizei.<br/>
				9. Cops dürfen, sollten sie bei einem Banküberfall sterben, EIN MAL respawnen und erneut am Banküberfall teilnehmen.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Luftverkehr",
				"
				1. Innerhalb Wohn- und Stadtgebieten ist das Landen von Helikoptern verboten, Ausnahmen:<br/>
				Kavala: Krankenhaus Helipad (037129) oder Hafen (031128).<br/>
				Athira: Sportplatz (138185) oder (140188).<br/>
				Pyrgos: Die Nord/Ost Felder (170127)<br/>
				Sofia: hinter dem Auto Händler (258214) die Felder südost der Garage (257212)<br/>
				kleinere Dörfer: Fragt nach ob ihr da landen könnt und ob es ggf. einen Platz dafür gibt oder schlagt einen vor.<br/><br/>
				2. Helikopter dürfen nicht auf Strassen landen.<br/>
				3. Die Polizei darf über eine kurze Zeit hinweg das Landen und Hovern in einem Gebiet verbieten.<br/>
				4. Helikopter dürfen Staedte nicht ohne Erlaubnis unter 150m Hoehe überfliegen.<br/>
				5. Helikopter dürfen nicht über Staedten schweben, Polizeihelikopter dürfen nur über Staedten schweben, wenn dort eine aktive Polizeioperation stattfindet.<br/><br/>

			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Illegale Gebiete", 
				"
				1. Das Rebellengebiet wird nicht als Illegales Gebiet angesehen, sondern als ausserhalb der Zustaendigkeit der Polizei. Diese kann dort nach eigenem Ermessen eingreifen.<br/>
				2. Cops dürfen illegale Gebiete nicht ohne einen Raid betreten. (Abschnitt Raiding/Camping) und nur mit Genehmigung des diensthabenden Einsatzleiters patroullieren.<br/>
				3. Einem Polizist ist es unter keinen Umstaenden erlaubt ein illegales Gebiet zu becampen. (Ausnahme Grenzposten am Rebellengebiet)<br/>
				4. Polizisten duerfen mobile Checkpoints nicht naeher als 1200 Meter an einem illegalen Ort (z.B. Kokainfeld / Verarbeiter) aufbauen.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Strassensperren", 
				"
				Cops koennen an einer beliebigen Strasse eine Strassensperre aufbauen um illegale Aktivitaeten zu verhindern.<br/><br/>
				
				1. Eine Strassensperre muss aus mindestens 3 Polizisten und 2 Fahrzeugen bestehen.<br/><br/>

				Richtiges Verhalten an Strassensperren:<br/>
				1. Zivilisten haben sich grundlegend an die Anweisungen der Polizei zu halten.<br/>
				2. Weisen Sie den Polizisten ggf. darauf hin, dass Sie Waffen bei sich führen.<br/>
				3. Tragen Zivilisten Waffen bei sich, haben sie diese sofort zu senken oder wegzustecken.<br/>
				4. In einer Strassensperre dürfen Polizisten die Zivilisten ohne Angabe von Gründen durchsuchen.<br/>
				5. Nach der Durchsuchung koennen die Zivilisten in ihr Fahrzeug steigen und wegfahren, solange nichts gegen sie vorliegt.<br/>
				6. Sollte etwas illegales gefunden werden wird die person Festgenommen und abhängig von dem Begangenen Verbrechen zu einer Geld oder Haftstrafe verurteilt.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Fahrzeuge", 
				"
				1. Fahrzeuge, welche verlassen, zerstoert, oder ohne Fahrer sind koennen beschlagnahmt werden.<br/>
				2. Boote sollte ordentlich an der Küste geparkt werden.<br/>
				3. Jedes Fahrzeug welches sich über einen laengeren Zeitraum nicht bewegt kann beschlagnahmt werden.<br/>
				4. Das Beschlagnahmen von Fahrzeugen ist ein wichtiger job. Er hilft dabei, den Server sauber und weniger laggend zu halten.<br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Checkpoints/Grenzkontrolle",
				"
				1. An den Checkpoints zum Rebellengebiet koennen Cops über laengere Zeit stationiert sein.<br/>
				2. Cops an Checkpoints sind, egal welchen Rang sie bekleiden, nur bei einem begründeten Verdacht befugt, passierende Fahrzeuge zu durchsuchen.<br/>
				3. Fahrer sind dazu angehalten sich langsam und mit angeschaltetem Licht dem Checkpoint zu nähern.<br/>
				4. Sollte sich ein Fahrer aggressiv dem Checkpoints naehern, oder ihn gar durchbrechen, so ist dies als Straftat zu werten und das Fahrzeug darf durch beispielsweise Zerstoerung der Reifen zum Anhalten gezwungen werden. Dabei sollte man darauf achten, dass man das Fahrzeug nicht komplett zerstoert.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Geschwindigkeitsbegrenzung", 
				"
				Foglende Geschwindigkeitsbegrenzungen gelten in ganz Altis:<br/><br/>
				
				Innerorts: 50km/h bei nicht Beschilderung<br/>
				Außerorts: 100km/h bei nicht Beschilderung<br/>
				Autobahn: 130km/h bei nicht Beschilderung<br/><br/>
			"
		]
	];
	
	
	player createDiaryRecord ["policerules",
		[
			"Festnahmen und Strafzettel",
				"
				Man sollte nur Verbrecher Festnehmen welche als Gefahr für andere Spieler auf dem Server angesehen werden.<br/><br/>

				1. Es ist nicht erlaubt einen Verbrecher welcher ein Ticket bekam und dieses bezahlt hat zu verhaften, ausgenommen bei Mord.<br/>
				2. Es muss dem zu Verhaftenden Verbrecher vor seiner Verhaftung der Grund für seine Verhaftung genannt werden.<br/>
				3. Wenn ein Zivilist gesucht ist verhafte ihn. Toete den Zivilist nicht solange die Situation nicht unter 'Use of Lethal Force' faellt.<br/>
				4. Das Verbrechen Mord wird mit 100.000 $ Strafe + Haftstrafe geahndet. Die Geldstrafe muss gezahlt werden. Ist die Strafe hoeher als das Vermögen, muss das gesamte Vermoegen gezahlt werden.<br/>
				5. Wird die Geldstrafe nicht freiwillig bezahlt, wird sie eingezogen.<br/>


				Strafzettel werden als Warnung für Zivilisten angesehen. Wenn ein Zivilist ein Gesetz bricht aber keine Gefahr für jemanden darstellt wird ihm ein Strafzettel geschrieben.<br/><br/>

				1. Strafzettel müssen einen zu rechtfertigenden Preis haben.<br/>
				2. Die hoehe der Strafzettel muss auf der begangenen Straftat beruhen.<br/>
				3. Wenn ein Zivilist sich weigert einen Strafzettel zu zahlen ist es ein Grund ihn zu verhaften.<br/>
				4. Einem Zivilisten einen unangebracht hohen Strafzettel auszustellen ist nicht erlaubt und führt zur Degradierung/Suspendierung nach ermessen der Polizei-Chefs.<br/><br/>
				
				Eine Liste aller Verbrechen und der zugehoerigen Bestrafung wird waehrend der Ausbildung ausgehaendigt. Wenn Zweifel bestehen frage einen stellv. Einsatzleiter oder hoeher um Rat.<br/><br/>
				
				
			"
		]
	];
		
	player createDiaryRecord ["policerules",
		[
			"Waffen", 
				"
				Einem Polizisten ist es niemals erlaubt Zivilisten mit Waffen zu versorgen. Dies wird mit einer Suspendierung geahndet.<br/><br/>

				Legale Waffen für Zivilisten sind ohne Aufsatz:<br/>
				1. P07<br/>
				2. Rook<br/>
				3. ACP-C2<br/>
				4. SDAR 9mm<br/>
				6. PDW2000<br/><br/>

				Jede andere Waffe ist illegal und wird beschlagnahmt.<br/><br/>

				1. Zivilisten ist es nicht erlaubt innerhalb einer Stadt eine Waffe offen zu tragen.<br/>
				2. Zivilisten koennen ausserhalb von Staedten legale Waffen tragen, doch sollten sie auf Nachfrage bereit sein, dem Polizisten ihre Lizensen zu zeigen.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Nicht toedliche Gewalt",
				"
				Zurzeit ist der Taser die einzige Form nicht toedlicher Gewalt.<br/><br/>

				1. Der Taser soll dazu genutzt werden Zivilisten welche sich den Anweisungen wiedersetzen ruhig zu stellen oder zu verhaften.<br/>
				2. Das unangebrachte Feuern des Tasers führt zu einer Suspendierung.<br/>
				3. Benutze den Taser nur um das Gesetz zu wahren, nicht um anderen deinen Willen aufzuzwingen.<br/><br/>
			"
		]
	];

	player createDiaryRecord ["policerules",
		[
			"Raiding/Camping",
				"
				Raiding bezeichnet das eindringen mehrerer Polizisten in ein illegales Gebiet um kriminelle Vorgaenge zu stoppen.<br/><br/>

				1. Um ein Gebiet zu raiden benoetigt es mindestens 4 Polizisten, einer davon stellv. Einsatzleiter oder hoeher.<br/>
				2. Alle Zivilisten in einem Raid Gebiet werden verhaftet und durchsucht, wird nichts gefunden sind sie unverzüglich freizulassen.<br/>
				3. Werden bei einer Durchsuchung illegale Objekte gefunden wird die Person verhaftet und normal bestraft.<br/>
				5. Toedliche gewalt ist nur anzuwenden wie unter 'Toedliche Gewalt' beschrieben.<br/>
				6. Nachdem das Gebiet sicher ist, müssen die Polizisten das Gebiet umgehend verlassen.<br/>
				7. Nach einem Raid kann ein Gebiet 30 min lang nicht mehr geraided werden.<br/>
				8. Wenn der Raid fehlschlaegt (alle Polizisten sterben) zaehlt 7. dennoch.<br/>
				9. Es kann Verstaerkung gerufen werden, diese darf allerdings nicht aus gefallenen Polizisten bestehen.<br/><br/>

				Camping bezeichnet den laengeren Aufenthalt eines Polizisten in einem Gebiet.<br/><br/>

				1. Checkpoints are not considered camping. See Checkpoint section for a definition of proper checkpoint procedures.<br/>
				2. See Bank Robbery and Agia Marina Protocol sections for more info on camping in the main town.<br/>
				3. Camping eines illegalen Gebiets liegt vor wenn ein Polizist nach einem Raid laenger als noetig in dem Gebiet verweilt oder wenn ein Polizist ein Gebiet laengere Zeit überwacht und gegen Zivilisten welche das Gebiet betreten wollen vorgeht.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Rangfolge",
				"
				Der hoechstrangige Polizist im Einsatz ist in der Pflicht die Polizeikraefte zu überwachen und zu koordinieren. Es wird erwartet, dass er die Regeln befolgt und wenn noetig einen Admin benachrichtigt.<br/><br/>

				Polizeirangfolge höchste zuerst:<br/>
				Polizeipräsident<br/>
				Einsatzleiter / stellv. Einsatzleiter<br/>
				SEK-Beamte<br/>
				Bundespolizei<br/>
				Polizeikommissar<br/>
				Polizeimeister<br/>
				Polizeianwärter<br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Toedliche Gewalt",
				"
				1. Toedliche Gewalt ist nur gestattet um das eigene Leben, das Leben eines anderen Polizisten oder eines Zivilisten zu beschützen und nur wenn nicht toedliche Gewalt nicht effektiv waere.<br/>
				2. Wer mit den Waffen nicht diszipliniert umgeht wird umgehen suspendiert.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["policerules",
		[
			"Teamspeak Regel",
				"
				1. Alles Cops müssen im Teamspeak in einem Cop Kanal anwesend sein.<br/>
				2. Joine dem Teamspeak bitte bevor du spawnst.<br/><br/>
			"
		]
	];
	
	
	
// Illegal Items Section
	player createDiaryRecord ["illegalitems",
		[
			"Rebellenregeln",
				"
				Rebellen bezeichnet eine Gruppierung von Zivilisten, welche sich gegen die Polizei auflehnen wollen.<br/>
				1. Rebellen koennen in ihrem Terrain jederzeit das Feuer auf Polizisten eroeffnen.<br/>
				2. Rebellen gelten grundsaetzlich als verdaechtig und dürfen von der Polizei durchsucht werden.<br/>
				3. Cops koennen im Falle eines Angriffs jederzeit das Feuer mit scharfer Munition auf Rebellen erwiedern.<br/>
				4. Rebellen sind Feinde der Cops, nicht der Zivilisten. Rebellen dürfen niemals ohne RP Hintergrund das Feuer auf Zivilisten eroeffnen, auch nicht in ihrem Gebiet.<br/>
				5. Rebellen müssen sich, um als offizielle Rebellenorganisation anerkannt zu werden, mit einem ausführlichen Post im entsprechenden Forum vorstellen und dort ihre Mitglieder sowie Gründe ihrer Rebellion vortragen.<br/>
				6. Eine Rebellenbande muss, um als diese erkannt zu werden, ihren Namens-Tag vor dem Ingame Namen tragen.<br/>
				7. Der Ifrit und bewaffnete Fahrzeuge (Offroader) sind illegale Rebellenfahrzeuge. Ifrits und bewaffnete Fahrzeuge, welche ausserhalb vom Rebellengebiet von der Polizei gestoppt werden, dürfen von Der Polizei für den aktuellen Restart-Zyklus beschlagnahmt und genutzt werden.<br/>
				8. Illegale Waffen sind verboten. Wenn Rebellen mit ihnen erwischt werden, darf die Polizei die illegalen Waffen, zusätzlich zu dem Bussgeld beschlagnahmen<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Gang Regeln",
				"
				1. Es ist nicht illegal, in einer Gang zu sein.<br/>
				2. Es ist nicht illegal, sich in einem Gang Gebiet aufzuhalten, nur, wenn man an illegalen Aktivitäten beteiligt ist.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Gang Kriege",
				"
				Gangs koennen unter einander Kriege beginnen.<br/>
				1. Zvilisten dürfen im Rahmen dieser Kriege nicht getoetet werden.<br/>
				2. Voraussetzung für einen Gang Krieg ist, dass die beteiligten Gangs im Forum nach allgemein gültigen Regeln angemeldet sind.<br/>
				3. Voraussetzung ist eine offizielle Kriegserklaerung im Forum mit Benennung des Grundes für den Krieg und des Austragungsortes.<br/>
				4. Die Polizei greift in den Gang Krieg nicht ein, ausser sie wird von Zivilisten zu Hilfe gerufen oder Zivilisten sind gefaehrdet.<br/>
				5. Alle Beteiligten haben sich waehrend des Krieges an die Respawnregel (New Life Regel) in verschaefter Form zu halten. D. h. wenn jemand stirbt, darf er sich die naechsten 30 Minuten im Radius von 2 km nicht in den Kampf einmischen.<br/>
				6. Ein Gang Krieg gilt als beendet, wenn das Oberhaupt einer der Gangs Waffenstillstand fordert, sich ergibt oder eine der Gangs binnen eines Gefechts komplett ausgeloescht wurde.<br/>
				7. Im Falle eines Krieges müssen alle Beteiligten des Krieges für die Dauer des Krieges im Freudenhaus Teamspeak online sein.<br/>
			"
		]
	];

	player createDiaryRecord ["illegalitems",
		[
			"Ortsbesetzung",
				"
				Gangs koennen alle Orte ausgenommen der Spawn-Orte der Cops besetzen.<br/>
				1.  Wird ein Ort laengerfristig von einer Gang besetzt, muss dies im besetzte Orte Forum angegeben werden.<br/>
				2.  Voraussetzung für die Besetzung eines Ortes durch eine Gang ist, dass die Gang offiziell unter o. g. Regeln im Forum angemeldet ist.<br/>
				3.  Gangs dürfen in von ihnen besetzten Orten Maut in angemessener Hoehe von durchreisenden Zivilisten verlangen, jedoch nur einmal pro Durchreise.<br/>
				4.  Auch wenn ein Gebiet besetzt ist, muss das Roleplay eingehalten werden und es gilt weiterhin RDM Verbot.<br/>
				5.  Wenn ein Ort durch eine Gang besetzt ist, kann die Polizei versuchen, Das Gebiet zu befreien, muss es aber nicht. Wichtigster Faktor hierbei ist die Sicherheit der Zivilisten.<br/>
				6.  Rebellen dürfen sich mit Waffengewalt gegen die Polizei wehren, sollte diese versuchen, das Gebiet zu befreien.<br/>
				7.  Die Polizei darf sich in besetzten Orten aufhalten, muss sich aber an die Regeln für das Rebellengebiet halten. Trotzdem gilt RDM VERBOT!<br/>
				8.  Ein besetzter Ort gilt als Rebellengebiet. Somit sind hier Rebellenwaffen sowie Rebellenfahrzeuge legal und dürfen von der Polizei nicht beschlagnahmt werden.<br/>
				9.  Ein durch eine Gang besetzter Ort darf von einer anderen Gang übernommen werden. Die Polizei hat sich hierbei nicht einzumischen, es sei denn, Zivilisten werden angegriffen und erstatten Anzeige.<br/>
				10. Ein besetzter Ort gilt als befreit, wenn saemtliche Gangmitglieder aus dem Ort durch die Polizei vertrieben oder getoetet worden sind.<br/>
				11. Sollte ein Ort befreit worden sein, muss die Anzeige des besetzten Ortes im Forum gekennzeichnet sein.<br/>
				12. Wurde ein besetzter Ort befreit, darf die vertriebene/ausgeloeschte Gang den Ort für die Dauer des aktuell laufenden Server Restart Zyklus nicht erneut besetzen.<br/><br/>
			"
		]
	];
	
	player createDiaryRecord ["illegalitems",
		[
			"Illegale Fahrzeuge",
				"
				Es ist für Zivilisten illegal diese Fahrzeuge zu besitzen.<br/><br/>

				1. Ifrit<br/>
				2. bewaffneter Offroad<br/>
				3. Polizei Fahrzeuge<br/><br/>
			"
		]
	];
	
// Controls Section

	player createDiaryRecord ["controls",
		[
			"Controls",
				"
				Interaktion ist Aktion Key 10 standart linke Windows taste<br/>
				änderung über Steuerung>individuell<br/>
				Z: Öffnet Player Menu<br/>
				U: Öffnen/Schließen der Fahrzeuge<br/>
				F: Polizei Sirene (wen Polizei)<br/>
				X: Handbremse 
				T: Fahrzeug Kofferaum<br/>
				Left Shift + R: Festnehmen (Polizei)<br/>
				Left Shift + G: Knock out(Civ Only, zum ausrauben benötigt)<br/>
				Left Shift + H: Holster Waffe (Pistole only)<br/>
				Left Shift: Nitro (Nur im Auto wenn aufgemotzt)<br/>
			"
		]
	];

	player createDiaryRecord ["asgb1",
		[
			"STVO", 
				"
				1. Das Fahren ohne gültigen Führerschein wird mit einer Geldstrafe von 500 Altis Dollar geahndet.<br/>
				2. Sollte keine Geschwindigkeitsbegrenzung ausgeschildert sein, so gilt innerots eine Begrenzung von 50km/h und außerorts von 100km/h, sowie auf der Autobahn 130km/h. Bei Übertretung gilt folgende Regelung:<br/>
				10 – 15 km/h ergeben ein Verwarnungsgeld von 100 Altis Dollar.<br/>
				15 – 25 km/h ergeben ein Verwarnungsgeld von 250 Altis Dollar.<br/>
				25 – 50 km/h ergeben ein Bußgeld von 1000 Altis Dollar.<br/>
				Bei einer Übertretung über 50 km/h wird ein Bußgeld von 1500 Altis Dollar ausgestellt sowie die Beschlagnahmung des Fahrzeugs wegen unsachgemäßer Gebrauch veranlasst.<br/>
				3. Unsachgemäßes Fahren und Fahren mit Unfallfolge:<br/>
				Bei unsachgemäßer Fahrzeugführung wird ein Bußgeld von 500 Altis Dollar fällig. Sollte dies zu einem Unfall führen wird ein Bußgeld von 2500 Alits Dollar fällig.<br/>
				4. Bei wiederrechtlich geparkten Fahrzeugen wird der Halter per SMS informiert und gebeten dieses zeitnah zu entfernen. Sollte der Halter der Aufforderung nicht nach kommen, wird das Fahrzeug abgeschleppt.<br/>
				5. Die unsachgemäße Nutzung der Hupe wird mit einem Verwarnungsgeld von 250 Altis Dollar geahndet.<br/>
			"
		]
	];

	player createDiaryRecord ["asgb1",
		[
			"Luftverkehr", 
				"
				1. Das Fliegen ohne einen gültigen Flugschein wird mit 5000 Altis Dollar geahndet.<br/>
				2. Bei Landung auf einem dafür nicht vorgesehenem Platz ohne Genehmigung der Polizei wird ein Bußgeld von 2500 Altis Dollar fällig. Private Grundstücke sind davon ausgenommen.<br/>
				3. Bei nicht einhalten der Mindestflughöhe wird eine Bußgeld von 10000 Altis Dollar fällig, da dies eine Gefährdung der Öffentlichkeit darstellt.<br/>
			"
		]
	];

	player createDiaryRecord ["asgb1",
		[
			"Führen von Schusswaffen", 
				"
				1. Bei Besitz einer legalen Schusswaffe(n) ohne gültigen Waffenschein wird ein Bußgeld in Höhe von 1000 Altis Dollar ausgestellt und die Schusswaffe beschlagnahmt..<br/>
				2. Bei Besitz einer illegalen Schusswaffe(n) wird diese beschlagnahmt und automatisch ein Bußgeld von 6000 Altis Dollar ausgestellt.<br/>
			"
		]
	];

	player createDiaryRecord ["asgb1",
		[
			"Straftaten", 
				"
				1. Führen eines Fahrzeuges unter Alkoholeinfluss:<br/>
				Bis 0.5 Promille wird eine Bußgeld in Höhe von 500 Altis Dollar fällig.<br/>
				Bei 0.5 bis 1.0 Promille wird ein Bußgeld in Höhe von 1000 Altis Dollar fällig.<br/>
				Bei 1.0 bis 2.0 Promille wird ein Bußgeld in Höhe von 2500 Altis Dollar fällig.<br/>
				Bei Werten die höher als 2.0 Promille liegen, wird ein pauschales Bußgeld von 4000 Altis Dollar fällig, sowie die Person für 15 Minuten in die Ausnüchterungszelle eskortiert. Medizische Hilfe muss dabei gewehrleistet sein, da die Gefahr einer Alkoholvergiftung besteht.<br/>
				2. Entziehung einer Polizeikontrolle durch die Flucht mit einem Fahrzeug wird mit 5000 Altis Dollar geahndet da dies eine Gefährdung der Öffentlichkeit, sowie der involvierten Beamten darstellt.<br/>
				3. Entziehung einer Polizeikontrolle durch die Flucht mit einem Luftfahrzeug wird mit 15000 Altis Dollar geahndet da dies eine Gefährdung der Öffentlichkeit, sowie der involvierten Beamten darstellt.<br/>
				4. Das Fahren als auch der Besitz eines als illegal eingestuften Ifrits, sowie des bewaffneten Offroads hat ein Bußgeld von 50.000 Altis Dollar zur Folge, sowie die Beschlagnahmung des Fahrzeuges.<br/>
				5. Eine Person als Geisel festzuhalten wird mit 50000 Altis Dollar sowie einer Gefängnisstrafe geahndet.<br/>
				6. Personen die wiederholt auffällig Handeln/Straftaten begehen, können bei geringen Vergehen Inhaftiert werden.<br/>
				7. Das Belästigen und/oder Beleidigen eines Beamten kann mit einem Bußgeld je nach Schwere in Höhe von 10000 bis 50000 Altis Dollar geahndet werden.<br/>
				8. Das Weigern ein Bußgeld zu bezahlen wird nach der dreimaligen Ablehnung mit einer Haftstrafe geahndet. Sollte die Person zahlungsunfähig sein, wird ebenfalls eine Haftstrafe vollzogen.<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"Info",
				"
				Gewisse Fahrzeuge können NUR selbst gebaut werden!<br/>
				Die benötigten Teile können dort in euer seperates Inventar eingelagert werden und werden Neustart-übergreifend gespeichert. Es können aber nur Teile die zur Produktion erforderlich sind, eingelagert werden keine anderen<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"CH-49 Mohawk",
				"
				Reifen: 6<br/>
				Karosserieteile: 400<br/>
				Innenausstattung: 400<br/>
				Elektronikkabel: 420<br/>
				Glas: 200<br/>
				Öl: 150<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"Strider",
				"
				Reifen: 4<br/>
				Karosserieteile: 500<br/>
				Innenausstattung: 600<br/>
				Elektronikkabel: 450<br/>
				Glas: 300<br/>
				Öl: 200<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"HEMTT Box",
				"
				Reifen: 8<br/>
				Karosserieteile: 650<br/>
				Innenausstattung: 600<br/>
				Elektronikkabel: 480<br/>
				Glas: 150<br/>
				Öl: 180<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"HEMTT Fuel",
				"
				Reifen: 8<br/>
				Karosserieteile: 700<br/>
				Innenausstattung: 700<br/>
				Elektronikkabel: 500<br/>
				Glas: 180<br/>
				Öl: 400<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeugwerke",
		[
			"Tempest Device",
				"
				Reifen: 6<br/>
				Karosserieteile: 350<br/>
				Innenausstattung: 360<br/>
				Elektronikkabel: 220<br/>
				Glas: 100<br/>
				Öl: 100<br/>
			"
		]
	];

	player createDiaryRecord ["Fahrzeuginfo",
		[
			"Fahrzeuginfo",
				"
				Tanklaster können mit der Linken Windowstaste Flüssigkeiten (Öl und Milch zZ.) automatisch abbauen<br/>
				Der Tempest Device kann alle Rohstoffe bis auf Flüssigkeiten mit der Linken Windowstaste automatisch abbauen<br/>
			"
		]
	];

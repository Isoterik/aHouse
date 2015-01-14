/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
private["_text1","_text2","_text3","_text4","_text5""_text6"];

_text1 = parseText format["%1","<t color='#D7DF01'>Willkommen</t><br /><t shadow='true'>Schoen dass du auf unseren Server gekommen bist!</t><br />"];

_text2 = parseText format["%1","<t color='#0c00ff'>Spass</t><br /><t shadow='true'>Der Spass steht im Vordergrund aber denkt dabei ans Roleplay.</t><br />"];

_text3 = parseText format["%1","<t color='#0dbf00'>Spieler</t><br /> <t shadow='true'>Als Spieler stehen dir alle Wege offen, welchen du gehst entscheidest DU.</t><br />"];

_text4 = parseText format["%1","<t color='#ff0000'>Wichtig</t><br /><t shadow='true'>Die Anweisungen der Polizei ist Folgezuleisten!</t><br /> <t shadow='true'>Genauso die Rechte der Einwohner!</t><br />"];

_text5 = parseText format["%1","<t color='#ff0000'>Server</t><br /> <t color='#ff4444'>Bei Problemen, Bugs und Vorschlaege duerft ihr euch gerne im TS3 Melden.<br />IP: 88.198.23.143</t>"];

_text6 = parseText format["%1","<t color='#ff0000'>ACHTUNG</t><br /><t shadow='true'>Die meisten Interaktionen finden mit der LINKEN Windowstaste statt.</t><br /> <t shadow='true'>Alternativ kann in der Tastenbelegung unter Individ. Steuerung AKTION 10 frei belegt werden.</t><br />"];

format["Willkommen %1",name player] hintC [_text1,_text2,_text3,_text4,_text5,_text6];
	
library(readr)
library(tidyverse)

#Data <- read_csv("2023_06_15 atlas_antibiotics.csv")
#Argentina
Country <- transform(table(Data$Country))
Argentina <- Data |>
  filter(Country == "Argentina") 
ArgentinaY <- transform(table(Argentina$Year))
write_csv(ArgentinaY, "ArgentinaY.csv")

#Australia
Australia <- Data |>
  filter(Country == "Australia") 
AustraliaY <- transform(table(Australia$Year))
write_csv(AustraliaY, "AustraliaY.csv")

#Austria
Austria <- Data |>
  filter(Country == "Austria") 
AustriaY <- transform(table(Austria$Year))
write_csv(AustriaY, "AustriaY.csv")

#Belgium
Belgium <- Data |>
  filter(Country == "Belgium") 
BelgiumY <- transform(table(Belgium$Year))
write_csv(BelgiumY, "BelgiumY.csv")

#Brazil
Brazil <- Data |>
  filter(Country == "Brazil") 
BrazilY <- transform(table(Brazil$Year))
write_csv(BrazilY, "BrazilY.csv")

#Bulgaria
Bulgaria <- Data |>
  filter(Country == "Bulgaria") 
BulgariaY <- transform(table(Bulgaria$Year))
write_csv(BulgariaY, "BulgariaY.csv")

#Cameroon
Cameroon <- Data |>
  filter(Country == "Cameroon") 
CameroonY <- transform(table(Cameroon$Year))
write_csv(CameroonY, "CameroonY.csv")

#Canada
Canada <- Data |>
  filter(Country == "Canada") 
CanadaY <- transform(table(Canada$Year))
write_csv(CanadaY, "CanadaY.csv")

#China
China <- Data |>
  filter(Country == "China") 
ChinaY <- transform(table(China$Year))
write_csv(ChinaY, "ChinaY.csv")

#Egypt
Egypt <- Data |>
  filter(Country == "Egypt") 
EgyptY <- transform(table(Egypt$Year))
write_csv(EgyptY, "EgyptY.csv")

#Kenya
Kenya <- Data |>
  filter(Country == "Kenya") 
KenyaY <- transform(table(Kenya$Year))
write_csv(KenyaY, "KenyaY.csv")

#Uganda
Uganda <- Data |>
  filter(Country == "Uganda") 
UgandaY <- transform(table(Uganda$Year))
write_csv(UgandaY, "UgandaY.csv")

#United States
UnitedStates <- Data |>
  filter(Country == "United States") 
UnitedStatesY <- transform(table(UnitedStates$Year))
write_csv(UnitedStatesY, "UnitedStatesY.csv")

#Oman
Oman <- Data |>
  filter(Country == "Oman") 
OmanY <- transform(table(Oman$Year))
write_csv(OmanY, "OmanY.csv")

#Thailand
Thailand <- Data |>
  filter(Country == "Thailand") 
ThailandY <- transform(table(Thailand$Year))
write_csv(ThailandY, "ThailandY.csv")

Country <- transform(table(Data$Country))
Chile <- Data |>
  filter(Country == "Chile") 
ChileY <- transform(table(Chile$Year))
write_csv(ChileY, "ChileY.csv")

Country <- transform(table(Data$Country))
Colombia <- Data |>
  filter(Country == "Colombia") 
ColombiaY <- transform(table(Colombia$Year))
write_csv(ColombiaY, "ColombiaY.csv")

Country <- transform(table(Data$Country))
Costa_Rica <- Data |>
  filter(Country == "Costa Rica") 
Costa_RicaY <- transform(table(Costa_Rica$Year))
write_csv(Costa_RicaY, "Costa_RicaY.csv")

Country <- transform(table(Data$Country))
Croatia <- Data |>
  filter(Country == "Croatia") 
CroatiaY <- transform(table(Croatia$Year))
write_csv(CroatiaY, "CroatiaY.csv")

Country <- transform(table(Data$Country))
Czech_Republic <- Data |>
  filter(Country == "Czech Republic") 
Czech_RepublicY <- transform(table(Czech_Republic$Year))
write_csv(Czech_RepublicY, "Czech_RepublicY.csv")

Country <- transform(table(Data$Country))
Denmark <- Data |>
  filter(Country == "Denmark") 
DenmarkY <- transform(table(Denmark$Year))
write_csv(DenmarkY, "DenmarkY.csv")

Country <- transform(table(Data$Country))
Dominican_Republic <- Data |>
  filter(Country == "Dominican Republic") 
Dominican_RepublicY <- transform(table(Dominican_Republic$Year))
write_csv(Dominican_RepublicY, "Dominican_RepublicY.csv")

Country <- transform(table(Data$Country))
El_Salvador <- Data |>
  filter(Country == "El Salvador") 
El_SalvadorY <- transform(table(El_Salvador$Year))
write_csv(El_SalvadorY, "El_SalvadorY.csv")

Country <- transform(table(Data$Country))
Estonia <- Data |>
  filter(Country == "Estonia") 
EstoniaY <- transform(table(Estonia$Year))
write_csv(EstoniaY, "EstoniaY.csv")

Country <- transform(table(Data$Country))
Finland <- Data |>
  filter(Country == "Finland") 
FinlandY <- transform(table(Finland$Year))
write_csv(FinlandY, "FinlandY.csv")

Country <- transform(table(Data$Country))
France <- Data |>
  filter(Country == "France") 
FranceY <- transform(table(France$Year))
write_csv(FranceY, "FranceY.csv")

Country <- transform(table(Data$Country))
Germany <- Data |>
  filter(Country == "Germany") 
GermanyY <- transform(table(Germany$Year))
write_csv(GermanyY, "GermanyY.csv")

Country <- transform(table(Data$Country))
Ghana <- Data |>
  filter(Country == "Ghana") 
GhanaY <- transform(table(Ghana$Year))
write_csv(GhanaY, "GhanaY.csv")

Country <- transform(table(Data$Country))
Greece <- Data |>
  filter(Country == "Greece") 
GreeceY <- transform(table(Greece$Year))
write_csv(GreeceY, "GreeceY.csv")

Country <- transform(table(Data$Country))
Guatemala <- Data |>
  filter(Country == "Guatemala") 
GuatemalaY <- transform(table(Guatemala$Year))
write_csv(GuatemalaY, "GuatemalaY.csv")

Country <- transform(table(Data$Country))
Honduras <- Data |>
  filter(Country == "Honduras") 
HondurasY <- transform(table(Honduras$Year))
write_csv(HondurasY, "HondurasY.csv")

Country <- transform(table(Data$Country))
Hong_Kong <- Data |>
  filter(Country == "Hong Kong") 
Hong_KongY <- transform(table(Hong_Kong$Year))
write_csv(Hong_KongY, "Hong_KongY.csv")

Country <- transform(table(Data$Country))
Hungary <- Data |>
  filter(Country == "Hungary") 
HungaryY <- transform(table(Hungary$Year))
write_csv(HungaryY, "HungaryY.csv")

Country <- transform(table(Data$Country))
India <- Data |>
  filter(Country == "India") 
IndiaY <- transform(table(India$Year))
write_csv(IndiaY, "IndiaY.csv")

Country <- transform(table(Data$Country))
Indonesia <- Data |>
  filter(Country == "Indonesia") 
IndonesiaY <- transform(table(Indonesia$Year))
write_csv(IndonesiaY, "IndonesiaY.csv")

Country <- transform(table(Data$Country))
Ireland <- Data |>
  filter(Country == "Ireland") 
IrelandY <- transform(table(Ireland$Year))
write_csv(IrelandY, "IrelandY.csv")

Country <- transform(table(Data$Country))
Israel <- Data |>
  filter(Country == "Israel") 
IsraelY <- transform(table(Israel$Year))
write_csv(IsraelY, "IsraelY.csv")

Country <- transform(table(Data$Country))
Italy <- Data |>
  filter(Country == "Italy") 
ItalyY <- transform(table(Italy$Year))
write_csv(ItalyY, "ItalyY.csv")

Country <- transform(table(Data$Country))
Ivory_Coast <- Data |>
  filter(Country == "Ivory Coast") 
Ivory_CoastY <- transform(table(Ivory_Coast$Year))
write_csv(Ivory_CoastY, "Ivory CoastY.csv")

Country <- transform(table(Data$Country))
Jamaica <- Data |>
  filter(Country == "Jamaica") 
JamaicaY <- transform(table(Jamaica$Year))
write_csv(JamaicaY, "JamaicaY.csv")

Country <- transform(table(Data$Country))
Japan <- Data |>
  filter(Country == "Japan") 
JapanY <- transform(table(Japan$Year))
write_csv(JapanY, "JapanY.csv")

Country <- transform(table(Data$Country))
Jordan <- Data |>
  filter(Country == "Jordan") 
JordanY <- transform(table(Jordan$Year))
write_csv(JordanY, "JordanY.csv")

Country <- transform(table(Data$Country))
Korea_South <- Data |>
  filter(Country == "Korea, South") 
Korea_SouthY <- transform(table(Korea_South$Year))
write_csv(Korea_SouthY, "Korea_SouthY.csv")

Country <- transform(table(Data$Country))
Kuwait <- Data |>
  filter(Country == "Kuwait") 
KuwaitY <- transform(table(Kuwait$Year))
write_csv(KuwaitY, "KuwaitY.csv")

Country <- transform(table(Data$Country))
Latvia <- Data |>
  filter(Country == "Latvia") 
LatviaY <- transform(table(Latvia$Year))
write_csv(LatviaY, "LatviaY.csv")

Country <- transform(table(Data$Country))
Lebanon <- Data |>
  filter(Country == "Lebanon") 
LebanonY <- transform(table(Lebanon$Year))
write_csv(LebanonY, "LebanonY.csv")

Country <- transform(table(Data$Country))
Lithuania <- Data |>
  filter(Country == "Lithuania") 
LithuaniaY <- transform(table(Lithuania$Year))
write_csv(LithuaniaY, "LithuaniaY.csv")

Country <- transform(table(Data$Country))
Malawi <- Data |>
  filter(Country == "Malawi") 
MalawiY <- transform(table(Malawi$Year))
write_csv(MalawiY, "MalawiY.csv")

Country <- transform(table(Data$Country))
Malaysia <- Data |>
  filter(Country == "Malaysia") 
MalaysiaY <- transform(table(Malaysia$Year))
write_csv(MalaysiaY, "MalaysiaY.csv")

Country <- transform(table(Data$Country))
Mauritius <- Data |>
  filter(Country == "Mauritius") 
MauritiusY <- transform(table(Mauritius$Year))
write_csv(MauritiusY, "MauritiusY.csv")

Country <- transform(table(Data$Country))
Mexico <- Data |>
  filter(Country == "Mexico") 
MexicoY <- transform(table(Mexico$Year))
write_csv(MexicoY, "MexicoY.csv")

Country <- transform(table(Data$Country))
Morocco <- Data |>
  filter(Country == "Morocco") 
MoroccoY <- transform(table(Morocco$Year))
write_csv(MoroccoY, "MoroccoY.csv")

Country <- transform(table(Data$Country))
Namibia <- Data |>
  filter(Country == "Namibia") 
NamibiaY <- transform(table(Namibia$Year))
write_csv(NamibiaY, "NamibiaY.csv")

Country <- transform(table(Data$Country))
Netherlands <- Data |>
  filter(Country == "Netherlands") 
NetherlandsY <- transform(table(Netherlands$Year))
write_csv(NetherlandsY, "NetherlandsY.csv")

Country <- transform(table(Data$Country))
New_Zealand <- Data |>
  filter(Country == "New Zealand") 
New_ZealandY <- transform(table(New_Zealand$Year))
write_csv(New_ZealandY, "New_ZealandY.csv")

Country <- transform(table(Data$Country))
Nicaragua <- Data |>
  filter(Country == "Nicaragua") 
NicaraguaY <- transform(table(Nicaragua$Year))
write_csv(NicaraguaY, "NicaraguaY.csv")

Country <- transform(table(Data$Country))
Nigeria <- Data |>
  filter(Country == "Nigeria") 
NigeriaY <- transform(table(Nigeria$Year))
write_csv(NigeriaY, "NigeriaY.csv")

Country <- transform(table(Data$Country))
Norway <- Data |>
  filter(Country == "Norway") 
NorwayY <- transform(table(Norway$Year))
write_csv(NorwayY, "NorwayY.csv")

Country <- transform(table(Data$Country))
Pakistan <- Data |>
  filter(Country == "Pakistan") 
PakistanY <- transform(table(Pakistan$Year))
write_csv(PakistanY, "PakistanY.csv")

Country <- transform(table(Data$Country))
Panama <- Data |>
  filter(Country == "Panama") 
PanamaY <- transform(table(Panama$Year))
write_csv(PanamaY, "PanamaY.csv")

Country <- transform(table(Data$Country))
Philippines <- Data |>
  filter(Country == "Philippines") 
PhilippinesY <- transform(table(Philippines$Year))
write_csv(PhilippinesY, "PhilippinesY.csv")

Country <- transform(table(Data$Country))
Poland <- Data |>
  filter(Country == "Poland") 
PolandY <- transform(table(Poland$Year))
write_csv(PolandY, "PolandY.csv")

Country <- transform(table(Data$Country))
Portugal <- Data |>
  filter(Country == "Portugal") 
PortugalY <- transform(table(Portugal$Year))
write_csv(PortugalY, "PortugalY.csv")

Country <- transform(table(Data$Country))
Puerto_Rico <- Data |>
  filter(Country == "Puerto Rico") 
Puerto_RicoY <- transform(table(Puerto_Rico$Year))
write_csv(Puerto_RicoY, "Puerto_RicoY.csv")

Country <- transform(table(Data$Country))
Qatar <- Data |>
  filter(Country == "Qatar") 
QatarY <- transform(table(Qatar$Year))
write_csv(QatarY, "QatarY.csv")

Country <- transform(table(Data$Country))
Romania <- Data |>
  filter(Country == "Romania") 
RomaniaY <- transform(table(Romania$Year))
write_csv(RomaniaY, "RomaniaY.csv")

Country <- transform(table(Data$Country))
Russia <- Data |>
  filter(Country == "Russia") 
RussiaY <- transform(table(Russia$Year))
write_csv(RussiaY, "RussiaY.csv")

Country <- transform(table(Data$Country))
Saudi_Arabia <- Data |>
  filter(Country == "Saudi Arabia") 
Saudi_ArabiaY <- transform(table(Saudi_Arabia$Year))
write_csv(Saudi_ArabiaY, "Saudi_ArabiaY.csv")

Country <- transform(table(Data$Country))
Serbia <- Data |>
  filter(Country == "Serbia") 
SerbiaY <- transform(table(Serbia$Year))
write_csv(SerbiaY, "SerbiaY.csv")

Country <- transform(table(Data$Country))
Singapore <- Data |>
  filter(Country == "Singapore") 
SingaporeY <- transform(table(Singapore$Year))
write_csv(SingaporeY, "SingaporeY.csv")

Country <- transform(table(Data$Country))
Slovak_Republic <- Data |>
  filter(Country == "Slovak Republic") 
Slovak_RepublicY <- transform(table(Slovak_Republic$Year))
write_csv(Slovak_RepublicY, "Slovak_RepublicY.csv")

Country <- transform(table(Data$Country))
Slovenia <- Data |>
  filter(Country == "Slovenia") 
SloveniaY <- transform(table(Slovenia$Year))
write_csv(SloveniaY, "SloveniaY.csv")

Country <- transform(table(Data$Country))
South_Africa <- Data |>
  filter(Country == "South Africa") 
South_AfricaY <- transform(table(South_Africa$Year))
write_csv(South_AfricaY, "South_AfricaY.csv")

Country <- transform(table(Data$Country))
Spain <- Data |>
  filter(Country == "Spain") 
SpainY <- transform(table(Spain$Year))
write_csv(SpainY, "SpainY.csv")

Country <- transform(table(Data$Country))
Sweden <- Data |>
  filter(Country == "Sweden") 
SwedenY <- transform(table(Sweden$Year))
write_csv(SwedenY, "SwedenY.csv")

Country <- transform(table(Data$Country))
Switzerland <- Data |>
  filter(Country == "Switzerland") 
SwitzerlandY <- transform(table(Switzerland$Year))
write_csv(SwitzerlandY, "SwitzerlandY.csv")

Country <- transform(table(Data$Country))
Taiwan <- Data |>
  filter(Country == "Taiwan") 
TaiwanY <- transform(table(Taiwan$Year))
write_csv(TaiwanY, "TaiwanY.csv")

Country <- transform(table(Data$Country))
Tunisia <- Data |>
  filter(Country == "Tunisia") 
TunisiaY <- transform(table(Tunisia$Year))
write_csv(TunisiaY, "TunisiaY.csv")

Country <- transform(table(Data$Country))
Turkey <- Data |>
  filter(Country == "Turkey") 
TurkeyY <- transform(table(Turkey$Year))
write_csv(TurkeyY, "TurkeyY.csv")

Country <- transform(table(Data$Country))
Ukraine <- Data |>
  filter(Country == "Ukraine") 
UkraineY <- transform(table(Ukraine$Year))
write_csv(UkraineY, "UkraineY.csv")

Country <- transform(table(Data$Country))
United_Kingdom <- Data |>
  filter(Country == "United Kingdom") 
United_KingdomY <- transform(table(United_Kingdom$Year))
write_csv(United_KingdomY, "United_KingdomY.csv")

Country <- transform(table(Data$Country))
Venezuela <- Data |>
  filter(Country == "Venezuela") 
VenezuelaY <- transform(table(Venezuela$Year))
write_csv(VenezuelaY, "VenezuelaY.csv")

Country <- transform(table(Data$Country))
Vietnam <- Data |>
  filter(Country == "Vietnam") 
VietnamY <- transform(table(Vietnam$Year))
write_csv(VietnamY, "VietnamY.csv")






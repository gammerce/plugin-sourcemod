# [Sklep SMS](https://sklep-sms.pl/) [![Release](https://img.shields.io/github/v/release/gammerce/plugin-sourcemod)](https://github.com/gammerce/plugin-sourcemod/releases/latest)

Plugin SOURCEMOD do Sklepu SMS, który umożliwia dokonywanie zakupow z serwera.

[Instrukcja instalacji](https://github.com/gammerce/plugin-sourcemod/wiki/Konfiguracja-pluginu)

## Wymagania
* SOURCEMOD 1.7.3+
* Moduł System2

## Lista obsługiwanych gier
* Counter-Strike: Global Offensive
* Team Fortress 2 - nietestowane
* Left 4 Dead 2 - nietestowane

## Lista domyślnie dostępnych usług
* VIP
* VIP PRO
* Rezerwacja Nicku
* Rezerwacja Slota
* Niestandardowe usługi oparte na nadawaniu graczowi flag ( np. klasy Premium ) - [Instrukcja](https://github.com/gammerce/plugin-sourcemod/wiki/Utworzenie-us%C5%82ugi-nadaj%C4%85cej-graczowi-flagi)


## Komendy konsoli

#### ss_reload
Przeładowuje konfigurację serwera.

#### ss_reload_services
Przeładowuje usługi graczy.

## Komendy chatu

#### !shopsms
Otwiera menu sklepu

## CVARs

#### shopsms_commercial "1"
Włącza (1) / wyłącza (0) wyświetlanie informacji o sklepie na chacie.

#### shopsms_shop_commands "shopsms,sklepsms"
Lista [komend](https://github.com/gammerce/plugin-sourcemod#shopsms) oddzielonych przecinkiem, które można wpisać na chacie, w celu wyświetlenia menu sklepu.

#### shopsms_token ""
Token serwera np. `6a89b488209677dc4647c8fece299139`.

#### shopsms_url "1"
Pełny adres URL sklepu np. `https://sklep.sklep-sms.pl`.

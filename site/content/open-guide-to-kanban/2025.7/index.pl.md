---
title: Open Guide to Kanban – w kontekście pracy umysłowej
short_title: Open Guide to Kanban
description: Open Guide to Kanban stanowi bezpłatny, oparty na społeczności przewodnik referencyjny stosowania Kanban w pracy umysłowej. Definiuje podstawowe praktyki oraz metryki niezbędne do poprawy przepływu (flow), optymalizacji dostarczania wartości i wzmocnienia trwałości zespołu. Niniejszy przewodnik wspiera skalowalne wdrożenia systemu Kanban w różnych branżach oraz uzupełnia inne podejścia agile, lean i oparte na przepływie.
keywords:
  - Kanban
  - Open Guide to Kanban
  - knowledge work
  - flow optimisation
  - WIP limits
  - value delivery
  - agile
  - lean
  - continuous improvement
  - service level expectation
  - cumulative flow
  - throughput
  - metrics
  - work item age
  - flow efficiency
  - visualisation
  - work in progress
  - process improvement
  - kanban board
  - definition of workflow
  - outcome-oriented delivery
author:
  - John Coleman
date: 2025-07-02T09:00:00Z
type: guide
forked_from: the-kanban-guide/2025.5
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /pl/open-guide-to-kanban/latest/
---

Niniejsza praca, Open Guide to Kanban, stanowi adaptację [Kanban Guide (wersja z maja 2025)](https://kanbanguides.org/history/kanban-guide-2025/), która jest objęta licencją Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). Oryginalny przewodnik jest chroniony prawem autorskim © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc. W stosunku do oryginału wprowadzono zmiany. Objęte licencją [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). _Fragmenty wyróżnione kursywą są chronione prawem autorskim © 2025_ Orderly Disruption Limited, objęte licencją CC BY-SA 4.0. Cała pozostała zawartość pochodzi z materiałów chronionych prawem autorskim © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc., również objętych licencją CC BY-SA 4.0.

## Przedmowa

Niniejszy dokument ma na celu zapewnienie _otwartych i adaptowalnych_ wytycznych dotyczących Kanban i przepływu (Flow), czerpiąc z pomysłów zebranych z różnych społeczności. _Ma on służyć jako spójne odniesienie dla rozmaitych społeczności, stanowiąc uzupełnienie ich własnych materiałów._ W zależności od kontekstu, różne podejścia mogą uzupełniać Kanban, umożliwiając mu dostosowanie się do szeregu wyzwań związanych z dostarczaniem Wartości (Value) i zarządzaniem organizacją.

_Użycie czcionki kursywy wspiera informację o adaptacji Creative Commons umieszczoną na stronie tytułowej; kursywa nie służy wyróżnieniu. Użycie wielkiej litery na początku słowa wskazuje na konwencję wymienioną w dodatku do niniejszego dokumentu, np. Wartość (Value) to potencjalny lub zrealizowany zysk dla Interesariusza (Stakeholder), w tym zaspokojenie potrzeb klienta (customer), użytkownika końcowego (end-user), decydenta, organizacji oraz środowiska._

## Definicja Kanban w kontekście pracy umysłowej

Kanban stanowi strategię optymalizacji _Przepływu_ (Flow) _Wartości_ (Value) poprzez _system_. Jest to system sygnalizacji służący do pracy (Work) lub zapasów (inventory). Składa się z trzech praktyk działających razem:

- Definiowanie i _Wizualizacja_ przepływu pracy (workflow).
- Aktywne zarządzanie _Jednostkami pracy_ (Items) w przepływie pracy.
- Doskonalenie _Przepływu_ (Flow).

W implementacji tych praktyk te określa się je wspólnie mianem systemu Kanban (System Kanban). Osoby uczestniczące w dostarczaniu Wartości (Value) systemu Kanban nazywane są członkami systemu Kanban (Kanban system members).

## Dlaczego stosować Kanban?

Kluczowy dla _zrozumienia_ Kanbanu jest koncept _Przepływu_. _W Systemie Kanban, Przepływ_ to ruch Wartości przez dany System Kanban. Ponieważ większość _przepływów pracy Kanban_ istnieje w celu optymalizacji Wartości, strategia Kanbanu polega na optymalizacji Wartości poprzez optymalizację Przepływu, co oznacza dążenie do znalezienia właściwej równowagi skuteczności, efektywności i przewidywalności:

- Skuteczny przepływ pracy to taki, który dostarcza to, czego Interesariusze _pragną_, kiedy tego _pragną_.
- Efektywny przepływ pracy alokuje dostępną _pojemność_ optymalnie, aby dostarczyć Wartość.
- Przewidywalny przepływ pracy oznacza możliwość _rozsądnego_ prognozowania dostarczenia Wartości w akceptowalnym stopniu niepewności.

Strategia _danego Systemu_ Kanban polega na _umożliwieniu_ Czonkom Systemu Kanban zadawania właściwych pytań wcześniej, jako część wysiłku ciągłego doskonalenia w dążeniu do tych celów. Czonkowie Systemu Kanban powinni dążyć do zrównoważonej równowagi pomiędzy tymi trzema elementami. _Kanban jest również sposobem na redukcję nadmiernego obciążenia (nadmiernego obciążenia pracą) oraz zarzadzania popytem tak, aby Praca była dostarczana optymalnie, biorąc pod uwagę dostępną Pojemność. Nie jest idealny, ale powinien wspierać ciągłe doskonalenie oraz zoptymalizowany Przepływ Wartości._

_Korzyści uboczne to szczęśliwsi Czonkowie Systemu Kanban, wyższa jakość oraz zdolność do adaptacji do popytu. Dobry System Kanban jest samoregulujący, tj. System Kanban sygnalizuje i dostosowuje się do problemów bez interwencji._

Ponieważ Kanban _może_ _Wizualizować_ praktycznie każdy przepływ pracy, jego zastosowanie nie jest ograniczone do żadnej konkretnej branży czy kontekstu. Profesjonalni Pracownicy Umysłowi w finansach, sektorze użyteczności publicznej, opiece zdrowotnej i oprogramowaniu (by wymienić tylko kilka), odnieśli korzyści z praktyk Kanbanu. Kanban w większości kontekstów, gdzie Wartość jest dostarczana.

## Teoria Kanbanu

_System Kanban_ czerpie z _różnych podejść i rozumienia_, w tym między innymi z myślenia systemowego _(5)_, zasad lean _(4)_, teorii kolejek (rozmiar partii _(6-7)_ i rozmiar kolejki _(1,13-14)_), wariancji _(2,11)_ oraz kontroli jakości _(2,8,10)_. Ciągłe doskonalenie Systemu Kanban w oparciu o te podejścia i rozumienie jest jednym ze sposobów, w jaki organizacje mogą próbować optymalizować dostarczanie Wartości. Wiele istniejących podejść zorientowanych na _Wartość_ dzieli _idee_, na których opiera się Kanban. Z powodu tych podobieństw Kanban może być używany do uzupełniania tych podejść dostarczania.

## Praktyki Kanbanu

### Definiowanie i Wizualizacja Przepływu Pracy

Optymalizacja _Przepływu_ wymaga zdefiniowania, co _Przepływ_ _Wartości_ oznacza w danym kontekście, _(idealnie) płynny ruch i dostarczenie potencjalnych lub (idealnie) zrealizowanych korzyści dla Interesariuszy_. Wyraźne wspólne rozumienie Przepływu wśród Członków Systemu Kanban w ich kontekście nazywa się Definition of Workflow (DoW). _Definition of Workflow (DoW)_ jest fundamentalnym konceptem Kanbanu. Wszystkie inne elementy tego przewodnika w dużym stopniu zależą od tego, jak przepływ pracy jest zdefiniowany.

_Aby wspierać optymalną operację przepływu pracy i ułatwiać ciągłe doskonalenie, jako minimum_, Członkowie Systemu Kanban muszą stworzyć swoje _Definition of Workflow (DoW)_ używając wszystkich następujących elementów:

1. Definicję indywidualnych jednostek Wartości, które przemieszczają się przez przepływ pracy, określanych jako _Work Items (Jednostki pracy)_ (_lub Items_).
2. _W zależności od Work Item (Jednostki pracy), dla co najmniej jednej spójnej pary punktów 'started' (Rozpoczęte) i 'finished' (Zakończone):_
   - [ ] Jeden lub więcej zdefiniowanych stanów, przez które _Work Items (Jednostki pracy)_ _Przepływają_ od 'started' (Rozpoczęte) do 'finished' (Zakończone).
   - [ ] _Work Items (Jednostki pracy)_ pomiędzy punktami 'started' (Rozpoczęte) i 'finished' (Zakończone), nawet jeśli oczekują w Kolejce lub Buforze, są uważane za:
     - _'Started but Not Finished Work' (SNFW)_ lub
     - _Work in Progress_/_Process_ (WIP) (Praca w toku (PWT)).
   - [ ] Definicję tego, jak WIP będzie kontrolowane od 'started' (Rozpoczęte) do 'finished' (Zakończone).
   - [ ] _Zestaw_ Jasnych zasad dotyczących tego, jak _Work Items (Jednostki pracy)_ mogą _Przepływać_ przez każdy stan od 'started' (Rozpoczęte) do 'finished' (Zakończone) _bez defektów_. _Na przykład, Członkowie Systemu Kanban mogą mieć zasadę, która jest jasna co do naprawiania jakichkolwiek znanych defektów w Jednostce pracy przed przeniesieniem jej do następnego stanu, tak aby żaden znany defekt nie został przekazany do kolejnego procesu._
   - [ ] _Service Level Expectation (SLE) (Oczekiwania poziomu usług)_: Prognozę tego, jak długo powinna zająć _Work Item (Jednostce pracy)_ _Przepływ_ od 'started' (Rozpoczęte) do 'finished' (Zakończone). _Zauważ, że nie ma gwarancji, że to, co wydarzyło się w przeszłości, wydarzy się w przyszłości._
   - [ ] _Wizualizację_ _Service Level Expectation (SLE) (Oczekiwań poziomu usług)_ na Tablicy Kanban.

Kolejność, w jakiej te elementy są implementowane, nie jest ważna, o ile wszystkie są _implementowane_. Członkowie Systemu Kanban często wymagają dodatkowych elementów _Definition of Workflow (DoW)_, takich jak wartości, regułu i zasady pracy, w zależności od _okoliczności_ Członków _Systemu_ Kanban. _W dodatku do tego przewodnika i w innych miejscach znajdują się zasoby, które pomogą zdecydować o odpowiednich opcjach_.

Członkowie Systemu Kanban często również wymagają więcej niż jednego _Definition of Workflow (DoW)_. Te liczne _Definicje przepływu pracy_ mogą dotyczyć wielu grup Członków Systemu Kanban, różnych poziomów organizacji itp. Choć ten przewodnik nie przepisuje minimalnej ani maksymalnej liczby _Definition of Workflow (DoW)_, zachęca do ustanowienia _Definition of Workflow (DoW)_ wszędzie tam, gdzie Członkowie Systemu Kanban wymagają połączenia _Przepływu_ z _Wartością_.

_Umożliwianie Przepływu to akt wspierania płynnego i zrównoważonego systemu do tworzenia Wartości. Definition of Workflow (DoW) powinien zapewnić, że system jest zrównoważony w celu optymalizacji Przepływu Wartości. Członkowie Systemu Kanban osiągają to poprzez doskonalenie sposobu, w jaki walidują, że Wartość została dostarczona, oraz eliminowanie Pracy, która nie dostarcza Wartości._

_Wizualizacja_ jednego _lub więcej_ _Definition of Workflow (DoW)_ jest _opisywana jako_ Tablica Kanban. Nie ma szczegółowych wytycznych dotyczących tego, jak _Wizualizacja_ powinna wyglądać. Należy wziąć pod uwagę wszystkie aspekty _Definition of Workflow (DoW)_ (np. _Work Items (Jednostki pracy)_, zasady) wraz z wszelkimi innymi czynnikami specyficznymi dla kontekstu, które mogą wpływać na to, jak _Przepływa_ Wartość.

_W zespole oprogramowania Kanban może Wizualizować rozwój funkcjonalności od pomysłu do wdrożenia. W zespole marketingowym może śledzić kampanię od projektu do uruchomienia._

Członkowie Systemu Kanban są ograniczeni jedynie swoją wyobraźnią w kwestii tego, jak sprawiają, że _Przepływ_ jest _widoczny i jak wspierają celowe i zamierzone interakcje z odpowiednimi ludźmi we właściwym czasie_. _Zaleca się Wizualizowanie każdego kroku w przepływie pracy, aby zapobiec pozostawaniu ukrytego marnotrawstwa._

### Aktywne Zarządzanie Jednostkami Pracy w Przepływie Pracy

Jednostki pracy w przepływie pracy muszą być aktywnie zarządzane. _Aktywne zarządzanie Jednostkami pracy w przepływie pracy może przybierać kilka form, w tym między innymi następujące:_

- _Kontroluj_ _'Started but Not Finished Work' (SNFW)_ lub _Work In Progress_/_Process_ (WIP) (Praca w toku (PWT)).
- _Zapewnij_, że _Work Items (Jednostki pracy)_ nie starzeją się niepotrzebnie, używając _Service Level Expectation (SLE) (Oczekiwań poziomu usług)_ jako odniesienia.
- _Rozwiązuj przeszkody, które powodują zablokowaną Pracę lub zablokowane procesy_.

Powszechną praktyką jest to, że Członkowie Systemu Kanban przeglądają aktywne _Jednostki pracy_ _regularnie_. Ten przegląd może odbywać się ciągle lub w regularnych odstępach czasu. Członkowie Systemu Kanban muszą jawnie kontrolować liczbę _Work Items (Jednostek pracy)_ w przepływie pracy od 'started' (Rozpoczęte) do 'finished' (Zakończone), bezpośrednio lub pośrednio. Ta kontrola może być reprezentowana na Tablicy Kanban w jakikolwiek sposób, który Członkowie _Systemu_ Kanban uznają za odpowiedni.

_Użycie Limitów WIP (16) w Kanbanie dla Pracy umysłowej zazwyczaj wskazuje, że popyt może przekroczyć Pojemność zespołu, więc Limity WIP (16) są używane do regulowania i równoważenia Przepływu Work Items (Jednostek pracy) oraz zapobiegania przeciążeniu._

_W przeciwieństwie, system typu pull just-in-time (JIT) Toyoty zapobiega przekroczeniu popytu nad podażą, ponieważ kolejne żądania nie będą obsłużone, dopóki poprzednie nie zostanie zrealizowane - samoograniczający się lub samoregulujący system zaprojektowany do synchronizowania produkcji z rzeczywistym zapotrzebowaniem klienta i minimalizowania zapasów w stabilnym, przewidywalnym środowisku produkcyjnym._

_Wytwarzanie tylko tego, co jest potrzebne, dokładnie na czas jest kamieniem węgielnym Systemu Produkcyjnego Toyoty. System Kanban w Systemie Produkcyjnym Toyoty zaciąga dokładnie to, co jest potrzebne, kiedy jest potrzebne._

Dla Pracy umysłowej Członkowie Systemu Kanban powinni rozpoczynać Pracę nad (_Wybierać_) Jednostką pracy tylko wtedy, gdy istnieje wyraźny sygnał, że jest na to Pojemność. Gdy WIP spada poniżej kontroli ustalonej w _Definition of Workflow (DoW)_, może to być sygnał do Wybierania nowej pracy. Członkowie Systemu Kanban powinni powstrzymywać się od Wybierania większej ilości _Pracy_ do danej części przepływu pracy _poza odpowiednimi kontrolami WIP_ _lub Wybierania Pracy większej niż ich Pojemność. Gdy to konieczne, Praca powinna być podzielona na mniejsze, ale wciąż potencjalnie wartościowe Jednostki pracy._

_Nie ma wymogu posiadania repozytorium Work Items (Jednostek pracy), które nie są jeszcze Work In Progress/Process (Pracą w toku), często nazywanego backlogiem. Backlog jest emergentny i może obejmować różne etapy lub aspekty przygotowania Pracy. Jeśli taki istnieje, nie ma potrzeby, aby był w formacie listy lub był sekwencyjny._

_Idealnie, Praca powinna wchodzić do Systemu Kanban kierowana zasadami, a nie być przypisywana do jednostki. W dążeniu do zarządzania bezczynną pracą, a nie bezczynymi ludźmi:_

- _Członkowie Systemu Kanban powinni samoorganizować się wokół Pracy i Definition of Workflow (DoW)._
- _Członkowie Systemu Kanban powinni 'rozpoczynać' Pracę, gdy są gotowi nad nią pracować, przynosząc nową Pracę w oparciu o to, jak jest priorytetyzowana._
- _Członkowie Systemu Kanban - oraz inni spoza Systemu Kanban – powinni jawnie zapobiegać wpychaniu Pracy do Członków Systemu Kanban._
- _Należy uważać na re-priorytetyzację 'Started but Not Finished Work' (SNFW)_ lub  
  _Work In Progress/Process (WIP) (Pracy w toku (PWT)), ponieważ powoduje to, że te Jednostki pracy się starzeją (leżą bezczynnie)_  
_i prowadzi do dłuższych lub mniej przewidywalnych Czasów upływających od 'Started' (Rozpoczęte) do 'Finished' (Zakończone)._

_Rightsizing, opcjonalna, ale zalecana praktyka, odnosi się do oceny, czy Work Items (Jednostki pracy) pasują do Service Level Expectation (SLE) (Oczekiwań poziomu usług), czy są zbyt duże dla Service Level Expectation (SLE) (Oczekiwań poziomu usług) i dlatego wymagają podziału na mniejsze, ale wciąż potencjalnie wartościowe Work Items (Jednostki pracy)._

_Rightsizing, w kontekście Pracy umysłowej, opiera się na założeniu, że Work Items (Jednostki pracy) muszą być na poziomie lub poniżej maksymalnego rozmiaru (według Członków Systemu Kanban), ale niekoniecznie muszą być tego samego rozmiaru. Jeśli Work Item (Jednostka pracy) jest tak duża, że nie może być ukończona w rozsądnym czasie (np. złamałaby Service Level Expectation (SLE) (Oczekiwania poziomu usług)), nawet po jej rozpoczęciu, Członkowie Systemu Kanban powinni rozważyć podział jej na mniejsze Jednostki pracy, z których każda ma potencjał dostarczenia Wartości. Równie dobrze Work Items (Jednostki pracy) mogą być łączone._

_Zarządzanie Pojemnością często wymaga więcej niż kontrolę WIP._ Kontrolowanie WIP pomaga _Przepływowi_ i często poprawia zbiorowy fokus, zaangażowanie i współpracę _Członków Systemu Kanban_. Wszelkie akceptowalne wyjątki od kontrolowania WIP powinny być _jawnie określone_ jako część _Definition of Workflow (DoW)_.

### Doskonalenie _Przepływu_

Mając jasną Definicję Przepływu Pracy, obowiązkiem członków systemu Kanban jest ciągłe doskonalenie swojego _Przepływu_ _poprzez_ _osiąganie_ lepszej równowagi skuteczności, efektywności i przewidywalności. Ciągłe studiowanie systemu może wskazać potencjalne usprawnienia. _Członkowie systemu Kanban często przeglądają_ _Definicję Przepływu Pracy_, aby omówić i _przyjąć_ _potrzebne_ zmiany.

_Usprawnienia są_ _często_ _realizowane na bieżąco_. _Usprawnienia nie są ograniczone ich rozmiarem lub zakresem. Czasami usprawnienie wykracza poza kontrolę lub wpływ członków systemu Kanban. Celowe i intencjonalne interakcje, kultywowanie zmiany oraz usuwanie Blokerów na wszystkich poziomach są kluczowe dla doskonalenia._

_Co więcej, ludzie wykazujący przywództwo, zwani również liderami, Idą na Miejsce (Go See), Słuchają i naprawdę rozumieją, aby zebrać fakty służące podejmowaniu decyzji. Jest to znane jako Genchi Genbutsu. Liderzy praktykują Genchi Genbutsu tak często, że ujawnia się prawda. Wiedza o tym, co robić, to jedno, ale celowe, nieustępliwe, iteracyjne, pełne współczucia działanie w kierunku doskonalenia (w tym krótsze pętle informacji zwrotnej) to drugie._

_Kanban faworyzuje zmiany ewolucyjne, ale nie zabrania większych, strukturalnych zmian, opartych na dowodach i jasnym zrozumieniu systemu. Zmiany powinny być celowe i dostosowane do kontekstu._

## Wspieranie Optymalizacji Przepływu za Pomocą Odpowiednich Miar lub Metryk

- **Zablokowany Czas dla Zakończonych Jednostek (Blocked Elapsed Time for Finished Items, BETFI):** Łączny czas, przez który pojedyncza „zakończona" Jednostka Pracy (lub wybór „zakończonych" Jednostek) spędza w stanie zablokowanym od „rozpoczęcia" do „zakończenia", ale nie w stanie Kolejki lub Bufora. \[miara dla pojedynczej Jednostki, metryka dla wielu Jednostek\]

> [!FOOTNOTE]
> Definicja Przepływu Pracy powinna zawierać zasadę definiowania Blokerów (w kontekście) i ich sygnalizowania.

- **_Skumulowany Czas Kolejkowania lub Buforowania (Cumulative Queueing or Buffer Time, CQBT):_** _Łączny czas, przez który pojedyncza „zakończona" Jednostka Pracy (lub wybór „zakończonych" Jednostek) spędza w stanach Kolejkowania lub Buforowania od „rozpoczęcia" do „zakończenia". \[miara dla pojedynczej Jednostki Pracy, metryka dla wielu Jednostek Pracy\]_
- **_Czas od „Rozpoczęcia" do „Zakończenia" (Elapsed Time from 'Started' to 'Finished', ETSF):_** Liczba (zazwyczaj _zaokrąglona w górę) jednostek czasu (często dni kalendarzowych), która upłynęła od_ momentu, gdy pojedyncza _Jednostka Pracy_ została „rozpoczęta", _do_ momentu, gdy _Jednostka Pracy_ została „zakończona". _Tylko „zakończone" Jednostki mają ETSF. \[miara\]_
- **Rozkład Przepływu (Flow Distribution):** Wizualizacja i analiza typów Jednostek Pracy „zakończonych" lub „ukończonych" w czasie, umożliwiająca aktywne zarządzanie w celu zapewnienia zdrowej równowagi wysiłku. \[metryka\]

> [!FOOTNOTE]
> Definicja Przepływu Pracy powinna jasno definiować wszelkie stany Kolejki i Bufora.

- **_Efektywność Przepływu (Flow Efficiency):_** Stosunek czasu aktywnej pracy do całkowitego czasu, jaki Jednostka lub wybór Jednostek spędza w przepływie pracy, włącznie z czasem oczekiwania, pomiędzy punktami „rozpoczęcia" i „zakończenia" w Definicji Przepływu Pracy. _Jest wyrażana jako procent. Może być myląca, ponieważ czas spędzony w stanach aktywnych może nie być rzeczywistym czasem aktywnym. ((ETSF-(CQBT+inny czas niedodający wartości))/ETSF) × 100. \[metryka\] Przykład innego czasu niedodającego wartości: Zablokowany Czas dla Zakończonych Jednostek_
- **Liczba Blokerów (Number of Blockers):** Liczba przeszkód, częściowych lub całkowitych, w danym momencie (zazwyczaj bieżąca data i czas), dla Przepływu Jednostek Pracy od „rozpoczęcia" do „zakończenia". \[miara\]
- **Efektywność Cyklu Procesu (Process Cycle Efficiency):** Mierzy efektywność Pracy systemu lub jego części. Jest obliczana przez podzielenie czasu dodającego wartość przez Time to Market, a następnie pomnożenie przez 100, aby uzyskać procent. Oznacza to, że członkowie systemu Kanban muszą zmierzyć cały czas dodający wartość i cały czas niedodający wartości (włącznie z, ale nie ograniczając się do, czasu oczekiwania). ((T2M-(CQBT+inny czas niedodający wartości))/T2M) × 100. \[metryka\]
- **_Oczekiwania Poziomu Usług (Service Level Expectation):_** Prognoza, jak długo powinno zająć Jednostce Pracy przepłynięcie od „rozpoczęcia" do „zakończenia". _Oczekiwania Poziomu Usług_ składają się z dwóch części: okresu upływającego czasu i prawdopodobieństwa związanego z tym okresem (np. „85% _Jednostek Pracy_ zostanie „zakończonych" w ciągu ośmiu dni lub mniej"). _Opierają się na wyborze Czasu od „Rozpoczęcia" do „Zakończenia" z całej historii, podzbioru historii lub, jeśli dane nie istnieją lub są niewystarczające, na świadomym przypuszczeniu. \[metryka\]_
- **„Rozpoczęta, ale Niezakończona Praca" ('Started but Not Finished Work', SNFW)** lub **Praca w Toku (Work In Progress/Process, WIP)** _lub **Obciążenie Przepływu (Flow Load)**_: _Liczba_ _Jednostek Pracy_ „rozpoczętych", ale nie „zakończonych". _\[miara\]_
- **Przepustowość (Throughput):** Liczba _Jednostek Pracy_ „zakończonych" na jednostkę czasu. Pomiar przepustowości to dokładna liczba _Jednostek Pracy_, _a nie przychód. \[metryka\]_
- **Time to Market, znany również jako Czas Realizacji dla Klienta (Customer Lead Time):** Liczba (zazwyczaj zaokrąglona w górę) jednostek czasu (często dni/tygodni kalendarzowych), która upłynęła od momentu otrzymania zamówienia Interesariusza na pojedynczą Jednostkę Pracy do momentu dostarczenia Jednostki Pracy Interesariuszowi. Jest to jeden z przykładów ETSF. \[miara dla pojedynczej Jednostki Pracy, metryka dla produktu lub usługi\]
- **Całkowity Wiek Jednostek Pracy (Total Work Item Age, TWIA)** lub **Całkowity Czas dla „Rozpoczętych", ale Niezakończonych Jednostek (Total Elapsed Time for 'Started' but Not 'Finished' Items, TETSNFI)** **:** Całkowity czas, który upłynął od momentu „rozpoczęcia" wszystkich jednostek w toku („rozpoczętych", ale nie „zakończonych") do określonej daty i czasu, zazwyczaj bieżącej daty i czasu. \[metryka\]
- **Wiek Jednostki Pracy (Work Item Age, WIA)** lub **_Czas dla „Rozpoczętych", ale Niezakończonych Jednostek (Elapsed Time for 'Started' but Not 'Finished' Items, ETSNFI)_** : Liczba (zazwyczaj _zaokrąglona w górę) jednostek czasu (często dni kalendarzowych)_, która upłynęła _od_ _daty i czasu, w którym pojedyncza „niezakończona" Jednostka Pracy_ została „rozpoczęta", _do_ _określonej daty i czasu, zazwyczaj bieżącej daty i czasu. Działanie w stosunku do stosunkowo starszych Jednostek może skrócić pętle informacji zwrotnej i poprawić Przepływ. \[miara\]_

Metryki _Przepływu_ _i miary_ stosuje się do odpowiednich punktów „rozpoczęcia" i „zakończenia" ustalonych przez członków systemu Kanban w ich _Definicji Przepływu Pracy_. _Jeśli istnieje wiele zestawów punktów „rozpoczęcia" i „zakończenia", niektóre metryki przepływu i miary są często stosowane do każdej pary „rozpoczęcia" i „zakończenia"._

**_Jeśli Członkowie Systemu Kanban nie są pewni, od czego zacząć, niniejszy przewodnik sugeruje:_**

_Time to Market oraz dla każdej spójnej pary „rozpoczęcia" i „zakończenia":_

- _Oczekiwania Poziomu Usług (Service Level Expectation) (wymagane dla co najmniej jednej pary „rozpoczęcia" i „zakończenia"),_
- _Wiek Jednostki Pracy (Work Item Age) lub Czas dla „Rozpoczętych", ale Niezakończonych Jednostek (Elapsed Time for 'Started' but Not 'Finished' Items, ETSNFI),_
- _Czas od „Rozpoczęcia" do „Zakończenia" (Elapsed Time from 'Started' to 'Finished', ETSF) oraz_
- _Przepustowość (Throughput)._

Pod warunkiem, że Członkowie Systemu Kanban używają metryk _Przepływu_ _i miar_ zgodnie z opisem w niniejszym przewodniku _oraz są one odpowiednie dla kontekstu_, mogą odnosić się do nich innymi nazwami. To Członkowie Systemu Kanban decydują, jak najlepiej _wykorzystać_ te metryki _Przepływu_ _i miary, takie jak ich Wizualizacja na wykresach lub ocena zmienności. Zaleca się proaktywne skupienie na wynikach, wpływie i Wartości._

### _Wyniki, Wpływ i Wartość_

_Członkowie Systemu Kanban powinni regularnie poszukiwać dowodów wyników/wpływu, np.:_

- _Wyniki dla Klientów mogłyby koncentrować się na dostarczaniu mierzalnej Wartości klientom, np. zmniejszone Zapotrzebowanie wynikające z błędów (Failure Demand), długoterminowe obniżenie kosztów po stronie klienta lub zaadresowane zadania klienta (18)._
- _Wyniki dla Użytkowników mogłyby dotyczyć konkretnych zmian w zachowaniu użytkowników, które rozwiązują problemy lub poprawiają doświadczenia, np. bardziej efektywne „ukończanie" Jednostek Pracy przy najniższych kosztach lub lepsza użyteczność._
- _Wyniki dla Interesariuszy produktu mogłyby łączyć te zmiany behawioralne z metrykami wydajności produktu, takimi jak trendy w adopcji produktu przez klientów, utrzymywaniu klientów i konwergencji, a także trendy w adopcji funkcjonalności, metrykami decydentów i użytkowników oraz Time to Market produktu._
- _Wpływ na Interesariuszy biznesowych, np. zgodność z przepisami, długoterminowe obniżenie kosztów biznesowych, wyniki biznesowe, trendy w udziale rynkowym, satysfakcję klientów w odniesieniu do wszystkich produktów itp._
- _Wyniki dla członków systemu Kanban, takie jak ulepszona zdolność, uwzględniając na przykład przepływ psychologiczny (15), częstotliwość wydań, narzędzia, umiejętności, dług techniczny, dług UX, dług CX, dług związany z projektowaniem skoncentrowanym na człowieku, zdolność domeny technicznej, zdolność domeny rynkowej, zdolność domeny biznesowej oraz klimat/kulturę sprzyjającą netto poprawie._

Każde z powyższych podejść może być użyteczne. Rozważ również następujące:

- **Failure Demand** (17)**:** Zapotrzebowanie spowodowane niepowodzeniem w wykonaniu czegoś lub wykonaniu czegoś poprawnie dla klienta. Jest to sygnał potencjalnego usprawnienia. Podkreśla, gdzie Pojemność jest marnowana z powodu wcześniejszych błędów, słabej Pracy lub złych decyzji. Na przykład zespół wsparcia klienta może otrzymywać powtarzające się zgłoszenia z powodu niejasnych instrukcji rozliczeniowych. \[metryka\]
- **Time to Validated Value, znany również jako Time to Value lub Time to Outcome:** _Zaokrąglona w górę liczba jednostek czasu (często dni/tygodni kalendarzowych), która upłynęła od momentu otrzymania zamówienia Interesariusza na Jednostkę Pracy do momentu, gdy Wartość została zwalidowana. Jest to jeden z przykładów ETSF, skupiający się na wartościowych i mierzalnych wynikach. \[miara\]_
- **Wartość Zwalidowana (Value Validated):** Jednostka Pracy, która osiąga punkt „zakończenia" i dostarcza zamierzoną Wartość Interesariuszowi (włącznie z, ale nie ograniczając się do, klienta lub użytkownika), spełniając jasne zasady, np. standardy jakości lub doświadczenia. Często obejmuje dowody i obserwacje.
- **Wartość Niezwalidowana (Value Invalidated):** Jednostka Pracy, która osiąga punkt „zakończenia" lub jest oceniana, ale nie dostarcza zamierzonej Wartości, niespełniając oczekiwań określonych w Definicji Przepływu Pracy, często wymagając przeróbki lub odrzucenia, w oparciu o dowody i obserwacje. Należy rozważyć kontekst.

_Mierząc tego rodzaju wyniki, wpływy, metryki Wartości i miary Wartości, członkowie systemu Kanban zapewniają, że nie tylko dostarczają Pracę szybko (produkty), ale dostarczają rzeczywistą Wartość i usprawnienia (wyniki i wpływy) Interesariuszom, włącznie z, ale nie ograniczając się do, klientów i użytkowników._

Jasność i zrozumienie Jednostek pracy powinno następować dokładnie na czas (just-in-time), aby uniknąć marnotrawstwa. Należy unikać nadmiernego skupienia na wynikach pracy (outputs) i niewystarczającego skupienia na efektach (outcomes). Członkowie systemu Kanban powinni proaktywnie, intencjonalnie, celowo i regularnie przeglądać metryki lub miary oraz ciągle je doskonalić.

## Nota końcowa

Tylko Praktyki Kanban, minimalne kryteria Definition of Workflow (DoW) oraz wybrane metryki lub miary są obowiązkowe; wszystko inne jest opcjonalne. Należy uwzględnić kontekst. Członkowie Systemu Kanban powinni wspierać humanitarny Przepływ Wartości.

Informacja zwrotna z wyników ('result feedback') odnosi się do danych, które wracają po wprowadzeniu zmian, niezależnie od tego, czy są to informacje ilościowe czy jakościowe dotyczące efektów (outcomes), wpływu lub nawet zmian w otoczeniu rynkowym. Ta informacja zwrotna może wpływać na efekty Wartości dla Interesariuszy, a także na nakłady, wysiłek, zasoby lub koszty w przyszłości. (Uwaga: Ludzie nie są 'zasobami'.)

W praktyce Kanban jest podróżą nieustannego uczenia się i adaptacji. Rozpoczynając od tych podstawowych praktyk i ciągle doskonaląc, Członkowie Systemu Kanban mogą w sposób zrównoważony osiągać lepszy Przepływ Wartości. Członkowie Systemu Kanban powinni zaczynać w prosty sposób i rozwijać swój system Kanban w miarę uczenia się.

## Historia Kanban

Obecny stan Kanban można wywieść z Systemu Produkcyjnego Toyoty (i jego poprzedników) oraz pracy takich osób jak Taiichi Ohno _(9)_. Zbiór praktyk dla Pracy Wiedzy, powszechnie nazywanej obecnie _Kanban (12),_ powstał głównie w zespole w Corbis w 2006 roku. Te praktyki szybko rozprzestrzeniły się, obejmując dużą i zróżnicowaną międzynarodową społeczność, która kontynuowała ulepszanie i rozwijanie tego podejścia.

## Podziękowania

_Osoby tutaj wymienione niekoniecznie zgadzają się z tym, co jest napisane w tym dokumencie, i nie ma w tym nic złego. Niemniej jednak Open Guide to Kanban zawdzięcza ogromny dług wdzięczności:_

- Wszystkim, którzy pomogli rozwijać Kanban, w tym tym, którzy woleli pozostać anonimowi
- _Recenzentom wersji Kanban Guide z lipca 2020 lub grudnia 2020: Jean-Paul Bayley, Jose Casal, Colleen Johnson, Todd Miller, Eric Naiburg, Steve Porter, Ryan Ripley, Dave West, Julia Wester, Yuval Yeret i Deborah Zanke_
- _Recenzentom wersji Kanban Guide z maja 2025:_ Magdalena Firlit, Tom Gilb, Colleen Johnson, Christian Neverdal, Prateek Singh, Steve Tendon i Julia Wester
- _Recenzentom Open Guide to Kanban: Jim Benson, Andy Carmichael, Jose Casal, Magdalena Firlit, Michael Forni, Martin Hinshelwood, Christian Neverdal, Nader Talai, Steve Tendon i Nigel Thurlow_
- _Wpływom: Russell L. Ackoff, Jim Benson, Andy Carmichael, Emily Coleman, John Cutler, W. Edwards Deming, Dominica DeGrandis, Tom Gilb, Joseph M. Juran, Siegfried Kaltenecker, Henrik Kniberg, Klaus Leopold, John Little, Troy Magennis, Taiichi Ohno, Donald G. Reinersten, Sam L. Savage, Walter Shewhart, Nader Talai, Steve Tendon, Nigel Thurlow i Donald J. Wheeler._

## Załącznik

### Kontrolowanie Pracy w toku (PWT) \= Kontrolowanie 'Rozpoczętej, ale niezakończonej pracy'

Kontrola _'Rozpoczętej, ale niezakończonej pracy', zwana także_ kontrolą PWT, może być reprezentowana na Tablicy Kanban w każdy sposób, który _Członkowie systemu_ Kanban uznają za odpowiedni, w tym, ale nie wyłącznie, za pomocą taśmy malarskiej, Całkowitego Wieku Jednostki pracy lub Całkowitego Czasu, jaki upłynął od 'Rozpoczęcia', ale nie Zakończenia Jednostek (TETSNFI), kontroli kolejek, liczb kontrolnych PWT lub zakresów kontrolnych PWT.

_Istnieją również pewne opcjonalne opcje spoza Kanban, wspierane przez niektóre społeczności, takie jak CONWIP(16), Uproszczone DBR (16) lub DBR(16):_

- **CONWIP (Constant Work In Progress)** (16)**:** CONWIP to system typu pull (Pull), który utrzymuje stały całkowity limit 'Rozpoczętej, ale Niezakończonej Pracy' (SNFW) lub Pracy w toku (PWT) w całym Przepływie pracy, 'rozpoczynając' nową Pracę tylko wtedy, gdy 'zakończona' lub 'ukończona' Jednostka wychodzi z systemu, regulując Przepływ za pomocą jednego ograniczenia obejmującego cały system. Przykład: Zespół wsparcia oprogramowania dopuszcza tylko 15 otwartych zgłoszeń w dowolnym momencie; gdy zgłoszenie zostanie rozwiązane, nowe może zostać 'rozpoczęte'. Nie wszyscy to wspierają.
- **DBR** (3,16)**:** Zaawansowane podejście, które zarządza Ograniczeniem przepływu za pomocą Buforów przed Ograniczeniem przepływu i przy wyjściach systemu, maksymalizując Przepustowość przy jednoczesnej ochronie przed zmiennością w złożonych systemach. Przykład: W grupie rozwoju produktu przegląd UX (podstawowe Ograniczenie przepływu) wyznacza tempo (drum) z Buforem projektów przed nim, wtórny Bufor przed zatwierdzeniem prawnym zapobiega przeciążeniu, a nowa Praca jest uwalniana tylko wtedy, gdy oba Bufory mają Pojemność. Nie wszyscy to wspierają.
- **Flow Constraint (Ograniczenie przepływu)** (16)**:** Wąskie gardło z najmniejszą Pojemnością w Definition of Workflow (DoW). Może istnieć wiele wąskich gardeł (wszystkie o mniejszej Pojemności niż wymagane przez zapotrzebowanie), a Ograniczenie przepływu jest najbardziej ograniczonym z nich. Ogranicza całkowitą Przepustowość systemu Kanban, określając tempo, w jakim dostarczana jest Wartość. Przykład: W zespole programistycznym, jeśli testowanie trwa najdłużej i ogranicza wydawanie funkcji, testowanie jest Ograniczeniem przepływu, które wyznacza tempo systemu. W Pracy umysłowej wąskie gardła często wykazują burzliwe zachowanie i mogą przemieszczać się po Przepływie pracy w nieprzewidywalny sposób. Ale czasami wąskie gardła są uporczywe.
- **Simplified DBR (Drum-Buffer-Rope - Uproszczone DBR)** (3,16)**:** Uproszczona metoda planowania, w której Przepustowość systemu Kanban wyznacza tempo Przepływu pracy, a Przepustowość działa jako sygnał uzupełnienia, podobnie jak w CONWIP. Załóżmy, że istnieje System Kanban wykorzystujący Uproszczone Drum-Buffer-Rope, a Definition of Workflow (DoW) jest zaprojektowany do obsługi maksymalnie 15 Jednostek, z 12 aktywnie w toku (drum) i Buforem 3 Jednostek gotowych do rozpoczęcia, zapewniając ciągłość Pracy, jeśli którakolwiek z 12 Jednostek napotka problemy poprzez pobieranie z Bufora, utrzymując Przepływ na przykład z 13 w toku i 2 w rezerwie. Lina (rope) sygnalizuje uzupełnienie, gdy Jednostka zostanie dostarczona, utrzymując całość w limicie 15 Jednostek, a system priorytetowo traktuje szybkie odbudowanie Bufora, jeśli zostanie wyczerpany, proaktywnie rozwiązując problemy w celu utrzymania Przepływu. Nie wszyscy to wspierają.

### Jeśli Członkowie systemu Kanban muszą ustalić priorytet Jednostki pracy do 'rozpoczęcia'

_Oto kilka opcjonalnych technik spoza Kanban, które pewne, ale nie wszystkie społeczności wspierają:_

- **Class of Service (Klasa usług)** (21)**:** Archetyp dla jednej lub wyboru Jednostek pracy, takich jak standard, (rzeczywista, a zatem nie arbitralna) stała data, expedite lub intangible. Wybór Klasy usług może odzwierciedlać postrzeganą względną Wartość, Ryzyko lub Cost of Delay (CoD). Jest bardziej przydatny jako dane wejściowe do decydowania, którą Jednostkę(i) 'rozpocząć' jako następną, gdy Pojemność na to pozwala, niż do zmiany priorytetów Jednostek pracy w toku (PWT) (co nie jest dobre dla Przepływu). Podatny na przeciążenie Systemu Kanban, gdy jest niewłaściwie stosowany, np. 'pas expedite' może w końcu zostać zastąpiony przez 'pas super-expedite', a wtedy zaczyna robić się absurdalnie. Podatny na niezrównoważony Przepływ nawet, gdy nie jest niewłaściwie stosowany.
- **Cost of Delay (CoD) (na jednostkę czasu)** (7)**:** Tempo utraty Wartości na jednostkę czasu dla jednej lub więcej Jednostek, nie należy mylić z Delay Cost. Jest często przydatny jako dane wejściowe do decydowania, którą Jednostkę(i) 'rozpocząć' jako następną, gdy Pojemność na to pozwala, zamiast zmiany priorytetów Jednostek pracy w toku (PWT) (co nie jest dobre dla Przepływu). Jak większość danych wejściowych do priorytetyzacji, często opiera się na uzasadnionych domysłach. Może być również rzeczywisty po fakcie. Na przykład Cost of Delay (CoD) dla Jednostki pracy wynosi 10 000 $ na tydzień. Członkowie systemu Kanban powinni zachować ostrożność przed rozważeniem tego podejścia.
- **Rightsizing (Rightsizing) oparty na danych** (24-25)**:** Czasami bardziej skuteczny niż inne opcje, ponieważ Członkowie systemu Kanban rzadko z góry znają wysiłek lub Wartość. Pozwala na większy oportunizm.
- **Delay Cost (całkowity)** (7)**:** Całkowita skumulowana strata w okresie czasu z konkretnego okresu opóźnienia dla jednej lub więcej Jednostek. Może być rzeczywisty lub prognozowany i ważne jest, aby być jasnym, do którego się odnosi. Na przykład, jeśli Cost of Delay (CoD) dla Jednostki pracy wynosi 10 000 $ na tydzień i jest opóźniona o 3 tygodnie, Delay Cost wynosi 30 000 $.
- **Impact Estimation Table (IET)** (22)**:** Ocena opcji względem oczekiwań lub limitów Interesariuszy.
- **Opportunity Cost:** Wartość lub korzyść utracona poprzez wybór pracy nad jedną lub więcej Jednostkami pracy zamiast innych potencjalnie wartościowych Jednostek pracy ze względu na ograniczoną Pojemność. Odzwierciedla kompromisy dokonywane podczas ustalania priorytetów w ramach Pojemności w Systemie Kanban, gdzie skupienie się na jednej lub więcej Jednostkach pracy oznacza rezygnację z innych, które również mogłyby dostarczyć Wartość. Członkowie systemu Kanban często używają metryk takich jak Cost of Delay (CoD) lub Delay Cost do kwantyfikacji Opportunity Cost. Ponieważ Wartość, a tym samym Opportunity Cost, są od trudnych do przewidzenia do nieprzewidywalnych, Członkowie systemu Kanban powinni zachować ostrożność przed podjęciem próby zastosowania tego podejścia.
- **Random (Losowy):** Może być bardziej skuteczny niż inne opcje, ponieważ wysiłek lub Wartość nie są znane z góry.
- **Real Options (Real Options)** (23)**:** Odroczenie zobowiązań do czasu, gdy dostępne będą wystarczające informacje, traktując decyzje jako wartościowe, wygasające opcje w celu maksymalizacji elastyczności i zarządzania Ryzykiem.
- **Risk (Ryzyko):** Wykonaj najpierw najbardziej ryzykowną Jednostkę. Ryzyko może obejmować prawdopodobieństwo, że Wartość nie może zostać zebrana.
- **Shortest Job First** (24-25)**:** Wybór Jednostki pracy z najniższym postrzeganym wysiłkiem, priorytetyzując Jednostki pracy o właściwym rozmiarze (rightsized) nad innymi Jednostkami pracy. Może to prowadzić do krótszych pętli informacji zwrotnej i szybszych efektów. Ale może również prowadzić do opóźnionego 'rozpoczęcia' większej, bardziej ryzykownej Jednostki pracy.
- **Slack (Rezerwa pojemności)** (19)**:** Slack to pozostawienie niewykorzystanej Pojemności w systemie, aby poradzić sobie ze wzrostami zapotrzebowania, nieplanowaną pracą lub wystąpieniem nieprzewidzianych okoliczności. W kontekście Kanban dla Pracy umysłowej jest to celowa alokacja lub zasada zapasowej Pojemności lub czasu w ramach Definition of Workflow (DoW) w celu absorbowania zmienności, radzenia sobie z nieoczekiwanymi zakłóceniami lub umożliwienia ciągłego doskonalenia bez narażania Przepustowości Systemu Kanban. Przykład: Członkowie systemu Kanban mogą utrzymywać Slack poprzez ograniczenie ich 'Rozpoczętej, ale Niezakończonej Pracy' (SNFW) lub Pracy w toku (PWT) do 80% Pojemności, pozwalając na czas na zajęcie się pilnymi żądaniami lub udoskonalenie procesów bez opóźniania planowanej pracy. Slack jest kluczową koncepcją w Lean.
- **Value divided by Effort (Wartość podzielona przez Wysiłek):** Szacowana Wartość (zazwyczaj uzasadniony domysł) podzielona przez Szacowany Wysiłek (zazwyczaj uzasadniony domysł). Rzeczywisty Wysiłek i Wartość bywają losowe. Członkowie systemu Kanban powinni zachować ostrożność przed rozważeniem tego podejścia. Opcjonalnie należy uwzględnić Ryzyko.

### Konwencje używane w kontekście Pracy umysłowej

- **Buffer (Bufor)** (16)**:** Bufor to obszar z ograniczoną PWT (lub ograniczoną 'Rozpoczętą, ale Niezakończoną Pracą'), który tymczasowo przechowuje Pracę w celu wygładzenia Przepływu i zapobieżenia przeciążeniu, a także funkcjonuje jako Kolejka kontrolowana PWT. Nie należy mylić ze Slack. Nie wszyscy wspierają Bufor; więcej kolumn może prowadzić do większej ilości 'Rozpoczętej, ale Niezakończonej Pracy' (SNFW) lub Pracy w toku (PWT).
- **_Definition of Workflow (DoW):_** Jawne wspólne zrozumienie Przepływu wśród Członków systemu Kanban w ich kontekście, w tym między innymi, _jawny zestaw uzgodnień i zasad, które opisują, w jaki sposób Jednostki pracy są wybierane, przesuwane i 'zakończone' przez odrębne etapy Przepływu pracy._
- **Explicit policy (Jasne zasady):** Jasna zasada w Systemie Kanban to wyraźnie określona i widoczna reguła lub wytyczna, która czyni założenia dotyczące Przepływu pracy – takie jak to, kiedy Jednostki pracy 'rozpoczynają się' lub się przemieszczają – przejrzystymi dla Członków systemu Kanban. Te zasady powinny być Zwizualizowane na Tablicy Kanban i być łatwo dostępne, zapewniając, że wszyscy Członkowie systemu Kanban rozumieją i postępują zgodnie z tym samym procesem. Czyniąc zasady jawnymi, Członkowie systemu Kanban redukują niejasności, dostosowują działania i wspierają zoptymalizowany Przepływ Wartości.
- **'Finished' (Zakończone) (lub 'Completed'):** Kiedy zegar Czasu, jaki upłynął od 'Rozpoczęcia' do 'Zakończenia' zatrzymuje się dla pary 'rozpoczęte' i 'zakończone' w Definition of Workflow (DoW).
- **Flow (Przepływ):** (Idealnie płynny) ruch i dostarczanie Jednostek pracy przez Definition of Workflow (DoW). Zrównoważony System Kanban podtrzymuje Przepustowość. W idealnym świecie Praca, która weszła do systemu (Praca umysłowa), płynęłaby jak rzeka, nigdy się nie zatrzymując, znajdując ścieżkę najmniejszego oporu, aż dotrze do klienta. Nie należy mylić z Definition of Workflow (DoW). W Kanban Przepływ \> wykorzystanie.
- **_kanban:_** _Kanban​ (signboard po japońsku) to Wizualna wskazówka, która wyzwala wybór, 'rozpoczęcie' lub przesunięcie Jednostki pracy. Nic nie powinno być produkowane ani przesuwane bez sygnału kanban._
- **Kanban lub System Kanban**: Holistyczny zestaw koncepcji w tym przewodniku. _Kanban jest zakorzeniony w idei systemu sygnalizacji (sposobu wzywania do Pracy lub inwentarza w systemie produkcyjnym)._  
  _Gdy ten przewodnik mówi Kanban, zakłada System Kanban._
- **Kanban Board (Tablica Kanban):** Wizualna reprezentacja jednego lub więcej Definitions of Workflow.
- **Knowledge Work (Praca umysłowa):** Tworzenie, zastosowanie lub zarządzanie informacją poprzez procesy poznawcze w celu rozwiązywania (często) złożonych problemów, podejmowania decyzji lub innowacji, zazwyczaj wymagające wiedzy specjalistycznej, osądu i współpracy. Często Praca umysłowa i związane z nią marnotrawstwo są niewidoczne.
- **Iterative (Iteracyjny):** Jednostki pracy są wykonywane w powtarzających się cyklach, przy czym każdy cykl obejmuje ponowne przejrzenie i dopracowanie tej samej Pracy na podstawie informacji zwrotnych, testowania lub nowych spostrzeżeń. Kanban nie jest z natury nieodpowiedni do twórczej pracy iteracyjnej, ale może wymagać przemyślanego rozważenia lub adaptacji.
- **JIT (Just-in-Time):** Toyota Just-in-Time – Produkowanie tylko tego, co jest potrzebne, gdy jest potrzebne, w potrzebnej ilości, aby zminimalizować marnotrawstwo i zoptymalizować wydajność.
- **Measure (Miara):** Miara to surowy, specyficzny dla jednostki punkt danych reprezentujący pojedynczą wielkość, taki jak 'liczba Jednostek pracy ukończonych w tym tygodniu' lub 'czas ukończenia Jednostki pracy', służący jako podstawowe dane wejściowe do śledzenia wydajności Przepływu. Przykład: Członkowie systemu Kanban rejestrują Miarę 10 ukończonych Jednostek pracy do tej pory.
- **Metric (Metryka):** Metryka to policzalne obliczenie pochodzące z jednej lub więcej Miar, aby zapewnić kontekst dla wydajności Przepływu pracy, takie jak 'średnia Przepustowość' lub 'Przepustowość na tydzień'. Przykład: Członkowie systemu Kanban obliczają Metrykę 4 dni średniego Czasu, jaki upłynął od 'Rozpoczęcia' do 'Zakończenia', dzieląc całkowity czas ukończenia 10 Jednostek pracy przez liczbę Jednostek pracy.
- **Pull (Pull):** Praca jest wybierana (bez względu na to, czy 'rozpoczęta' czy 'nierozpoczęta' w Definition of Workflow (DoW)) tylko wtedy, gdy jest Pojemność, wybierana przez Członków systemu Kanban, i zapobiega przeciążeniu, idealnie sygnalizowana przez klienta, bezpośrednio lub pośrednio.
- **Push (Push):** Praca jest przydzielana Członkom systemu Kanban lub do Systemu Kanban bez uwzględnienia aktualnej Pojemności lub gotowości Członków systemu Kanban do 'rozpoczęcia' Pracy.
- **Queue (Kolejka):** Kolejka w Kanban to obszar oczekiwania dla Jednostek pracy, często bez ścisłych limitów, ale może służyć jako Bufor, jeśli obecne są Limity PWT (16) lub limity 'Rozpoczętej, ale Niezakończonej Pracy' (SNFW).
- **Risk (Ryzyko):** Szansa, że coś złego może się zdarzyć.
- **Stable system (System stabilny):** Mówiąc prościej, system, który może konsekwentnie sprostać zapotrzebowaniu, które na niego nakładane. Istnieją bardziej precyzyjne opisy (7,8,20). Praca umysłowa ma tendencję do generowania większego zakresu rozmiarów Jednostek pracy niż praca produkcyjna. Nierówne rozmiary niekoniecznie prowadzą do wyższej zmienności czasów, które upłynęły (ze względu na czas oczekiwania często będący najbardziej znaczącym czynnikiem, itp.) lub Przepustowości, ale mogą to robić (ze względu na zależności zewnętrzne, itp.). Pogląd w tym przewodniku jest taki, że podejściom zaprojektowanym dla produkcji niekoniecznie brakuje użyteczności w Pracy umysłowej.
- **Stakeholder (Interesariusz)**: Podmiot, osoba lub grupa odpowiedzialna za, zainteresowana lub dotknięta danymi wejściowymi, działaniami i efektami Systemu Kanban. Obejmuje między innymi klienta, decydenta lub użytkownika.
- **'Started' (Rozpoczęte):** Kiedy zegary czasu, jaki upłynął 'rozpoczynają się' dla pary 'rozpoczęte' i 'zakończone' w Definition of Workflow (DoW).
- **'started' and 'finished' pair (para 'rozpoczęte' i 'zakończone'):** Każdy z jednego lub wielu punktów 'rozpoczęte' w Definition of Workflow (DoW) powinien mieć odpowiadający punkt 'zakończone' w tym samym Definition of Workflow (DoW).
- **Takt:** Słowo Takt (angielskie 'tact') pochodzi z niemieckiego słowa oznaczającego rytm, kadencję lub cykl. Takt jest związany z utrzymywaniem czasu w muzyce. Współczesne użycie Takt jest zazwyczaj w kontekście produkcyjnym. Takt to podstawowy pomiar w Systemie Produkcyjnym Toyoty i Myśleniu Lean, używany do obliczania Pojemności wymaganej do spełnienia zapotrzebowania w Systemie stabilnym. Przepustowość, w przeciwieństwie do Takt, który ustala oczekiwanie dotyczące idealnego tempa w oparciu o zapotrzebowanie, mierzy rzeczywiste wyniki na jednostkę czasu. Takt pomaga również osiągnąć zrównoważony system, aby konsekwentnie sprostać zapotrzebowaniu, umożliwiając Członkom systemu Kanban określenie Pojemności potrzebnej na każdym etapie procesu. Obliczanie Takt jest wyzwaniem w Pracy umysłowej, ponieważ wymaga zrozumienia zapotrzebowania w środowiskach o dużej zmienności. Nie zawsze idealne dla Pracy umysłowej.
- **Work (Praca):** Odnosi się do jednej lub więcej Jednostek pracy, 'rozpoczętych', 'nierozpoczętych', 'zakończonych' lub 'niezakończonych'.
- **Work Item (Jednostki pracy):** Jednostka pracy, zwana również Jednostką, zawiera potencjał dla Wartości.​ Różne terminy mogą być używane do opisania różnych poziomów szczegółowości Jednostki pracy, o ile ma ona potencjał dla Wartości. Jednostki pracy, które nie mają potencjału dla Wartości dla Interesariuszy są potencjalnie marnotrawne, np. ludzie koncentrują się na 'zakończeniu' podzadań w wielu Jednostkach pracy zamiast koncentrować się na 'zakończeniu' jednej Jednostki na raz. Kontrolowanie 'Rozpoczętej, ale Niezakończonej Pracy' (SNFW) lub Pracy w toku (PWT) dla potencjalnie marnotrawnych Jednostek często redukuje wspólny wysiłek i skupienie, aby dostarczyć potencjalną Wartość szybciej. Należy uwzględnić kontekst.
- **Work Item Type (Typ jednostki pracy):** Kategoryzacja Jednostki pracy. Przykłady obejmują między innymi marki, klientów, funkcje, błędy, pracę projektową, badania doświadczenia użytkownika (UX), badania doświadczenia klienta (CX), projektowanie skoncentrowane na człowieku, pracę operacyjną, stwierdzenia problemów, hipotezy, inne badania i eksperymenty. Przydatne do nadawania sensu.
- **Validated Value (Wartość zwalidowana):** Wartość potwierdzona dowodami lub obserwacjami (idealnie obydwoma), formalnie lub nieformalnie, przez Interesariuszy; często po jednej lub więcej rundach informacji zwrotnej z wyników (i przeróbek), przez wewnętrznych i zewnętrznych Interesariuszy. Nie wszyscy to wspierają.
- **Value (Wartość)**: Albo potencjalna, albo zrealizowana korzyść dla Interesariusza. Przykłady obejmują spełnienie potrzeb klienta, użytkownika końcowego, decydenta, organizacji i środowiska.
- **Visualize, visualization (Wizualizacja):** Każda metoda skutecznego przekazywania pomysłów, w tym koncepcyjne wyjaśnienie, niekoniecznie tylko wizualne.

## Nota od tłumaczy {#translator-acknowledgement}

### Podziękowania {#translators-note}

Dziękujemy recenzentom, którzy wsparli nas w ulepszeniu niniejszego tłumaczenia: 

|  |  |
| :-- | :-- |
| Tłumaczenie | [Magdalena Firlit](https://magdalenafirlit.com/) |
| Tłumaczenie | [Mike Januszewski](https://januszew.ski) |

Oraz wszystkim innym, którzy podzieli się z nami informacją zwrotną.

### Historia tłumaczenia {#translation-history-log}

| Numer wersji | Znaczenie | Data wersji |
| :-- | :-- | :-- |
| v2025.5 | Oficjalne tłumaczenie v2025.5 | 15.10.2025 |

## Bibliografia

Bibliografia umieszczona jest tutaj, aby poinformować czytelników o możliwościach dalszego studiowania. Niekoniecznie wspiera ona tekst w tym przewodniku:

1. _Little, J. D. C. (1961). A proof for the queuing formula: L \= λW. Operations Research, 9(3), 383–387. [https://doi.org/10.1287/opre.9.3.383](https://doi.org/10.1287/opre.9.3.383). _
2. _Deming, W. E. (1986). Out of the crisis. MIT Press. (Peer-reviewed through its academic adoption in quality management.)_
3. _Goldratt, E. M. (1990). Theory of Constraints. North River Press. (Peer-reviewed through academic adoption in operations research.)_
4. _Womack, J. P., & Jones, D. T. (1996). Lean thinking: Banish waste and create wealth in your corporation. Simon & Schuster._
5. _Ackoff, R. L. (1999). Ackoff's Best: His Classic Writings on Management. NY: John Wiley & Sons._
6. _Hopp, W. J. and Spearman, M. L. (2004) ‘To pull or not to pull: what is the question?’, Manufacturing & Service Operations Management, 6(2), pp. 133–148. [https://doi.org/10.1287/msom.1030.0028](https://doi.org/10.1287/msom.1030.0028)._
7. _Reinertsen, D. G. (2009). The Principles of Product Development Flow: Second Generation Lean Product Development. Redondo Beach, CA: Celeritas Publishing_
8. _Shewhart, W. A. (1931). Economic Control of Quality of Manufactured Product. NY: D. Van Nostrand Company._
9. _Ohno, T. (1988). Toyota Production System: Beyond Large-Scale Production. Portland, OR: Productivity Press._
10. _Juran, J. M. (1992). Juran on Quality by Design: The New Steps for Planning Quality into Goods and Services. New York: The Free Press._
11. _Wheeler, D. J. (1993). Understanding Variation: The Key to Managing Chaos. Knoxville, TN: SPC Press._
12. _Wikipedia (2025) ‘Kanban (development)’. Available at: [https://en.wikipedia.org/wiki/Kanban\_(development)](<https://en.wikipedia.org/wiki/Kanban_(development)>) (Accessed: 22 June 2025)._
13. _Kingman, J. F. C. (1961) ‘The single server queue in heavy traffic’, Mathematical Proceedings of the Cambridge Philosophical Society, 57(4), pp. 902–904. doi: 10.1017/S0305004100035783, and the stable URL is [https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37](https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37). _
14. _Roser, C. (2018) ‘The Kingman Formula – Variation, Utilization, and Lead Time’, AllAboutLean.com, 2 March. Available at: [https://www.allaboutlean.com/kingman-formula/](https://www.allaboutlean.com/kingman-formula/) (Accessed: 22 June 2025\)_
15. _Csíkszentmihályi, M. (1990) Flow: The Psychology of Optimal Experience. NY: Harper & Row_
16. _Tendon, S. and Müller, W. (2015). Hyper-Productive Knowledge Work Performance: The TameFlow Approach and Its Application to Scrum and Kanban. Plantation, FL: J. Ross Publishing._
17. _Seddon, J. (2019). Failure demand | Vanguard. \[online\] Vanguard-method.net. Available at: [https://vanguard-method.net/library/systems-principles/failure-demand/](https://vanguard-method.net/library/systems-principles/failure-demand/) \[Accessed 22 Mar. 2019\]_
18. Christensen, C.M., Hall, T., Dillon, K. and Duncan, D.S., 2016\. Know your customers' 'jobs to be done'. _Harvard Business Review_, 94(9), pp.54-62.
19. DeMarco, T. (2001). _Slack: Getting Past Burnout, Busywork, and the Myth of Total Efficiency_. Broadway Books.
20. Leopold, K. (2017) Little's law and system stability – an interview with Daniel Vacanti. Leanability. Available at: [https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability](https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability) \[Accessed 28 June 2025\].
21. Kanban University (2021) The Official Guide to The Kanban Method \[Online\]. Available at: [https://kanban.university/new-to-kanban-get-the-official-guide-to-the-kanban-method/](https://kanban.university/new-to-kanban-get-the-official-guide-to-the-kanban-method/) (Accessed: 29 June 2025).
22. _Gilb, T. (2005) Competitive Engineering: A Handbook for Systems Engineering, Requirements Engineering, and Software Engineering Using Planguage. Oxford: Elsevier Butterworth-Heinemann. Also available at: [https://bit.ly/TomGilbCompEng](https://bit.ly/TomGilbCompEng)_
23. Maassen, O., Matts, C. and Geary, C. (2013) Commitment: A novel about managing project risk. The Netherlands: Happy About.
24. Vacanti, D. S. (2015) Actionable Agile Metrics for Predictability: An Introduction. United States: ActionableAgile Press.
25. Vacanti, D. S. (2023) Actionable Agile Metrics for Predictability Volume II: Advanced Topics. United States: ActionableAgile Press.


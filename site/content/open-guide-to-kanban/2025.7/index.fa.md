---
title: راهنمای آزاد کانبان در دامنه‌ی کارهای دانش‌محور
short_title: راهنمای آزاد کانبان
description: «راهنمای باز کانبان (Open Guide to Kanban)» یک مرجع رایگان و مبتنی بر جامعه است برای به‌کارگیری «کانبان (Kanban)» در کار دانش‌محور (Knowledge Work). این راهنما، اصول اجرایی (Practices) و شاخص‌های کلیدی (Metrics) لازم برای بهبود جریان (Flow)، بهینه‌سازی تحویل ارزش (Value Delivery)، و ارتقای پایداری تیم را تعریف می‌کند. این راهنما از پیاده‌سازی‌های مقیاس‌پذیر کانبان در صنایع گوناگون پشتیبانی کرده و مکمل سایر رویکردهای چابک (Agile)، ناب (Lean) و مبتنی بر جریان (Flow-based) است.

keywords:
  - کانبان
  - راهنمای آزاد کانبان
  - کار دانش‌محور
  - بهینه‌سازی جریان
  - محدودیت‌های کار در جریان
  - تحویل ارزش
  - چابک
  - ناب
  - بهبود مستمر
  - زمان انتظار
  - جریان تجمعی
  - توان عملیاتی
  - شاخص‌ها
  - سن آیتم کاری
  - بهره‌وری جریان
  - بصری‌سازی
  - کار در جریان
  - بهبود فرایند
  - تخته کانبان
  - تعریف جریان کار
  - تحویل نتیجه‌محور
author:
  - جان کولمن
date: 2025-07-02T09:00:00Z
type: guide
forked_from: the-kanban-guide/2025.5
lang: fa
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /open-guide-to-kanban/latest/
---

This work, Open Guide to Kanban, is an adaptation of the [Kanban Guide (May 2025 version)](https://kanbanguides.org/history/kanban-guide-2025/), which is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). The original guide is © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc. Changes were made to the original. Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). _Portions highlighted in italic are © 2025_ Orderly Disruption Limited, licensed under CC BY-SA 4.0. All other content is from © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc., also licensed under CC BY-SA 4.0.

## پیشگفتار

این سند با هدف ارائه‌ی راهنمایی باز و قابل‌انطباق برای کانبان (Kanban) و جریان (Flow) تهیه شده است و ایده‌هایی را که از گروه‌های مختلف گردآوری شده‌اند، در بر می‌گیرد. این سند تلاش می‌کند تا علاوه بر محتوای اختصاصی هر گروه، به‌عنوان یک مرجع منسجم برای گروه‌های گوناگون نیز عمل کند. با توجه به حوزه‌ی فعالیت، رویکردهای متنوعی می‌توانند در کنار کانبان به کار گرفته شوند تا طیف وسیعی از چالش‌های تحویل ارزش (Value) و مسائل سازمانی را پوشش دهند.

*استفاده از فونت ایتالیک در این سند به Creative Commons در صفحه‌ی جلد مربوط می‌شود و نه برای تأکید. همچنین، استفاده از حرف بزرگ در ابتدای یک واژه نشان‌دهنده‌ی یک اصطلاح قراردادی است که در پیوست این سند فهرست شده است. به‌عنوان مثال، ارزش (Value) یعنی منفعت بالقوه یا بالفعل برای یک ذی‌نفع (Stakeholder)، که می‌تواند شامل برآورده کردن نیازهای مشتری، کاربر نهایی، تصمیم‌گیرنده، سازمان، و محیط زیست باشد.*

## تعریف کانبان (Kanban) در زمینهٔ کار دانش‌محور (Knowledge Work)

کانبان یک استراتژی (Strategy) برای بهینه‌سازی جریان ارزش (Flow of Value) در یک سیستم است. کانبان یک سیستم علامت‌دهی برای درخواست کار یا موجودی است. این استراتژی شامل سه اصل اجرایی (Practices) زیر است که به‌صورت هماهنگ عمل می‌کنند:

- تعریف و بصری‌سازی جریان‌کار (Workflow)
- مدیریت آیتم‌های جریان‌کار
- بهبود جریان کار (Flow)

در پیاده‌سازی آن، این اصول اجرایی کانبان به‌طور جمعی «سیستم کانبان (Kanban System)» نامیده می‌شوند. کسانی که در تحویل ارزش یک سیستم کانبان مشارکت دارند، افراد درگیر در سیستم کانبان (Kanban System Members) نامیده می‌شوند.

## چرا از کانبان (Kanban) استفاده کنیم؟

در قلب *تعریف* کانبان (Kanban)، مفهوم جریان (Flow) قرار دارد. *در یک سیستم کانبان*، *جریان*، به معنای حرکت ارزش بالقوه درون یک سیستم است. از آن‌جایی‌که بیشتر جریان‌های کار *کانبان* (Workflow) برای بهینه‌سازی ارزش ایجاد شده‌اند، استراتژی کانبان نیز بر بهینه‌سازی ارزش از طریق بهینه‌سازی جریان متمرکز است. بهینه‌سازی ارزش یعنی تلاش برای یافتن تعادل درست میان کارآمدی (Effectiveness)، بهره‌وری (Efficiency)، و قابلیت پیش‌بینی (Predictability):

- یک جریان کار کارآمد، آن‌چه ذی‌نفعان (Stakeholders) می‌خواهند را در زمان مناسب تحویل می‌دهد.
- یک جریان کار بهره‌ور، منابع اقتصادی در دسترس را به بهترین شکل برای تحویل ارزش تخصیص می‌دهد.
- یک جریان کار قابل پیش‌بینی، امکان پیش‌بینی دقیق تحویل ارزش را در محدوده‌ای از عدم قطعیت فراهم می‌کند.

استراتژی کانبان (Kanban Strategy) بر آن است که افراد درگیر در سیستم کانبان (Kanban System) را به طرح زودهنگام پرسش‌های درست در مسیر بهبود مستمر ترغیب کن. افراد سیستم کانبان باید در پی دستیابی به تعادلی پایدار میان این سه عنصر باشند. _«کانبان (Kanban)» همچنین روشی برای کاهش بارکاری بیش از حد (Overburden) و مدیریت تقاضا است، به‌گونه‌ای که کار با توجه به ظرفیت موجود، به شکلی بهینه تحویل داده شود. این رویکرد بی‌نقص نیست، اما باید به بهبود مستمر (Continues Improvement) و جریان بهینه‌ی ارزش (Optimized Flow of Value) کمک کند._

_مزایای جانبی شامل رضایت بیشتر افراد درگیر در سیستم کانبان (Kanban System Members)، کیفیت بالاتر، و توانایی انطباق با تقاضا است. یک سیستم کانبان خوب، خودتنظیم‌گر است؛ به این معنا که سیستم کانبان بدون نیاز به مداخله، مشکلات را شناسایی کرده و خود را با آن‌ها تطبیق می‌دهد._

از آن‌جایی‌که کانبان می‌تواند با تقریباً هر جریان کاری (Workflow) کار کند، کاربرد آن محدود به هیچ صنعت یا حوزه‌ی خاصی نیست. متخصصان دانش‌محور (Knowledge workers) حرفه‌ای در حوزه‌هایی چون امور مالی، خدمات عمومی، سلامت، و نرم‌افزار (تنها چند مثال) از به‌کارگیری کانبان بهره‌مند شده‌اند. کانبان را می‌توان در هر مقیاس و در بیشتر حوزه‌هایی که ارزش در آن‌ها تحویل داده می‌شود، به کار برد.

## نظریه‌ی کانبان

*سیستم کانبان* (Kanban System) *از رویکردها و دیدگاه‌های گوناگونی* بهره می‌گیرد که شامل، اما نه محدود به، تفکر سیستمی (Systems Thinking) (۵)، اصول ناب (Lean Principles) (۴)، نظریه صف (Queuing Theory) شامل اندازه دسته (Batch Size) (۶-۷) و اندازه صف (Queue Size) (۱، ۱۳-۱۴)، تغییرپذیری (Variation) (۲، ۱۱)، و کنترل کیفیت (Quality Control) (۲، ۸، ۱۰) است.

بهبود مستمر یک سیستم کانبان بر اساس این رویکردها و دیدگاه‌ها، یکی از راه‌هایی است که سازمان‌ها می‌توانند برای بهینه‌سازی تحویل ارزش (Value) به کار گیرند. بسیاری از رویکردهای موجود که بر ارزش متمرکز هستند، ایده‌هایی را که کانبان بر پایهٔ آن‌ها بنا شده است، در بر دارند. به دلیل این شباهت‌ها، کانبان می‌تواند برای تکمیل آن رویکردهای تحویل ارزش به کار گرفته شود.


## اصول اجرایی کانبان

### تعریف و بصری‌سازی جریان کار

بهینه‌سازی **جریان (Flow)** مستلزم آن است که در یک زمینه‌ی مشخص، تعریف شود که **جریان ارزش (Flow of Value)** به چه معناست؛ یعنی حرکت و تحویل روان (در حالت ایده‌آل) منافع بالقوه یا بالفعل برای **ذینفعان (Stakeholders)**. درک مشترک و صریح افراد درگیر در سیستم کانبان (Kanban System Members) از مفهوم جریان در بستر کاری خود، «تعریف جریان کار (Definition of Workflow)» نامیده می‌شود. «تعریف جریان کار (Definition of Workflow)» یک مفهوم بنیادی در کانبان است و تمامی عناصر دیگر این راهنما به شدت به نحوه‌ی تعریف جریان کار وابسته‌اند.

در حداقل‌ترین حالت، افراد سیستم کانبان باید تعریف جریان کار را با استفاده از تمام عناصر زیر ایجاد کنند:

- تعریفی روشن از واحدهای ارزش که در جریان کار جابه‌جا می‌شوند. این واحدها «آیتم‌های کاری» نامیده می‌شوند.
- بسته به «آیتم کار (Work Item)»، باید حداقل یک جفت نقطه‌ی «آغاز» (Started) و «پایان» (Finished) مشخص و منسجم تعریف شود:
	- یک یا چند وضعیت (State) مشخص که «آیتم‌های کار (Work Items)» از نقطه‌ی «آغاز» تا «پایان» از آن‌ها عبور می‌کنند.
	- *آیتم‌های کاری که بین نقاط «آغاز» و «پایان» قرار دارند، حتی اگر در یک صف (Queue) یا بافر (Buffer) منتظر باشند، به‌عنوان یکی از موارد زیر در نظر گرفته می‌شوند:*
		- *«کار آغاز شده اما پایان نیافته (Started but Not Finished Work – SNFW)» یا*
		- *«کار در جریان (Work in Progress – WIP)».*
	- یک تعریف برای چگونگی کنترل «کار در جریان (WIP)» از نقطه‌ی «آغاز» تا «پایان».
	- *مجموعه‌ای از سیاست‌های صریح و شفاف (Explicit Policies) درباره‌ی اینکه «آیتم‌های کار (Work Items)» چگونه می‌توانند بدون نقص از هر وضعیت، از نقطه‌ی «آغاز» تا «پایان» جریان پیدا کنند.*
		- *به‌عنوان مثال، ممکن است افراد درگیر در سیستم کانبان (Kanban System Members) سیاستی صریح داشته باشند که هر نقص شناخته‌شده در یک آیتم را پیش از انتقال آن به وضعیت بعد، برطرف کنند تا هیچ نقص شناخته‌شده‌ای به فرآیند بعدی منتقل نشود.*
	- زمان انتظار (Service Level Expectation – SLE): پیش‌بینی اینکه چقدر طول می‌کشد تا یک «آیتم کار (Work Item)» از نقطه‌ی «آغاز» به نقطه‌ی «پایان» جریان پیدا کند.
		- توجه: هیچ تضمینی وجود ندارد که آنچه در گذشته رخ داده، در آینده هم تکرار شود.
	- بصری‌سازی (Visualization) «انتظار سطح خدمت (SLE)» بر روی تخته‌ی کانبان (Kanban Board).

ترتیب پیاده‌سازی این عناصر اهمیت ندارد، به شرطی که همه‌ی آن‌ها **پیاده‌سازی** شوند. افراد درگیر در سیستم کانبان (Kanban System Members) بسته به **شرایط** خود، اغلب به عناصر تکمیلی در «تعریف جریان کار (Definition of Workflow)» نیاز دارند؛ عناصری همچون ارزش‌ها، اصول، و توافق‌های کاری. **منابعی در پیوست این راهنما و سایر منابع موجود است که می‌تواند در انتخاب گزینه‌های مناسب کمک‌کننده باشد.**

همچنین افراد درگیر در سیستم کانبان (Kanban System Members) اغلب به بیش از یک «تعریف جریان کار (Definition of Workflow)» نیاز دارند. این چندین تعریف ممکن است برای گروه‌های مختلفی از افراد درگیر در سیستم کانبان، سطوح متفاوت سازمان، و غیره در نظر گرفته شود.

این راهنما حداقل یا حداکثر مشخصی برای تعداد «تعریف جریان کار (Definition of Workflow)» تعیین نمی‌کند، اما تأکید دارد که در هر جایی که افراد درگیر در سیستم کانبان نیاز به اتصال **جریان (Flow)** به **ارزش (Value)** دارند، یک «تعریف جریان کار (Definition of Workflow)» ایجاد شود.

«امکان‌پذیر کردن جریان (Enabling Flow)» به معنای ایجاد و پرورش یک سیستم روان و متعادل برای خلق ارزش (Value) است. تعریف گردش کار (Definition of Workflow – DoW) باید اطمینان حاصل کند که سیستم به گونه‌ای متعادل شده است که جریان ارزش (Flow of Value) بهینه شود.

«بصری‌سازی (Visualization)» یک یا چند «تعریف جریان کار (Definition of Workflow)» به‌عنوان یک برد کانبان (Kanban Board) شناخته می‌شود.

هیچ دستورالعمل مشخصی برای اینکه یک بصری‌سازی (Visualization) دقیقاً چگونه باید به نظر برسد وجود ندارد. در طراحی آن، باید همه‌ی جنبه‌های «تعریف جریان کار (Definition of Workflow)» (برای نمونه، آیتم‌های کاری (Work Items) و سیاست‌ها) و همچنین هر عامل دیگری که به شرایط خاص وابسته است و می‌تواند بر نحوه‌ی جریان یافتن ارزش (Flow of Value) تأثیر بگذارد، مورد توجه قرار گیرد.

در یک تیم نرم‌افزاری، کانبان (Kanban) ممکن است توسعه‌ی یک قابلیت را از مرحله‌ی ایده تا استقرار بصری‌سازی (Visualize) کند. در یک تیم بازاریابی، ممکن است مسیر یک کمپین را از طراحی تا راه‌اندازی دنبال کند.

افراد درگیر در سیستم کانبان (Kanban System Members) تنها به وسیله‌ی تخیل خود محدود می‌شوند، آن‌گاه که می‌خواهند **جریان (Flow)** را قابل مشاهده کنند و تعاملات هدفمند و آگاهانه را در زمان مناسب با افراد مناسب تقویت نمایند. توصیه می‌شود هر گام از جریان کار (Workflow) تصویری‌سازی شود تا از پنهان ماندن اتلاف‌ها جلوگیری شود.

### مدیریت آیتم‌های در جریان کار

آیتم‌ها (Items) در جریان کار باید **فعالانه مدیریت شوند**.  
_مدیریت فعال آیتم‌ها در جریان کار می‌تواند اشکال مختلفی داشته باشد، از جمله، اما نه محدود به موارد زیر:_

- **کنترل** «کارهای آغازشده اما ناتمام (SNFW)» یا «کار در جریان (Work In Progress/Process – WIP)».
- **اطمینان یافتن** از اینکه آیتم‌های کاری (Work Items) بدون دلیل موجه کهنه (aging) نمی‌شوند؛ با استفاده از **زمان انتظار (Service Level Expectation – SLE)** به‌عنوان مرجع.
- **رفع موانعی** که باعث مسدود شدن کار یا فرایندها می‌شوند.

یک اصل اجرایی رایج این است که افراد درگیر در سیستم کانبان (Kanban System Members) به‌طور منظم آیتم‌های فعال را بازبینی کنند. این بازبینی می‌تواند به‌صورت مستمر یا در بازه‌های زمانی مشخص انجام شود. افراد درگیر در سیستم کانبان باید به‌طور صریح تعداد آیتم‌های کاری در جریان از «آغازشده» تا «پایان‌یافته» را به شکل مستقیم یا غیرمستقیم کنترل کنند. این کنترل می‌تواند روی تخته کانبان (Kanban Board) به هر شکلی که افراد درگیر در سیستم کانبان مناسب بدانند نمایش داده شود.

_استفاده از محدودیت‌های کار در جریان (WIP limits) در کانبان برای کار دانش‌محور (Knowledge Work) معمولاً نشان‌دهنده‌ی این است که تقاضا می‌تواند بیش از ظرفیت تیم باشد. بنابراین، محدودیت‌های WIP برای تنظیم و موازنه‌ی جریان آیتم‌های کاری و جلوگیری از بار اضافی استفاده می‌شوند._

_در مقابل، یک سیستم کششی «در زمان مناسب» (Just-In-Time – JIT) در شرکت تویوتا مانع از آن می‌شود که تقاضا بیشتر از عرضه باشد؛ زیرا درخواست‌های بعدی تا زمانی که درخواست قبلی تکمیل نشده باشد، انجام نمی‌شوند. این سیستم خودمحدودکننده یا خودتنظیم‌گر، برای همگام‌سازی تولید با تقاضای واقعی مشتری و کاهش موجودی در محیط تولیدی پایدار و قابل پیش‌بینی طراحی شده است._

_اصل «تولید دقیقاً آنچه نیاز است، در زمان نیاز» اساس سیستم تولید تویوتا است. سیستم کانبان در این مدل، دقیقاً همان چیزی را می‌کشد (Pull) که در لحظه‌ی مناسب نیاز است._

در **کار دانش‌محور (Knowledge Work)**، افراد درگیر در سیستم کانبان باید فقط زمانی یک آیتم را شروع کنند که سیگنال روشنی مبنی بر وجود ظرفیت کافی برای انجام آن وجود داشته باشد. زمانی که WIP به زیر سطح کنترلی تعیین‌شده در «تعریف جریان کار (Definition of Workflow)» کاهش می‌یابد، این می‌تواند نشانه‌ای برای انتخاب کار جدید باشد. افراد درگیر در سیستم کانبان باید از انتخاب آیتم‌های کاری بیشتر از سطح کنترل WIP مرتبط یا بیشتر از ظرفیت خود خودداری کنند. در صورت لزوم، کار باید به آیتم‌های کوچکتر اما همچنان بالقوه ارزشمند تقسیم شود.

هیچ الزامی به داشتن یک مخزن آیتم‌های کاری که هنوز در جریان (WIP) نیستند، وجود ندارد؛ چیزی که اغلب به آن بکلاگ (Backlog) گفته می‌شود. یک بکلاگ ماهیتی **پدیدار شونده (Emergent)** دارد و می‌تواند شامل مراحل مختلف یا جنبه‌هایی از آماده‌سازی کار باشد. اگر بکلاگی وجود داشته باشد، نیازی نیست که به‌صورت لیست یا اولویت‌بندی خطی باشد.

_در حالت ایده‌آل، ورود کار به سیستم کانبان باید براساس سیاست‌ها هدایت شود، نه اینکه به یک فرد خاص اختصاص یابد._ در راستای مدیریت «کارهای در انتظار»، نه «افراد در انتظار»:

- افراد درگیر در سیستم کانبان باید حول محور کار و تعریف جریان کار خودسازمانده (Self-organize) شوند.
- افراد درگیر در سیستم کانبان باید زمانی که آماده‌ی کار هستند، کار را «شروع» کنند و کار جدید را بر اساس نحوه‌ی اولویت‌بندی وارد جریان نمایند.
- افراد درگیر در سیستم کانبان ــ و همچنین افرادی خارج از سیستم کانبان ــ باید صراحتاً از «هل دادن» کار به سمت افراد درگیر در سیستم کانبان جلوگیری کنند.
- باید از **تغییر اولویت در کارهای آغازشده اما ناتمام (SNFW) یا کار در جریان (WIP)** پرهیز کرد، زیرا این امر موجب کهنه شدن (Idle aging) آیتم‌ها و افزایش زمان‌های سپری‌شده از «آغاز» تا «پایان» می‌شود و آن‌ها را غیرقابل پیش‌بینی‌تر می‌کند.
    

اصل بهینه‌سازی اندازه سازمان (Rightsizing)، که یک اصل اختیاری اما توصیه‌شده است، به معنای ارزیابی این است که آیا آیتم‌های کاری با زمان انتظار (SLE) سازگار هستند یا آن‌قدر بزرگ‌اند که نیاز به تقسیم به آیتم‌های کوچکتر اما همچنان بالقوه ارزشمند دارند.

_در زمینه‌ی کار دانش‌محور (Knowledge Work)، Rightsizing بر پایه‌ی این فرض است که آیتم‌های کاری باید در اندازه‌ای حداکثری (به تشخیص افراد درگیر در سیستم کانبان) قرار گیرند، اما الزامی به یکسان بودن اندازه‌ها وجود ندارد. اگر یک آیتم کاری آن‌قدر بزرگ باشد که حتی پس از شروع نتوان آن را در زمان معقول (برای نمونه در چارچوب زمان انتظار) تکمیل کرد، افراد درگیر در سیستم کانبان باید آن را به آیتم‌های کوچکتری تقسیم کنند که هرکدام پتانسیل تحویل ارزش داشته باشند. همچنین می‌توان آیتم‌های کاری را در صورت نیاز ادغام کرد._

_مدیریت ظرفیت اغلب فراتر از کنترل WIP است._ کنترل WIP به **جریان (Flow)** کمک کرده و اغلب تمرکز جمعی، تعهد، و همکاری افراد درگیر در سیستم کانبان را بهبود می‌بخشد. هرگونه استثنای قابل قبول در کنترل WIP باید به‌طور صریح به‌عنوان بخشی از «تعریف جریان کار (Definition of Workflow)» بیان شود.
### بهبود مستمر *جریان*

با داشتن یک «تعریف جریان کار (Definition of Workflow)» شفاف، این مسئولیت افراد درگیر در سیستم کانبان (Kanban System Members) است که به‌طور مستمر جریان (Flow) خود را از طریق دستیابی به موازنه‌ی بهتر بین **کارآمدی (Effectiveness)**، **بهینگی (Efficiency)** و **قابلیت پیش‌بینی (Predictability)** بهبود دهند. مطالعه‌ی مداوم سیستم می‌تواند راهنمایی برای بهبودهای احتمالی فراهم کند. افراد درگیر در سیستم کانبان اغلب «تعریف جریان کار (Definition of Workflow)» را بازبینی می‌کنند تا درباره‌ی تغییرات مورد نیاز بحث کرده و آن‌ها را بپذیرند.

_بهبودها اغلب در لحظه (Just-in-Time) رخ می‌دهند._ این بهبودها محدود به اندازه یا دامنه‌ی خاصی نیستند. گاهی اوقات، بهبود فراتر از کنترل یا حوزه‌ی نفوذ افراد درگیر در سیستم کانبان است. تعاملات هدفمند و آگاهانه، پرورش تغییر و حذف مسدودکننده‌ها (Blockers) در تمامی سطوح، کلید بهبود هستند.

_حتی بهتر، افرادی که رهبری نشان می‌دهند ــ همان رهبران ــ باید «ببینند، گوش دهند و واقعاً درک کنند» تا واقعیت‌ها را جمع‌آوری کرده و مبنای تصمیم‌گیری قرار دهند. این رویکرد «گِنچی گِنبوتسو (Genchi Genbutsu)» نام دارد. رهبران آن‌قدر این کار را انجام می‌دهند تا حقیقت پدیدار شود. دانستن اینکه چه باید کرد یک چیز است، اما اقدام هدفمند، پیگیرانه، تکرارشونده و دلسوزانه در مسیر بهبود (از جمله کوتاه‌تر کردن چرخه‌های بازخورد) چیز دیگری است._

_کانبان تغییرات تکاملی را ترجیح می‌دهد، اما تغییرات بزرگ‌تر و ساختاری را نیز منع نمی‌کند؛ به شرط آنکه این تغییرات بر اساس شواهد و درک روشن از سیستم انجام شوند. تغییرات باید هدفمند و متناسب با زمینه باشند._
## Inform Flow Optimization with Appropriate Measures or Metrics

- **Blocked Elapsed Time for Finished Items (BETFI):** The cumulative time for a single ‘finished’ Work Item (or a selection of ‘finished’ Items) spends in a blocked condition from ‘started’ to ‘finished,’ but not in a Queue or Buffer state. \[measure for a single Item, metric for multiple Items\]

> [!FOOTNOTE]
> The Definition of Workflow should include a policy for defining Blockers (in context) and signaling them.

- **_Cumulative Queueing or Buffer Time (CQBT):_** _The cumulative time a ‘finished’ single Work Item (or a selection of ‘finished’ Items) spends in Queueing or Buffer states from ‘started’ to ‘finished.’ \[measure for a single Work Item, metric for multiple Work Items\]_
- **_Elapsed Time from ‘Started’ to ‘Finished’ (ETSF):_** The (typically _rounded-up) number of elapsed time units (often calendar days) from_ when a single _Work Item_ ‘started’ _to_ when a _Work Item_ ‘finished.’ _Only ‘finished’ Items get ETSFs. \[measure\]_
- **Flow Distribution:** The Visualization and analysis of Work Item types ‘finished’ or ‘completed’ over time, enabling active management to ensure a healthy balance of effort. \[metric\]

> [!FOOTNOTE]
> The Definition of Workflow should clearly define any Queue and Buffer states.

- **_Flow Efficiency:_** The ratio of active working time to the total time an Item or a selection of Items spends in the workflow, including waiting times, between the ‘started’ and ‘finished’ points on a Definition of Workflow. _It is expressed as a percentage. It can be misleading, as time spent in active states may not be actual active time. ((ETSF-(CQBT+other non-value-adding time))/ETSF) 100\. \[metric\] Example of other non-value-adding time: Blocked Elapsed Time for Finished Items_
- **Number of Blockers:** The number of impediments, partial or complete, at a given point in time (usually current datetime), to the Flow of Work Items from ‘started’ to ‘finished.’ \[measure\]
- **Process Cycle Efficiency:** Measures the Work efficiency of a system or its parts. It is calculated by dividing Value-adding time by Time to Market and then multiplying by 100 to get a percentage. This means Kanban system members have to measure all Value-adding and all non-Value-adding time (including, but not limited to, waiting time). ((T2M-(CQBT+other non-value-adding time))/T2M) 100\. \[metric\]
- **_Service Level Expectation:_** A forecast of how long it should take a _Work Item_ to Flow from ‘started’ to ‘finished.’ The _Service Level Expectation_ itself has two parts: a period of elapsed time and a probability associated with that period (e.g., ‘85% of _Work Items_ will be ‘finished’ in eight days or less’). _It is based on a selection of Elapsed Time from ‘Started’ to ‘Finished’ from all history, a subset of history, or if data does not exist or is insufficient, an educated guess. \[metric\]_
- **‘Started but Not Finished Work’ (SNFW)** or **Work In Progress/Process (WIP)** _or **Flow Load**_: _The_ number of _Work Items_ ‘started’ but not ‘finished’. _\[measure\]_
- **Throughput:** The number of _Work Items_ ‘finished’ per unit of time. The measurement of throughput is the exact count of _Work Items_, _not revenue. \[metric\]_
- **Time to Market, also known as Customer Lead Time:** The (typically rounded-up) number of elapsed time units (often calendar days/weeks) from when a Stakeholder’s order for a single Work Item was received to when the Work Item was delivered to the Stakeholder. It is one example of an ETSF. \[measure for a single Work Item, metric for a product or service\]
- **Total Work Item Age (TWIA)** or **Total Elapsed Time for ‘Started’ but Not ‘Finished’ Items (TETSNFI)** **:** The total elapsed time from when all in-progress (‘started’ but not ‘finished’) Work Items ‘started’ to a specified datetime, usually the current datetime. \[metric\]
- **Work Item Age (WIA)** or **_Elapsed Time for ‘Started’ but Not ‘Finished’ Items(ETSNFI)_** : The (typically _rounded-up) number of elapsed time units (often calendar days)_ _from_ _the datetime a single ‘not finished’ Work Item_ ‘started’ _to_ _a specified datetime, usually the current datetime. By acting on relatively older Items, feedback loops can be shortened, and Flow improves. \[measure\]_

The _Flow_ metrics _and measures_ apply to the appropriate ‘started’ and ‘finished’ points established by the Kanban system members in their _Definition of Workflow_. _If there are multiple sets of ‘started’ and ‘finished’ points, some flow metrics and measures are often applied to each ‘started’ and ‘finished’ pair._

**_If Kanban system members are unsure where to start, this guide suggests:_**

_Time to Market, and for each coherent ‘started’ and ‘finished’ pair:_

- _A Service Level Expectation (required for at least one ‘started’ and ‘finished’ pair),_
- _Work Item Age or Elapsed Time for ‘Started’ but Not ‘Finished’ Items (ETSNFI),_
- _Elapsed Time from ‘Started’ to ‘Finished’ (ETSF), and_
- _Throughput._

Provided that Kanban system members use _Flow_ metrics _and measures_ as described in this guide, _and they are appropriate for the context,_ they can refer to any of them by other names. It is up to the Kanban system members to decide how best to _use_ these _Flow_ metrics _and measures, such as Visualizing them in charts or assessing variation. A proactive focus on outcomes, impact, and Value is recommended._

### _Outcomes, Impact, and Value_

_Kanban system members should regularly look for evidence of outcomes/impact, e.g.:_

- _Customer outcomes could focus on delivering measurable Value to customers, e.g., reduced Failure Demand, customer long-term cost reduction, or addressed customer jobs (18)._
- _User outcomes could address specific changes in user behavior that solve problems or improve experiences, e.g., ‘completing’ Work Items more effectively at the lowest costs, or better usability._
- _Product Stakeholder outcomes could connect these behavioral changes to product performance metrics, such as trends in product customer adoption, retention, and convergence, as well as trends in feature adoption, decision-maker and user metrics, and product Time to Market._
- _Business Stakeholder Impact, e.g., compliance, business long-term cost reduction, business results, trends in market share, customer satisfaction across all products, etc._
- _Outcomes for Kanban system members such as improved capability, considering for example, psychological flow (15), frequency of release, tooling, skills, technical debt, user experience (UX) debt, customer experience (CX) debt, human-centered-design debt, technical domain capability, market domain capability, business domain capability, and a climate/culture for net improvement._

Any of the above approaches can be useful. Also, consider the following:

- **Failure Demand** (17)**:** Demand caused by a failure to do something or do something right for the customer. It is a signal for potential improvement. It highlights where capacity is being wasted due to previous failures, poor Work, or bad decisions. For example, a customer support team may receive repeated calls due to unclear billing instructions. \[metric\]
- **Time to Validated Value, also known as Time to Value or Time to Outcome:** The _rounded-up number of elapsed time units (often calendar days/weeks) from when a Stakeholder’s order for a Work Item was received to when Value was validated. It is one example of an ETSF focusing on valuable and measurable outcomes. \[measure\]_
- **Value Validated:** A Work Item that reaches the ‘finished’ point and delivers the intended Value to the Stakeholder (including, but not limited to, customer or user), meeting explicit policies, e.g., quality or experience standards. Often includes evidence and observations.
- **Value Invalidated:** A Work Item that reaches the ‘finished’ point or is evaluated but fails to deliver the intended Value, not meeting expectations defined in the Definition of Workflow, often requiring rework or rejection, informed by evidence and observations. Consider the context.

_By measuring these kinds of outcomes, impacts, Value metrics, and Value measures, Kanban system members ensure they’re not just delivering Work quickly (outputs), but delivering real Value and improvements (outcomes and impacts) to Stakeholders, including but not limited to customers and users._

_Clarity and understanding of Work Items should happen just-in-time to avoid waste._ Avoid excessive focus on outputs and insufficient focus on outcomes. _Kanban system members should proactively, intentionally, purposefully, and regularly review the metrics or measures and continually improve them._

## Endnote

_Only the Kanban Practices, the minimum criteria Definition of Workflow, and a selection of metrics or measures are mandatory; everything else is optional._ _Consider the context. Kanban system members should foster the humane Flow of Value._

_Feedback from results (‘result feedback’) refers to the data that comes back after changes are made, whether it’s quantitative or qualitative information about outcomes, impacts, or even shifts in the market environment. This feedback can influence Stakeholder Value outcomes, as well as the inputs, effort, resources, or costs involved going forward. (Note: People are not ‘resources.’)._

_In practice, Kanban is a journey of ongoing learning and adaptation. By starting with these core practices and continuously improving, Kanban system members can sustainably achieve better Flow of Value. Kanban system members should start simple and evolve their Kanban system as they learn._

## History of Kanban

The present state of Kanban can be traced to the Toyota Production System (and its antecedents) and the work of people such as Taiichi Ohno _(9)_. The collective set of practices for Knowledge Work, now commonly referred to as _Kanban (12),_ mainly originated on a team at Corbis in 2006\. Those practices quickly spread to encompass a large and diverse international community that has continued to enhance and evolve the approach.

## Acknowledgments

_People acknowledged here do not necessarily agree with what is written in this document, and that is ok. Nevertheless, the Open Guide to Kanban owes a massive debt of gratitude to:_

- All who helped to develop Kanban, including those who preferred not to be named
- _Kanban Guide July 2020 or December 2020 version reviewers: Jean-Paul Bayley, Jose Casal, Colleen Johnson, Todd Miller, Eric Naiburg, Steve Porter, Ryan Ripley, Dave West, Julia Wester, Yuval Yeret, and Deborah Zanke_
- _Kanban Guide May 2025 version reviewers:_ Magdalena Firlit, Tom Gilb, Colleen Johnson, Christian Neverdal, Prateek Singh, Steve Tendon, and Julia Wester
- _Open Guide to Kanban reviewers: Jim Benson, Andy Carmichael, Jose Casal, Magdalena Firlit, Michael Forni, Martin Hinshelwood, Christian Neverdal, Nader Talai, Steve Tendon, and Nigel Thurlow_
- _Influences: Russell L. Ackoff, Jim Benson, Andy Carmichael, Emily Coleman, John Cutler, W. Edwards Deming, Dominica DeGrandis, Tom Gilb, Joseph M. Juran, Siegfried Kaltenecker, Henrik Kniberg, Klaus Leopold, John Little, Troy Magennis, Taiichi Ohno, Donald G. Reinersten, Sam L. Savage, Walter Shewhart, Nader Talai, Steve Tendon, Nigel Thurlow, and Donald J. Wheeler._

## Appendix

### Controlling Work In Progress/Process \= Controlling ‘Started but not Finished Work’

Control of _‘Started but not Finished Work’, also referred to as_ WIP control, can be represented on a Kanban board in any way that _Kanban system_ members deem appropriate, including, but not limited to, painter’s tape spots, Total Work Item Age or Total Elapsed Time for ‘Started’ but Not Finished Items (TETSNFI), queue controls, WIP control numbers, or WIP control ranges.

_There are also some optional non-Kanban options, supported by some communities, such as CONWIP(16), Simplified DBR (16), or DBR(16):_

- **CONWIP (Constant Work In Progress/Process)** (16)**:** CONWIP is a pull system that maintains a fixed total ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) limit across the entire workflow, ‘starting’ new Work only when a ‘finished’ or ‘completed’ Item exits, regulating Flow with a single system-wide constraint. Example: A software support team allows only 15 open tickets at any time; when a ticket is resolved, a new one can be ‘started.’ Not everyone supports it.
- **DBR** (3,16)**:** An advanced approach that manages the Flow Constraint with Buffers before the Flow Constraint and at system outputs, maximizing Throughput while protecting against variability in complex systems. Example: In a product development group, UX review (primary Flow Constraint) sets the pace (drum) with a Buffer of designs before it, a secondary Buffer before legal approval prevents overload, and new Work is released only when both Buffers have capacity. Not everyone supports it.
- **Flow Constraint** (16)**:** The bottleneck with the least capacity in the Definition of Workflow. There can be multiple bottlenecks (all with less capacity than what is required by the demand), and the Flow Constraint is the most limited one. It restricts the Kanban system’s overall Throughput, determining the pace at which Value is delivered. Example: In a software development team, if the testing takes the longest and limits the release of features, testing is the Flow Constraint that sets the system’s pace. In Knowledge Work, bottlenecks often exhibit turbulent behaviour and can move around the workflow in unpredictable ways. But sometimes bottlenecks are stubborn.
- **Simplified DBR (Drum-Buffer-Rope)** (3,16)**:** A simplified scheduling method where the Kanban system’s Throughput sets the workflow pace, and Throughput acts as a replenishment signal like in CONWIP. Suppose there is a Kanban system using Simplified Drum-Buffer-Rope, and the Definition of Workflow is designed to handle up to 15 Items, with 12 actively in progress/process (drum) and a Buffer of 3 Items ready to start, ensuring Work continues smoothly if any of the 12 Items face issues by pulling from the Buffer, maintaining Flow with, for example, 13 in progress/process and 2 in reserve. The rope signals replenishment when an Item is delivered, keeping the total within the 15-Item limit, and the system prioritizes rebuilding the Buffer quickly if it is depleted, proactively resolving issues to sustain Flow. Not everyone supports it.

### If Kanban system members need to prioritize a Work Item to ‘start’

_Here are some optional non-Kanban techniques that some but not all communities support:_

- **Class of Service** (21)**:** An archetype for one or a selection of Work Items, such as, standard, (real and therefore not arbitrary) fixed date, expedite, or intangible. The choice of class of service may reflect perceived relative Value, Risk, or Cost of Delay. It is more useful as an input for deciding which Item(s) to ‘start’ next when capacity allows than reprioritizing Work Items In Progress/Process (which is not good for Flow). Prone to overloading the Kanban system when misapplied, e.g., an ‘expedite lane’ might eventually get superseded by a ‘super-expedite lane,’ and then things start to get silly. Prone to unbalanced Flow even when not misapplied.
- **Cost of Delay (per unit of time)** (7)**:** The rate of Value loss per unit time for one or more Items, not to be confused with Delay Cost. It is often useful as input for deciding which Item(s) to ‘start’ next when capacity allows, rather than reprioritizing Work Items In Progress/Process (which is not good for Flow). Like most prioritization inputs, it is often based on educated guesses. It can also be real after the fact. For example, the Cost of Delay for a Work Item is $10,000 per week. Kanban system members should tread carefully before considering this approach.
- **Data-informed Rightsizing** (24-25)**:** Sometimes more effective than other options, as Kanban system members rarely know the effort or Value in advance. It allows for more opportunism.
- **Delay Cost (total)** (7)**:** The total cumulative loss over a period of time from a specific delay period for one or more Items. It can be actual or forecasted, and it’s important to be clear which one is being referred to. For example, if the Cost of Delay for a Work Item is $10,000 per week and it is delayed by 3 weeks, the Delay Cost is $30,000.
- **Impact Estimation Table (IET)** (22)**:** Evaluate options against Stakeholder expectations or limits.
- **Opportunity Cost:** The Value or benefit lost by choosing to work on one or more Work Items over other potentially valuable Work Items due to limited capacity. It reflects the trade-offs made when prioritizing within capacity in a Kanban system, where focusing on one or more Work Items means forgoing others that could have also delivered Value. Kanban system members often use metrics like Cost of Delay or Delay Cost to quantify opportunity cost. Since Value and, hence, Opportunity Cost range from being difficult to predict to being unpredictable, Kanban system members should tread carefully before attempting this approach.
- **Random:** Can be more effective than other options, as the effort or Value is not known upfront.
- **Real Options** (23)**:** Defer commitments until sufficient information is available, treating decisions as valuable, expiring options to maximize flexibility and manage Risk.
- **Risk:** Do the riskiest Item first. Risk can include the likelihood that Value cannot be harvested.
- **Shortest Job First** (24-25)**:** Select the Work Item with the lowest perceived effort, prioritizing rightsized Work Items over other Work Items. This can lead to shorter feedback loops and quicker outcomes. But, it can also lead to a delayed ‘start’ on a larger, riskier Work Item.
- **Slack** (19)**:** Slack is leaving unused capacity in the system to cope with demand surges, unplanned work, or the emergence of unseen circumstances. In a Kanban for Knowledge Work context, it is a deliberate allocation or policy of spare capacity or time within the Definition of Workflow to absorb variability, handle unexpected disruptions, or enable continuous improvement without compromising the Kanban system’s Throughput. Example: Kanban system members might maintain a Slack by limiting their ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) to 80% of capacity, allowing time to address urgent requests or refine processes without delaying planned work. Slack is a key concept in Lean.
- **Value divided by Effort:** Estimated Value (usually an educated guess) divided by Estimated Effort (usually an educated guess). Actual Effort and Value tend to be random. Kanban system members should tread carefully before considering this approach. Optionally, consider Risk.

### Conventions Used in the Context of Knowledge Workd

- **Buffer** (16)**:** A buffer is a WIP-limited (or ‘Started but Not Finished Work’ limited) area that holds Work temporarily to smooth Flow and prevent overload, and also functions as a WIP controlled queue. Not to be confused with Slack. Not everyone supports Buffer; more columns can lead to a higher amount of ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP).
- **_Definition of Workflow:_** The explicit shared understanding of Flow among Kanban system members within their context, including but not limited to, _the explicit set of agreements and policies that describe how Work Items are selected, progressed, and ‘finished’ through the workflow’s distinct stages._
- **Explicit policy:** An explicit policy in a Kanban system is a clearly defined and visible rule or guideline that makes assumptions about workflow—such as when Work Items ‘start’ or move—transparent to Kanban system members. These policies should be Visualized on the Kanban board and be easily accessible, ensuring all Kanban system members understand and follow the same process. By making policies explicit, Kanban system members reduce ambiguity, align actions, and support the optimized Flow of Value.
- **‘Finished’ (or ‘Completed’):** When the Elapsed Time from ‘Started’ to ‘Finished’ clock stops for a ‘started’ and ‘finished’ pair in a Definition of Workflow.
- **Flow:** The (ideally smooth) movement and delivery of Work Items through the Definition of Workflow. A balanced Kanban system sustains Throughput. In an ideal world, Work that entered the system (Knowledge Work), would flow like a river, never stopping, finding the path of least resistance until reaching the customer. Not to be confused with the Definition of Workflow (DoW). In Kanban, Flow \> utilization.
- **_kanban:_** _A kanban​ (signboard in Japanese) is a Visual cue that triggers one to select, ‘start,’ or move a Work Item. Nothing should be produced or moved without a kanban signal._
- **Kanban or Kanban system**: The holistic set of concepts in this guide. _Kanban is rooted in the idea of a signaling system (a way to call for Work or inventory in a production system)._  
  _When this guide says Kanban, assume a Kanban system._
- **Kanban Board:** A Visual representation of one or more Definitions of Workflow.
- **Knowledge Work:** The creation, application, or management of information through cognitive processes to solve (often) complex problems, make decisions, or innovate, typically requiring expertise, judgment, and collaboration. Often, Knowledge Work & associated waste are invisible.
- **Iterative:** Work Items are worked in repeated cycles, with each cycle involving revisiting and refining the same Work based on feedback, testing, or new insights. Kanban is not inherently unsuited to creative iterative work, but it may require thoughtful consideration or adaptation.
- **JIT:** Toyota Just-in-Time––Producing only what is needed, when it’s needed, in the amount needed to minimize waste and optimize efficiency.
- **Measure:** A measure is a raw, unit-specific data point representing a single quantity, such as ‘number of Work Items completed this week’ or ‘time to complete a Work Item,’ serving as a foundational input for tracking Flow performance. Example: Kanban system members record a measure of 10 Work Items completed to date.
- **Metric:** A metric is a quantifiable calculation derived from one or more measures to provide context for workflow performance, such as ‘average Throughput’ or ‘Throughput per week.’ Example: Kanban system members calculate a metric of 4 days average Elapsed Time ‘Started’ to ‘Finished’ by dividing the total time to complete 10 Work Items by the number of Work Items.
- **Pull:** Work is selected (whether ‘started’ or ‘not started’ on the Definition of Workflow) only when there is capacity, chosen by Kanban system members, and prevents overload, ideally signaled by a customer, directly or indirectly.
- **Push:** Work is assigned onto Kanban system members or into the Kanban system without considering the current capacity or readiness of Kanban system members to ‘start’ the Work.
- **Queue:** A queue in Kanban is a waiting area for Work Items, often without strict limits, but it can serve as a Buffer if Work In Progress/Process (WIP) limits (16) or ‘Started but Not Finished Work’ (SNFW) limits are present.
- **Risk:** The chance that something bad could happen.
- **Stable system:** Put simply, a system that can consistently meet the demand placed upon it. There are more accurate descriptions (7,8,20). Knowledge Work tends to produce a higher range of Work Item sizes than manufacturing work. Unequal sizes do not necessarily lead to higher variation of elapsed times (due to waiting time often being the most significant factor, etc.) or Throughput but can do so (due to external dependencies, etc.). The view in this guide is that approaches designed for manufacturing do not necessarily lack utility in Knowledge Work.
- **Stakeholder**: An entity, individual, or group responsible for, interested in, or affected by the inputs, activities, and outcomes of the Kanban system. Includes but is not limited to customer, decision-maker, or user.
- **‘Started’:** When elapsed time clocks ‘start’ for a ‘started’ and ‘finished’ pair in a Definition of Workflow.
- **‘started’ and ‘finished’ pair:** Each of one or many ‘started’ points on a Definition of Workflow should have a matching ‘finished’ point on the same Definition of Workflow.
- **Takt:** The word Takt (English 'tact') is derived from the German word meaning rhythm, cadence, or cycle. Takt is related to keeping time in music. Modern usage of Takt is typically in a manufacturing context. Takt is a foundational measurement in the Toyota Product System and Lean Thinking, used to calculate the capacity required to meet demand in a stable system. Throughput, unlike Takt, which sets the expectation for the ideal pace based on demand, measures actual output per unit of time. Takt also helps achieve a balanced system to meet demand consistently by enabling Kanban system members to determine the capacity needed at each stage of a process. Calculating Takt is challenging in Knowledge Work, as it requires understanding demand in high-variation environments. Not always ideal for Knowledge Work.
- **Work:** Refers to one or more Work Items, ‘started’, ‘not started’, ‘finished,’ or ‘not finished.’
- **Work Item:** A Work Item, also referred to as an Item, holds the potential for Value.​ Various terms can be used to describe the different levels of granularity of a Work Item, as long as it has potential for Value. Work Items that do not have potential for Stakeholder Value are potentially wasteful, e.g., people focus on ‘finishing’ subtasks across multiple Work Items rather than focusing on ‘finishing’ one Item at a time. Controlling ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) for potentially wasteful Items often reduces the collaborative effort and focus to deliver potential Value sooner. Consider the context.
- **Work Item Type:** A categorization for a Work Item. Examples include but are not limited to brands, customers, features, bugs, project work, user experience (UX) research, customer experience (CX) research, human-centered design, operational work, problem statements, hypotheses, other research, and experiments. Useful for sense-making.
- **Validated Value:** Value confirmed with evidence or observations (ideally both), formally or informally, by Stakeholders; often after one or more rounds of result feedback (and rework), by internal and external Stakeholders. Not everyone supports it.
- **Value**: Either a potential or realized benefit for a Stakeholder. Examples include meeting the needs of the customer, the end-user, the decision-maker, the organization, and the environment.
- **Visualize, visualization:** Any method to convey ideas effectively, including conceptual clarification, not necessarily only visual.

## References

References are placed here to inform readers of opportunities for further study. They do not necessarily support the text in this guide:

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
12. _Wikipedia (2025) ‘Kanban (development)’. Available at: [https://en.wikipedia.org/wiki/Kanban\_(development)](<https://en.wikipedia.org/wiki/Kanban_(development)>) (Accessed: 22 June 2025).\_
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

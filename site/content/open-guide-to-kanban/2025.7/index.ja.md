---
# title: Open Guide to Kanban - In the Context of Knowledge Work
title: オープン版カンバンガイド（ナレッジワーク向け）
# short_title: Open Guide to Kanban
short_title: オープン版カンバンガイド
# description: The Open Guide to Kanban is a free, community-driven reference for applying Kanban in knowledge work. It defines the core practices, and metrics necessary to improve flow, optimise value delivery, and enhance team sustainability. This guide supports scalable Kanban implementations across diverse industries and complements other agile, lean, and flow-based approaches.
description: オープン版カンバンガイドは、ナレッジワークにおけるカンバンの適用に関する無料のコミュニティ主体のリファレンスです。フローを改善し、価値提供を最適化し、チームの持続可能性を向上させるために必要な中核となるプラクティスと計測指標を定義しています。このガイドは、多様な業界でのスケーラブルなカンバン実践をサポートし、他のアジャイル、リーン、およびフローベースのアプローチを補完します。
keywords:
  - Kanban
  - カンバン
  - Open Guide to Kanban
  - オープン版カンバンガイド
  - knowledge work
  - ナレッジワーク
  - flow optimisation
  - フローの最適化
  - WIP limits
  - WIP制限
  - value delivery
  - 価値提供
  - バリューデリバリー
  - agile
  - アジャイル
  - lean
  - リーン
  - continuous improvement
  - 継続的改善
  - service level expectation
  - サービスレベル期待値
  - SLE
  - cumulative flow
  - 累積フロー
  - throughput
  - スループット
  - metrics
  - 計測指標
  - メトリクス
  - work item age
  - 作業項目の年齢
  - flow efficiency
  - フロー効率
  - visualisation
  - 可視化
  - ビジュアライゼーション
  - work in progress
  - 進行中の作業
  - 仕掛かり作業
  - process improvement
  - プロセス改善
  - kanban board
  - カンバンボード
  - definition of workflow
  - ワークフローの定義
  - outcome-oriented delivery
  - アウトカム指向の提供
  - 成果指向の提供
author:
  - John Coleman
date: 2025-07-02T09:00:00Z
type: guide
forked_from: the-kanban-guide/2025.5
# lang: en
lang: ja
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /open-guide-to-kanban/latest/
translationDraft: false
translators:
- name: Tomoharu Nagasawa
  githubUsername: tomoharunagasawa
  url: https://www.linkedin.com/in/tnagasawa/
  role: translator
  founder: true
  weight: 1
---

<!-- This work, Open Guide to Kanban, is an adaptation of the [Kanban Guide (May 2025 version)](https://kanbanguides.org/ja/history/the-kanban-guide-2025/), which is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). The original guide is © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc. Changes were made to the original. Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). _Portions highlighted in italic are © 2025_ Orderly Disruption Limited, licensed under CC BY-SA 4.0. All other content is from © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc., also licensed under CC BY-SA 4.0. -->
<!-- Kanban Guide (May 2025 version) link is changed to Kanban Guide 2025 Japanese URL, because original URL does not work to redirect to valid URL. -->
この「オープン版カンバンガイド」は、[カンバンガイド2025年5月版](https://kanbanguides.org/ja/the-kanban-guide/)をもとにした適応版であり、クリエイティブ・コモンズ 表示-継承 4.0 国際（CC BY-SA 4.0）の下で提供されています。原典の著作権は、© 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.に帰属します。本ガイドでは、原典に一部改変を加えており、変更を含むすべての内容は、CC BY-SA 4.0の下で提供されています。_斜体で示された一部の箇所は、_© 2025 Orderly Disruption Limitedによるものであり、同ライセンスの下で提供されています。それ以外のすべての内容は、© 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.によるものであり、同様にCC BY-SA 4.0の下で提供されています。

<!-- ## Preface -->
## 序文

<!-- This document aims to provide _open_ _and adaptable_ guidance for Kanban _and Flow, drawing on ideas curated from various communities_. _It aims to serve as a coherent reference for various communities in addition to their own content._ Depending on the context, various approaches can complement Kanban, allowing it to accommodate a range of Value delivery and organizational challenges. -->
このガイドは、カンバンと*フロー*に関する*オープン*で*適応可能な*ガイダンスを提供することを目的としている。これは、*さまざまなコミュニティから収集されたアイデアを基にしている*。*それぞれのコミュニティ独自のコンテンツに加えて、一貫性のあるリファレンスとして機能することを目指している*。カンバンは、さまざまなアプローチによって補完することで、価値の提供や組織の課題に関する、ある程度幅の広いニーズに柔軟に適応できるようになる。

<!-- _The use of the italics font supports the Creative Commons adaptation notice on the cover page; italics are not for emphasis. The use of a capital letter at the start of a word indicates a convention listed in the appendix of this document, e.g., Value is either a potential or realized benefit for a Stakeholder, including meeting the needs of the customer, the end-user, the decision-maker, the organization, and the environment._ -->
*斜体フォントの使用は、このガイドの表紙に記載されたクリエイティブ・コモンズの表示要件をサポートするためのものであり、強調を目的としたものではない。また、単語の冒頭を大文字で始めることで、このガイドの付録に記載された慣例を示す。例えば、価値（Value）は顧客、エンドユーザー、意思決定者、組織、環境のニーズを満たすことを含む、ステークホルダーにとっての潜在的または実現された恩恵を指す*。

   *訳注: 冒頭大文字の語句は、用語一覧などを参照のこと*。

<!-- ## Definition of Kanban in the Context of Knowledge Work -->
## ナレッジワークにおけるカンバンの定義

<!-- Kanban is a strategy for optimizing the _Flow_ of _Value_ through a _system_. It is a signaling system to call for Work or inventory. It comprises the following three practices working in tandem: -->
カンバンとは、あるシステムを通じて*価値*の*流れ*（*フロー*）を最適化するための戦略である。それは、作業や在庫を必要なときに引き寄せるためのシグナリングシステム<!--（合図による呼び出しの仕組み）-->でもある。以下の3つのプラクティスが連携して機能する。

<!-- - Defining and _Visualizing_ a workflow. -->
- ワークフローを定義し*可視化する*
<!-- - Actively managing _Items_ in a workflow. -->
- ワークフロー内の*項目*を主体的に管理する
<!-- - Improving _Flow_. -->
- *フロー*を改善する

<!-- In their implementation, these Kanban practices are collectively called a Kanban system. Those who participate in the Value delivery of a Kanban system are called Kanban system members. -->
これらのカンバンのプラクティスを実装したものを、総称してカンバンシステムと呼ぶ。カンバンシステムの価値提供に参加する人たちを、カンバンシステムメンバーと呼ぶ。

<!-- ## Why Use Kanban? -->
## カンバンを使う理由

<!-- Central to the _understanding_ of Kanban is the concept of _Flow_. _In a Kanban system, Flow_ is the movement of Value through that Kanban system. As most _Kanban_ workflows exist to optimize Value, the strategy of Kanban is to optimize Value by optimizing Flow, which means striving to find the right balance of effectiveness, efficiency, and predictability: -->
カンバンの*理解*の中心にあるのは、*フロー*の概念である。*カンバンシステムにおけるフロー*とは、価値がそのシステム内を移動することを指す。ほとんどの*カンバン*のワークフローが価値を最適化するために存在するように、カンバンの戦略はフローを最適化することで価値を最適化する。これは、効果性、効率性、予測可能性の適切なバランスを追求することを意味する。

<!-- - An effective workflow is one that delivers what stakeholders _desire,_ when they _desire_ it. -->
- 効果的なワークフローは、ステークホルダーが*求めるもの*を*求めるタイミング*で提供する
<!-- - An efficient workflow allocates available _capacity_ optimally to deliver Value. -->
- 効率的なワークフローは、利用可能な*キャパシティ*をできるだけ最適に配分し、価値を提供する
<!-- - A predictable workflow means being able to _reasonably_ forecast Value delivery within an acceptable degree of uncertainty. -->
- 予測可能なワークフローとは、許容できる不確実性の範囲内で価値の提供を*ある程度*予測できることを意味する

<!-- The strategy of _a_ Kanban _system_ is to _enable_ Kanban system members to ask the right questions sooner as part of a continuous improvement effort in pursuit of these goals. Kanban system members should aim for a sustainable balance among these three elements. _Kanban is also a way to reduce overburden (excessive workload) and to manage demand so that Work is delivered optimally given the available capacity. It is not perfect, but it should foster constant improvement and an optimized Flow of Value._ -->
カンバン*システム*の戦略は、カンバンシステムメンバーが、これらの目標を追求するための継続的な改善の一環として、適切な質問を早期に行えるように*支援する*。カンバンシステムメンバーは、これら3つの要素の持続可能なバランスを目指すべきである。*カンバンは、過剰な作業負荷（オーバーバーデン）を軽減し、利用可能なキャパシティに応じて作業結果が最適に提供されるように需要を管理する手段でもある。完璧な手段ではないが、継続的な改善と価値フローの最適化を促すものであるべきだ*。

<!-- _Side benefits are happier Kanban system members, higher quality, and the ability to adapt to demand. A good Kanban system is self-regulating, i.e., the Kanban system signals and adjusts to issues without intervention._ -->
*副次的な恩恵としては、カンバンシステムメンバーの満足度の向上、品質の向上、需要への適応力の向上が挙げられる。優れたカンバンシステムは自己調整的であり、すなわち、介入なしにシグナルを発し、課題に応じて自ら調整を行うものである*。

<!-- Because Kanban _can_ _Visualize_ virtually any workflow, its application is not limited to any specific industry or context. Professional Knowledge Workers in finance, utilities, healthcare, and software (to name a few), have benefited from Kanban practices. Kanban in most contexts where Value is delivered. -->
カンバンは、ほぼすべてのワークフローを*可視化できる*ため、その適用範囲は特定の業界や状況に限定されない。金融、ヘルスケア、ソフトウェアなどの分野で働くプロフェッショナルなナレッジワーカーが、カンバンのプラクティスから恩恵を受けている。カンバンは、価値を提供するほとんどの状況において使うことができる。

<!-- ## Kanban Theory -->
## カンバンの理論

<!-- _The Kanban system_ draws on _various approaches and understanding_ including, but not limited to, systems thinking _(5)_, lean principles _(4)_, queuing theory (batch size _(6-7)_ and queue size _(1,13-14)_), variation _(2,11)_, and quality control _(2,8,10)_. Continually improving a Kanban system based on these approaches and understanding is one way organizations can attempt to optimize the delivery of Value. Many existing _Value_\-oriented approaches share the _ideas_ upon which Kanban is based. Because of these similarities, Kanban can be used to augment those delivery approaches. -->
*カンバンシステム*は、システム思考 *(5)*、リーン原則 *(4)*、待ち行列理論（バッチサイズ *(6-7)* とキューサイズ *(1,13-14)*）、変動（プロセスのばらつき） *(2,11)*、品質管理 *(1,8,10)* といった、*さまざまなアプローチや理解*に基づいている。これらのアプローチや理解に基づいてカンバンシステムを継続的に改善していくことは、組織が価値の提供を最適化しようとする手段のひとつである。既存の多くの*価値*指向なアプローチは、カンバンの基礎となる*考え方*と共通点を持つ。こうした共通性から、カンバンはそれらの提供アプローチを補完するために活用できる。

<!-- ## Kanban Practices -->
## カンバンのプラクティス

<!-- ### Defining and Visualizing the Workflow -->
### ワークフローを定義し可視化する

<!-- Optimizing _Flow_ requires defining what _Flow_ _of Value_ means in a given context, _the (ideally) smooth movement and delivery of potential or (ideally) realized benefits for Stakeholders_. The explicit shared understanding of Flow among Kanban system members within their context is called a Definition of Workflow. _Definition of Workflow_ is a fundamental concept of Kanban. All other elements of this guide depend heavily on how workflow is defined. -->
*フロー*を最適化するためには、その状況において*価値のフロー*の意味を定義する必要がある。*ここでいう価値のフローとは、ステークホルダーにとっての潜在的あるいは（理想的には）実現された恩恵が、状況内で円滑に移動し、提供されることを指す*。カンバンシステムメンバーが、その状況内で共有するフローの明示的な共通理解のことをワークフローの定義と呼ぶ。*ワークフローの定義*は、カンバンの基本概念であり、本ガイドの他の要素はすべて、ワークフローがどのように定義されているかに大きく依存している。

<!-- _To inform optimal workflow operation and facilitate continuous improvement, at a minimum_, Kanban system members must create their _Definition of Workflow_ using all of the following elements: -->
*最適なワークフローの運用を実現し、継続的な改善を促進するために、少なくとも*カンバンシステムメンバーは以下のすべての要素を用いて*ワークフローの定義*を作成する必要がある。

<!-- 1. A definition of the individual units of Value that are moving through the workflow, referred to as _Work Items (or Items)_. -->
1. ワークフローを移動する個々の価値単位の定義（これらは*作業項目*または*項目*と呼ばれる）
<!-- 2. _Depending on the Work Item, for at least one coherent ‘started’ and ‘finished’ point pair:_ -->
2. 作業項目に応じて、少なくともひと組の一貫性のある「開始」点と「終了」点の定義
   <!-- - [ ] One or more defined states that the _Work Items_ _Flow_ through from ‘started’ to ‘finished.’ -->
   - [ ] *作業項目*が「開始」から「終了」までの間の*フロー*を示すひとつ以上の状態の定義
   <!-- - [ ] _Work Items_ between the ‘started’ and ‘finished’ points, even if waiting in a Queue or Buffer, are considered: -->
   - [ ] たとえキューやバッファで待機している場合であっても、「開始」点と「終了」点の間にある*作業項目*は対象とみなす
     <!-- - _‘Started but Not Finished Work’ (SNFW) or_ -->
	 - *「開始しているが終了していない作業」（SNFW: Started but Not Finished Work） あるいは* 
     <!-- - _Work in Progress_/_Process_ (WIP). -->
	 - *進行中の作業（WIP: Work in Progress / Process）*
   <!-- - [ ] A definition of how WIP will be controlled from ‘started’ to ‘finished.’ -->
   - [ ] 「開始」から「終了」までの間のWIPの制御方法の定義
   <!-- - [ ] _A set of_ Explicit policies about how _Work Items_ can _Flow_ through each state from ‘started’ to ‘finished’ _defect-free_. _For example, Kanban system members might have a policy that is explicit about fixing any known defects in an Item before moving it to the next state, so that no known defect is passed to a subsequent process._ -->
   - [ ] *作業項目*が 「開始」から「終了」までの各状態を*欠陥なく*、どのように*流れる*かについての*一連の*明示的なポリシー       
	  例えば、カンバンシステムメンバーが、「既知の欠陥を修正しない限りは項目を次の状態に移してはならない」というポリシーを明示していれば、既知の欠陥が後続のプロセスに渡ることはない
   <!-- - [ ] A _Service Level Expectation_ (SLE): A forecast of how long it should take a _Work Item_ to _Flow_ from ‘started’ to ‘finished.’ _Note that there is no guarantee that what happened in the past will happen in the future._ -->
   - [ ] *サービスレベル期待値（SLE: Service Level Expectation）*  
      ひとつの*作業項目*が*フロー*の「開始」から「終了」までにかかると見込まれる時間の予測のこと  
      *過去に起きたことが、今後も同じように起きるとは限らない点に注意すること*
   <!-- - [ ] A _Visualization_ of the _Service Level Expectation_ on the Kanban board. -->
   - [ ] カンバンボード上における*サービスレベル期待値*の*可視化*

<!-- The order in which these elements are implemented is not important as long as they are all _implemented_. Kanban system members often require additional _Definition of Workflow_ elements, such as values, principles, and working agreements, depending on the _circumstances of the_ Kanban system _members_. _There are resources in the appendix of this guide and elsewhere to help decide on appropriate options_. -->
これらがすべて*実装されている*限り、実装の順序は重要ではない。カンバンシステムメンバーは、カンバンシステム*メンバーの置かれた状況*に応じて、価値基準、原則、ワーキングアグリーメントなど、*ワークフローの定義*の要素を追加で必要とすることがよくある。*その選択肢は多岐にわたり、本ガイドの付録やその他の資料には、どの要素を取り入れるべきかを判断するのに役立つ*。

<!-- Kanban system members also often require more than one _Definition of Workflow_. Those multiple _Definitions of Workflow_ could be for multiple groups of Kanban system members, different levels of the organization, etc. While this guide prescribes no minimum or maximum number of _Definitions of Workflow_, it encourages establishing a _Definition of Workflow_ wherever the Kanban system members require connecting _Flow_ to _Value_. -->
カンバンシステムメンバーが、複数の*ワークフローの定義*を必要とすることもよくある。これらの複数の*ワークフローの定義*は、複数のカンバンシステムメンバーによるグループ、組織の異なるレベルなどに対応することができる。本ガイドでは、*ワークフローの定義*の最小数や最大数を規定していないが、カンバンシステムメンバーが*フロー*を*価値*に結びつける必要がある場合は、どこであっても*ワークフローの定義*を確立することを推奨している。

<!-- _Enabling Flow is the act of fostering a smooth and balanced system to create Value. The Definition of Workflow should ensure that the system is balanced to optimize the Flow of Value. Kanban system members accomplish this by improving how they validate that Value was delivered, and eliminating Work that fails to deliver Value._ -->
*フローを可能にするとは、価値を生み出すために、システムを円滑かつバランスの取れた状態に整える行為である。ワークフローの定義では、価値フローを最適化できるようにシステムのバランスを確保する必要がある。カンバンシステムメンバーは、価値が提供されたことを検証する方法を改善し、価値を生まない作業を取り除くことで、それを実現する*。

<!-- The _Visualization_ of one _or more_ _Definitions of Workflow_ is _described as_ a Kanban board. There are no specific guidelines for how a _Visualization_ should look. Consideration should be given to all aspects of a _Definition of Workflow_ (e.g., _Work Items_, policies) along with any other context-specific factors that may affect how Value _Flows_. -->
ひとつ*以上*の*ワークフローの定義*を*可視化*したものが、カンバンボード*として説明される*。*可視化*がどのような形式であるべきかについて、特に決まった指針はない。*ワークフローの定義*のすべての側面（*作業項目*やポリシーなど）に加え、価値*フロー*に影響を与える可能性のあるその他の状況固有な要因を考慮する必要がある。

<!-- _In a software team, Kanban might Visualize feature development from idea to deployment. In a marketing team, it might track a campaign from design to launch._ -->
例えば、*ソフトウェアチームでは、カンバンがアイデアからデプロイまでのフィーチャー開発を可視化する場合がある。マーケティングチームでは、キャンペーンのデザインからローンチまでを追跡するために使われる場合がある*。

<!-- Kanban system members are limited only by their imagination regarding how they make _Flow_ _visible and how they foster purposeful and intentional interactions with the right people at the right time_. _It is recommended to Visualize each step in a workflow to prevent waste from remaining hidden._ -->
カンバンシステムメンバーが*フロー*を*どのように可視化するか、また、適切なタイミングで適切な人と意図的かつ目的を持った対話をどのように促すか*について制限を受けるのは、カンバンシステムメンバーの想像力によってのみである。*無駄が見えないままにならないよう、ワークフローの各ステップを可視化することが推奨される*。

<!-- ### Actively Managing Items in a Workflow -->
### ワークフロー内の項目を主体的に管理する

<!-- Items in the workflow must be actively managed. _Active management of Items in a workflow can take several forms, including, but not limited to, the following:_ -->
ワークフロー内の項目は主体的に管理されなければならない。*ワークフロー内の項目を主体的に管理するには、以下を含むいくつかの形式がある（ただし、これらに限定されない）*。

<!-- - _Control_ ‘_Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP)_. -->
- *「開始しているが終了していない作業（SNFW）」または、進行中の作業（WIP）を制御する*
<!-- - _Ensure_ _Work Items_ do not age unnecessarily, using the _Service Level Expectation_ as a reference. -->
- *サービスレベル期待値（SLE）*を参考にして、*作業項目*が不必要に*古くならないようにする*
<!-- - _Resolve impediments that are causing blocked Work or blocked processes_. -->
- *ブロックされている作業やプロセスを引き起こしている障害物を解消する*

<!-- A common practice is for Kanban system members to review the active _Items_ _on a regular basis_. This review can occur continuously or at regular intervals. Kanban system members must explicitly control the number of _Work Items_ in a workflow from ‘started’ to ‘finished,’ directly or indirectly. That control can be represented on a Kanban board in any way that _Kanban system_ members deem appropriate. -->
カンバンシステムメンバーは、進行中の*項目*を*一定の頻度で*レビューするのが一般的である。このレビューは、継続的または定期的に行う。カンバンシステムメンバーは、「開始」から「終了」までの*作業項目*の数を、明示的に、直接的または間接的に制御しなければならない。この制御は、*カンバンシステム*メンバーが適切と判断する任意の方法でカンバンボード上に表現できる。

<!-- _The use of WIP limits (16) in Kanban for Knowledge Work typically indicates that demand can exceed the team’s capacity, so WIP limits (16) are used to regulate and balance the Flow of Work Items and prevent overload._ -->
*ナレッジワークにおけるカンバンでWIP制限(16)が用いられているのは、需要がチームのキャパシティを上回る可能性があることを示している場合が多い。そのため、WIP制限(16)は、作業項目のフローを調整し、バランスを保ち、過負荷を防ぐために用いられる*。

<!-- _In contrast, a Toyota just-in-time (JIT) pull system prevents demand from exceeding supply, as subsequent requests will not be serviced until the previous one has been fulfilled—a self-limiting or self-regulating system designed to synchronize production with actual customer demand and minimize inventory in a stable, predictable manufacturing environment._ -->
*これに対して、トヨタのジャストインタイム（JIT）によるプルシステムは、需要が供給を上回ることを防ぐ仕組みである。前の要請が処理されるまでは、次の要請には対応しないため、これは自己制限的あるいは自己調整的なシステムであり、実際の顧客需要と生産の同期を図り、安定的かつ予測可能な製造環境における在庫の最小化を目的として設計されている*。

<!-- _Making only what is needed just-in-time is the cornerstone of the Toyota Production System. The Kanban system in the Toyota Production System pulls exactly what is needed when it is needed._ -->
*必要なものを、必要なときに、必要なだけ作ること——ジャストインタイム——これこそがトヨタ生産方式の礎である。トヨタ生産方式における「かんばん方式」は、必要なものを必要なときに正確に引き取る仕組み（プルシステム）である*。

<!-- For Knowledge Work, Kanban system members should start Work on (_select_) an Item only when there is a clear signal that there is capacity to do so. When WIP drops below the control set in the _Definition of Workflow_, that can be a signal to select new work. Kanban system members should refrain from selecting more _Work_ into a given part of the workflow _beyond the relevant WIP control(s)_ _or selecting Work greater than their capacity. When needed, the Work should be split into smaller yet still potentially valuable Items._ -->
ナレッジワークにおいては、カンバンシステムメンバーは、対応できるキャパシティに余力があるという明確な合図があるときにのみ、（*選択した*）項目に着手すべきである。*ワークフローの定義*で定められた制限をWIPが下回ったとき、それが新たな作業を選択してよい合図となりうる。カンバンシステムメンバーは、ワークフローの特定の場所において、*WIPの制御を超えて作業*を選択したり、*自身のキャパシティを超えて作業を選択したりすることは控えるべきである。必要に応じて、作業をより小さく、それでも価値が見込まれる項目に分割すべきである*。

<!-- _There is no requirement to have a repository of Work Items that are not yet Work In Progress/Process, often referred to as a backlog. A backlog is emergent and can include various stages or aspects of Work preparation. If there is one, there is no need for it to be in a list format or sequenced._ -->
*まだ進行中ではない作業項目の保管場所、つまりいわゆるバックログを持たなければならないことはない。バックログは進化的に形成されるものであり、作業の準備に関するさまざまなステージや側面を含むことがある。もし、バックログがある場合でも、それがリスト形式である必要も、並び順がある必要もない*。

<!-- _Ideally, Work should enter the Kanban system guided by policies rather than being assigned to an individual. In the pursuit of managing idle work, not idle people:_ -->
*理想的には、作業は個人に配分するのではなく、方針に基づいてカンバンシステムで扱うべきである。人の手待ち時間に着目するのではなく、滞留している作業に着目し管理することを目指す*。

<!-- - _The Kanban system members should self-organize around the Work and Definition of Workflow._ -->
- *カンバンシステムメンバーは、作業やワークフローの定義を中心に自己組織化されるべきである*
<!-- - _Kanban system members should ‘start’ Work when they are ready to work on it, bringing in new Work based on how it is being prioritized._ -->
- *カンバンシステムメンバーは、作業の準備ができたときに「開始」すべきであり、優先順位に基づいて新たな作業に取り組むべきである*
<!-- - _Kanban system members––and others outside the Kanban system––should explicitly prevent Work from being pushed to Kanban system members._ -->
- *カンバンシステムメンバーおよびその外部にいる関係者は、作業がカンバンシステムメンバーにプッシュされることを、明示的に防がねばならない*
<!-- - _Beware of re-prioritization of ‘Started but Not Finished Work’ (SNFW) or_  
  _Work In Progress/Process (WIP), as it causes those Items to age (sit idle)_  
  _and leads to longer or less predictable Elapsed Times from ‘Started’ to ‘Finished.’_ -->
- *「開始しているが終了していない作業（SNFW）」や進行中の作業（WIP）の優先順位の変更には注意が必要である。そうした変更は、項目が放置され経過時間が長くなり（待機状態になり）、「開始」から「終了」までの所要時間が長くなる、あるいは予測しづらくなる原因となる*

<!-- _Rightsizing, an optional but recommended practice, refers to assessing whether Work Items fit the Service Level Expectation, or are too big for the Service Level Expectation and therefore require splitting into smaller but still potentially valuable Work Items._ -->
*適正サイズ化は、任意ではあるが推奨されるプラクティスである。これは、作業項目がサービスレベル期待値に適合しているか、または大きすぎるために、より小さく、それでもなお価値が見込まれる作業項目へ分割する必要があるかどうかを評価することである*。

<!-- _Rightsizing, in a Knowledge Work context, is based on the assumption that Work Items need to be at or under a maximum size (according to the Kanban system members) but do not necessarily need to be the same size. If a Work Item is so large that it can’t be completed within a reasonable time (e.g., it would break the Service Level Expectation), even after starting it, Kanban system members should consider splitting it into smaller Items that each have the potential to deliver Value. Equally, Work Items can be merged._ -->
*ナレッジワークの文脈における適正サイズ化は、作業項目は（カンバンシステムメンバーが定めた）最大サイズを超えないことを前提としている。ただし、すべての作業項目が同じサイズである必要はない。作業項目が非常に大きく、合理的な期間内に完了できない場合（例えば、サービスレベル期待値を超えるような場合）、たとえ作業の開始後であっても、カンバンシステムメンバーは、その作業項目をいずれも価値を提供しうる可能性をもった小さな項目に分割することを検討すべきである。同様に、作業項目を統合することも可能である*。

<!-- _Capacity management often requires more than WIP control._ Controlling WIP helps _Flow_ and often improves the collective focus, commitment, and collaboration _of the Kanban system members_. Any acceptable exceptions to controlling WIP should be _explicitly stated_ as part of the _Definition of Workflow_. -->
*キャパシティの管理には、WIPの制御だけでは不十分なことも多い*。WIPを制御することは*フロー*の改善に役立つだけでなく、多くの場合、全体的な*カンバンシステムメンバーの*集中力、確約（コミットメント）、コラボレーションの向上にもつながる。WIPを制御するうえで許容可能な例外は、*ワークフローの定義*の一部として明示的に記述しておくべきである。 

<!-- ### Improving _Flow_ -->
### *フロー*を改善する

<!-- Given an explicit Definition of Workflow, it is the Kanban system members’ responsibility to continuously improve their _Flow_ _by_ _achieving_ a better balance of effectiveness, efficiency, and predictability. Continual study of the system can guide potential improvements. _Kanban system members often review_ the _Definition of Workflow_ to discuss and _adopt_ _needed_ changes. -->
明示的なワークフローの定義が存在する前提で、カンバンシステムメンバーには、効果性、効率性、予測可能性のバランスをより適切にすることで、自らの*フロー*を継続的に改善していく責任がある。システムを継続的に観察し、検討することで、改善に向けた手掛かりが得られる。カンバンシステムメンバーは、しばしば*ワークフローの定義*を見直し、*必要な*変更について議論し、それらを*適用する*。

<!-- _Improvements are_ _often_ _just-in-time_. _Improvements are not limited by their size or scope. Sometimes, improvement is beyond the control or influence of Kanban system members. Purposeful and intentional interactions, cultivating change, and removing Blockers at all levels are key to improvement._ -->
*改善は、しばしばジャストインタイムで行われる。改善とはその規模や範囲によって制限されるものではない。ときに、改善はカンバンシステムメンバーの制御や影響力の範囲を超えることもある。意図的かつ目的を持った対話、変化を後押しする姿勢、そしてあらゆるレベルでブロックされている要因を取り除くこと——これらが改善にとって重要である*。

<!-- _Better still, people who demonstrate leadership, also known as leaders, Go See, Listen, and really understand to collect the facts to inform decision-making. This is known as Genchi Genbutsu. Leaders do Genchi Genbutsu so often that the truth emerges. Knowledge of what to do is one thing, but purposeful, relentless, iterative, compassionate action toward improvement (incl. shorter feedback loops) is another._ -->
*さらに望ましいのは、リーダーシップを発揮する人たち、すなわちリーダーが、現場に足を運び、耳を傾け、実際に理解したうえで、意思決定のための事実を収集することである。これは「現地現物（Genchi Genbutsu）」として知られている。リーダーは、この現地現物を繰り返し行うことで、実態が浮き彫りになる。何をすべきかを知っていることと、意図的で、根気強く、反復的で、思いやりのある改善行動（短いフィードバックループを含む）を取り続けることとは、まったく別物である*。

<!-- _Kanban favors evolutionary change, but it does not prohibit larger, structural changes, informed by evidence and a clear understanding of the system. Changes should be purposeful and context-driven._ -->
*カンバンは漸進的な変化を支持するが、エビデンスと明確な理解に基づくより大きな構造的な変化を禁じているわけではない。変化は、目的を持ち、状況に即したものであるべきである*。

<!-- ## Inform Flow Optimization with Appropriate Measures or Metrics -->
## 適切な指標や計測指標を活用したフローの最適化

<!-- - **Blocked Elapsed Time for Finished Items (BETFI):** The cumulative time for a single ‘finished’ Work Item (or a selection of ‘finished’ Items) spends in a blocked condition from ‘started’ to ‘finished,’ but not in a Queue or Buffer state. \[measure for a single Item, metric for multiple Items\] -->
- **終了した項目におけるブロックされている経過時間（BETFI: Blocked Elapsed Time for Finished Items）**: 単一の「終了」した作業項目（または複数の「終了」した項目の集合）について、「開始」から「終了」までの間にブロックされている状態にあった累積時間。ただし、キューやバッファの状態にあった時間は含まないものとする。\[単一の項目の場合は指標であり、複数項目の場合は計測指標である\]

<!-- > [!FOOTNOTE] -->
<!-- > The Definition of Workflow should include a policy for defining Blockers (in context) and signaling them. -->
> [!FOOTNOTE]
> ワークフローの定義には、ブロックされている要因を状況に応じて定義し、それを合図として明示するためのポリシーに含めるべきである。

<!-- - **_Cumulative Queueing or Buffer Time (CQBT):_** _The cumulative time a ‘finished’ single Work Item (or a selection of ‘finished’ Items) spends in Queueing or Buffer states from ‘started’ to ‘finished.’ \[measure for a single Work Item, metric for multiple Work Items\]_ -->
- ***累積キュー / バッファ時間（CQBT: Cumulative Queueing or Buffer Time）***: *単一の「終了」した作業項目（または複数の「終了」した項目の集合）が、「開始」から「終了」までの間に、キューやバッファの状態にあった累積時間。\[単一の項目の場合は指標であり、複数項目の場合は計測指標である\]*
<!-- - **_Elapsed Time from ‘Started’ to ‘Finished’ (ETSF):_** The (typically _rounded-up) number of elapsed time units (often calendar days) from_ when a single _Work Item_ ‘started’ _to_ when a _Work Item_ ‘finished.’ _Only ‘finished’ Items get ETSFs. \[measure\]_ -->
- ***「開始」から「終了」までの経過時間（ETSF: Elapsed Time from Started to Finished）***: 単一の*作業項目*が「開始」されて*から*「終了」するまでに経過した単位時間数（通常は暦日（日数）で計測し、端数は切り上げられる）。ETSFは、*「終了」した項目に対してのみ適用されるものとする。\[指標\]*
<!-- - **Flow Distribution:** The Visualization and analysis of Work Item types ‘finished’ or ‘completed’ over time, enabling active management to ensure a healthy balance of effort. \[metric\] -->
- **フロー分布（Flow Distribution）**: 作業項目のタイプ別に「終了」または「完了」した項目を可視化し分析することで、時間の経過に伴う傾向を把握する。これにより、労力の健全なバランスを維持するための主体的な管理が可能になる。\[計測指標\]

<!-- > [!FOOTNOTE]
> The Definition of Workflow should clearly define any Queue and Buffer states. -->
> [!FOOTNOTE]
> ワークフローの定義には、キューやバッファの状態を明確に定義しておくべきである。

<!-- - **_Flow Efficiency:_** The ratio of active working time to the total time an Item or a selection of Items spends in the workflow, including waiting times, between the ‘started’ and ‘finished’ points on a Definition of Workflow. _It is expressed as a percentage. It can be misleading, as time spent in active states may not be actual active time. ((ETSF-(CQBT+other non-value-adding time))/ETSF) 100\. \[metric\] Example of other non-value-adding time: Blocked Elapsed Time for Finished Items_ -->
- ***フロー効率***: ワークフローにおける「開始」から「終了」までの間に、項目または複数項目の集合が費やした総時間に対する実際に作業した時間の割合。待機時間なども含めた全体の時間を母数とする。*パーセンテージで表現されるが、注意が必要である。なぜなら、進行中を示す状態にあった時間が、必ずしも実際に作業していた時間とは限らないからである*。*\[計測指標\]*  
  *計算式: ((ETSF − (CQBT ＋ その他の付加価値を生まない時間)) ÷ ETSF) × 100*  
  *例: その他の付加価値を生まない時間 ＝ 終了した項目におけるブロックされている経過時間（BETFI）*
<!-- - **Number of Blockers:** The number of impediments, partial or complete, at a given point in time (usually current datetime), to the Flow of Work Items from ‘started’ to ‘finished.’ \[measure\] -->
- **ブロックされている要因の数（Number of Blockers）**: 「開始」から「終了」までの作業項目のフローを妨げている（部分的または完全な）障害物の数。ある時点（通常は、現在日時）で計測される。\[指標\]
<!-- - **Process Cycle Efficiency:** Measures the Work efficiency of a system or its parts. It is calculated by dividing Value-adding time by Time to Market and then multiplying by 100 to get a percentage. This means Kanban system members have to measure all Value-adding and all non-Value-adding time (including, but not limited to, waiting time). ((T2M-(CQBT+other non-value-adding time))/T2M) 100\. \[metric\] -->
- **プロセスサイクル効率**: システム全体またはその一部における作業効率を計測する指標。付加価値を生み出す時間（Value-adding time）を市場に出すまでの時間（T2M: Time to Market）で割り、100をかけてパーセンテージとして算出する。これはカンバンシステムメンバーが、すべての付加価値を生み出す時間と、すべての付加価値を生み出さない時間（待ち時間を含むが、それに限らない）を計測しなければならないことを意味する。\[指標\]   
  計算式: ((T2M − (CQBT ＋ その他の付加価値を生み出さない時間)) ÷ T2M × 100) 
<!-- - **_Service Level Expectation:_** A forecast of how long it should take a _Work Item_ to Flow from ‘started’ to ‘finished.’ The _Service Level Expectation_ itself has two parts: a period of elapsed time and a probability associated with that period (e.g., ‘85% of _Work Items_ will be ‘finished’ in eight days or less’). _It is based on a selection of Elapsed Time from ‘Started’ to ‘Finished’ from all history, a subset of history, or if data does not exist or is insufficient, an educated guess. \[metric\]_ -->
- **サービスレベル期待値（SLE）**: ひとつの作業項目がフローの「開始」から「終了」までにかかると見込まれる時間の予測値。_サービスレベル期待値_ 自体は経過時間とその期間で終了する確率の2つの部分からなる（例: 「85%の作業項目は8日以内に『終了』する」）。*この値は、「開始」から「終了」までの経過時間に関する、過去すべて、または一部の履歴データに基づいて算出される。データが存在しない、あるいは不十分な場合は、経験的な推定によって設定する*。*\[指標\]*
<!-- - **‘Started but Not Finished Work’ (SNFW)** or **Work In Progress/Process (WIP)** _or **Flow Load**_: _The_ number of _Work Items_ ‘started’ but not ‘finished’. _\[measure\]_ -->
- **「開始しているが終了していない作業（SNFW）」** または、**進行中の作業（WIP）**: 「開始」しているがまだ「終了」していない*作業項目の数*。*\[指標\]*
<!-- - **Throughput:** The number of _Work Items_ ‘finished’ per unit of time. The measurement of throughput is the exact count of _Work Items_, _not revenue. \[metric\]_ -->
- **スループット**: 単位時間あたりに「終了」した*作業項目*の数。スループットの計測は、*作業項目*の正確な数であり、*収益ではない*。*\[指標\]*
<!-- - **Time to Market, also known as Customer Lead Time:** The (typically rounded-up) number of elapsed time units (often calendar days/weeks) from when a Stakeholder’s order for a single Work Item was received to when the Work Item was delivered to the Stakeholder. It is one example of an ETSF. \[measure for a single Work Item, metric for a product or service\] -->
- **市場に出すまでの時間、またはカスタマーリードタイム**: ひとつの作業項目がステークホルダーから要請を受けてから、その作業項目がステークホルダーに届くまでの経過時間の単位時間数（多くの場合、暦日（日数）または週単位で計測し、通常は端数は切り上げられる）。これはETSFの一例である。\[単一作業項目に対しては指標、プロダクトやサービス全体に対しては計測指標\]
<!-- - **Total Work Item Age (TWIA)** or **Total Elapsed Time for ‘Started’ but Not ‘Finished’ Items (TETSNFI)** **:** The total elapsed time from when all in-progress (‘started’ but not ‘finished’) Work Items ‘started’ to a specified datetime, usually the current datetime. \[metric\] -->
- **作業項目の年齢の合計（TWIA: Total Work Item Age）** または **「開始」しているが「終了」していない項目に対する経過時間（TETSNFI: Total Elapsed Time for Started but Not Finished Items）**: すべての進行中（「開始」しているがまだ「終了」していない）作業項目について、「開始」された時点から特定の日時（通常は現在日時）までの総経過時間。\[計測指標\]
<!-- - **Work Item Age (WIA)** or **_Elapsed Time for ‘Started’ but Not ‘Finished’ Items(ETSNFI)_** : The (typically _rounded-up) number of elapsed time units (often calendar days)_ _from_ _the datetime a single ‘not finished’ Work Item_ ‘started’ _to_ _a specified datetime, usually the current datetime. By acting on relatively older Items, feedback loops can be shortened, and Flow improves. \[measure\]_ -->
- **作業項目の年齢（WIA: Work Item Age）** または ***「開始」しているが「終了」していない項目の経過時間（ETSNFI: Elapsed Time for Started but Not Finished Items）***: *ひとつの「終了していない」作業項目*について、「開始」した日時*から特定日時（通常は現在日時）までの経過時間の単位時間数（多くの場合、暦日で計測し、通常は切り上げられる）*。*比較的古い項目に対応することで、フィードバックループを短縮し、フローが改善される*。*\[指標\]*

<!-- The _Flow_ metrics _and measures_ apply to the appropriate ‘started’ and ‘finished’ points established by the Kanban system members in their _Definition of Workflow_. _If there are multiple sets of ‘started’ and ‘finished’ points, some flow metrics and measures are often applied to each ‘started’ and ‘finished’ pair._ -->
*フロー*の計測指標*や指標*は、カンバンシステムメンバーが*ワークフローの定義*で定めた適切な「開始」点と「終了」点に適用されるものである。「開始」点と「終了」点が複数存在する場合、いくつかのフローの計測指標や指標は、それぞれのひと組の「開始」と「終了」に適用されることがよくある。

<!-- **_If Kanban system members are unsure where to start, this guide suggests:_** -->
***カンバンシステムメンバーがどこから始めればよいかわからない場合、本ガイドは次のように提案する*。**

<!-- _Time to Market, and for each coherent ‘started’ and ‘finished’ pair:_ -->
*市場に出すまでの時間や、一貫性のあるひと組の「開始」と「終了」に対して、以下のような指標が適用できる*。

<!-- - _A Service Level Expectation (required for at least one ‘started’ and ‘finished’ pair),_ -->
- *（少なくともひと組の「開始」と「終了」に対して必要となる）サービスレベル期待値*
<!-- - _Work Item Age or Elapsed Time for ‘Started’ but Not ‘Finished’ Items (ETSNFI),_ -->
- *作業項目の年齢、または「開始」しているが「終了」していない項目の経過時間（ETSNFI）*
<!-- - _Elapsed Time from ‘Started’ to ‘Finished’ (ETSF), and_ -->
- *「開始」から「終了」までの経過時間（ETSF）*
<!-- - _Throughput._ -->
- *スループット*

<!-- Provided that Kanban system members use _Flow_ metrics _and measures_ as described in this guide, _and they are appropriate for the context,_ they can refer to any of them by other names. It is up to the Kanban system members to decide how best to _use_ these _Flow_ metrics _and measures, such as Visualizing them in charts or assessing variation. A proactive focus on outcomes, impact, and Value is recommended._ -->
カンバンシステムメンバーが、本ガイドで示されているようにこれらの*フロー*の計測指標*や指標*を使用し、かつそれが文脈に適している限り、それら計測指標と指標を他の名前で呼んでもよい。これらの*フロー*計測指標*や指標*をどのように*使用するか*（例えば、チャートで可視化する、ばらつきを評価するなど）は、カンバンシステムメンバーが決定する。アウトカム、インパクト、価値に積極的に注力することが望ましい。

<!-- ### _Outcomes, Impact, and Value_ -->
### *アウトカム、インパクト、価値*

<!-- _Kanban system members should regularly look for evidence of outcomes/impact, e.g.:_ -->
*カンバンシステムメンバーは、アウトカムやインパクトのエビデンスを定期的に探すべきである。以下はその例である*。

<!-- - _Customer outcomes could focus on delivering measurable Value to customers, e.g., reduced Failure Demand, customer long-term cost reduction, or addressed customer jobs (18)._ -->
- *顧客アウトカムは、顧客に対して計測可能な価値を提供することに焦点を当てるものである（例: 失敗需要の削減、顧客の長期的なコストの削減、顧客の抱える課題への対応(18)など）*
<!-- - _User outcomes could address specific changes in user behavior that solve problems or improve experiences, e.g., ‘completing’ Work Items more effectively at the lowest costs, or better usability._ -->
- *ユーザーアウトカムは、問題の解決や体験の改善、ユーザー行動の具体的な変化を示すものである（例: 作業項目を「完了」するための効率向上と低コスト化、あるいは使いやすさの向上など）*
<!-- - _Product Stakeholder outcomes could connect these behavioral changes to product performance metrics, such as trends in product customer adoption, retention, and convergence, as well as trends in feature adoption, decision-maker and user metrics, and product Time to Market._ -->
- *プロダクトステークホルダーのアウトカムは、ユーザーの行動変容とプロダクトのパフォーマンスに関する計測指標とを結びつけるものである（例: プロダクトの顧客による採用、継続利用、顧客体験の向上、フィーチャーの使用傾向、意思決定者やユーザーに関する計測指標、プロダクトの市場に出すまでの時間など）*
<!-- - _Business Stakeholder Impact, e.g., compliance, business long-term cost reduction, business results, trends in market share, customer satisfaction across all products, etc._ -->
- *ビジネスステークホルダーのインパクト（例: コンプライアンス、ビジネスの長期的なコスト削減、ビジネス結果、市場シェアの傾向、すべてのプロダクトにわたる顧客満足度など）*
<!-- - _Outcomes for Kanban system members such as improved capability, considering for example, psychological flow (15), frequency of release, tooling, skills, technical debt, user experience (UX) debt, customer experience (CX) debt, human-centered-design debt, technical domain capability, market domain capability, business domain capability, and a climate/culture for net improvement._ -->
- *カンバンシステムメンバーにとってのアウトカムには、能力の向上が含まれる（例: 心理的フロー(15)、リリース頻度、ツール、スキル、技術的負債、ユーザー体験（UX）に関する負債、顧客体験（CX）に関する負債、人間中心設計に関する負債、技術ドメインの能力、市場ドメインの能力、ビジネスドメインの能力、全体的な改善のための風土や文化などを考慮する）*

<!-- Any of the above approaches can be useful. Also, consider the following: -->
上記のいずれのアプローチも有用である。加えて、次の点についても考慮すべきである。

<!-- - **Failure Demand** (17)**:** Demand caused by a failure to do something or do something right for the customer. It is a signal for potential improvement. It highlights where capacity is being wasted due to previous failures, poor Work, or bad decisions. For example, a customer support team may receive repeated calls due to unclear billing instructions. \[metric\] -->
<!-- ここのsignalは文脈から「シグナル」とした -->
- **失敗需要（Failure Demand）**(17): 何かを行わなかった、あるいは適切に行わなかったことによって顧客に生じる需要。これは改善の可能性を示すシグナルであり、過去の失敗、不適切な作業、誤った意思決定によって能力が浪費されている箇所を明らかにする。例えば、カスタマーサポートチームが不明確な請求手順により問い合わせが頻発するような場合が該当する。 \[計測指標\]
<!-- - **Time to Validated Value, also known as Time to Value or Time to Outcome:** The _rounded-up number of elapsed time units (often calendar days/weeks) from when a Stakeholder’s order for a Work Item was received to when Value was validated. It is one example of an ETSF focusing on valuable and measurable outcomes. \[measure\]_ -->
- **価値を検証するまでの時間（Time to Validated Value）** または **価値実現までの時間（Time to Value）**、**アウトカムまでの時間（Time to Outcome）**: *ステークホルダーから作業項目の要請を受けてから、その価値が検証されるまでの経過時間の単位時間数（多くの場合、暦日や週単位で計測され、通常は切り上げられる）*。*これは、価値のある計測可能なアウトカムに焦点を当てたETSFの一例である*。*\[指標\]*
<!-- - **Value Validated:** A Work Item that reaches the ‘finished’ point and delivers the intended Value to the Stakeholder (including, but not limited to, customer or user), meeting explicit policies, e.g., quality or experience standards. Often includes evidence and observations. -->
- **妥当な価値（Value Validated）**: 「終了」点に到達し、ステークホルダー（顧客やユーザーを含むがそれに限定されない）に意図した価値を提供している作業項目。これは品質や体験に関する基準など、明示的なポリシーを満たしており、多くの場合、エビデンスや観察結果を伴う。
<!-- - **Value Invalidated:** A Work Item that reaches the ‘finished’ point or is evaluated but fails to deliver the intended Value, not meeting expectations defined in the Definition of Workflow, often requiring rework or rejection, informed by evidence and observations. Consider the context. -->
- **不適切な価値（Value Invalidated）**: 「終了」点に到達したか、そう見なされたが、意図した価値を提供できなかった作業項目。これはワークフローの定義で示された価値に応えておらず、エビデンスや観察結果に基づき、手戻りや却下が必要になることが多い。状況に応じて判断すること。

<!-- _By measuring these kinds of outcomes, impacts, Value metrics, and Value measures, Kanban system members ensure they’re not just delivering Work quickly (outputs), but delivering real Value and improvements (outcomes and impacts) to Stakeholders, including but not limited to customers and users._ -->
*このようなアウトカム、インパクト、価値に関する計測指標や指標を計測することで、カンバンシステムメンバーは、単に作業結果（アウトプット）を迅速に提供しているだけでなく、ステークホルダー（顧客やユーザーを含むがそれに限定されない）に対して、実際の価値や改善（アウトカムやインパクト）を提供することを裏付けられる*。

<!-- _Clarity and understanding of Work Items should happen just-in-time to avoid waste._ Avoid excessive focus on outputs and insufficient focus on outcomes. _Kanban system members should proactively, intentionally, purposefully, and regularly review the metrics or measures and continually improve them._ -->
*作業項目の明確化と理解は、無駄を取るために、ジャストインタイムで行うべきである。アウトプットに偏重し、アウトカムへの注力が不足するのを避けること。カンバンシステムメンバーは、これらの計測指標や指標を積極的に、意図的に、目的を持って、定期的に見直し、継続的に改善すべきである*。

<!-- ## Endnote -->
## 最後に

<!-- _Only the Kanban Practices, the minimum criteria Definition of Workflow, and a selection of metrics or measures are mandatory; everything else is optional._ _Consider the context. Kanban system members should foster the humane Flow of Value._ -->
*カンバンのプラクティス、最小限の基準としてのワークフローの定義、計測指標や指標の選定だけが必須であり、それ以外はすべて任意であり*、*状況に応じて判断すること。カンバンシステムメンバーは、人間性を尊重した価値のフローを育むべきである*。

<!-- _Feedback from results (‘result feedback’) refers to the data that comes back after changes are made, whether it’s quantitative or qualitative information about outcomes, impacts, or even shifts in the market environment. This feedback can influence Stakeholder Value outcomes, as well as the inputs, effort, resources, or costs involved going forward. (Note: People are not ‘resources.’)._ -->
*結果からのフィードバック（「結果フィードバック」）とは、何らかの変更を加えたあとに得られるデータを指す。これには、アウトカム、インパクト、さらには市場環境の変化に関する定量的あるいは定性的な情報が含まれる。このフィードバックは、今後のステークホルダーにとっての価値あるアウトカムだけでなく、それに関するインプット、労力、リソース、コストにも影響を与える可能性がある（※ 人は「リソース」ではない）*。

<!-- _In practice, Kanban is a journey of ongoing learning and adaptation. By starting with these core practices and continuously improving, Kanban system members can sustainably achieve better Flow of Value. Kanban system members should start simple and evolve their Kanban system as they learn._ -->
*実践において、カンバンとは継続的な学習と適応の過程である。これらの基本となるプラクティスから始め、継続的に改善していくことで、カンバンシステムメンバーは価値のフローを持続的に向上させることができる。カンバンシステムメンバーは、まずはシンプルに始め、学びながら自らのカンバンシステムを進化させていくべきである*。

<!-- ## History of Kanban -->
## カンバンの歴史

<!-- The present state of Kanban can be traced to the Toyota Production System (and its antecedents) and the work of people such as Taiichi Ohno _(9)_. The collective set of practices for Knowledge Work, now commonly referred to as _Kanban (12),_ mainly originated on a team at Corbis in 2006\. Those practices quickly spread to encompass a large and diverse international community that has continued to enhance and evolve the approach. -->
カンバンの現在の形は、トヨタ生産方式（およびその前身）や大野耐一 *(9)* をはじめとする人たちの仕事にまで起源をたどることができる。現在一般に*カンバン (12)* と呼ばれているナレッジワークのためのプラクティスの集合体は、2006年にCorbis社のあるチームで始まったのが主な起点である。これらのプラクティスは急速に広まり、現在では多様で国際的な大規模コミュニティによって継続的に強化され、進化し続けている。

<!-- ## Acknowledgments -->
## 謝辞

<!-- _People acknowledged here do not necessarily agree with what is written in this document, and that is ok. Nevertheless, the Open Guide to Kanban owes a massive debt of gratitude to:_ -->
*ここで謝辞を述べている方々が、本ガイドの内容すべてにおいて同意しているとは限らないが、それでも構わない。それでもなお、オープン版カンバンガイドは以下の方々に多大な感謝の意を表したい*。

<!-- - All who helped to develop Kanban, including those who preferred not to be named -->
- カンバンの発展に寄与してくれたすべての人たち——名前を挙げられることを望まなかった人たちも含む
<!-- - _Kanban Guide July 2020 or December 2020 version reviewers: Jean-Paul Bayley, Jose Casal, Colleen Johnson, Todd Miller, Eric Naiburg, Steve Porter, Ryan Ripley, Dave West, Julia Wester, Yuval Yeret, and Deborah Zanke_ -->
- *カンバンガイドの2020年7月版または12月版の査読者: Jean-Paul Bayley、Jose Casal、Colleen Johnson、Todd Miller、Eric Naiburg、Steve Porter、Ryan Ripley、Dave West、Julia Wester、Yuval Yeret、Deborah Zanke*
<!-- - _Kanban Guide May 2025 version reviewers:_ Magdalena Firlit, Tom Gilb, Colleen Johnson, Christian Neverdal, Prateek Singh, Steve Tendon, and Julia Wester -->
- *カンバンガイドの2025年5月版の査読者: Magdalena Firlit、Tom Gilb、Colleen Johnson、Christian Neverdal、Prateek Singh、Steve Tendon、Julia Wester*
<!-- - _Open Guide to Kanban reviewers: Jim Benson, Andy Carmichael, Jose Casal, Magdalena Firlit, Michael Forni, Martin Hinshelwood, Christian Neverdal, Nader Talai, Steve Tendon, and Nigel Thurlow_ -->
- *オープン版カンバンガイドの査読者: Jim Benson、Andy Carmichael、Jose Casal、Magdalena Firlit、Michael Forni、Martin Hinshelwood、Christian Neverdal、Nader Talai、Steve Tendon、Nigel Thurlow*
<!-- - _Influences: Russell L. Ackoff, Jim Benson, Andy Carmichael, Emily Coleman, John Cutler, W. Edwards Deming, Dominica DeGrandis, Tom Gilb, Joseph M. Juran, Siegfried Kaltenecker, Henrik Kniberg, Klaus Leopold, John Little, Troy Magennis, Taiichi Ohno, Donald G. Reinersten, Sam L. Savage, Walter Shewhart, Nader Talai, Steve Tendon, Nigel Thurlow, and Donald J. Wheeler._ -->
- *影響を受けた人物: Russell L. Ackoff、Jim Benson、Andy Carmichael、Emily Coleman、John Cutler、W. Edwards Deming、Dominica DeGrandis、Tom Gilb、Joseph M. Juran、Siegfried Kaltenecker、Henrik Kniberg、Klaus Leopold、John Little、Troy Magennis、Taiichi Ohno、Donald G. Reinersten、Sam L. Savage、Walter Shewhart、Nader Talai、Steve Tendon、Nigel Thurlow、Donald J. Wheeler*

<!-- ### Translated Acknowledgments -->
### 翻訳について

<!-- 本ガイドは、英語版からの日本語翻訳である。日本語翻訳は、長沢智治、斎藤紀彦、菅原円が担当した。 -->
本ガイドは、英語版からの日本語翻訳である。日本語翻訳は、長沢智治が担当した。

 - [ ] 翻訳に関する連絡先: 長沢智治（nagasawa@servantworks.co.jp）

なお、本ガイドの翻訳査読は、オープンなコミュニティにより行われた。

<!-- ## Appendix -->
## 付録

<!-- ### Controlling Work In Progress/Process \= Controlling ‘Started but not Finished Work’ -->
### 進行中の作業を制御する、すなわち「開始しているが終了していない作業」を制御する

<!-- Control of _‘Started but not Finished Work’, also referred to as_ WIP control, can be represented on a Kanban board in any way that _Kanban system_ members deem appropriate, including, but not limited to, painter’s tape spots, Total Work Item Age or Total Elapsed Time for ‘Started’ but Not Finished Items (TETSNFI), queue controls, WIP control numbers, or WIP control ranges. -->
*「開始しているが終了していない作業（SNFW）」を制御すること*、もしくはWIPの制御*とも呼ばれること*は、カンバンシステムメンバーが適切と見なす方法でカンバンボード上に表現できる。例えば、ペインターテープで印をつける、作業項目の年齢の合計（TWIA）、「開始している」が終了していない項目の経過時間の合計（TETSNFI）、キューの制御、WIPの制御数、WIPの制御範囲などがある。

<!-- _There are also some optional non-Kanban options, supported by some communities, such as CONWIP(16), Simplified DBR (16), or DBR(16):_ -->
*CONWIP(16)、簡易DBR(16)、DBR(16)など、一部のコミュニティに支持されているカンバン以外の任意の選択肢も存在する*。

<!-- - **CONWIP (Constant Work In Progress/Process)** (16)**:** CONWIP is a pull system that maintains a fixed total ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) limit across the entire workflow, ‘starting’ new Work only when a ‘finished’ or ‘completed’ Item exits, regulating Flow with a single system-wide constraint. Example: A software support team allows only 15 open tickets at any time; when a ticket is resolved, a new one can be ‘started.’ Not everyone supports it. -->
- **CONWIP（一定のWIP数: Constant WIP）**(16): CONWIPとは、ワークフロー全体にわたって「開始しているが終了していない作業（SNFW）」または進行中の作業（WIP）の総数に制限を設けるプルシステムのことである。「終了」または「完了」した項目がワークフローから出るときにのみ新しい作業を「開始」し、システム全体に設定された単一の制約によってフローを制御する。例えば、ソフトウェアサポートチームが常に最大15件の未解決チケットまでしか対応せず、あるチケットを解決したタイミングで新しいチケットの対応を「開始」する場合などが該当する。この仕組みをすべての人が支持しているわけではない。
<!-- - **DBR** (3,16)**:** An advanced approach that manages the Flow Constraint with Buffers before the Flow Constraint and at system outputs, maximizing Throughput while protecting against variability in complex systems. Example: In a product development group, UX review (primary Flow Constraint) sets the pace (drum) with a Buffer of designs before it, a secondary Buffer before legal approval prevents overload, and new Work is released only when both Buffers have capacity. Not everyone supports it. -->
- **DBR（ドラム ー バッファ ー ロープ: Drum-Buffer-Rope）**(3,16): DBRは、フロー制約の前やシステムの出口にバッファを設けることで、フロー制約を管理する高度なアプローチである。複雑なシステムにおいてスループットを最大化しつつ、ばらつきから保護することを目的とする。例えば、あるプロダクト開発グループでは、UXレビュー（主たるフロー制約）がペースメーカー（ドラム）として進行のペースを決定し、その前に設けられたデザインのバッファや法務承認の前に設けられた第二のバッファによって過負荷を防ぐ。その両方のバッファに空きがあるときにのみ、新しい作業を開始する。この仕組みをすべての人が支持しているわけではない。
<!-- - **Flow Constraint** (16)**:** The bottleneck with the least capacity in the Definition of Workflow. There can be multiple bottlenecks (all with less capacity than what is required by the demand), and the Flow Constraint is the most limited one. It restricts the Kanban system’s overall Throughput, determining the pace at which Value is delivered. Example: In a software development team, if the testing takes the longest and limits the release of features, testing is the Flow Constraint that sets the system’s pace. In Knowledge Work, bottlenecks often exhibit turbulent behaviour and can move around the workflow in unpredictable ways. But sometimes bottlenecks are stubborn. -->
- **フロー制約（Flow Constraint）**(16): ワークフローの定義の中でキャパシティが最も小さいボトルネックのこと。ボトルネックは複数存在しうる（いずれも需要に対してキャパシティが不足している）が、その中で最も制限的なものがフロー制約である。これは、カンバンシステム全体のスループットを制限し、価値提供のペースを決定する。例えば、ソフトウェア開発チームにおいて、テストに最も時間がかかり、それがフィーチャーのリリースを制限している場合、テストがシステム全体のペースを決めるフロー制約となる。ナレッジワークにおいては、ボトルネックが不安定に振る舞い、ワークフロー内を予測不可能な形で移動することがよくある。ただし、ボトルネックが固定されることもある。
<!-- - **Simplified DBR (Drum-Buffer-Rope)** (3,16)**:** A simplified scheduling method where the Kanban system’s Throughput sets the workflow pace, and Throughput acts as a replenishment signal like in CONWIP. Suppose there is a Kanban system using Simplified Drum-Buffer-Rope, and the Definition of Workflow is designed to handle up to 15 Items, with 12 actively in progress/process (drum) and a Buffer of 3 Items ready to start, ensuring Work continues smoothly if any of the 12 Items face issues by pulling from the Buffer, maintaining Flow with, for example, 13 in progress/process and 2 in reserve. The rope signals replenishment when an Item is delivered, keeping the total within the 15-Item limit, and the system prioritizes rebuilding the Buffer quickly if it is depleted, proactively resolving issues to sustain Flow. Not everyone supports it. -->
- **簡易DBR（Simplified DBR）**(3,16): カンバンシステムのスループットによってワークフローのペースを決定し、スループットがCONWIPのような補充の合図として機能する簡易的なスケジューリング手法。例えば、簡易DBRを採用しているカンバンシステムがあり、ワークフローの定義上、最大15件の項目を扱えるとする。そのうち、12件が進行中（ドラム）で、残り3件がすぐに開始できる準備ができており、バッファである。この構成により、12件の進行中の項目のうち、いずれかに問題が発生した場合でも、バッファから項目を引いてくることで円滑なフローが維持される。例としては、13件が進行中で2件が予備の状態になるように調整するなどがある。ロープは、項目を完了した際に補充を促す合図として機能し、全体で15件という上限を超えないように制御する。また、バッファが枯渇した場合には、フローを維持するために優先してバッファの補充が行われる。この仕組みをすべての人が支持しているわけではない。

<!-- ### If Kanban system members need to prioritize a Work Item to ‘start’ -->
### カンバンシステムメンバーがどの作業項目を「開始」するかを優先順位づける必要がある場合

<!-- _Here are some optional non-Kanban techniques that some but not all communities support:_ -->
*以下は、すべてのコミュニティが支持しているわけではないが、一部のコミュニティで採用されているカンバン以外の任意の技法である*。

<!-- - **Class of Service** (21)**:** An archetype for one or a selection of Work Items, such as, standard, (real and therefore not arbitrary) fixed date, expedite, or intangible. The choice of class of service may reflect perceived relative Value, Risk, or Cost of Delay. It is more useful as an input for deciding which Item(s) to ‘start’ next when capacity allows than reprioritizing Work Items In Progress/Process (which is not good for Flow). Prone to overloading the Kanban system when misapplied, e.g., an ‘expedite lane’ might eventually get superseded by a ‘super-expedite lane,’ and then things start to get silly. Prone to unbalanced Flow even when not misapplied. -->
- **サービスクラス（Class of Service）**(21): ひとつまたは複数の作業項目に対する典型的な分類のこと。例えば、標準、（実際に意味のある）固定日、緊急対応、無形などが挙げられる。サービスクラスの選択は、相対的な価値、リスク、または遅延コストとして見なされるものを反映することがある。サービスクラスは、キャパシティに余力があるときに、次にどの項目（または複数の項目）を「開始」するかを判断するための情報としては有用であるが、進行中の作業項目の優先順位を入れ替える手段として用いるのは、（フローに悪影響を及ぼすため）望ましくない。誤って適用されると、カンバンシステムに過負荷をもたらしやすく、例えば、「緊急対応レーン」がやがて「超緊急対応レーン」に置き換えられ、事態が滑稽なものになることもある。適切に適用していたとしても、フローの不均衡を招きやすい。 
<!-- - **Cost of Delay (per unit of time)** (7)**:** The rate of Value loss per unit time for one or more Items, not to be confused with Delay Cost. It is often useful as input for deciding which Item(s) to ‘start’ next when capacity allows, rather than reprioritizing Work Items In Progress/Process (which is not good for Flow). Like most prioritization inputs, it is often based on educated guesses. It can also be real after the fact. For example, the Cost of Delay for a Work Item is $10,000 per week. Kanban system members should tread carefully before considering this approach. -->
- **（単位時間あたりの）遅延コスト（Cost of Delay(per unit of time)）**(7): ひとつまたは複数の項目に対して、単位時間ごとに失われる価値の割合のこと。遅延による損失（Delay Cost）とは明確に区別すべきだ。キャパシティに余力があるときに、次にどの項目（または複数の項目）を「開始」するかを判断するための情報として有用なことが多いが、進行中の作業項目の優先順位を入れ替える手段として用いることは、（フローに悪影響を及ぼすため）望ましくない。他の多くの優先順位づけの情報と同様に、この数値はしばしば経験的な推測に基づくが、事後的に実際の値として把握されることもある。例えば、ある作業項目の遅延コストが週あたり1万ドルであるといった場合である。カンバンシステムメンバーは、このアプローチを検討する際には慎重になるべきである。  
<!-- - **Data-informed Rightsizing** (24-25)**:** Sometimes more effective than other options, as Kanban system members rarely know the effort or Value in advance. It allows for more opportunism. -->
- **データに基づく適正サイズ化（Data-informed Rightsizing）**(24-25): 他の選択肢よりも効果的な場合もある。なぜなら、カンバンシステムメンバーは事前に必要な作業量や価値を把握しているとは限らないからである。このアプローチは、より柔軟で機会を活かした判断を可能にする。
<!-- - **Delay Cost (total)** (7)**:** The total cumulative loss over a period of time from a specific delay period for one or more Items. It can be actual or forecasted, and it’s important to be clear which one is being referred to. For example, if the Cost of Delay for a Work Item is $10,000 per week and it is delayed by 3 weeks, the Delay Cost is $30,000. -->
- **遅延による損失（合計）（Delay Cost（total））**(7): 特定の遅延期間において、ひとつまたは複数の項目から発生する一定期間にわたる累積的な損失を合計したもの。実際の値である場合もあれば、予測値である場合もあり、どちらを指しているのかを明確にすることが重要である。例えば、ある作業項目の単位時間あたりの遅延コストが週あたり1万ドルで3週間遅延した場合、遅延による損失は合計で3万ドルとなる。
<!-- - **Impact Estimation Table (IET)** (22)**:** Evaluate options against Stakeholder expectations or limits. -->
- **インパクト見積もり表（IET: Impact Estimation Table）**(22): ステークホルダーの期待値や制約と照らし合わせて選択肢を評価するための手法。
<!-- - **Opportunity Cost:** The Value or benefit lost by choosing to work on one or more Work Items over other potentially valuable Work Items due to limited capacity. It reflects the trade-offs made when prioritizing within capacity in a Kanban system, where focusing on one or more Work Items means forgoing others that could have also delivered Value. Kanban system members often use metrics like Cost of Delay or Delay Cost to quantify opportunity cost. Since Value and, hence, Opportunity Cost range from being difficult to predict to being unpredictable, Kanban system members should tread carefully before attempting this approach. -->
- **機会費用（Opportunity Cost）**: 限られたキャパシティの中で、ある作業項目（または複数の作業項目）に取り組むことを選択した結果、他の潜在的に価値のある作業項目に取り組めなくなることで失われる価値や恩恵のこと。これは、カンバンシステムにおいてキャパシティの範囲内で優先順位づけを行う際に生じるトレードオフを反映している。ひとつまたは複数の作業項目に注力するということは、他の価値をもたらしうる作業項目を見送ることを意味するためである。カンバンシステムメンバーは、機会費用を定量化するために、遅延コストや遅延による損失といった計測指標を用いることが多い。ただし、価値や機会費用は予測が困難であり、場合によっては予測不可能なこともあるため、このアプローチを試みる際には慎重になるべきである。
<!-- - **Random:** Can be more effective than other options, as the effort or Value is not known upfront. -->
- **ランダム（Random）**: 作業量や価値が事前にはわからない場合において、他の選択肢より効果的なことがある。
<!-- - **Real Options** (23)**:** Defer commitments until sufficient information is available, treating decisions as valuable, expiring options to maximize flexibility and manage Risk. -->
- **リアルオプション（Real Options）**(23): 意思決定を価値があり有効期限のある選択肢として扱い、柔軟性を最大化しリスクを管理するために、十分な情報が得られるまで確約（コミットメント）を先送りにすること。
<!-- - **Risk:** Do the riskiest Item first. Risk can include the likelihood that Value cannot be harvested. -->
<!-- Risk Takeじゃね？ 用語集に「リスク」があるので、リスク重視としておく。-->
- **リスク重視（Risk）**: 最もリスクの高い項目から着手すること。リスクには、価値を得られない可能性も含まれる。
<!-- - **Shortest Job First** (24-25)**:** Select the Work Item with the lowest perceived effort, prioritizing rightsized Work Items over other Work Items. This can lead to shorter feedback loops and quicker outcomes. But, it can also lead to a delayed ‘start’ on a larger, riskier Work Item. -->
- **最短作業優先（SJF: Shortest Job First）**(24-25): 最も作業量が少ないと見なされる作業項目を選択し、他の作業項目よりも適正サイズの作業項目を優先する方法。この方法は、フィードバックループを短縮し、より迅速なアウトカムにつながる可能性がある。ただし、よりサイズが大きく、リスクの高い作業項目の「開始」が遅延する原因にもなりうる。
<!-- - **Slack** (19)**:** Slack is leaving unused capacity in the system to cope with demand surges, unplanned work, or the emergence of unseen circumstances. In a Kanban for Knowledge Work context, it is a deliberate allocation or policy of spare capacity or time within the Definition of Workflow to absorb variability, handle unexpected disruptions, or enable continuous improvement without compromising the Kanban system’s Throughput. Example: Kanban system members might maintain a Slack by limiting their ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) to 80% of capacity, allowing time to address urgent requests or refine processes without delaying planned work. Slack is a key concept in Lean. -->
- **スラック（Slack）**(19): スラックとは、需要の急増、予期しない作業、あるいは想定外の事態の発生に対応するために、システム内にあえて未稼働のキャパシティを残しておくことである。知識活動におけるカンバンの文脈では、スラックとは、ばらつきを吸収したり、突発的な中断に対処したり、継続的な改善を実現したりするために、カンバンシステムのスループットを損なうことなく、ワークフローの定義内で意図的にキャパシティや時間に余裕をもたせる方針やその配分を指す。例えば、カンバンシステムメンバーが「開始しているが終了していない作業（SNFW）」や「進行中の作業（WIP）」をキャパシティの80%に制限することでスラックを確保し、計画した作業を遅延させることなく、緊急対応やプロセス改善に時間を割けるようにすることがある。スラックは、リーンにおける重要な概念である。
<!-- - **Value divided by Effort:** Estimated Value (usually an educated guess) divided by Estimated Effort (usually an educated guess). Actual Effort and Value tend to be random. Kanban system members should tread carefully before considering this approach. Optionally, consider Risk. -->
<!-- 現時点でこの訳を当てておく -->
- **価値 ÷ 作業量（Value divided by Effort）**: 見積もった価値（通常は経験に基づく推測）を、見積もった作業量（これも通常は経験に基づく推測）で割ったもの。実際の作業量と価値は往々にしてランダムである。このアプローチを検討する際には、カンバンシステムメンバーは慎重になるべきである。必要に応じて、リスクも考慮すること。

<!-- ### Conventions Used in the Context of Knowledge Workd -->
### ナレッジワークにおける用語

<!-- - **Buffer** (16)**:** A buffer is a WIP-limited (or ‘Started but Not Finished Work’ limited) area that holds Work temporarily to smooth Flow and prevent overload, and also functions as a WIP controlled queue. Not to be confused with Slack. Not everyone supports Buffer; more columns can lead to a higher amount of ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP). -->
- **バッファ（Buffer）** (16): バッファとは、一時的な作業を保持してフローを円滑にし、過負荷を防ぐためのWIP制限（あるいは「開始しているが終了していない作業」の制限）のあるエリアである。また、WIPが制御されたキューとしても機能する。ただし、スラックとは混同しないこと。バッファを取り入れない選択肢もある。カラム（列またはステップ）が増えることで「開始しているが終了していない作業（SNFW）」やWIP（進行中の作業）の総量が増える可能性がある。
<!-- - **_Definition of Workflow:_** The explicit shared understanding of Flow among Kanban system members within their context, including but not limited to, _the explicit set of agreements and policies that describe how Work Items are selected, progressed, and ‘finished’ through the workflow’s distinct stages._ -->
- **ワークフローの定義（Definition of Workflow）**: カンバンシステムメンバーが、その状況下で共有するフローに関する明示的な共通理解のこと。これには、*ワークフロー内のそれぞれのステージで作業項目をどのように選定し、進行し、「終了」するのかを記述した一連の明示的な合意事項およびポリシー*が含まれるが、これに限らない。
<!-- - **Explicit policy:** An explicit policy in a Kanban system is a clearly defined and visible rule or guideline that makes assumptions about workflow—such as when Work Items ‘start’ or move—transparent to Kanban system members. These policies should be Visualized on the Kanban board and be easily accessible, ensuring all Kanban system members understand and follow the same process. By making policies explicit, Kanban system members reduce ambiguity, align actions, and support the optimized Flow of Value. -->
- **明示的なポリシー（Explicit policy）**: カンバンシステムにおける明示的なポリシーとは、作業項目を「開始」するタイミングや移動する条件など、ワークフローに関する前提をカンバンシステムメンバーに対して明確に示すものであり、可視化されたルールや指針のことでもある。これらのポリシーは、カンバンボード上で可視化され、カンバンシステムメンバー全員が容易にアクセスできるようにすべきである。これにより、同じプロセスを理解し、遵守できるようになる。ポリシーを明示することで、カンバンシステムメンバーは曖昧さを減らし、行動の整合性を保ち、価値のフローの最適化を推進する。
<!-- - **‘Finished’ (or ‘Completed’):** When the Elapsed Time from ‘Started’ to ‘Finished’ clock stops for a ‘started’ and ‘finished’ pair in a Definition of Workflow. -->
- **「終了（Finished）」（または「完了(Completed)」）**: ワークフローの定義における「開始」と「終了」のひと組において、「開始」から「終了」までの経過時間の計測を止めるタイミングのこと。
<!-- - **Flow:** The (ideally smooth) movement and delivery of Work Items through the Definition of Workflow. A balanced Kanban system sustains Throughput. In an ideal world, Work that entered the system (Knowledge Work), would flow like a river, never stopping, finding the path of least resistance until reaching the customer. Not to be confused with the Definition of Workflow (DoW). In Kanban, Flow \> utilization. -->
- **フロー（Flow）**: ワークフローの定義を通じて、作業項目を（理想的に円滑に）移動し、提供すること。バランスの取れたカンバンシステムは、スループットを持続的に維持する。理想的な世界では、システムに投入された作業（ナレッジワーク）は、川の流れのように決して止まることはなく、最小の抵抗経路を見つけながら顧客に届くまで流れ続ける。ワークフローの定義（DoW）とは混同しないこと。カンバンにおいては、フローはリソースの稼働率よりも重要である。
<!-- - **_kanban:_** _A kanban​ (signboard in Japanese) is a Visual cue that triggers one to select, ‘start,’ or move a Work Item. Nothing should be produced or moved without a kanban signal._ -->
- ***カンバン（kanban）***: *カンバン（日本語で「看板」の意）とは、作業項目を選択し、「開始」し、移動するための視覚的な合図のこと。カンバンによる合図がない限り、作業を始めたり、移動させたりするべきではない*。
<!-- - **Kanban or Kanban system**: The holistic set of concepts in this guide. _Kanban is rooted in the idea of a signaling system (a way to call for Work or inventory in a production system)._   -->
- **カンバン（Kanban）またはカンバンシステム（Kanban system）**: 本ガイドで述べられている一連の概念全体のこと。*カンバンは、作業や在庫を呼び出すための仕組み（生産システムにおけるシグナリングシステム）という考え方に根ざしている*。
  <!-- _When this guide says Kanban, assume a Kanban system._ -->
  *本ガイドでカンバンと記されている場合は、カンバンシステムを指すものと見なす*。
<!-- - **Kanban Board:** A Visual representation of one or more Definitions of Workflow. -->
- **カンバンボード（Kanban Board）**: ひとつ以上のワークフローの定義を視覚的に表現したもの。
<!-- - **Knowledge Work:** The creation, application, or management of information through cognitive processes to solve (often) complex problems, make decisions, or innovate, typically requiring expertise, judgment, and collaboration. Often, Knowledge Work & associated waste are invisible. -->
- **ナレッジワーク（Knowledge Work）**: 情報を創造し、活用し、管理しながら、しばしば複雑な問題を解決したり、意思決定を行ったり、イノベーションを起こしたりするための認知的なプロセスのこと。通常、専門知識、判断力、コラボレーションが求められる。ナレッジワークやそれに伴う無駄はたいていは目に見えないものである。
<!-- - **Iterative:** Work Items are worked in repeated cycles, with each cycle involving revisiting and refining the same Work based on feedback, testing, or new insights. Kanban is not inherently unsuited to creative iterative work, but it may require thoughtful consideration or adaptation. -->
- **反復的またはイテレーティブ（Iterative）**: 作業項目は繰り返しのサイクルで進められ、それぞれのサイクルにおいてフィードバック、テスト、新たなインサイトに基づいて同じ作業を見直し、洗練させていく。カンバンは、本質的に創造的で反復的な作業に適していないというわけではないが、そうした作業に用いるには十分な配慮や工夫が求められる場合がある。
<!-- - **JIT:** Toyota Just-in-Time––Producing only what is needed, when it’s needed, in the amount needed to minimize waste and optimize efficiency. -->
- **JIT（ジャストインタイム）**: トヨタのジャストインタイム（Just-in-Time）—— 必要なものを、必要なときに、必要な量だけを生産することで、無駄を最小限に抑え、効率を最適化する手法。
<!-- - **Measure:** A measure is a raw, unit-specific data point representing a single quantity, such as ‘number of Work Items completed this week’ or ‘time to complete a Work Item,’ serving as a foundational input for tracking Flow performance. Example: Kanban system members record a measure of 10 Work Items completed to date. -->
- **指標（Measure）**: 指標とは、単一の量を表す生の単位固有のデータポイントである。例えば、「今週完了した作業項目の数」や「その作業項目を完了するのにかかった時間」などが該当する。これらはフローのパフォーマンスを継続的に把握するための基本的な情報として機能する。
<!-- - **Metric:** A metric is a quantifiable calculation derived from one or more measures to provide context for workflow performance, such as ‘average Throughput’ or ‘Throughput per week.’ Example: Kanban system members calculate a metric of 4 days average Elapsed Time ‘Started’ to ‘Finished’ by dividing the total time to complete 10 Work Items by the number of Work Items. -->
- **計測指標（Metric）**: 計測指標とは、ワークフローのパフォーマンスを把握するために、ひとつ以上の指標から導き出される定量的な算出結果のこと。例えば、「平均スループット」や「週ごとのスループット」などが該当する。例: カンバンシステムメンバーが、10件の作業項目の完了にかかった合計時間を作業項目の数で割って、「開始」から「終了」までの平均経過時間を4日と算出した場合、それが計測指標となる。
<!-- - **Pull:** Work is selected (whether ‘started’ or ‘not started’ on the Definition of Workflow) only when there is capacity, chosen by Kanban system members, and prevents overload, ideally signaled by a customer, directly or indirectly. -->
- **プル（Pull）**: キャパシティに余力があるときにのみ作業を選択すること。その作業がワークフローの定義により「開始している」か「開始していない」かは問わない。この選択はカンバンシステムメンバーによって行われ、過負荷を防ぐ。理想的には、顧客からの直接的または間接的な合図によって引き起こされる。
<!-- - **Push:** Work is assigned onto Kanban system members or into the Kanban system without considering the current capacity or readiness of Kanban system members to ‘start’ the Work. -->
- **プッシュ（Push）**: 作業を「開始」するための現在のキャパシティや準備状況を考慮せずに、カンバンシステムメンバーに作業が分配されたり、カンバンシステムに作業が投入されたりすること。
<!-- - **Queue:** A queue in Kanban is a waiting area for Work Items, often without strict limits, but it can serve as a Buffer if Work In Progress/Process (WIP) limits (16) or ‘Started but Not Finished Work’ (SNFW) limits are present. -->
- **キュー（Queue）**: カンバンにおけるキューとは、作業項目の待機エリアのこと。通常は厳格な制限は設けないが、WIP制限（進行中の作業制限）やSNFW制限（「開始しているが終了していない作業」制限）がある場合には、バッファとして機能することもある。
<!-- - **Risk:** The chance that something bad could happen. -->
- **リスク（Risk）**: 望ましくないことが起こる可能性のこと。
<!-- - **Stable system:** Put simply, a system that can consistently meet the demand placed upon it. There are more accurate descriptions (7,8,20). Knowledge Work tends to produce a higher range of Work Item sizes than manufacturing work. Unequal sizes do not necessarily lead to higher variation of elapsed times (due to waiting time often being the most significant factor, etc.) or Throughput but can do so (due to external dependencies, etc.). The view in this guide is that approaches designed for manufacturing do not necessarily lack utility in Knowledge Work. -->
- **安定したシステム（Stable system）**: 端的に言えば、与えられた需要に一貫して応えられるシステムのこと。より正確な説明については、(7,8,20)を参照のこと。ナレッジワークでは、製造業と比べて作業項目のサイズのばらつきが大きくなる傾向がある。不均一な作業サイズは、（待ち時間が最大の要因となることなどから）経過時間やスループットに大きなばらつきをもたらすとは限らないが、（外部依存などによって）ばらつきを引き起こすこともある。本ガイドでは、製造業向けに設計されたアプローチがナレッジワークにおいて有用性を欠くわけではないという見解をとっている。
<!-- - **Stakeholder**: An entity, individual, or group responsible for, interested in, or affected by the inputs, activities, and outcomes of the Kanban system. Includes but is not limited to customer, decision-maker, or user. -->
- **ステークホルダー（Stakeholder）**: カンバンシステムのインプット、アクティビティ、アウトカムに対して、責任を持つ、関心を持つ、または影響を受ける個人やグループ、もしくはその他の存在。顧客、意思決定者、ユーザーなどが含まれるが、これらに限らない。
<!-- - **‘Started’:** When elapsed time clocks ‘start’ for a ‘started’ and ‘finished’ pair in a Definition of Workflow. -->
- **「開始（Started）」**: ワークフローの定義における「開始」と「終了」のひと組において、経過時間の計測を「開始」するタイミングのこと。
<!-- - **‘started’ and ‘finished’ pair:** Each of one or many ‘started’ points on a Definition of Workflow should have a matching ‘finished’ point on the same Definition of Workflow. -->
- **「開始」と「終了」のひと組（'started' and 'finished' pair）**: ワークフローの定義における、ひとつ以上のそれぞれの「開始」点には、同じワークフローの定義内に対応する「終了」点が存在しているべきである。
<!-- - **Takt:** The word Takt (English 'tact') is derived from the German word meaning rhythm, cadence, or cycle. Takt is related to keeping time in music. Modern usage of Takt is typically in a manufacturing context. Takt is a foundational measurement in the Toyota Product System and Lean Thinking, used to calculate the capacity required to meet demand in a stable system. Throughput, unlike Takt, which sets the expectation for the ideal pace based on demand, measures actual output per unit of time. Takt also helps achieve a balanced system to meet demand consistently by enabling Kanban system members to determine the capacity needed at each stage of a process. Calculating Takt is challenging in Knowledge Work, as it requires understanding demand in high-variation environments. Not always ideal for Knowledge Work. -->
- **タクト（Takt）**: タクト（英語では「tact」）という語は、リズム、拍子（ケイデンス）、周期（サイクル）を意味するドイツ語に由来し、音楽における拍の取り方に関連している。現代では、主に製造業の文脈で使われる用語である。タクトは、トヨタ生産方式やリーン思考における基本的な指標であり、安定したシステムにおいて需要を満たすために必要なキャパシティを算出するために用いられる。スループットが単位時間あたりの実際のアウトプットを計測するのに対し、タクトは需要に基づいた理想的な作業ペースの期待値を設定するものである。また、プロセスの各ステージで必要なキャパシティをカンバンシステムメンバーが把握できるようにすることで、需要に一貫して応えられるバランスの取れたシステムの実現を可能にする。ナレッジワークにおいてタクトを算出するのは困難であり、ばらつきの大きい環境下で需要を正しく理解する必要があるため、必ずしもナレッジワークに適しているとは限らない。         
     訳注: 英語でもTaktやTakt Timeと記述するのが通常である<!-- tackはこれらとは関係ない単語 -->
<!-- - **Work:** Refers to one or more Work Items, ‘started’, ‘not started’, ‘finished,’ or ‘not finished.’ -->
- **作業（Work）**: ひとつ以上の作業項目のことを指し、「開始している」「開始していない」「終了している」「終了していない」のいずれかの場合を含む。
<!-- - **Work Item:** A Work Item, also referred to as an Item, holds the potential for Value.​ Various terms can be used to describe the different levels of granularity of a Work Item, as long as it has potential for Value. Work Items that do not have potential for Stakeholder Value are potentially wasteful, e.g., people focus on ‘finishing’ subtasks across multiple Work Items rather than focusing on ‘finishing’ one Item at a time. Controlling ‘Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP) for potentially wasteful Items often reduces the collaborative effort and focus to deliver potential Value sooner. Consider the context. -->
- **作業項目（Work Item）**: 作業項目または項目（Item）とは、価値を生み出す可能性をもつものである。作業項目の粒度はさまざまであり、価値の可能性がある限り、さまざまな用語で表現されることがある。ステークホルダーにとっての価値を生み出す可能性がない作業項目は、無駄となるかもしれない。例えば、複数の作業項目にまたがるサブタスクの「終了」に注力し、ひとつの作業項目の「終了」に集中しない場合などが挙げられる。このような無駄になりうる作業項目に対して「開始しているが終了していない作業（SNFW）」や「進行中の作業（WIP）」を制御することで、潜在的な価値の早期提供に向けたコラボレーションや集中が高まることが多い。状況に応じて判断すること。
<!-- - **Work Item Type:** A categorization for a Work Item. Examples include but are not limited to brands, customers, features, bugs, project work, user experience (UX) research, customer experience (CX) research, human-centered design, operational work, problem statements, hypotheses, other research, and experiments. Useful for sense-making. -->
- **作業項目のタイプ（Work Item Type）**: 作業項目の分類のこと。例として、ブランド、顧客、フィーチャー、バグ、プロジェクト作業、ユーザー体験（UX: User Experience）調査、顧客体験（CX: Customer Experience）調査、人間中心設計、運用作業、問題提起、仮説、その他の調査、実験などが挙げられるが、これらに限らない。センスメイキング（意味付けや整理）に役立つ。
<!-- - **Validated Value:** Value confirmed with evidence or observations (ideally both), formally or informally, by Stakeholders; often after one or more rounds of result feedback (and rework), by internal and external Stakeholders. Not everyone supports it. -->
- **検証済みの価値（Validated Value）**: ステークホルダーによって、公式または非公式に、エビデンスや観察（理想的にはその両方）をもとに確認できる価値のこと。多くの場合、内部および外部のステークホルダーによる1回以上の結果に対するフィードバック（および手戻り）を経て、価値が確認に至る。すべての人がこの考え方を支持しているわけではない。
<!-- - **Value**: Either a potential or realized benefit for a Stakeholder. Examples include meeting the needs of the customer, the end-user, the decision-maker, the organization, and the environment. -->
- **価値（Value）**: ステークホルダーにとっての潜在的または実際に得られた恩恵のこと。例として、顧客、エンドユーザー、意思決定者、組織、環境のニーズを満たすことなどが挙げられる。
<!-- - **Visualize, visualization:** Any method to convey ideas effectively, including conceptual clarification, not necessarily only visual. -->
- **可視化（Visualize, Visualization）**: アイデアを効果的に伝えるためのあらゆる方法で、視覚的なものに限らず、概念の明確化なども含む。

<!-- ## References -->
## 参考文献

<!-- References are placed here to inform readers of opportunities for further study. They do not necessarily support the text in this guide: -->
参考文献は、さらなる学習の機会を読者に提供するために掲載している。これらの参考文献は、本ガイドの本文を必ずしも裏付けるものではない。

訳注: 参考文献は翻訳の対象外であり、和訳があるものもあえて記載していない。

1. _Little, J. D. C. (1961). A proof for the queuing formula: L \= λW. Operations Research, 9(3), 383–387. [https://doi.org/10.1287/opre.9.3.383](https://doi.org/10.1287/opre.9.3.383)._  
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
12. _Wikipedia (2025) ‘Kanban (development)’. Available at: [https://en.wikipedia.org/wiki/Kanban\_(development)](https://en.wikipedia.org/wiki/Kanban\_(development))(Accessed: 22 June 2025)._
13. _Kingman, J. F. C. (1961) ‘The single server queue in heavy traffic’, Mathematical Proceedings of the Cambridge Philosophical Society, 57(4), pp. 902–904. doi: 10.1017/S0305004100035783, and the stable URL is [https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37](https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37)._
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


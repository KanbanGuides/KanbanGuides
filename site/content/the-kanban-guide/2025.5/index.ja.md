---
# title: The Kanban Guide (May 2025)
title: カンバンガイド (2025年5月)
# description: The Kanban Guide is the official, minimal reference for Kanban. Clear, stable, and focused, it defines the core practices and principles for managing flow and improving delivery across industries.
description: カンバンガイドは、カンバンに関する公式かつ最小限のリファレンスです。明確で安定しており、焦点が定まった本ガイドは、業界を問わずフローの管理とデリバリーの改善のための中核となるプラクティスと原則を定義しています。
date: 2025-05-01T09:00:00Z
version: 2025.5
keywords:
  - Kanban, カンバン
author:
  - John Coleman
  - Daniel Vacanti
type: guide
# lang: en
lang: ja
mainfont: "Times New Roman"
# mainfont: "Noto Serif JP"
sansfont: "Arial"
# sansfont: "Noto Sans JP"
monofont: "Courier New"
# monofont: "Noto Sans JP"
sitemap:
  priority: 0.6
guide_whatis: |
  # This document aims to be a unifying reference for the community by offering the minimal guidance for Kanban. Depending on the context, various approaches can complement Kanban, allowing it to accommodate the full spectrum of value delivery and organizational challenges.
   本ガイドは、カンバンに関する最小限の指針を提示することで、コミュニティにとっての統一的な参考資料となることを目指している。カンバンは、さまざまなアプローチによって補完することで、価値の提供や組織の課題に関する幅広いニーズに柔軟に適応できるようになる。

  #  This guide has conventions for some terms. They are not meant to replace any other existing definitions but to clarify how they are intended to be applied here.
   本ガイドでは、いくつかの用語について特定の使い方を定めている。これらは既存の定義を置き換えることを意図したものではなく、本ガイドにおける用法を明確にするためのものである。
aliases:
  - /the-kanban-guide/latest
translators:
- name: Tomoharu Nagasawa
  githubUsername: tomoharunagasawa
  url: https://www.linkedin.com/in/tnagasawa/
  role: translator
  founder: true
  weight: 1
---

<!-- ## Preface -->
## 序文

<!-- May 2025 -->
2025年5月

<!-- This document aims to be a unifying reference for the community by offering the minimal guidance for Kanban. Depending on the context, various approaches can complement Kanban, allowing it to accommodate the full spectrum of value delivery and organizational challenges. -->
本ガイドは、カンバンに関する最小限の指針を提示することで、コミュニティにとっての統一的な参考資料となることを目指している。カンバンは、さまざまなアプローチによって補完することで、価値の提供や組織の課題に関する幅広いニーズに柔軟に適応できるようになる。

<!-- This guide has conventions for some terms. They are not meant to replace any other existing definitions but to clarify how they are intended to be applied here. -->
本ガイドでは、いくつかの用語について特定の使い方を定めている。これらは既存の定義を置き換えることを意図したものではなく、本ガイドにおける用法を明確にするためのものである。

<!-- ### Conventions Used -->
### 用語の定義

<!-- **Kanban or Kanban system**: The holistic set of concepts in this guide––specifically as pertains to knowledge work. -->
**カンバン（Kanban）またはカンバンシステム（Kanban system）**: 本ガイドで説明する概念の全体像。特にナレッジワークに関連するもの

<!-- **Stakeholder**: An entity, individual, or group responsible for, interested in, or affected by the inputs, activities, and outcomes of the Kanban system. -->
**ステークホルダー（Stakeholder）**: カンバンシステムのインプット、アクティビティ、アウトカムに対して、責任を持つ、関心を持つ、または影響を受ける個人やグループ、もしくはその他の存在

<!-- **Value**: Either a potential or realized benefit for a stakeholder. Examples include meeting the needs of the customer, the end-user, the organization, and the environment. -->
**価値（value）**: ステークホルダーにとっての潜在的または実際に得られた恩恵。例として、顧客、エンドユーザー、組織、環境のニーズを満たすことが挙げられる

<!-- **Visualize, visualization**: Any method to convey ideas effectively, including conceptual clarification, not necessarily only visual. -->
**可視化（visualize、visualization）**: アイデアを効果的に伝えるためのあらゆる方法で、視覚的なものに限らず、概念の明確化なども含む

<!-- **Risk**: The chance that something bad could happen. -->
**リスク（risk）**: 望ましくないことが起こる可能性  


© 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.

This publication is offered for license under the Attribution ShareAlike license of Creative Commons, accessible at <http://creativecommons.org/licenses/by-sa/4.0/legalcode> and also described in summary form at <http://creativecommons.org/licenses/by-sa/4.0/>, By using this Kanban Guide, you acknowledge that you have read and agree to be bound by the terms of the Attribution ShareAlike license of Creative Commons.

<!-- ## Definition of Kanban -->
## カンバンの定義

<!-- Kanban is a strategy for optimizing the flow of value through a process. It comprises the following three practices working in tandem: -->
カンバンとは、あるプロセスを通じて、価値の流れ（フロー）を最適化するための戦略である。以下の3つのプラクティスが連携して機能する。

<!-- - Defining and visualizing a workflow -->
- ワークフローを定義し可視化する
<!-- - Actively managing items in a workflow -->
- ワークフロー内の項目を主体的に管理する
<!-- - Improving a workflow -->
- ワークフローを改善する

<!-- In their implementation, these Kanban practices are collectively called a Kanban system. Those who participate in the value delivery of a Kanban system are called Kanban system members. -->
これらのカンバンのプラクティスを実装したものを、総称してカンバンシステムと呼ぶ。カンバンシステムの価値提供に参加する人たちを、「カンバンシステムメンバー（Kanban system members）」と呼ぶ。

<!-- ## Why Use Kanban? -->
## カンバンを使う理由

<!-- Central to the definition of Kanban is the concept of flow. Flow is the movement of potential value through a system. As most workflows exist to optimize value, the strategy of Kanban is to optimize value by optimizing flow. Value optimization means striving to find the right balance of effectiveness, efficiency, and predictability: -->
カンバンの定義の中心にあるのはフローの概念である。フローとは、潜在的な価値がシステムを通じて移動することを指す。ほとんどのワークフローが価値を最適化するために存在するように、カンバンの戦略はフローを最適化することで価値を最適化する。価値の最適化とは、効果性、効率性、予測可能性の適切なバランスを追求することを意味する。

<!-- - An effective workflow delivers what stakeholders want when they want it. -->
- 効果的なワークフローは、ステークホルダーが望むものを、望むタイミングで提供する
<!-- - An efficient workflow allocates available economic resources as optimally as possible to deliver value. -->
- 効率的なワークフローは、利用可能な経済資源をできるだけ最適に配分し、価値を提供する
<!-- - A predictable workflow means being able to accurately forecast value delivery within an acceptable degree of uncertainty. -->
- 予測可能なワークフローとは、許容できる不確実性の範囲内で価値の提供を的確に予測できることを意味する

<!-- The strategy of Kanban is to get Kanban system members to ask the right questions sooner as part of a continuous improvement effort in pursuit of these goals. Kanban system members should aim for a sustainable balance among these three elements. Ultimately, the strategy of Kanban is to help you understand trade-offs and manage risk. -->
カンバンの戦略は、これらの目標を追求するための継続的な改善の一環として、カンバンシステムメンバーが適切な問いを早い段階で投げかけるようにすることである。カンバンシステムメンバーは、これら3つの要素の持続可能なバランスを目指すべきである。本質的には、カンバンの戦略とは、トレードオフを理解し、リスクを管理することである。

<!-- Because Kanban can work with virtually any workflow, its application is not limited to any specific industry or context. Professional knowledge workers in finance, utilities, healthcare, and software (to name a few) have benefited from Kanban practices. Kanban can be used at any scale and in most contexts where value is delivered. -->
カンバンは、ほぼすべてのワークフローで機能するため、その適用範囲は特定の業界や状況に限定されない。金融、公益事業、ヘルスケア、ソフトウェアなどのプロフェッショナルなナレッジワーカーが、カンバンのプラクティスから恩恵を受けている。カンバンは、価値を提供するほとんどの状況において、どんな規模でも使うことができる。

<!-- ## Kanban Theory -->
## カンバンの理論

<!-- Kanban draws on established flow theory, including but not limited to systems thinking, lean principles, queuing theory (batch size and queue size), variation, and quality control. Continually improving a Kanban system based on these theories is one way organizations can attempt to optimize the delivery of value. -->
カンバンは、システム思考、リーン原則、待ち行列理論（バッチサイズとキューサイズ）、変動（プロセスのばらつき）、品質管理といった確立されたフロー理論に基づいている。これらの理論に基づいてカンバンシステムを継続的に改善していくことは、組織が価値の提供を最適化しようとする手段のひとつである。

<!-- Many existing value-oriented approaches share the theory upon which Kanban is based. Because of these similarities, Kanban can and should be used to augment those delivery techniques. -->
既存の価値指向なアプローチは、カンバンの基礎となる理論と共通点を持つ。こうした共通性から、カンバンはそれらの提供技法を補完するために活用でき、また活用されるべきである。

<!-- ## Kanban Practices -->
## カンバンのプラクティス

<!-- ### Defining and Visualizing the Workflow -->
### ワークフローを定義し可視化する

<!-- Optimizing flow requires defining what flow means in a given context. The explicit shared understanding of flow among Kanban system members within their context is called a Definition of Workflow (DoW). DoW is a fundamental concept of Kanban. All other elements of this guide depend heavily on how workflow is defined. -->
フローを最適化するためには、その状況におけるフローの意味を定義する必要がある。カンバンシステムメンバーが、その状況内で共有するフローの明示的な共通理解のことを「ワークフローの定義（DoW: Definition of Workflow）」と呼ぶ。DoWは、カンバンの基本概念である。本ガイドの他の要素はすべて、ワークフローがどのように定義されているかに大きく依存している。

<!-- At a minimum, Kanban system members must create their DoW using all of the following elements: -->
少なくとも、カンバンシステムメンバーは以下の要素をすべて用いてDoWを作成する必要がある。

<!-- 1. A definition of the individual units of value that are moving through the workflow. These units of value are referred to as work items (or items). -->
1. ワークフローを移動する個々の価値単位の定義  
	これらの価値単位は、「作業項目（work item）」または、「項目（item）」と呼ばれる。
<!-- 2. A definition for when work items are started and finished within the workflow. Depending on the work item, your workflow may have more than one started or finished point. -->
2. ワークフロー内での作業項目の「開始（started）」と「終了（finished）」のタイミングの定義  
	作業項目によっては、ワークフローにひとつ以上の開始点や終了点がある場合もある。
<!-- 3. One or more defined states that the work items flow through from started to finished. Any work items between a started point and a finished point are considered work in progress (WIP). -->
3. 作業項目が開始から終了までの間のフローを示すひとつ以上の状態の定義  
	開始点（started point）と終了点（finished point）の間にある作業項目は、「進行中の作業（WIP: Work in Progress）」とみなされる。
<!-- 4. A definition of how WIP will be controlled from started to finished. -->
4. 開始から終了までの間のWIPの制御方法の定義
<!-- 5. Explicit policies about how work items can flow through each state from started to finished. -->
5. 作業項目が開始から終了までの各状態をどのように流れるかについての明示的なポリシー（Explicit policy）
<!-- 6. A service level expectation (SLE), which is a forecast of how long it should take a work item to flow from started to finished. The SLE itself has two parts: a period of elapsed time and a probability associated with that period (e.g., "85% of work items will be finished in eight days or less"). The SLE should be based on historical cycle time and, once calculated, should be visualized on the DoW. If historical cycle time data does not exist, a best guess will do until there is enough historical data for a proper SLE calculation. -->
6. サービスレベル期待値（SLE: Service Level Expectation）  
	ひとつの作業項目がフローの開始から終了までにかかると見込まれる時間の予測のこと。SLE自体は、経過時間とその期間で終了する確率の2つの部分からなる（例:「85%の作業項目は8日以内に終了する」）。SLEは、過去のサイクルタイムに基づいて算出され、算出後はDoW上で可視化されるべきである。過去のサイクルタイムのデータが存在しない場合は、適切なSLEを算出するための十分な履歴データが集まるまで、最善の推測で代用することができる。

<!-- The order in which these are implemented is not important as long as they are all adopted. -->
これらがすべて適用される限り、実装の順序は重要ではない。

<!-- Kanban system members often require additional DoW elements, such as values, principles, and working agreements, depending on the Kanban system members' circumstances. The options vary, and there are resources beyond this guide that can help with deciding which ones to incorporate. -->
カンバンシステムメンバーは、その置かれた状況に応じて、価値基準、原則、ワーキングアグリーメントなど、DoWの要素を追加で必要とすることがよくある。その選択肢は多岐にわたり、本ガイド以外にもどの要素を取り入れるべきかを判断するのに役立つ資料がある。

<!-- Kanban system members also often require more than one DoW. Those multiple DoWs could be for multiple groups of Kanban system members, different levels of the organization, etc. While this guide prescribes no minimum or maximum number of DoWs, it encourages establishing a DoW wherever the Kanban system members require connecting flow to value realization. -->
カンバンシステムメンバーが、複数のDoWを必要とすることもよくある。これらの複数のDoWは、複数のカンバンシステムメンバーによるグループ、組織の異なるレベルなどに対応することができる。本ガイドでは、DoWの最小数や最大数を規定していないが、カンバンシステムメンバーがフローと価値の実現を結びつける必要がある場合は、どこであってもDoWを確立することを推奨している。

<!-- The visualization of a DoW is a Kanban board. Making at least the minimum elements of a DoW transparent on a Kanban board is essential to processing knowledge that informs optimal workflow operation and facilitates continuous improvement. -->
DoWを可視化したものは、カンバンボードと呼ばれる。少なくともDoWの最小限の要素をカンバンボード上で透明化することは、最適なワークフローの実現につながる知識を整理し、継続的な改善を促進するために不可欠である。

<!-- There are no specific guidelines for how a visualization should look. Consideration should be given to all aspects of a DoW (e.g., work items, policies) along with any other context-specific factors that may affect how value flows. Kanban system members are limited only by their imagination regarding how they make flow transparent. -->
可視化がどのような形式であるべきかについて、特に決まった指針はない。DoWのあらゆる側面（作業項目やポリシーなど）に加え、価値フローに影響を及ぼす可能性のあるその他の状況固有の要因を考慮する必要がある。どのようにフローの透明性を確保するかは、カンバンシステムメンバーの想像力以外に制限を受けない。

<!-- ### Actively Managing Items in a Workflow -->
### ワークフロー内の項目を主体的に管理する

<!-- Items in the workflow must be managed actively. Active management of items in a workflow can take several forms, including but not limited to the following: -->
ワークフロー内の項目は主体的に管理されなければならない。ワークフロー内の項目を主体的に管理するには、以下を含むいくつかの形式がある（ただし、これらに限定されない）。

<!-- - Controlling WIP. -->
- WIPを制御する
<!-- - Ensuring work items do not age unnecessarily, using the SLE as a reference. -->
- SLEを参考にして、作業項目が不必要に古くならないようにする
<!-- - Unblocking blocked work. -->
- ブロックされている作業を解除する

<!-- A common practice is for Kanban system members to review the active items regularly. This review can occur continuously, at regular intervals, or through a combination of both. -->
カンバンシステムメンバーは、進行中の項目を定期的にレビューするのが一般的である。このレビューは、継続的または定期的に行うことができる。または、その両方を組み合わせて行うことができる。

<!-- Kanban system members must explicitly control the number of work items in a workflow from started to finished. That control can be represented on a Kanban board in any way that Kanban system members deem appropriate. Ideally, the system would operate neither above nor below the agreed upon control. -->
カンバンシステムメンバーは、ワークフローの開始から終了までの作業項目の数を明示的に制御しなければならない。この制御は、カンバンシステムメンバーが適切と判断する任意の方法でカンバンボード上に表現できる。理想的には、システムは合意された制御範囲を超えたり下回ったりしない状態で運用されるべきである。

<!-- An effect of controlling WIP is that it should create a pull system; Kanban system members should start work on an item (pull or select) only when there is a clear signal that there is capacity to do so. When WIP drops below the control set in the DoW, that can be a signal to select new work. Kanban system members should refrain from selecting more than the number of work items into a given part of the workflow beyond the WIP control. -->
WIPを制御することによる効果のひとつは、プルシステムを生み出すことにある。カンバンシステムメンバーは、対応できる余力があるという明確な合図があるときにのみ、作業項目に着手すべきである（これを「プルする」または「選択する」と呼ぶ）。DoWで定められた制限をWIPが下回ったとき、それが新たな作業を選択してよい合図となりうる。カンバンシステムメンバーは、ワークフローの特定の場所において、WIPの制御を超える数の作業項目を選択するのは控えるべきである。

<!-- Controlling WIP helps flow and often improves the Kanban system members' collective focus, commitment, and collaboration. Any acceptable exceptions to controlling WIP should be made explicit as part of the DoW. -->
WIPを制御することは、ワークフローの改善に役立つだけでなく、多くの場合、カンバンシステムメンバーの全体的な集中力、確約（コミットメント）、コラボレーションを高めることにもつながる。WIPを制御する上で許容可能な例外は、DoWの一部として明示しておくべきである。

<!-- ### Improving the Workflow -->
### ワークフローを改善する

<!-- Given an explicit Definition of Workflow, the Kanban system members' responsibility is to continuously improve their workflow to achieve a better balance of effectiveness, efficiency, and predictability. Continual study of the system can guide potential improvements to the DoW. -->
明示的なDoWが存在する前提で、カンバンシステムメンバーには、効果性、効率性、予測可能性のバランスをより適切にするために、ワークフローを継続的に改善していく責任がある。システムを継続的に観察し、検討することで、DoWの改善に向けた手がかりが得られる。

<!-- It is a common practice to review the DoW from time to time to discuss and implement any changes needed. There is no requirement, however, to wait for a formal meeting at a regular cadence to make these changes. Kanban system members can and should make just-in-time alterations as the context dictates. There is also nothing that prescribes improvements to workflow to be small or incremental. If the Kanban system members feel that a significant change is needed, then that is what they should implement. -->
DoWを随時見直し、必要な変更を議論し、実施するのが一般的である。ただし、これらの変更を行うために、定期的な公式ミーティングを待つという決まりはない。カンバンシステムメンバーは、状況に応じて、ジャストインタイムに（適宜その場で）変更を加えることができるし、そうすべきである。また、ワークフローの改善は、必ずしも小さく漸進的でなければならないという決まりもない。カンバンシステムメンバーが大きな変更が必要だと感じたのであれば、それを実施するべきである。

<!-- ## Flow Metrics -->
## フロー指標

<!-- The application of Kanban requires collecting and analyzing a minimum set of flow metrics. They reflect the Kanban system's current health and performance and will help inform decisions about how value is delivered. The four mandatory flow metrics to track in Kanban are: -->
カンバンの適用には、最低限のフロー指標（flow metrics）を収集し、分析することが求められる。これらのフロー指標は、カンバンシステムの現在の健全性とパフォーマンスを反映し、どのように価値を提供するかを判断する上で役立つ。カンバンで追跡すべき4つの必須フロー指標は以下のとおりである。

<!-- - **WIP**: The number of work items started but not finished. -->
- **WIP**: 開始しているが、まだ終了していない作業項目の数
<!-- - **Throughput**: The number of work items finished per unit of time. Note the measurement of throughput is the exact count of work items. -->
- **スループット**（throughput）: 単位時間あたりに終了した作業項目の数。スループットの計測は、作業項目の正確な数であることに注意
<!-- - **Work Item Age**: The elapsed time between when a work item started and the current date. -->
- **作業項目の年齢**（Work Item Age）: 終了していない作業項目の開始してから現在までの経過時間
<!-- - **Cycle Time**: The elapsed time between when a work item started and when a work item finished. -->
- **サイクルタイム**（cycle time）: 作業項目の開始してから終了までの経過時間

<!-- Provided that the Kanban system members use these metrics as described in this guide, they can refer to any of these measures using any other names they choose (e.g., Cycle Time could be Flow Time, Throughput could be Delivery Rate, etc.). -->
カンバンシステムメンバーは、本ガイドで示されているようにこれらの計測指標を使用する限り、これらの指標を他の名前で参照してもよい（例: サイクルタイムは、フロータイムと呼んでもよいし、スループットは、デリバリー率と呼んでもよい、など）。

<!-- For these four mandatory flow metrics, started and finished refer to how the Kanban system members have established those points in their DoW. -->
これらの4つの必須となるフロー指標における「開始」および「終了」という用語は、カンバンシステムメンバーがDoWにおいてどのように定義したかに基づいて解釈するものである。

<!-- In and of themselves, these metrics are meaningless unless they can inform one or more of the three Kanban practices. It is up to the Kanban system members to decide how best to leverage these metrics (e.g., visualize them in charts, assess variation, etc.). -->
これらの計測指標は、それ自体では意味をなさないが、3つのカンバンプラクティスのいずれかに情報を提供できる場合は、意味をなす。これらの計測指標をどう活用するか（例: チャートで可視化する、ばらつきを評価する、など）は、カンバンシステムメンバーが決定する。

<!-- The flow metrics listed in this guide represent only the minimum required for operating a Kanban system. Kanban system members may and often should use additional context-specific measures that assist in making data-informed decisions. -->
本ガイドに記載されているフロー指標は、カンバンシステムの運用に必要最低限のものにすぎない。カンバンシステムメンバーは、データに基づいた意思決定を支援するために、状況固有な追加の指標を用いることができ、また多くの場合、用いるべきである。

<!-- ## Endnote -->
## 最後に

<!-- One can and likely should add other principles, methodologies, and techniques to the Kanban system. Still, the minimum set of practices, metrics, and the spirit of optimizing value must be preserved. -->
カンバンシステムには、他の原則、方法論、技術を追加でき、また多くの場合、追加すべきである。しかし、価値の最適化を目指すという精神とともに、最低限のプラクティス、計測指標は保持されなければならない。

<!-- ## History of Kanban -->
## カンバンの歴史

<!-- The present state of Kanban can be traced to the Toyota Production System (and its antecedents) and the work of people like Taiichi Ohno and W. Edwards Deming. The collective set of practices for knowledge work, now commonly referred to as Kanban, mainly originated on a team at Corbis in 2006. Those practices quickly spread to encompass a large and diverse international community that has continued to enhance and evolve the approach. -->
カンバンの現在の形は、トヨタ生産方式（およびその前身）や大野耐一、W. Edwards Demingといった人たちの仕事にまで起源をたどることができる。現在一般に「カンバン」と呼ばれているナレッジワークのためのプラクティスの集合体は、2006年にCorbis社のあるチームで始まったものである。これらのプラクティスは急速に広まり、現在では多様で国際的な大規模コミュニティによって継続的に強化され、進化し続けている。

<!-- ## Acknowledgments -->
## 謝辞

<!-- In addition to all who helped to develop Kanban over the years, we would like to thank the following individuals specifically for their contributions to this guide: -->
長年にわたりカンバンの発展に寄与してくれたすべての人たちに加えて、本ガイドへの貢献に対して、特に以下の方々に感謝したい。

<!-- Emily Coleman for her inspiration in broadening the definition of value.   -->
- Emily Colemanには、価値の定義を広げるという着想を与えてもらった 
<!-- Julia Wester, Colleen Johnson, Prateek Singh, Christian Neverdal, Magdalena Firlit, Tom Gilb, and Steve Tendon for being insightful reviewers of the early drafts. -->
- Julia Wester、Colleen Johnson、Prateek Singh、Christian Neverdal、Magdalena Firlit、Tom Gilb、Steve Tendonには、初期ドラフトの査読において、鋭いインサイトを提供してもらった

<!-- ### 2025 Adaptations -->
### 2025年の改訂

<!-- To convey intent, conventions were added for: -->

<!-- - Kanban, Kanban system, stakeholder, value, risk, visualize, and visualization -->
- 意図を伝えるために、以下の用語に関して、本ガイドにおける用語の定義を設けた:   
	カンバン、カンバンシステム、ステークホルダー、価値、リスク、可視化
<!-- - Value realization could be for stakeholders, including but not limited to customers -->
- 価値の実現は、顧客を含むがこれに限定されないステークホルダーに対して行われる可能性がある
<!-- - Simpler definition of Kanban, specifically as pertains to knowledge work -->
- カンバンの定義を簡素化し、特にナレッジワークに関する文脈を明確にした
<!-- - Service Level Expectation was moved into the Definition of Workflow section -->
- サービスレベル期待値（SLE）をワークフローの定義のセクションに移動した
<!-- - Less explicit (and hence more flexible) how WIP is controlled -->
- WIPの制御方法をあまり明示しなくすることで、柔軟性を持たせた
<!-- - More explicit about multiple DoWs, variation, connecting flow to value realization -->
- 複数のDoW、ばらつき、フローと価値の実現のつながりについて、より明示的にした
<!-- - Simplified the three practices, and select (items) is mentioned more often -->
- 3つのプラクティスを簡素化した。また「（項目の）選択」という表現を頻繁に使うようにした
<!-- - Kanban Measures renamed to Flow Metrics -->
- 「カンバンの指標」を「フロー指標」という呼び方に変更した
<!-- - More explicit about the flexibility around flow metric names -->
- フロー指標における指標の名前に関する柔軟性について、より明示的にした
<!-- - Deleted reference to immutability of Kanban -->
- カンバンの不変性に関する言及を削除した

<!-- Additional of Japanese Translation -->
以下は、日本語版固有の改訂である。
 - Activelyの訳を「能動的」から「主体的」に変更した

 - blocked workの訳を「妨害された作業」から「ブロックされている作業」に変更した

<!-- ## License -->
## ライセンス
このガイドは、Orderly Disruption LimitedおよびDaniel S. Vacanti, Inc.によって、クリエイティブ・コモンズ 表示 4.0 国際のもとでライセンスされている。  
This work is licensed by Orderly Disruption Limited and Daniel S. Vacanti, Inc. under a Creative Commons Attribution 4.0 International License.

<!-- Addition of Japanese Aknowledgement of translation -->
## 翻訳について

本ガイドは、英語版からの日本語訳である。日本語訳は、長沢智治が担当した。   
    翻訳に関する連絡先: 長沢智治（nagasawa@servantworks.co.jp）

なお、本ガイドの翻訳査読は、以下の方々にお願いした:   
    斎藤紀彦、髙橋博実、仁藤慎平、梅林良太、菅原円、八巻智和（順不同敬称略）

## 用語集
| 英語 | 日本語 |
|------|--------|
|Kanban | カンバン|
|Kanban system |	カンバンシステム
|Kanban system members |	カンバンシステムメンバー
|Kanban board |	カンバンボード
|stakeholders |	ステークホルダー
|value |	価値
|risk |	リスク
|visualized |	可視化
|visualization |	可視化
|workflow |	ワークフロー
|Definition of Workflow（DoW） |	ワークフローの定義
|work item |	作業項目
|item |	項目
|work in progress（WIP） |	進行中の作業
|started |	開始
|finished |	終了
|pull system |	プルシステム
|pull |	プルする
|select |	選択する
|Service Level Expectation（SLE） |	サービスレベル期待値
|Explicit policies |	明示的なポリシー
|flow metrics |	フロー指標
|Throughput |	スループット
|Work Item Age |	作業項目の年齢
|Cycle Time |	サイクルタイム

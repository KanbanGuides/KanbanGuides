---
title: Open Guide to Kanban - In the Context of Knowledge Work
short_title: Open Guide to Kanban
description: The Open Guide to Kanban is a free, community-driven reference for applying Kanban in knowledge work. It defines the core practices, and metrics necessary to improve flow, optimise value delivery, and enhance team sustainability. This guide supports scalable Kanban implementations across diverse industries and complements other agile, lean, and flow-based approaches.
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
  - /open-guide-to-kanban/latest/
---

This work, Open Guide to Kanban, is an adaptation of the [Kanban Guide (May 2025 version)](https://kanbanguides.org/history/kanban-guide-2025/), which is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). The original guide is © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc. Changes were made to the original. Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). _Portions highlighted in italic are © 2025_ Orderly Disruption Limited, licensed under CC BY-SA 4.0. All other content is from © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc., also licensed under CC BY-SA 4.0.

## Preface

This document aims to provide _open_ _and adaptable_ guidance for Kanban _and Flow, drawing on ideas curated from various communities_. _It aims to serve as a coherent reference for various communities in addition to their own content._ Depending on the context, various approaches can complement Kanban, allowing it to accommodate a range of Value delivery and organizational challenges.

_The use of the italics font supports the Creative Commons adaptation notice on the cover page; italics are not for emphasis. The use of a capital letter at the start of a word indicates a convention listed in the appendix of this document, e.g., Value is either a potential or realized benefit for a Stakeholder, including meeting the needs of the customer, the end-user, the decision-maker, the organization, and the environment._

## Definition of Kanban in the Context of Knowledge Work

Kanban is a strategy for optimizing the _Flow_ of _Value_ through a _system_. It is a signaling system to call for Work or inventory. It comprises the following three practices working in tandem:

- Defining and _Visualizing_ a workflow.
- Actively managing _Items_ in a workflow.
- Improving _Flow_.

In their implementation, these Kanban practices are collectively called a Kanban system. Those who participate in the Value delivery of a Kanban system are called Kanban system members.

## Why Use Kanban?

Central to the _understanding_ of Kanban is the concept of _Flow_. _In a Kanban system, Flow_ is the movement of Value through that Kanban system. As most _Kanban_ workflows exist to optimize Value, the strategy of Kanban is to optimize Value by optimizing Flow, which means striving to find the right balance of effectiveness, efficiency, and predictability:

- An effective workflow is one that delivers what stakeholders _desire,_ when they _desire_ it.
- An efficient workflow allocates available _capacity_ optimally to deliver Value.
- A predictable workflow means being able to _reasonably_ forecast Value delivery within an acceptable degree of uncertainty.

The strategy of _a_ Kanban _system_ is to _enable_ Kanban system members to ask the right questions sooner as part of a continuous improvement effort in pursuit of these goals. Kanban system members should aim for a sustainable balance among these three elements. _Kanban is also a way to reduce overburden (excessive workload) and to manage demand so that Work is delivered optimally given the available capacity. It is not perfect, but it should foster constant improvement and an optimized Flow of Value._

_Side benefits are happier Kanban system members, higher quality, and the ability to adapt to demand. A good Kanban system is self-regulating, i.e., the Kanban system signals and adjusts to issues without intervention._

Because Kanban _can_ _Visualize_ virtually any workflow, its application is not limited to any specific industry or context. Professional Knowledge Workers in finance, utilities, healthcare, and software (to name a few), have benefited from Kanban practices. Kanban in most contexts where Value is delivered.

## Kanban Theory

_The Kanban system_ draws on _various approaches and understanding_ including, but not limited to, systems thinking _(5)_, lean principles _(4)_, queuing theory (batch size _(6-7)_ and queue size _(1,13-14)_), variation _(2,11)_, and quality control _(2,8,10)_. Continually improving a Kanban system based on these approaches and understanding is one way organizations can attempt to optimize the delivery of Value. Many existing _Value_\-oriented approaches share the _ideas_ upon which Kanban is based. Because of these similarities, Kanban can be used to augment those delivery approaches.

## Kanban Practices

### Defining and Visualizing the Workflow

Optimizing _Flow_ requires defining what _Flow_ _of Value_ means in a given context, _the (ideally) smooth movement and delivery of potential or (ideally) realized benefits for Stakeholders_. The explicit shared understanding of Flow among Kanban system members within their context is called a Definition of Workflow. _Definition of Workflow_ is a fundamental concept of Kanban. All other elements of this guide depend heavily on how workflow is defined.

_To inform optimal workflow operation and facilitate continuous improvement, at a minimum_, Kanban system members must create their _Definition of Workflow_ using all of the following elements:

1. A definition of the individual units of Value that are moving through the workflow, referred to as _Work Items (or Items)_.
2. _Depending on the Work Item, for at least one coherent ‘started’ and ‘finished’ point pair:_
   - [ ] One or more defined states that the _Work Items_ _Flow_ through from ‘started’ to ‘finished.’
   - [ ] _Work Items_ between the ‘started’ and ‘finished’ points, even if waiting in a Queue or Buffer, are considered:
     - _‘Started but Not Finished Work’ (SNFW) or_
     - _Work in Progress_/_Process_ (WIP).
   - [ ] A definition of how WIP will be controlled from ‘started’ to ‘finished.’
   - [ ] _A set of_ Explicit policies about how _Work Items_ can _Flow_ through each state from ‘started’ to ‘finished’ _defect-free_. _For example, Kanban system members might have a policy that is explicit about fixing any known defects in an Item before moving it to the next state, so that no known defect is passed to a subsequent process._
   - [ ] A _Service Level Expectation_ (SLE): A forecast of how long it should take a _Work Item_ to _Flow_ from ‘started’ to ‘finished.’ _Note that there is no guarantee that what happened in the past will happen in the future._
   - [ ] A _Visualization_ of the _Service Level Expectation_ on the Kanban board.

The order in which these elements are implemented is not important as long as they are all _implemented_. Kanban system members often require additional _Definition of Workflow_ elements, such as values, principles, and working agreements, depending on the _circumstances of the_ Kanban system _members_. _There are resources in the appendix of this guide and elsewhere to help decide on appropriate options_.

Kanban system members also often require more than one _Definition of Workflow_. Those multiple _Definitions of Workflow_ could be for multiple groups of Kanban system members, different levels of the organization, etc. While this guide prescribes no minimum or maximum number of _Definitions of Workflow_, it encourages establishing a _Definition of Workflow_ wherever the Kanban system members require connecting _Flow_ to _Value_.

_Enabling Flow is the act of fostering a smooth and balanced system to create Value. The Definition of Workflow should ensure that the system is balanced to optimize the Flow of Value. Kanban system members accomplish this by improving how they validate that Value was delivered, and eliminating Work that fails to deliver Value._

The _Visualization_ of one _or more_ _Definitions of Workflow_ is _described as_ a Kanban board. There are no specific guidelines for how a _Visualization_ should look. Consideration should be given to all aspects of a _Definition of Workflow_ (e.g., _Work Items_, policies) along with any other context-specific factors that may affect how Value _Flows_.

_In a software team, Kanban might Visualize feature development from idea to deployment. In a marketing team, it might track a campaign from design to launch._

Kanban system members are limited only by their imagination regarding how they make _Flow_ _visible and how they foster purposeful and intentional interactions with the right people at the right time_. _It is recommended to Visualize each step in a workflow to prevent waste from remaining hidden._

### Actively Managing Items in a Workflow

Items in the workflow must be actively managed. _Active management of Items in a workflow can take several forms, including, but not limited to, the following:_

- _Control_ ‘_Started but Not Finished Work’ (SNFW) or Work In Progress/Process (WIP)_.
- _Ensure_ _Work Items_ do not age unnecessarily, using the _Service Level Expectation_ as a reference.
- _Resolve impediments that are causing blocked Work or blocked processes_.

A common practice is for Kanban system members to review the active _Items_ _on a regular basis_. This review can occur continuously or at regular intervals. Kanban system members must explicitly control the number of _Work Items_ in a workflow from ‘started’ to ‘finished,’ directly or indirectly. That control can be represented on a Kanban board in any way that _Kanban system_ members deem appropriate.

_The use of WIP limits (16) in Kanban for Knowledge Work typically indicates that demand can exceed the team’s capacity, so WIP limits (16) are used to regulate and balance the Flow of Work Items and prevent overload._

_In contrast, a Toyota just-in-time (JIT) pull system prevents demand from exceeding supply, as subsequent requests will not be serviced until the previous one has been fulfilled—a self-limiting or self-regulating system designed to synchronize production with actual customer demand and minimize inventory in a stable, predictable manufacturing environment._

_Making only what is needed just-in-time is the cornerstone of the Toyota Production System. The Kanban system in the Toyota Production System pulls exactly what is needed when it is needed._

For Knowledge Work, Kanban system members should start Work on (_select_) an Item only when there is a clear signal that there is capacity to do so. When WIP drops below the control set in the _Definition of Workflow_, that can be a signal to select new work. Kanban system members should refrain from selecting more _Work_ into a given part of the workflow _beyond the relevant WIP control(s)_ _or selecting Work greater than their capacity. When needed, the Work should be split into smaller yet still potentially valuable Items._

_There is no requirement to have a repository of Work Items that are not yet Work In Progress/Process, often referred to as a backlog. A backlog is emergent and can include various stages or aspects of Work preparation. If there is one, there is no need for it to be in a list format or sequenced._

_Ideally, Work should enter the Kanban system guided by policies rather than being assigned to an individual. In the pursuit of managing idle work, not idle people:_

- _The Kanban system members should self-organize around the Work and Definition of Workflow._
- _Kanban system members should ‘start’ Work when they are ready to work on it, bringing in new Work based on how it is being prioritized._
- _Kanban system members––and others outside the Kanban system––should explicitly prevent Work from being pushed to Kanban system members._
- _Beware of re-prioritization of ‘Started but Not Finished Work’ (SNFW) or_  
  _Work In Progress/Process (WIP), as it causes those Items to age (sit idle)_  
  _and leads to longer or less predictable Elapsed Times from ‘Started’ to ‘Finished.’_

_Rightsizing, an optional but recommended practice, refers to assessing whether Work Items fit the Service Level Expectation, or are too big for the Service Level Expectation and therefore require splitting into smaller but still potentially valuable Work Items._

_Rightsizing, in a Knowledge Work context, is based on the assumption that Work Items need to be at or under a maximum size (according to the Kanban system members) but do not necessarily need to be the same size. If a Work Item is so large that it can’t be completed within a reasonable time (e.g., it would break the Service Level Expectation), even after starting it, Kanban system members should consider splitting it into smaller Items that each have the potential to deliver Value. Equally, Work Items can be merged._

_Capacity management often requires more than WIP control._ Controlling WIP helps _Flow_ and often improves the collective focus, commitment, and collaboration _of the Kanban system members_. Any acceptable exceptions to controlling WIP should be _explicitly stated_ as part of the _Definition of Workflow_.

### Improving _Flow_

Given an explicit Definition of Workflow, it is the Kanban system members’ responsibility to continuously improve their _Flow_ _by_ _achieving_ a better balance of effectiveness, efficiency, and predictability. Continual study of the system can guide potential improvements. _Kanban system members often review_ the _Definition of Workflow_ to discuss and _adopt_ _needed_ changes.

_Improvements are_ _often_ _just-in-time_. _Improvements are not limited by their size or scope. Sometimes, improvement is beyond the control or influence of Kanban system members. Purposeful and intentional interactions, cultivating change, and removing Blockers at all levels are key to improvement._

_Better still, people who demonstrate leadership, also known as leaders, Go See, Listen, and really understand to collect the facts to inform decision-making. This is known as Genchi Genbutsu. Leaders do Genchi Genbutsu so often that the truth emerges. Knowledge of what to do is one thing, but purposeful, relentless, iterative, compassionate action toward improvement (incl. shorter feedback loops) is another._

_Kanban favors evolutionary change, but it does not prohibit larger, structural changes, informed by evidence and a clear understanding of the system. Changes should be purposeful and context-driven._

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

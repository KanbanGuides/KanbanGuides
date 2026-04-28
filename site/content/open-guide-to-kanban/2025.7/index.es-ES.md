---
title: Guía Abierta de Kanban - En el Contexto del Trabajo del Conocimiento  
short_title: Guía Abierta de Kanban  
description: La Guía Abierta de Kanban es una referencia gratuita, impulsada por la comunidad, para aplicar Kanban en el trabajo del conocimiento. Define las prácticas básicas y las métricas necesarias para mejorar el flujo, optimizar la entrega de valor y mejorar la sostenibilidad del equipo. Esta guía apoya las implementaciones escalables de Kanban en diversas industrias y complementa otros enfoques ágiles, lean y basados en el flujo.  
keywords:
  - Kanban
  - Guía Abierta de Kanban
  - trabajo del conocimiento
  - optimización de flujos
  - límites de TeC
  - entrega de valor
  - agile
  - lean
  - mejora continua
  - expectativa de nivel de servicio
  - flujo acumulativo
  - rendimiento
  - métricas
  - antigüedad del elemento de trabajo
  - eficiencia del flujo
  - visualización
  - trabajo en curso (TeC)
  - mejora de los procesos
  - tablero kanban
  - definición de flujo de trabajo
  - entrega orientada a resultados  
author:
  - John Coleman
date: 2025-10-30T15:30:00Z
type: guide
forked_from: the-kanban-guide/2025.5
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 1.0
aliases:
  - /es/open-guide-to-kanban/latest/
---

This work, Open Guide to Kanban, is an adaptation of the [Kanban Guide (May 2025 version)](https://kanbanguides.org/history/kanban-guide-2025/), which is licensed under the Creative Commons Attribution-ShareAlike 4.0 International License (CC BY-SA 4.0). The original guide is © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc. Changes were made to the original. Licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). _Portions highlighted in italic are © 2025_ Orderly Disruption Limited, licensed under CC BY-SA 4.0. All other content is from © 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc., also licensed under CC BY-SA 4.0.

## Prefacio

Este documento pretende _proveer_ orientación _abierta y adaptable_ sobre Kanban _y Flujo, a partir de ideas procedentes de diversas comunidades_. _Su propósito es servir de referencia coherente para diversas comunidades como complemento para sus propios contenidos._ Dependiendo del contexto, varios enfoques pueden complementar Kanban, lo que le permite acomodar todo el espectro de entrega de valor y desafíos organizacionales.

_El uso de la letra cursiva respalda el aviso de adaptación de Creative Commons indicado en la portada; la cursiva no es para enfatizar. El uso de mayúsculas al principio de una palabra indica una convención que figura en el apéndice de este documento, p. ej., el Valor es un beneficio real o potencial para un Stakeholder, incluyendo la satisfacción de las necesidades del cliente, el usuario final, el responsable de la toma de decisiones, la organización y el entorno._

## Definición de Kanban en el Contexto del Trabajo del Conocimiento (knowledge work)

Kanban es una estrategia para optimizar el _Flujo de Valor_ a través de un _sistema_. _Es un mecanismo de señalización para requerir Trabajo o inventario_. Comprende las siguientes tres prácticas, que funcionan de manera complementaria:

- Definición y _Visualización_ de un flujo de trabajo (workflow).
- Gestión activa de los _Elementos_ en un flujo de trabajo.
- Mejora del _Flujo_.

En su implementación, estas prácticas Kanban se denominan colectivamente sistema Kanban. Los participantes en la entrega de valor de un sistema Kanban se denominan miembros del sistema Kanban.

## ¿Por qué usar Kanban?

El concepto de _Flujo_ es esencial para _entender_ Kanban. _En un sistema Kanban, el Flujo_ es el movimiento de _Valor_ potencial a través de _ese_ sistema _Kanban_. Dado que la mayoría de los flujos de trabajo _Kanban_ buscan optimizar el _Valor_, la estrategia de Kanban consiste en optimizar este Valor al mejorar el _Flujo, lo que_ significa esforzarse por encontrar el equilibrio adecuado entre eficacia, eficiencia y predictibilidad:

- Un flujo de trabajo eficaz entrega lo que los stakeholders _desean_, cuando ellos lo _desean_.
- Un flujo de trabajo eficiente asigna _la capacidad disponible_ de la forma más óptima posible, para entregar Valor.
- Un flujo de trabajo predecible es capaz de pronosticar _razonablemente_ la entrega de Valor, con un margen de incertidumbre aceptable.

La estrategia de _un sistema Kanban_ consiste en _permitir_ que los miembros del sistema Kanban se hagan las preguntas adecuadas de forma más temprana, como parte de un esfuerzo de mejora continua en pos de estos objetivos. Los miembros del sistema Kanban deben buscar un equilibrio sostenible entre estos tres componentes. _Kanban es también una forma de reducir la sobrecarga (excesiva carga de trabajo) y gestionar la demanda para que el Trabajo se entregue de forma óptima dada la capacidad disponible. No es perfecto, pero debería fomentar la mejora continua y un Flujo de Valor optimizado._

_Los beneficios adicionales son miembros del sistema Kanban más felices, mayor calidad, y capacidad de adaptación a la demanda. Un buen sistema Kanban se autorregula, p. ej. el sistema Kanban identifica y se ajusta a los problemas sin intervención._

Dado que Kanban puede _Visualizar_ prácticamente cualquier flujo de trabajo, su aplicación no se limita a ningún sector o contexto específico. Profesionales del conocimiento (knowledge workers) en áreas como finanzas, servicios públicos, sanidad y software (por mencionar algunas) se han beneficiado de las prácticas de Kanban. Kanban puede utilizarse a cualquier escala y en la mayoría de contextos en los que hay entrega de valor.

## Teoría de Kanban

_El sistema Kanban_ se fundamenta en _varios enfoques y conocimientos_ que abarcan, entre otros, el pensamiento sistémico _(5)_, los principios lean _(4)_, la teoría de colas (tamaño de lote, batch _(6-7)_ y tamaño de cola _(1,13-14)_), la variabilidad _(2,11)_, y el control de calidad _(2,8,10)_. La mejora continua, basada en estos enfoques, de un sistema Kanban, es una forma en que las organizaciones pueden intentar optimizar la entrega de _Valor_. Muchos enfoques orientados al _Valor_ comparten las _ideas_ en las que se basa Kanban. Debido a estas similitudes, Kanban puede y debe ser utilizado para potenciar esas técnicas de entrega.

## Prácticas de Kanban

### Definición y Visualización del Flujo de Trabajo

Optimizar el _Flujo_ requiere definir lo que significa _Flujo de Valor_ en un contexto dado, _el movimiento (idealmente) fluido y entrega de beneficios potenciales o (idealmente) reales a los Stakeholders_. La comprensión explícita y compartida del _Flujo_ entre los miembros del sistema Kanban dentro de su contexto se denomina Definición del Flujo de Trabajo (Definition of Workflow, DoW). La _Definición del Flujo de Trabajo_ es un concepto fundamental de Kanban. Todos los demás componentes de esta guía dependen en gran medida de cómo se define el flujo de trabajo.

_Para informar sobre el funcionamiento óptimo del flujo de trabajo y facilitar la mejora continua,_ como mínimo, los miembros del sistema Kanban deben crear su _Definición del Flujo de Trabajo_ utilizando todos los componentes siguientes:

1. Una definición de las unidades individuales de _Valor_ que se mueven a través del flujo de trabajo. Estas unidades de valor se denominan _Elementos de Trabajo (o Elementos)_.
2. _En función del Elemento de Trabajo, para al menos un par de puntos coherentes de ‘inicio’ y ‘finalización’:_
   - [ ] Uno o más estados definidos por los que _Fluyen_ los _Elementos de Trabajo_ desde que son ‘iniciados’ hasta que son ‘finalizados’ (finished).
   - [ ] Los _Elementos de Trabajo_ entre los puntos de ‘inicio’ y ‘finalización’, incluso aquellos esperando en una Cola o Búfer, se consideran:
     - _‘Trabajo Iniciado pero No Finalizado’ (TINoF) o_
     - _Trabajo en Curso_ (TeC, en inglés WIP).
   - [ ] Una definición de cómo se controlará el TeC desde su ‘inicio’ hasta su ‘finalización’.
   - [ ] _Un conjunto de_ Políticas explícitas (Explicit policies) sobre cómo los Elementos de Trabajo pueden fluir a través de cada estado desde ‘iniciado’ hasta ‘finalizado’ _libres de defectos_. _Por ejemplo, los miembros del sistema Kanban podrían tener una política que sea explícita sobre la corrección de cualquier defecto conocido en un Elemento antes de moverlo al siguiente estado, de modo que ningún defecto conocido se transfiera a un proceso posterior._
   - [ ] Una _Expectativa de Nivel de Servicio_ (service level expectation), ENS (SLE): un pronóstico sobre el tiempo que debería tardar un _Elemento de Trabajo_ en _Fluir_ desde ‘iniciado’ hasta ‘finalizado’. _Ten en cuenta que resultados pasados no garantizan resultados futuros._
   - [ ] Una _Visualización_ de la _Expectativa de Nivel de Servicio_ en el tablero Kanban.

El orden en que se apliquen no es importante, siempre que se _implementen_ todos. Dependiendo de las _circunstancias de los miembros del sistema Kanban, estos_ a menudo requieren componentes adicionales a la _Definición de Flujo de Trabajo_, como valores, principios y acuerdos de trabajo. _Existen recursos en el apéndice de esta guía, y otros lugares, para ayudar a escoger opciones adecuadas_.

Los miembros del sistema Kanban a menudo también requieren de más de una _Definición de Flujo de Trabajo_. Esas múltiples _Definiciones de Flujo de Trabajo_ podrían ser para diferentes grupos de miembros del sistema Kanban, diversos niveles de la organización, etc. Aunque esta guía no prescribe un número mínimo o máximo de _Definiciones de Flujo de Trabajo_, anima a establecer una _Definición de Flujo de Trabajo_ allá donde los miembros del sistema Kanban necesiten conectar _Flujo con Valor_.

_Habilitar el Flujo es el acto de fomentar un sistema fluido y equilibrado para crear Valor. La Definición de Flujo de Trabajo debería garantizar que el sistema esté equilibrado para optimizar el Flujo de Valor. Los miembros del sistema Kanban consiguen esto mejorando el cómo validan la entrega de Valor, y eliminando el Trabajo que no aporta Valor._

La _Visualización_ de una _o más_ _Definiciones de Flujo de Trabajo se describe como_ un tablero Kanban. No hay normas específicas sobre el aspecto que debe tener una _Visualización_. Se deben considerar todos los aspectos de la _Definición de Flujo de Trabajo_ (p. ej. _Elementos de Trabajo_, políticas) junto con cualquier otro factor específico del contexto que pueda afectar a cómo _Fluye_ el _Valor_.

_En un equipo de software, Kanban puede visualizar el desarrollo de una funcionalidad desde la idea hasta su despliegue. En un equipo de marketing, podría seguir una campaña desde el diseño hasta el lanzamiento._

Los miembros del sistema Kanban solo están limitados por su imaginación respecto a cómo hacer _visible el Flujo y cómo fomentar interacciones con intención y propósito, con las personas adecuadas, en el momento oportuno. Se recomienda Visualizar cada paso del flujo de trabajo para evitar encubrir el desperdicio._

### Gestión Activa de los Elementos en un Flujo de Trabajo

Los _Elementos_ en el flujo de trabajo deben gestionarse activamente. La gestión activa de los _Elementos_ en un flujo de trabajo puede adoptar diversas formas, incluidas, entre otras, las siguientes:

- _Controlar el ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o Trabajo en Curso (TeC)_.
- _Asegurarse que los Elementos de Trabajo_ no envejezcan innecesariamente, utilizando la _Expectativa de Nivel de Servicio_ como referencia.
- _Resolver los impedimentos que están causando Trabajo bloqueado o procesos bloqueados_.

Una práctica habitual es que los miembros del sistema Kanban revisen _de forma regular_ los _Elementos_ activos. Esta revisión puede realizarse de forma continua o a intervalos regulares. Los miembros del sistema Kanban deben controlar explícitamente el número de _Elementos de Trabajo_ dentro de un flujo de trabajo, desde su ‘inicio’ hasta su ‘finalización’, _directa o indirectamente_. Ese control puede representarse en un tablero Kanban de la forma que los miembros del sistema Kanban consideren oportuna.

_El uso de límites TeC (WIP limits, 16) en Kanban para Trabajo del Conocimiento suele indicar que la demanda puede exceder la capacidad del equipo, por lo que los límites TeC (16) se utilizan para regular y equilibrar el Flujo de Elementos de Trabajo y evitar la sobrecarga._

_Por el contrario, el sistema de extracción (pull) de Toyota just-in-time (JIT, justo-a-tiempo) evita que la demanda exceda la oferta, ya que las solicitudes posteriores no se atienden hasta que se ha cumplido la anterior: un sistema autolimitado o autorregulado diseñado para sincronizar la producción con la demanda real del cliente y minimizar el inventario en un entorno de fabricación estable y predecible._

_Fabricar sólo lo que se necesita justo-a-tiempo es la piedra angular del Sistema de Producción Toyota. El sistema Kanban del Sistema de Producción Toyota extrae exactamente de lo que se necesita cuando se necesita._

_Para Trabajo del Conocimiento,_ los miembros del sistema Kanban deben empezar a _Trabajar_ en un _Elemento_ (seleccionar) sólo cuando haya evidencia de que hay capacidad para hacerlo. Cuando el TeC cae por debajo del punto de control establecido en la _Definición de Flujo de Trabajo_, puede ser un indicativo para seleccionar nuevo trabajo. Los miembros del sistema Kanban deberían abstenerse de seleccionar más _Trabajo_ en una parte dada del flujo de trabajo _sobrepasando el(los) punto(s) de control del TeC (controlling WIP) pertinente(s), o de seleccionar Trabajo por encima de su capacidad. Cuando sea necesario, el Trabajo debería dividirse en Elementos más pequeños pero aún potencialmente valiosos._

_No es necesario disponer de un repositorio de los Elementos de Trabajo que aún no están En Curso, lo que se conoce como lista de pendientes (backlog en inglés). Un backlog va emergiendo y puede incluir diferentes etapas o aspectos de la preparación del Trabajo. Si existe, no es necesario que esté en formato de lista ni secuenciada._

_Lo ideal es que el trabajo entre en el sistema Kanban guiado por políticas en lugar de ser asignado a un individuo. En busca de gestionar el trabajo inactivo, no las personas inactivas:_

- _Los miembros del sistema Kanban deben autoorganizarse en torno al Trabajo y la Definición del Flujo de Trabajo._
- _Los miembros del sistema Kanban deben ‘iniciar’ Trabajo cuando estén preparados para trabajar en él, incorporando Trabajo nuevo en función de su prioridad._
- _Los miembros del sistema Kanban (y otros ajenos al sistema Kanban) deben evitar explícitamente que se empuje Trabajo a los miembros del sistema Kanban._
- _Cuidado con repriorizar ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o_  
  _Trabajo en Curso (TeC), ya que eso hace que dichos Elementos envejezcan (permanezcan inactivos)_  
  _y conduce a Tiempos transcurridos de ‘Iniciado’ a ‘Finalizado’ más largos o menos predecibles._

_Reajuste, una práctica opcional pero recomendada, se refiere a evaluar si los Elementos de Trabajo se ajustan a la Expectativa de Nivel de Servicio, o son demasiado grandes para la Expectativa de Nivel de Servicio, y por lo tanto requieren ser divididos en Elementos de Trabajo más pequeños pero aún potencialmente valiosos._

_El reajuste, en un contexto de Trabajo del Conocimiento, se basa en el supuesto de que los Elementos de Trabajo deben tener un tamaño igual o inferior a un máximo (acordado por los miembros del sistema Kanban), pero no necesariamente ser del mismo tamaño. Si un Elemento de Trabajo es tan grande que no puede completarse en un plazo razonable (p. ej. si rompiera la Expectativa de Nivel de Servicio), incluso después de iniciarlo, los miembros del sistema Kanban deberían considerar dividirlo en Elementos más pequeños con potencial de aportar Valor. Del mismo modo, los Elementos de Trabajo pueden juntarse._

_La gestión de la capacidad a menudo requiere de algo más que control del TeC._ Controlar el TeC favorece el _Flujo_ y a menudo mejora el enfoque colectivo, el compromiso y la colaboración de los miembros del sistema Kanban. Las excepciones aceptables al control del TeC deben _declararse explícitamente_ como parte de la _Definición de Flujo de Trabajo_.

### Mejorar el _Flujo_

Dada una Definición explícita del Flujo de Trabajo, la responsabilidad de los miembros del sistema Kanban es mejorar continuamente su _Flujo, logrando_ un mejor equilibrio entre eficacia, eficiencia y predictibilidad. El estudio continuo del sistema puede conducir a potenciales mejoras. _Los miembros del sistema Kanban revisan a menudo_ la _Definición de Flujo de Trabajo_ para debatir y _adoptar_ los cambios _necesarios_.

_Las mejoras suelen hacerse en su preciso momento. Las mejoras no están limitadas por su tamaño o alcance. A veces, la mejora escapa al control o la influencia de los miembros del sistema Kanban. Las interacciones con intención y propósito, la promoción de cambios, y la eliminación de Bloqueos a todos los niveles son claves para la mejora._

_Mejor aún, las personas que demuestran liderazgo, también conocidas como líderes, Van a Ver por sí mismos, Escuchan, y entienden de verdad la necesidad de recopilar hechos que fundamenten la toma de decisiones. Es lo que se conoce como Genchi Genbutsu. Los líderes hacen Genchi Genbutsu tan a menudo que la verdad emerge. Saber lo que hay que hacer es una cosa, pero una acción deliberada, constante, iterativa y empática para mejorar (incluido ciclos de retroalimentación más cortos) es otra._

_Kanban favorece el cambio evolutivo, pero no prohíbe cambios estructurales de mayor envergadura, basados en evidencias y en una comprensión clara del sistema. Los cambios deben tener un propósito y estar impulsados por el contexto._

## Optimización de Flujo Basada en Medidas o Métricas Adecuadas

- **Tiempo transcurrido Bloqueado para Elementos Finalizados (TiBEF):** El tiempo acumulado que un único Elemento de Trabajo ‘finalizado’ (o una selección de Elementos ‘finalizados’) pasa en una condición bloqueada desde ‘iniciado’ hasta ‘finalizado,’ pero no en estado de Cola o Búfer. \[medida para un único Elemento, métrica para varios Elementos\]

> [!NOTA]
> La Definición del Flujo de Trabajo debe incluir una política para definir qué es un Bloqueo (en su contexto) y cómo marcarlos.

- **_Tiempo Acumulado en Búfer o Encolado (TABE):_** _El tiempo acumulado que un único Elemento de Trabajo ‘finalizado’ (o una selección de Elementos ‘finalizados’) pasa en estado de Cola o Búfer desde ‘iniciado’ hasta ‘finalizado’. \[medida para un único Elemento, métrica para varios Elementos\]_
- **_Tiempo transcurrido de ‘Iniciado’ a ‘Finalizado’ (TIF):_** El número (normalmente _redondeado) de unidades de tiempo transcurridas (a menudo días naturales) desde_ el momento en que un _Elemento de Trabajo_ es ‘iniciado’ _hasta su_ ‘finalización’. _Solo los Elementos ‘finalizados’ tienen TIF. \[medida\]_
- **Distribución del Flujo:** La Visualización y el análisis de los tipos de Elementos de Trabajo ‘finalizados’ o ‘completados’ a lo largo del tiempo, permitiendo la gestión activa para garantizar un equilibrio adecuado del esfuerzo. \[métrica\]

> [!NOTA]
> La Definición del Flujo de Trabajo debe definir claramente cualquier estado Encolado y en Búfer.

- **_Eficiencia de Flujo:_** La relación entre el tiempo de trabajo activo y el tiempo total que un Elemento o una selección de Elementos pasan dentro del flujo de trabajo entre los puntos de ‘iniciado’ y ‘finalizado’ de una Definición del Flujo de Trabajo, incluyendo los tiempos de espera. _Se expresa en porcentaje. Puede resultar engañoso, ya que el tiempo transcurrido en estados activos puede no corresponderse con tiempo activo real. ((TIF - (TABE + otros tiempos sin-valor-añadido)) / TIF) · 100\. \[métrica\] Un ejemplo de otros tiempos sin-valor-añadido sería el Tiempo transcurrido Bloqueado para Elementos Finalizados_
- **Número de Bloqueos:** El número de impedimentos, parciales o totales, en un momento dado (normalmente el actual), sobre el Flujo de los Elementos de Trabajo desde ‘iniciado’ hasta ‘finalizado’. \[medida\]
- **Eficiencia de Ciclo del Proceso:** Mide la eficiencia del Trabajo de un sistema o sus partes. Se calcula dividiendo el tiempo añadiendo Valor entre el Tiempo de Lanzamiento y multiplicándolo por 100 para obtener un porcentaje. Esto significa que los miembros del sistema Kanban tienen que medir todo el tiempo que añade Valor y todo el tiempo que no lo añade (incluido, entre otros, el tiempo de espera). ((TL-(TABE+ otros tiempos sin-valor-añadido))/TL) · 100\. \[métrica\]
- **_Expectativa de Nivel de Servicio:_** Un pronóstico sobre el tiempo que debería tardar un _Elemento de Trabajo_ en Fluir de ‘iniciado’ a ‘finalizado’. La _Expectativa de Nivel de Servicio_ consta de dos partes: un periodo de tiempo transcurrido y una probabilidad asociada a ese periodo (p. ej. “el 85% de los Elementos de Trabajo estarán ‘finalizados’ en ocho días o menos”). _Se basa en el histórico completo de Tiempos Transcurridos de ‘iniciado’ a ‘finalizado’, en un subconjunto del histórico, o si los datos no existen o son insuficientes, en una conjetura informada. \[métrica\]_
- **‘Trabajo Iniciado pero No Finalizado’ (TINoF)** o **Trabajo en Curso (TeC)** _o **Carga de Flujo**_: _El_ número de _Elementos de Trabajo_ ‘iniciados’ pero no ‘finalizados’. _\[medida\]_
- **Rendimiento** (throughput): El número de _Elementos de Trabajo_ ‘finalizados’ por unidad de tiempo. La medida del rendimiento es el recuento exacto de _Elementos de Trabajo_, _no los ingresos. \[métrica\]_
- **Tiempo de Lanzamiento, también conocido como Tiempo de Entrega a Cliente:** El número (normalmente redondeado) de unidades de tiempo transcurridas (a menudo días/semanas naturales) desde que se recibe la solicitud de un Stakeholder para un único Elemento de Trabajo hasta que el Elemento de Trabajo se entrega al Stakeholder. Es un ejemplo de TIF. \[medida para un único Elemento de Trabajo, métrica para un producto o servicio\]
- **Antigüedad Total de los Elementos de Trabajo (ATET)** o **Tiempo Total transcurrido para Elementos ‘Iniciados’ pero No ‘Finalizados’ (TTEINoF)** **:** El tiempo total transcurrido desde que todos los Elementos de Trabajo en Curso (‘iniciados’ pero no ‘finalizados’) se ‘iniciaron’ hasta un momento especificado, normalmente el actual. \[métrica\]
- **Antigüedad de los Elementos de Trabajo (AET)** (work item age) o **_Tiempo transcurrido para Elementos ‘Iniciados’ pero no ‘Finalizados’ (TEINoF)_** : El _número_ (normalmente _redondeado) de unidades de tiempo transcurrido (a menudo días naturales)_ _desde_ _el momento que un único Elemento de Trabajo ‘no finalizado’_ se ‘inició’ _hasta_ _un momento especificado, normalmente el actual. Al actuar sobre los Elementos relativamente más antiguos, se pueden acortar los ciclos de retroalimentación y el Flujo mejora. \[medida\]_

Las métricas de _Flujo_ _y las medidas_ se aplican a los correspondientes puntos de ‘inicio’ y ‘finalización’ establecidos por los miembros del sistema Kanban en su _Definición de Flujo de Trabajo_. _Si hay múltiples conjuntos de puntos de ‘inicio’ y ‘finalización’, suelen aplicarse varias métricas de flujo y medidas a cada par de ‘inicio’ y ‘finalización’._

_**Si los miembros del sistema Kanban no están seguros de por dónde empezar, esta guía sugiere:**_

_Tiempo de Lanzamiento, y para cada par coherente de ‘iniciado’ y ‘finalizado’:_

- _Una Expectativa de Nivel de Servicio (requerida para al menos un par de ‘inicio’ y ‘finalización’),_
- _Antigüedad de los Elementos de Trabajo o Tiempo transcurrido para Elementos ‘Iniciados’ pero no ‘Finalizados’ (TEINoF),_
- _Tiempo transcurrido de ‘Iniciado’ a ‘Finalizado’ (TIF), y_
- _Rendimiento._

Siempre que los miembros del sistema Kanban utilicen estas métricas _de Flujo_ _y medidas_ tal y como se describen en esta guía, _y sea apropiado para el contexto,_ pueden referirse a cualquiera de estas utilizando cualquier otro nombre que elijan. Corresponde a los miembros del sistema Kanban decidir la mejor manera de _usar_ estas métricas _de Flujo_ _y medidas, así como Visualizarlas en gráficos o evaluar la variación. Se recomienda un enfoque proactivo en resultados, impacto y Valor._

### _Resultados, Impacto y Valor_

_Los miembros del sistema Kanban deberían buscar evidencias de resultados/impacto regularmente, p. ej.:_

- _Los resultados para el cliente podrían centrarse en la entrega de Valor cuantificable a cliente, p. ej. Demanda por Fallos reducida, reducción de costes a largo plazo para el cliente, o trabajos del cliente abordados (18)._
- _Los resultados para el usuario podrían abordar cambios específicos en el comportamiento del usuario que resuelvan problemas o mejoren la experiencia, p. ej. ‘completando’ eficazmente Elementos de Trabajo al menor coste, o mejor usabilidad._
- _Los resultados de los Stakeholders del producto podrían conectar esos cambios de comportamiento con métricas de rendimiento de producto, como tendencias en la adopción, retención y convergencia de clientes del producto, así como las tendencias en la adopción de funcionalidades, métricas de usuarios y de quienes tomen las decisiones, y el Tiempo de Lanzamiento del producto._
- _Impacto en el negocio de los Stakeholder, p. ej. cumplimiento, reducción de costes del negocio a largo plazo, resultados empresariales, tendencias en la cuota de mercado, satisfacción del cliente en el conjunto de los productos, etc._
- _Resultados para los miembros del sistema Kanban, tales como un incremento de la capacidad, teniendo en cuenta por ejemplo, el estado de flujo psicológico (15), la frecuencia de despliegue, las herramientas, las habilidades, la deuda técnica (technical debt), la deuda de experiencia de usuario (UX debt), la deuda de experiencia de cliente (CX debt), la deuda de diseño centrado en el usuario (human-centered-design), la capacidad de dominio técnico, la capacidad de dominio del mercado, la capacidad de dominio del negocio, y un clima/cultura para la mejora neta._

Cualquiera de los enfoques anteriores puede ser de utilidad. Considera además lo siguiente:

- **Demanda por Fallos** (17)**:** Demanda generada por no hacer algo por el cliente o no hacerlo bien. Es un indicador de mejora potencial. Pone de manifiesto dónde se está desperdiciando capacidad debido a errores previos, Trabajo deficiente o malas decisiones. Por ejemplo, un equipo de atención al cliente que recibe llamadas reiteradas debido a instrucciones de facturación poco claras. \[métrica\]
- **Tiempo hasta la Validación de Valor, también conocido como Tiempo hasta el Valor o Tiempo hasta el Resultado:** El _número redondeado de unidades de tiempo transcurridas (a menudo días/semanas naturales) desde que se recibió la petición de un Stakeholder para un Elemento de Trabajo hasta que el Valor es validado. Es un ejemplo de TIF centrado en resultados valiosos y medibles. \[medida\]_
- **Valor Validado:** Un Elemento de Trabajo que alcanza el punto de ‘finalizado’ y entrega el Valor esperado al Stakeholder (incluidos, entre otros, el cliente o el usuario), respetando las políticas explícitas, p. ej. estándares de calidad o experiencia. A menudo incluye evidencias y observaciones.
- **Valor Invalidado:** Un Elemento de Trabajo que alcanza el punto de ‘finalizado’ o es evaluado pero no aporta el Valor esperado, incumpliendo las expectativas definidas en la Definición del Flujo de Trabajo, a menudo requiriendo de retrabajo o rechazo, en base a evidencias y observaciones. Considera el contexto.

_Al medir estos tipos de resultados, impacto, métricas de Valor y medidas de Valor, los miembros del sistema Kanban se aseguran de que no sólo están entregando Trabajo rápidamente (entregables), sino aportando Valor real y mejoras (resultados e impacto) a los Stakeholders, incluidos, entre otros, a clientes y usuarios._

_La aclaración y comprensión de los Elementos de Trabajo debe producirse en el momento oportuno para evitar desperdicios._ Evitar centrarse demasiado en los entregables y poco en los resultados. _Los miembros del sistema Kanban deberían revisar las métricas o medidas de forma proactiva, intencionada, deliberada y regular, y mejorarlas continuamente._

## Apostilla

_Sólo son obligatorias las Prácticas Kanban, los criterios mínimos de la Definición del Flujo de Trabajo, y una selección de métricas o medidas; todo lo demás es opcional._ _Considera el contexto. Los miembros del sistema Kanban deben fomentar el Flujo de Valor humano._

_La retroalimentación a partir de los resultados se refiere a los datos que se obtienen una vez realizados los cambios, ya sea información cuantitativa o cualitativa sobre los resultados, el impacto o incluso cambios en el entorno del mercado. Esta información puede influir en los resultados de Valor para los Stakeholder, así como en las entradas, el esfuerzo, los recursos o los costes venideros. (Nota: Las personas no son ‘recursos’)._

_En la práctica, Kanban es un viaje de aprendizaje y adaptación continua. Comenzando con estas prácticas básicas y mejorando continuamente, los miembros del sistema Kanban pueden alcanzar de forma sostenible un mejor Flujo de Valor. Los miembros del sistema Kanban deben empezar de forma sencilla e ir evolucionando su sistema Kanban a medida que aprenden._

## Historia de Kanban

El origen del actual Kanban se remonta al Sistema de Producción Toyota (y sus antecedentes) y al trabajo de personas como Taiichi Ohno _(9)_. El conjunto colectivo de prácticas para el trabajo del conocimiento, ahora comúnmente denominado _Kanban (12),_ se originó principalmente en un equipo de Corbis en 2006. Esas prácticas se extendieron rápidamente para abarcar una comunidad internacional amplia y diversa que ha seguido mejorando y evolucionando el enfoque.

## Agradecimientos

_Las personas aquí reconocidas, no tienen por qué estar necesariamente de acuerdo con lo que está escrito en este documento, y eso está bien. No obstante, la Guía Abierta de Kanban agradece profundamente a:_

- Todos los que ayudaron a desarrollar Kanban, incluidos los que prefirieron no ser nombrados
- _Los revisores de las versiones de julio 2020 o diciembre 2020 de Kanban Guide: Jean-Paul Bayley, Jose Casal, Colleen Johnson, Todd Miller, Eric Naiburg, Steve Porter, Ryan Ripley, Dave West, Julia Wester, Yuval Yeret, and Deborah Zanke_
- _Los revisores de la versión de Mayo de 2025 de Kanban Guide:_ Magdalena Firlit, Tom Gilb, Colleen Johnson, Christian Neverdal, Prateek Singh, Steve Tendon, and Julia Wester
- _Los revisores de Open Guide to Kanban: Jim Benson, Andy Carmichael, Jose Casal, Magdalena Firlit, Michael Forni, Martin Hinshelwood, Christian Neverdal, Nader Talai, Steve Tendon, and Nigel Thurlow_
- _Influencias: Russell L. Ackoff, Jim Benson, Andy Carmichael, Emily Coleman, John Cutler, W. Edwards Deming, Dominica DeGrandis, Tom Gilb, Joseph M. Juran, Siegfried Kaltenecker, Henrik Kniberg, Klaus Leopold, John Little, Troy Magennis, Taiichi Ohno, Donald G. Reinersten, Sam L. Savage, Walter Shewhart, Nader Talai, Steve Tendon, Nigel Thurlow, and Donald J. Wheeler._

## Apéndice

### Controlando el Trabajo en Curso (Controlling Work In Progress) = Controlando el ‘Trabajo Iniciado pero No Finalizado’

El control del _‘Trabajo Iniciado pero No Finalizado’, también conocido como_ control del TeC, puede representarse en un tablero Kanban de la forma que los miembros _del sistema Kanban_ consideren oportuna, incluidas, entre otras, marcas en las tarjetas, Antigüedad Total de los Elementos de Trabajo o Tiempo Total transcurrido para Elementos ‘Iniciados’ pero No ‘Finalizados’ (TTEINoF), controles de cola, números de control de TeC, o rangos de control de TeC.

_También existen algunas alternativas opcionales ajenas a Kanban, respaldadas por algunas comunidades, como por ejemplo CONWIP(16), DBR Simplificado (16), o DBR(16):_

- **CONWIP (acrónimo de CONstant Work In Progress, Trabajo Constante en Curso)** (16)**:** CONWIP es un sistema de extracción que mantiene un límite total fijo de ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o Trabajo en Curso (TeC) en todo el flujo de trabajo, ‘iniciando’ nuevo Trabajo únicamente cuando un Elemento ‘finalizado’ o ‘completado’ sale, regulando el Flujo con una única restricción para todo el sistema. Ejemplo: Un equipo de soporte de software sólo permite 15 tiques (tickets) abiertos en cualquier momento; cuando se resuelve un tique, puede ‘iniciarse’ uno nuevo. No todo el mundo apoya esta alternativa.
- **DBR** (3,16)**:** Un enfoque avanzado que gestiona la Restricción del Flujo con Búferes previos a la Restricción del Flujo y en las salidas del sistema, maximizando el Rendimiento y al mismo tiempo protegiendo contra la variabilidad en sistemas complejos. Ejemplo: En un grupo de desarrollo de producto, la revisión de UX (Restricción del Flujo primaria) marca el ritmo (en inglés drum, tambor) con un Búfer de diseños previos, un Búfer secundario previo a la aprobación legal evita la sobrecarga, y el Trabajo nuevo solo se libera cuando ambos Búferes tienen capacidad. No todo el mundo apoya esta alternativa.
- **Restricción del Flujo** (16)**:** El cuello de botella con menor capacidad de la Definición del Flujo de Trabajo. Puede haber múltiples cuellos de botella (todos con menos capacidad de la requerida por la demanda), y la Restricción del Flujo es el más limitante. Limita el Rendimiento global del sistema Kanban, determinando el ritmo al que se entrega el Valor. Ejemplo: En un equipo de desarrollo de software, si las pruebas llevan el mayor tiempo y limitan la entrega de funcionalidades, las pruebas son la Restricción del Flujo que marca el ritmo del sistema. En el Trabajo del Conocimiento, los cuellos de botella a menudo muestran comportamientos inesperados y pueden desplazarse por el flujo de trabajo de forma impredecible. Pero a veces los cuellos de botella son persistentes.
- **DBR Simplificado (Drum-Buffer-Rope, Tambor-Búfer-Cuerda)** (3,16)**:** Un método de programación simplificado en el que el Rendimiento del sistema Kanban marca el ritmo del flujo de trabajo, y el Rendimiento actúa como indicador de reabastecimiento del mismo modo que en CONWIP. Supongamos que existe un sistema Kanban que utiliza Drum-Buffer-Rope Simplificado, y la Definición del Flujo de Trabajo está diseñada para gestionar hasta 15 Elementos: con 12 activamente en curso (drum) y un Búfer de 3 Elementos listos para comenzar, se asegura que el Trabajo continua extrayendo ininterrumpidamente del Búfer en caso que alguno de los 12 Elementos encuentre problemas, manteniendo el Flujo con, por ejemplo, 13 en curso y 2 en reserva. La cuerda (rope) avisa para reabastecer cuando se entrega un Elemento, manteniendo el total dentro del límite de 15 Elementos, y el sistema da prioridad a restaurar rápidamente el Búfer si se agota, resolviendo los problemas de sustento de Flujo proactivamente. No todo el mundo apoya esta alternativa.

### Si los miembros del sistema Kanban necesitan priorizar un Elemento de Trabajo a ‘iniciar’

_He aquí algunas técnicas opcionales ajenas a Kanban que algunas comunidades, pero no todas, apoyan:_

- **Clase de Servicio** (21)**:** Un arquetipo para un Elemento de Trabajo o una selección de ellos, tales como, estándar, fecha fija (real y por lo tanto no arbitraria), urgente, o intangible. La elección de la clase de servicio puede reflejar la percepción relativa de Valor, Riesgo o Coste del Retraso. Suele ser útil como dato de entrada para decidir qué Elemento(s) ‘iniciar’ a continuación, en lugar de volver a priorizar los Elementos de Trabajo en Curso (lo cual no es bueno para el Flujo). Propenso a sobrecargar el sistema Kanban cuando se aplica incorrectamente, p. ej. un ‘carril urgente’ podría ser desbancado por un ‘carril urgentísimo’, y entonces empieza a volverse absurdo. Propenso a desequilibrar el Flujo aunque no se aplique mal.
- **Coste del Retraso (por unidad de tiempo)** (7)**:** La tasa de pérdida de Valor por unidad de tiempo para uno o más Elementos, que no debe confundirse con el Coste de Retraso (total). Suele ser útil para decidir qué Elemento(s) se van a ‘iniciar’ a continuación cuando la capacidad lo permita, en lugar de volver a priorizar los Elementos de Trabajo en Curso (lo cual no es bueno para el Flujo). Como la mayoría de datos de entrada para la priorización, a menudo se basa en conjeturas informadas. También puede volverse real a posteriori. Por ejemplo, el Coste del Retraso de un Elemento de Trabajo es de 10.000€ por semana. Los miembros del sistema Kanban deben ser cuidadosos al considerar este enfoque.
- **Reajuste basado en datos** (24-25)**:** A veces es más eficaz que otras opciones, ya que los miembros del sistema Kanban rara vez conocen el esfuerzo o el Valor de antemano. Permite más oportunismo.
- **Coste de Retraso (total)** (7)**:** La pérdida total acumulada durante un periodo de tiempo, para un periodo de retraso específico, para uno o más Elementos. Puede ser real o previsto, y es importante dejar claro a cuál de ellos se hace referencia. Por ejemplo, si el Coste de Retraso para un Elemento de Trabajo es de 10.000€ por semana y se ha retrasado 3 semanas, el Coste de Retraso es 30.000€.
- **Tabla de Estimación de Impacto (TEI)** (22)**:** Evaluar las opciones en función de las expectativas o límites de los Stakeholders.
- **Coste de Oportunidad:** El Valor o beneficio perdido por elegir trabajar en uno o más Elementos de Trabajo sobre otros Elementos de Trabajo potencialmente valiosos debido a una capacidad limitada. Refleja las concesiones realizadas al priorizar dentro de la capacidad en un sistema Kanban, cuando centrarse en uno o varios Elementos de Trabajo significa renunciar a otros que también podrían haber aportado Valor. Los miembros del sistema Kanban suelen utilizar métricas como el Coste del Retraso o Coste de Retraso (total) para cuantificar el Coste de Oportunidad. Dado que el Valor y, por lo tanto, el Coste de Oportunidad es entre difícil de predecir e impredecible, los miembros del sistema Kanban deben ser cuidadosos al intentar este enfoque.
- **Aleatorio:** Puede ser más eficaz que otras opciones, ya que el esfuerzo o el Valor no se conocen de antemano.
- **Opciones Reales** (23)**:** Diferir los compromisos hasta que se disponga de información suficiente, tratando las decisiones como opciones valiosas que caducan, para maximizar la flexibilidad y gestionar el Riesgo.
- **Riesgo:** Haz primero el Elemento más arriesgado. El Riesgo puede incluir la probabilidad de que no se pueda obtener Valor.
- **Trabajo Más Pequeño Primero** (24-25)**:** Seleccione el Elemento de Trabajo con el menor esfuerzo percibido, priorizando los Elementos de Trabajo reajustados sobre otros Elementos de Trabajo. Esto puede acortar los ciclos de retroalimentación y acelerar los resultados. Pero también puede conducir a retrasar el ‘inicio’ de un Elemento de Trabajo de mayor riesgo y tamaño.
- **Holgura** (19)**:** La Holgura consiste en dejar capacidad no utilizada en el sistema para hacer frente a los picos de demanda, el trabajo no planificado o la aparición de circunstancias imprevistas. En un contexto de Kanban para el Trabajo del Conocimiento, es una asignación deliberada o política de reserva de capacidad o tiempo dentro de la Definición del Flujo de Trabajo para absorber la variabilidad, gestionar interrupciones inesperadas o permitir la mejora continua sin comprometer el Rendimiento del sistema Kanban. Ejemplo: Los miembros del sistema Kanban podrían mantener una Holgura limitando su ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o Trabajo en Curso (TeC) al 80% de capacidad, dejando tiempo para atender peticiones urgentes o procesos de refinamiento sin retrasar el trabajo planificado. La Holgura es un concepto clave en Lean.
- **Valor dividido por Esfuerzo:** Valor Estimado (normalmente una conjetura informada) dividido por el Esfuerzo Estimado (normalmente una conjetura informada). El Esfuerzo y el Valor reales tienden a ser aleatorios. Los miembros del sistema Kanban deben tener cuidado antes de considerar este enfoque. Opcionalmente, considera el Riesgo.

### Convenciones Utilizadas en el Contexto del Trabajo del Conocimiento

- **Búfer** (16)**:** Un búfer es un área de TeC (o ‘Trabajo Iniciado pero No Finalizado’) limitado  que retiene Trabajo de forma temporal para agilizar el Flujo y evitar la sobrecarga, y que también funciona como una cola de TeC controlado. No confundir con la Holgura. No todo el mundo apoya el uso de Búfer; más columnas puede dar lugar a una mayor cantidad de ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o Trabajo en Curso (TeC).
- **_Definición del Flujo de Trabajo:_** La comprensión explícita y compartida del Flujo entre los miembros del sistema Kanban dentro de su contexto, incluido, entre otros, _el conjunto explícito de acuerdos y políticas que describen cómo los Elementos de Trabajo se seleccionan, progresan y ‘finalizan’ a través de las distintas fases del flujo de trabajo._
- **Política explícita:** Una política explícita en un sistema Kanban es una regla o directriz claramente definida y visible que establece premisas sobre el flujo de trabajo (como cuándo se ‘inician’ o se mueven los Elementos de Trabajo) de forma transparente para los miembros del sistema Kanban. Estas políticas deberían Visualizarse en el tablero Kanban y ser fácilmente accesibles, asegurando que todos los miembros del sistema Kanban comprenden y siguen el mismo proceso. Al hacer explícitas las políticas, los miembros del sistema Kanban reducen la ambigüedad, alinean las acciones y apoyan el Flujo de Valor optimizado.
- **‘Finalizado’ (o ‘Completado’):** Cuando se detiene el Tiempo Transcurrido desde ‘Iniciado’ hasta ‘Finalizado’ para un par de ‘inicio’ y ‘finalización’ en una Definición del Flujo de Trabajo.
- **Flujo:** El movimiento y la entrega (idealmente fluidos) de Elementos de Trabajo a través de la Definición del Flujo de Trabajo. Un sistema Kanban equilibrado favorece el Rendimiento. En un mundo ideal, el Trabajo que entra en el sistema (Trabajo del Conocimiento), fluiría como un río, sin detenerse nunca, encontrando el cauce con menor resistencia para llegar al cliente. No confundir con la Definición del Flujo de Trabajo (DoW). En Kanban, Flujo \> utilización.
- **_kanban:_** _Un kanban​ (letreto en japonés) es una señal visual que le lleva a uno a seleccionar, ‘iniciar’, o mover un Elemento de Trabajo. Nada debe ser producido o movido sin una señal kanban._
- **Kanban o sistema Kanban**: El conjunto holístico de conceptos de esta guía. _Kanban se arraiga en la idea de un sistema de señalización (una forma de pedir Trabajo o inventario en un sistema de producción)._  
  _Cuando esta guía dice Kanban, asume un sistema Kanban._
- **Tablero Kanban:** Una representación Visual de una o más Definiciones de Flujo de Trabajo.
- **Trabajo del Conocimiento:** La creación, aplicación o gestión de información a través de procesos cognitivos para resolver problemas a menudo complejos, tomar decisiones, o innovar, lo que suele requerir experiencia, juicio y colaboración. A menudo, el Trabajo del Conocimiento y los desperdicios asociados son invisibles.
- **Iterativo:** Se trabaja en los Elementos de Trabajo en ciclos repetibles, con cada ciclo se revisa y perfecciona el mismo trabajo en función de las valoraciones, las pruebas o los nuevos hallazgos. Kanban no es intrínsecamente inadecuado para el trabajo creativo iterativo, pero puede requerir de un meditado estudio o adaptación.
- **JIT:** Toyota Just-in-Time. Producir sólo lo que se necesita, cuando se necesita y en la cantidad necesaria para minimizar el desperdicio y optimizar la eficiencia.
- **Medida:** Una medida es un dato en bruto, con unidad específica, que representa una única cantidad, como el ‘número de Elementos de Trabajo completados esta semana’ o el ‘tiempo para completar un Elemento de Trabajo’, que sirve de entrada básica para monitorizar el desempeño del Flujo. Ejemplo: Los miembros del sistema Kanban registran una medida de 10 Elementos de Trabajo completados hasta la fecha.
- **Métrica:** Una métrica es un cálculo cuantificable derivado de una o más medidas para contextualizar el desempeño del flujo de trabajo, tales como el ‘Rendimiento medio’ o ‘Rendimiento por semana’. Ejemplo: Los miembros del sistema Kanban calculan una métrica de 4 días de Tiempo  Transcurrido medio de ‘iniciado’ a ‘finalizado’ dividiendo el tiempo total para completar 10 Elementos de Trabajo entre el número de Elementos de Trabajo.
- **Extracción:** El Trabajo es seleccionado (ya sea ‘iniciado’ o ‘no iniciado’ en la Definición del Flujo de Trabajo) solo cuando hay capacidad, elegida por los miembros del sistema Kanban, y evitando la sobrecarga, idealmente señalada por un cliente, directa o indirectamente.
- **Empuje:** El Trabajo se asigna a los miembros del sistema Kanban o al sistema Kanban sin tener en cuenta la capacidad actual o disponibilidad de los miembros del sistema Kanban para ‘iniciar’ el Trabajo.
- **Cola:** Una cola en Kanban es un área de espera para Elementos de Trabajo, a menudo sin límites estrictos, pero puede servir como Búfer si existen límites de Trabajo en Curso (TeC) (16) o ‘Trabajo Iniciado pero No Finalizado’ (TINoF).
- **Riesgo:** La posibilidad de que ocurra algo malo.
- **Sistema estable:** En pocas palabras, un sistema que puede satisfacer sistemáticamente la demanda que se le plantea. Hay descripciones más precisas (7,8,20). El Trabajo del Conocimiento tiende a producir mayor gama de tamaños de Elementos de Trabajo que el trabajo de manufactura. Los tamaños desiguales no conducen necesariamente a una mayor variación de los tiempos transcurridos o del Rendimiento (debido a que el tiempo de espera suele ser el factor más importante, etc.), pero puede hacerlo (debido a dependencias externas, etc.). La opinión de esta guía es que los enfoques diseñados para la manufactura no carecen necesariamente de utilidad en el Trabajo del Conocimiento.
- **Stakeholder**: Entidad, individuo o grupo responsable, interesado en (o afectado por) las entradas, actividades y resultados del sistema Kanban. Incluye, entre otros, al cliente, el responsable de la toma de decisiones, o el usuario.
- **‘Iniciado’:** Cuando el reloj de tiempo transcurrido se ‘inicia’ para un par de ‘inicio’ y ‘finalización’ en una Definición del Flujo de Trabajo.
- **Par de ‘inicio’ y ‘finalización’:** A cada punto(s) de ‘inicio’ en una Definición del Flujo de Trabajo le debe corresponder un punto de ‘finalización’ en la misma Definición del Flujo de Trabajo.
- **Takt:** La palabra Takt (en español 'tacto') deriva de la palabra alemana que significa ritmo, cadencia o ciclo. Takt se relaciona con llevar el compás en la música. El uso moderno de Takt suele darse en el contexto de la manufactura. Takt es una medida básica en el Sistema de Producción Toyota y el Pensamiento Lean, se utiliza para calcular la capacidad necesaria para satisfacer la demanda en un sistema estable. El Rendimiento, a diferencia del Takt, que establece la expectativa de ritmo ideal en función de la demanda, mide la producción real por unidad de tiempo. Takt también ayuda a conseguir un sistema equilibrado para satisfacer la demanda de forma consistente, ya que permite a los miembros del sistema Kanban determinar la capacidad necesaria en cada fase de un proceso. Calcular el Takt es un reto en el Trabajo del Conocimiento, ya que requiere comprender la demanda en entornos de alta variabilidad. No siempre es ideal para el Trabajo del Conocimiento.
- **Trabajo:** Se refiere a uno o varios Elementos de Trabajo, ‘iniciado’, ‘no iniciado’, ‘finalizado’, o ‘no finalizado’.
- **Elemento de Trabajo:** Un Elemento de Trabajo, también denominado Elemento, contiene Valor en potencia.​ Se pueden utilizar varios términos para describir los diferentes niveles de granularidad de un Elemento de Trabajo, siempre que tenga potencial de Valor. Elementos de Trabajo que no tienen Valor potencial para los Stakeholders son potencialmente desperdicio, p. ej. centrarnos en ‘finalizar’ subtareas de múltiples Elementos de Trabajo en lugar de centrarnos en ‘finalizar’ un Elemento cada vez. Controlar el ‘Trabajo Iniciado pero No Finalizado’ (TINoF) o Trabajo en Curso (TeC) para Elementos con desperdicio potencial a menudo reduce el esfuerzo de colaboración y hace que nos centremos en entregar Valor potencial de forma temprana. Considera el contexto.
- **Tipo del Elemento de Trabajo:** Una categorización para un Elemento de Trabajo. Los ejemplos incluyen, entre otros, a marcas comerciales, clientes, funcionalidades, errores, trabajo de proyecto, investigación de la experiencia del usuario (UX en inglés), investigación de la experiencia del cliente (CX en inglés), diseño centrado en el usuario (human-centered-design en inglés), trabajo operativo, planteamientos de problemas, hipótesis, otras investigaciones y experimentos. Útil para  contextualizar las decisiones.
- **Valor Validado:** Valor confirmado por los Stakeholders con evidencias u observaciones (idealmente ambas), ya sea formal o informalmente; a menudo después de una o más rondas de retroalimentación (y retrabajo) ante los resultados, por parte de los Stakeholders internos y externos. No todo el mundo apoya esta alternativa.
- **Valor:** Beneficio real o potencial para un Stakeholder. Algunos ejemplos incluyen satisfacer las necesidades del cliente, del usuario final, de los que toman las decisiones, de la organización y del entorno.
- **Visualizar, visualización:** Cualquier método para transmitir ideas de forma efectiva, incluyendo aclaraciones conceptuales, y no necesariamente solo medios visuales.

## Información de la traducción

Esta traducción ha sido realizada por:

- Aitor Fernández-Ceballos | [linkedin.com/in/aitorfcj/](https://www.linkedin.com/in/aitorfcj/)

Revisada por:

- David Zalazar | [linkedin.com/in/david-zalazar-6ba55610b/](https://www.linkedin.com/in/david-zalazar-6ba55610b/)
- Imanol Calo | [linkedin.com/in/imanol-calo-granillo-icg/](https://www.linkedin.com/in/imanol-calo-granillo-icg/)
- Iván Garrido | [linkedin.com/in/ivangarridog/](https://www.linkedin.com/in/ivangarridog)
- Jorge Messina | [linkedin.com/in/jormessina/](https://www.linkedin.com/in/jormessina)
- Luis Chueca | [linkedin.com/in/luischueca/](https://www.linkedin.com/in/luischueca/)

### Glosario y notas de la traducción

Para comodidad del lector se incluye aquí el glosario combinado de la Guia Abierta de Kanban y la Guía Kanban.

| **Español** | **Inglés** | **Notas** |
|--------------|--------------|--------------|
| Coste de Retraso (total) | Delay Cost |--------------|
| Coste del Retraso | Cost of Delay |--------------|
| Demanda por Fallos | Failure Demand | Como en la traducción oficial de Kanban University. |
| Antigüedad del Elemento de Trabajo (AET) | Work Item Age (WIA) |--------------|
| Antigüedad Total de los Elementos de Trabajo (ATET) | Total Work Item Age (TWIA) |--------------|
| Elemento de Trabajo | Work Item |--------------|
| Expectativa de Nivel de Servicio (ENS) | Service Level Expectation (SLE) |--------------|
| Finalizado | Finished | A veces se ha empleado "finalización" para sonar más natural, aún cuando en inglés no cambia. |
| Holgura | Slack | Como en la traducción oficial de Kanban University. |
| Iniciado | Started | A veces se ha empleado "inicio" para sonar más natural, aún cuando en inglés no cambia. |
| Lista de pendientes | Backlog | No se mantiene coherencia con la traducción oficial de la Guía de Scrum por evitar confusión con el concepto informático de LIFO, ni con Kanban University dónde le llaman Opciones. |
| Real / obtención | Realized / realization | Referido al Valor. |
| Pronóstico | Forecast | Como en las traducciones de Scrum.org |
| Pull | Extracción | En otras obras traducido como tracción, extracción, arrastre, jalar, tirar o directamente sin traducir; aunque semánticamente lo más correcto sería "tracción" se usa "extracción" por coherencia con las traducciones ya existentes de Actionable Agile Metrics for Predictability y The Kanban Pocket Guide. |
| Push | Empuje |--------------|
| Punto de control | (noun) Control | Se mantiene "control" como verbo y gerundio. |
| Rendimiento | Throughput | En la traducción oficial de Kanban University le llaman indistintamente Tasa de Entrega. Se han traducido las apariciones de "performance" en el texto como "desempeño" para evitar confusiones. |
| Restricción de Flujo | Flow Constraint |--------------|
| Resultados | Outcomes |--------------|
| Retroalimentación | Feedback |--------------|
| Stakeholder | Stakeholder | O "partes interesadas", la definición del término original es más amplia y está muy extendida, razón por la cual se mantiene.  También traducido como "participantes". |
| Tabla de Estimación de Impacto (TEI) | Impact Estimation Table (IET) |--------------|
| Tiempo Acumulado en Búfer o Encolado (TABE) | Cumulative Queueing or Buffer Time (CQBT) |--------------|
| Trabajo en Curso (TeC) | Work in Progress/Process (WIP) | El término español abarca ambos. Como en las traducciones ya existentes de Actionable Agile Metrics for Predictability y The Kanban Pocket Guide. |
| Trabajo Iniciado pero No Finalizado (TINoF) | Started but Not Finished Work (SNFW) |--------------|
| Reajuste | Rightsizing |--------------|
| Marcar, evidenciar, indicar... | (verb) Signal | Según contexto, rara vez suena natural señalar |
| Tiempo de Lanzamiento (TL) | Time to Market (T2M) |--------------|
| Tiempo hasta la Validación de Valor / Tiempo hasta el Valor | Time to Validated Value / Time to Value (TTV) |--------------|
| Tiempo Total transcurrido para Elementos ‘Iniciados’ pero No ‘Finalizados’ (TTEINoF) | Total Elapsed Time for ‘Started’ but Not ‘Finished’ Items (TETSNFI) |--------------|
| Tiempo transcurrido Bloqueado para Elementos Finalizados (TiBEF) | Blocked Elapsed Time for Finished Items (BETFI) |--------------|
| Tiempo transcurrido de ‘Iniciado’ a ‘Finalizado’ (TIF) | Elapsed Time from ‘Started’ to ‘Finished’ (ETSF) |--------------|
| Tiempo transcurrido para Elementos ‘Iniciados’ pero No ‘Finalizados’ (TEINoF) |  Elapsed Time for ‘Started’ but Not ‘Finished’ Items(ETSNFI) |--------------|

## Referencias

Las referencias se incluyen aquí para informar al lector de oportunidades de estudio adicionales. No respaldan necesariamente el texto de esta guía:

1. _Little, J. D. C. (1961). A proof for the queuing formula: L \= λW. Operations Research, 9(3), 383–387. [https://doi.org/10.1287/opre.9.3.383](https://doi.org/10.1287/opre.9.3.383)._
2. _Deming, W. E. (1986), traducción Nicolau, J., Gozalbes, M. (1989). Calidad, productividad y competitividad: la salida de la crisis. ES: Ediciones Díaz de Santos. (Revisado por pares mediante adopción académica en la gestión de la calidad.)_
3. _Goldratt, E. M. (1990). Theory of Constraints. North River Press. (Revisado por pares mediante adopción académica en investigación operativa.)_
4. _Womack, J. P., & Jones, D. T. (1996), traducción Atmetlla, E. (2012). Lean Thinking: Cómo utilizar el pensamiento Lean para eliminar los despilfarros y crear valor en la empresa. ES: Gestión 2000._
5. _Ackoff, R. L. (1999), traducción Piña, R. (2002). El Paradigma De Ackoff: Una Administración Sistemática. MX: Editorial Limusa._
6. _Hopp, W. J. and Spearman, M. L. (2004) ‘To pull or not to pull: what is the question?’, Manufacturing & Service Operations Management, 6(2), pp. 133–148. [https://doi.org/10.1287/msom.1030.0028](https://doi.org/10.1287/msom.1030.0028)._
7. _Reinertsen, D. G. (2009). The Principles of Product Development Flow: Second Generation Lean Product Development. Redondo Beach, CA: Celeritas Publishing_
8. _Shewhart, W. A. (1931), traducción Nicolau, J., Gozalbes, M. (1997). Control Económico de la Calidad de Productos Manufacturados. ES: Ediciones Díaz de Santos._
9. _Ohno, T. (1988), traducción SAX traductors (1991). El Sistema de Producción Toyota: Más allá de la producción a gran escala. Productivity Press._
10. _Juran, J. M. (1992), traducción Nicolau, J., Gozalbes, M. (1996). Juran y la Calidad por el Diseño. ES: Ediciones Díaz de Santos._
11. _Wheeler, D. J. (1993). Understanding Variation: The Key to Managing Chaos. Knoxville, TN: SPC Press._
12. _Wikipedia (2025) ‘Kanban (desarrollo)’. Disponible en: [https://es.wikipedia.org/wiki/Kanban\_(desarrollo)](<https://es.wikipedia.org/wiki/Kanban_(desarrollo)>) (Visitado el 7 de agosto de 2025)._
13. _Kingman, J. F. C. (1961) ‘The single server queue in heavy traffic’, Mathematical Proceedings of the Cambridge Philosophical Society, 57(4), pp. 902–904. doi: 10.1017/S0305004100035783, y la URL estable es [https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37](https://www.cambridge.org/core/journals/mathematical-proceedings-of-the-cambridge-philosophical-society/article/single-server-queue-in-heavy-traffic/81C55BC00A68FE6D5385638AA0B0AF37)._
14. _Roser, C. (2018) ‘The Kingman Formula – Variation, Utilization, and Lead Time’, AllAboutLean.com, 2 March. Disponible en: [https://www.allaboutlean.com/kingman-formula/](https://www.allaboutlean.com/kingman-formula/) (Visitado el 22 de junio de 2025\)_
15. _Csíkszentmihályi, M. (1990), traducción López, N. (1997). Fluir: Una psicología de la felicidad. Editorial Kairós, Debolsillo, Audible Audio_
16. _Tendon, S. and Müller, W. (2015). Hyper-Productive Knowledge Work Performance: The TameFlow Approach and Its Application to Scrum and Kanban. Plantation, FL: J. Ross Publishing._
17. _Seddon, J. (2019). Failure demand | Vanguard. \[online\] Vanguard-method.net. Available at: [https://vanguard-method.net/library/systems-principles/failure-demand/](https://vanguard-method.net/library/systems-principles/failure-demand/) \[Visitado el 22 de marzo de 2019\]_
18. Christensen, C.M., Hall, T., Dillon, K. and Duncan, D.S., 2016\. Know your customers' 'jobs to be done'. _Harvard Business Review_, 94(9), pp.54-62.
19. DeMarco, T. (2001). _Slack: Getting Past Burnout, Busywork, and the Myth of Total Efficiency_. Broadway Books.
20. Leopold, K. (2017) Little's law and system stability – an interview with Daniel Vacanti. Leanability. Available at: [https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability](https://www.leanability.com/en/blog/2017/08/littles-law-and-system-stability) \[Visitado el 28 de junio de 2025\].
21. Kanban University (2022) La Guía Oficial del Método Kanban V.2 \[Online\]. Disponible en: [https://kanban.university/kanban-guide/#download](https://kanban.university/kanban-guide/#download) (Visitado el 7 agosto de 2025).
22. _Gilb, T. (2005) Competitive Engineering: A Handbook for Systems Engineering, Requirements Engineering, and Software Engineering Using Planguage. Oxford: Elsevier Butterworth-Heinemann. Also available at: [https://bit.ly/TomGilbCompEng](https://bit.ly/TomGilbCompEng)_
23. Maassen, O., Matts, C. and Geary, C. (2013) Commitment: A novel about managing project risk. The Netherlands: Happy About.
24. Vacanti, D. S. (2015), traducción González, U. (2022). Métricas Ágiles Accionables para la Predictibilidad: Introducción. Leanpub.
25. Vacanti, D. S. (2023) Actionable Agile Metrics for Predictability Volume II: Advanced Topics. United States: ActionableAgile Press.

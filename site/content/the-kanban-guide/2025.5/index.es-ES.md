---
title: La Guía Kanban (mayo de 2025)
description: La Guía Kanban es la referencia mínima oficial de Kanban. Clara, estable y focalizada, define las prácticas y principios básicos para gestionar el flujo y mejorar la entrega en todos los sectores.
date: 2025-10-30T15:30:00Z
version: 2025.5
keywords:
  - Kanban
author:
  - John Coleman
  - Daniel Vacanti
type: guide
mainfont: "Times New Roman"
sansfont: "Arial"
monofont: "Courier New"
sitemap:
  priority: 0.6
guide_whatis: |
  Este documento pretende ser una referencia unificadora para la comunidad, que ofrece la orientación mínima sobre Kanban. Dependiendo del contexto, varios enfoques pueden complementar Kanban, lo que le permite acomodar todo el espectro de entrega de valor y desafíos organizacionales.

   Esta guía contiene convenciones para algunos términos. No pretenden sustituir a otras definiciones existentes, sino aclarar cómo deben aplicarse aquí.
aliases:
  - /es-es/the-kanban-guide/latest
---

## Prefacio

Mayo 2025

Este documento pretende ser una referencia unificadora para la comunidad, que ofrece  la orientación mínima sobre Kanban. Dependiendo del contexto, varios enfoques pueden complementar Kanban, lo que le permite acomodar todo el espectro de entrega de valor y desafíos organizacionales.

Esta guía contiene convenciones para algunos términos. No pretenden sustituir a otras definiciones existentes, sino aclarar cómo deben aplicarse aquí.

### Convenciones utilizadas

**Kanban o sistema Kanban**: El conjunto holístico de conceptos de esta guía (específicamente en lo que se refiere al trabajo del conocimiento, knowledge work).

**Stakeholder**: Entidad, individuo o grupo responsable, interesado en (o afectado por) las entradas, actividades y resultados del sistema Kanban.

**Valor**: Beneficio real o potencial para un stakeholder. Algunos ejemplos incluyen satisfacer las necesidades del cliente, del usuario final, de la organización y del entorno.

**Visualizar, visualización**: Cualquier método para transmitir ideas de forma efectiva, incluyendo aclaraciones conceptuales, y no necesariamente solo medios visuales.

**Riesgo**: La posibilidad de que ocurra algo malo.

© 2019-2025 Orderly Disruption Limited, Daniel S. Vacanti, Inc.

This publication is offered for license under the Attribution ShareAlike license of Creative Commons, accessible at <http://creativecommons.org/licenses/by-sa/4.0/legalcode> and also described in summary form at <http://creativecommons.org/licenses/by-sa/4.0/>, By using this Kanban Guide, you acknowledge that you have read and agree to be bound by the terms of the Attribution ShareAlike license of Creative Commons.

## Definición de Kanban

Kanban es una estrategia para optimizar el flujo de valor a través de un proceso. Comprende las siguientes tres prácticas, que funcionan de manera complementaria:

- Definición y visualización de un flujo de trabajo (workflow).
- Gestión activa de los elementos en un flujo de trabajo.
- Mejora del flujo de trabajo.

En su implementación, estas prácticas Kanban se denominan colectivamente sistema Kanban. Los participantes en la entrega de valor de un sistema Kanban se denominan miembros del sistema Kanban.

## ¿Por qué usar Kanban?

El concepto de flujo es esencial en la definición de Kanban. El flujo es el movimiento de valor potencial a través de un sistema. Dado que la mayoría de los flujos de trabajo buscan optimizar el valor, la estrategia de Kanban consiste en optimizar este valor al mejorar el flujo. Optimizar el valor significa esforzarse por encontrar el equilibrio adecuado entre eficacia, eficiencia y predictibilidad:

- Un flujo de trabajo eficaz entrega lo que los stakeholders quieren, cuando ellos lo quieren.
- Un flujo de trabajo eficiente asigna los recursos económicos disponibles de la forma más óptima posible, para entregar valor.
- Un flujo de trabajo predecible es capaz de pronosticar con exactitud la entrega de valor, con un margen de incertidumbre aceptable.

La estrategia de Kanban consiste en lograr que los miembros del sistema Kanban se hagan las preguntas adecuadas de forma más temprana, como parte de un esfuerzo de mejora continua en pos de estos objetivos. Los miembros del sistema Kanban deben buscar un equilibrio sostenible entre estos tres elementos. En última instancia, la estrategia de Kanban radica en ayudarte a entender compromisos y gestionar riesgos.

Dado que Kanban puede funcionar con prácticamente cualquier flujo de trabajo, su aplicación no se limita a ningún sector o contexto específico. Profesionales del conocimiento (Knowledge workers) en áreas como finanzas, servicios públicos, sanidad y software (por mencionar algunas) se han beneficiado de las prácticas de Kanban. Kanban puede utilizarse a cualquier escala y en la mayoría de contextos en los que hay entrega de valor.

## Teoría de Kanban

Kanban se fundamenta en la teoría de flujo, la cual abarcan, entre otros, el pensamiento sistémico, los principios lean, la teoría de colas (incluyendo el tamaño de lote y el tamaño de cola), la variabilidad y el control de calidad. La mejora continua, basada en estos enfoques, de un sistema Kanban, es una forma en que las organizaciones pueden intentar optimizar la entrega de valor.

Muchos enfoques orientados al valor comparten la teoría en la que se basa Kanban. Debido a estas similitudes, Kanban puede y debe ser utilizado para potenciar esas técnicas de entrega.

## Prácticas de Kanban

### Definición y Visualización del Flujo de Trabajo

Optimizar el flujo requiere definir lo que significa flujo en un contexto dado. La comprensión explícita y compartida del flujo entre los miembros del sistema Kanban dentro de su contexto se denomina Definición del Flujo de Trabajo (Definition of Workflow, DoW). La DoW es un concepto fundamental de Kanban. Todos los demás componentes de esta guía dependen en gran medida de cómo se define el flujo de trabajo.

Como mínimo, los miembros del sistema Kanban deben crear su DoW utilizando todos los componentes siguientes:

1. Una definición de las unidades individuales de valor que se mueven a través del flujo de trabajo. Estas unidades de valor se denominan elementos de trabajo (o elementos).
2. Una definición de cuándo se consideran iniciados y finalizados (finished) los elementos de trabajo dentro del flujo de trabajo. Dependiendo del elemento de trabajo, su flujo de trabajo puede tener más de un punto de inicio o finalización.
3. Uno o más estados definidos por los que fluyen los elementos de trabajo desde que son iniciados hasta que son finalizados. Cualquier elemento de trabajo entre un punto de inicio y un punto de finalización se considera trabajo en curso (TeC, en inglés WIP).
4. Una definición de cómo se controlará el TeC desde su inicio hasta su finalización.
5. Políticas explícitas sobre cómo los elementos de trabajo pueden fluir a través de cada estado desde iniciado hasta finalizado.
6. Una expectativa de nivel de servicio (service level expectation), ENS (SLE), que es un pronóstico sobre el tiempo que debería tardar un elemento de trabajo en pasar de iniciado a finalizado. La propia ENS consta de dos partes: un periodo de tiempo transcurrido y una probabilidad asociada a ese periodo (p.ej. "el 85% de los elementos de trabajo estarán finalizados en ocho días o menos"). La ENS debe basarse en el tiempo de ciclo histórico y, una vez calculada, debe visualizarse en la DoW. Si no se dispone de datos históricos de tiempo de ciclo (cycle time), bastará con hacer una estimación aproximada hasta que se disponga de datos históricos suficientes para calcular correctamente la ENS.

El orden en que se apliquen no es importante, siempre que se adopten todos.

Dependiendo de las circunstancias del equipo, los miembros del sistema Kanban a menudo requieren componentes adicionales a la DoW, como valores, principios y acuerdos de trabajo. Las opciones varían, y hay recursos más allá de esta guía que pueden ayudar a decidir cuáles incorporar.

Los miembros del sistema Kanban a menudo también requieren de más de una DoW. Esas múltiples DoWs podrían ser para diversos grupos de miembros del sistema Kanban, diferentes niveles de la organización, etc. Aunque esta guía no prescribe un número mínimo o máximo de DoWs, anima a establecer una DoW allá donde los miembros del sistema Kanban necesiten conectar el flujo con la obtención de valor.

La visualización de una DoW es un tablero Kanban. Hacer transparentes al menos los componentes mínimos de la DoW en el tablero Kanban es esencial para procesar el conocimiento que informa sobre el funcionamiento óptimo del flujo de trabajo y facilita la mejora continua del proceso.

No hay normas específicas sobre el aspecto que debe tener una visualización. Se deben considerar todos los aspectos de la DoW (p.ej. elementos de trabajo, o políticas) junto con cualquier otro factor específico del contexto que pueda afectar a cómo fluye el valor. Los miembros del sistema Kanban solo están limitados por su imaginación respecto a cómo hacer transparente el flujo.

### Gestión Activa de los Elementos en un Flujo de Trabajo

Los elementos en el flujo de trabajo deben gestionarse activamente. La gestión activa de los elementos en un flujo de trabajo puede adoptar diversas formas, incluyendo, pero no limitándose a, las siguientes:

- Control del TeC (controlling WIP).
- Asegurarse que los elementos de trabajo no envejezcan innecesariamente, utilizando la ENS como referencia.
- Desbloquear los elementos de trabajo bloqueados.

Una práctica habitual es que los miembros del sistema Kanban revisen periódicamente los elementos activos. Esta revisión puede realizarse de forma continua, a intervalos regulares, o mediante una combinación de ambas.

Los miembros del sistema Kanban deben controlar explícitamente el número de elementos de trabajo dentro de un flujo de trabajo, desde su inicio hasta su finalización. Ese control puede representarse en un tablero Kanban de la forma que los miembros del sistema Kanban consideren oportuna. Lo ideal sería que el sistema no operase ni por encima ni por debajo del punto de control acordado.

Un efecto de controlar el TeC es que debería crear un sistema de extracción (pull); los miembros del sistema Kanban deben empezar a trabajar en un elemento (extraer, o seleccionar) sólo cuando haya evidencia de que hay capacidad para hacerlo. Cuando el TeC cae por debajo del punto de control definido en la DoW, puede ser un indicativo para seleccionar nuevo trabajo. Dada una parte del flujo de trabajo, los miembros del sistema Kanban deberían abstenerse de seleccionar un número de elementos de trabajo por encima del punto de control del TeC.

Controlar el TeC favorece el flujo y a menudo mejora el enfoque colectivo, el compromiso y la colaboración de los miembros del sistema Kanban. Las excepciones aceptables al control del TeC deben explicitarse como parte de la DoW.

### Mejorar el Flujo de Trabajo

Dada una Definición explícita del Flujo de Trabajo (Dow), la responsabilidad de los miembros del sistema Kanban es mejorar continuamente su flujo de trabajo para lograr un mejor equilibrio entre eficacia, eficiencia y predictibilidad. El estudio continuo del sistema puede conducir a potenciales mejoras de la DoW.

Es una práctica común revisar la DoW de vez en cuando para debatir e implementar cualquier cambio necesario. Sin embargo, no es necesario esperar hasta una reunión formal con una cadencia regular para hacer estos cambios. Los miembros del sistema Kanban pueden y deberían realizar modificaciones oportunas según lo dicte su contexto. Además, no hay nada que prescriba que las mejoras en el flujo de trabajo deban ser pequeñas o incrementales. Si los miembros del sistema Kanban consideran que es necesario un cambio significativo, eso es entonces lo que deberían llevar a cabo.

## Métricas de Flujo

La aplicación de Kanban requiere la recopilación y análisis de un conjunto mínimo de métricas de flujo. Estas son un reflejo de la salud y el rendimiento actuales del sistema Kanban, y ayudarán a tomar decisiones informadas sobre cómo se entrega valor. Las cuatro métricas de flujo obligatorias a monitorizar en Kanban son:

- **TeC**: El número de elementos de trabajo iniciados pero no finalizados.
- **Rendimiento** (throughput): El número de elementos de trabajo finalizados por unidad de tiempo. Ten en cuenta que el rendimiento es el recuento exacto de elementos de trabajo.
- **Antigüedad del Elemento de Trabajo** (work item age): El tiempo transcurrido desde que un elemento de trabajo es iniciado hasta el momento actual.
- **Tiempo de Ciclo**: El tiempo transcurrido desde que un elemento de trabajo es iniciado hasta que es finalizado.

Siempre que los miembros del sistema Kanban utilicen estas métricas tal y como se describen en esta guía, pueden referirse a cualquiera de estas medidas utilizando cualquier otro nombre que elijan (p.ej., Tiempo de Ciclo podría ser Tiempo de Flujo, Rendimiento podría ser Tasa de Entrega, etc.).

Para estas cuatro métricas de flujo obligatorias, iniciado y finalizado se interpretan tal como los miembros del sistema Kanban hayan establecido en su DoW.

Por sí solas, estas métricas carecen de sentido a menos que puedan contribuir a una o más de las tres prácticas de Kanban. Corresponde a los miembros del sistema Kanban decidir la mejor manera de sacar partido a estas métricas (p.ej. visualizarlas en gráficos, evaluar la variación, etc.).

Las métricas de flujo enumeradas en esta guía representan solo el mínimo requerido para operar un sistema Kanban. Los miembros del sistema Kanban pueden, y a menudo deberían, utilizar medidas adicionales específicas del contexto que ayuden a tomar decisiones informadas en base a datos.

## Apostilla

Se pueden y probablemente deban añadirse otros principios, metodologías y técnicas al sistema Kanban. Sin embargo, se debe preservar el espíritu de optimización de valor y el conjunto mínimo de prácticas y métricas.

## Historia de Kanban

El origen del actual Kanban se remonta al Sistema de Producción Toyota (y sus antecedentes) y al trabajo de personas como Taiichi Ohno y W. Edwards Deming. El conjunto colectivo de prácticas para el trabajo del conocimiento, ahora comúnmente denominado Kanban, se originó principalmente en un equipo de Corbis en 2006. Esas prácticas se extendieron rápidamente para abarcar una comunidad internacional amplia y diversa que ha seguido mejorando y evolucionando el enfoque.

## Agradecimientos

Además de todos los que ayudaron a desarrollar Kanban a lo largo de los años, nos gustaría agradecer específicamente a las siguientes personas por sus contribuciones a esta guía:

Emily Coleman por su inspiración a la hora de ampliar la definición de valor.  
Julia Wester, Colleen Johnson, Prateek Singh, Christian Neverdal, Magdalena Firlit, Tom Gilb, y Steve Tendon por su perspicaz revisión de los primeros borradores.

### Adaptaciones 2025

Con el fin de transmitir su intención, se añadieron convenciones para:

- Kanban, sistema Kanban, stakeholder, valor, riesgo, visualizar, y visualización.
- El valor obtenido puede ser para los stakeholders, incluyendo entre otros a los clientes.
- Una definición más sencilla de Kanban, específicamente en lo que se refiere al trabajo del conocimiento.
- La Expectativa de Nivel de Servicio se trasladó a la sección Definición del Flujo de Trabajo.
- Menos explícito (y por tanto más flexible) con respecto a cómo se controla el TeC.
- Más explícito en cuanto a DoWs múltiples, variación y conectar el flujo con la obtención de valor.
- Se han simplificado las tres prácticas y se menciona más a menudo la selección (elementos).
- Métricas de Kanban (Kanban Measures en el original en inglés) renombradas a Métricas de Flujo.
- Más explícito sobre la flexibilidad en torno a los nombres de las métricas de flujo.
- Suprimida la referencia a la inmutabilidad de Kanban.

## Licencia

This work is licensed by Orderly Disruption Limited and Daniel S. Vacanti, Inc. under a Creative Commons Attribution 4.0 International License.

## Información de la traducción

La traducción de la versión 2025.05 ha sido realizada por:

- Aitor Fernández-Ceballos | [linkedin.com/in/aitorfcj/](https://www.linkedin.com/in/aitorfcj/)

Revisada por:

- David Zalazar | [linkedin.com/in/david-zalazar-6ba55610b/](https://www.linkedin.com/in/david-zalazar-6ba55610b/)
- Imanol Calo | [linkedin.com/in/imanol-calo-granillo-icg/](https://www.linkedin.com/in/imanol-calo-granillo-icg/)
- Iván Garrido | [linkedin.com/in/ivangarridog/](https://www.linkedin.com/in/ivangarridog)
- Jorge Messina | [linkedin.com/in/jormessina/](https://www.linkedin.com/in/jormessina)
- Luis Chueca | [linkedin.com/in/luischueca/](https://www.linkedin.com/in/luischueca/)

De los párrafos sin cambios en la versión inglesa desde la versión 2020.12, algunos se han modificado ligeramente y otros se han mantenido tal cual la traducción original de:

- Jose Antonio Molina | <jmolina.correoweb@gmail.com> | [Linkedin.com/in/molina2018/](https://www.linkedin.com/in/molina2018/) |
- Youssef Oufaska | <hola@leanimprovements.es> | [Linkedin.com/in/youfaska/](https://www.linkedin.com/in/molina2018/)

Revisada por:

- Jose Casal | <jose.casal@actineo.xyz> | [https://www.linkedin.com/in/jcasal/](https://www.linkedin.com/in/jcasal/)

### Glosario y notas de la traducción

| **Español** | **Inglés** | **Notas** |
|--------------|--------------|--------------|
| Antigüedad del Elemento de Trabajo | Work Item Age |--------------|
| Elemento de Trabajo | Work Item |--------------|
| Expectativa de Nivel de Servicio (ENS) | Service Level Expectation (SLE) |--------------|
| Finalizado | Finished | A veces se ha empleado "finalización" para sonar más natural, aún cuando en inglés no cambia. |
| Iniciado | Started | A veces se ha empleado "inicio" para sonar más natural, aún cuando en inglés no cambia. |
| Real / obtención | Realized / realization | Referido al Valor. |
| Pronóstico | Forecast | Como en las traducciones de Scrum.org |
| Pull | Extracción | En otras obras traducido como tracción, extracción, arrastre, jalar, tirar o directamente sin traducir; aunque semánticamente lo más correcto sería "tracción" se usa "extracción" por coherencia con las traducciones ya existentes de Actionable Agile Metrics for Predictability y The Kanban Pocket Guide. |
| Punto de control | (noun) Control | Se mantiene "control" como verbo y gerundio. |
| Rendimiento | Throughput | En la traducción oficial de Kanban University le llaman indistintamente Tasa de Entrega. Se han traducido las apariciones de "performance" en el texto como "desempeño" para evitar confusiones. |
| Stakeholder | Stakeholder | O "partes interesadas", la definición del término original es más amplia y está muy extendida, razón por la cual se mantiene. También traducido como "participantes". |
| Tiempo de Ciclo | Cycle Time |--------------|
| Trabajo en Curso (TeC) | Work in Progress (WIP) | Como en las traducciones ya existentes de Actionable Agile Metrics for Predictability y The Kanban Pocket Guide. |

---
layout: post
title: "Construyendo dataspot: Lecciones desde la Detección de Fraude Real"
date: 2025-01-24
categories: [deteccion-fraude, ciencia-datos, codigo-abierto]
tags: [python, seguridad, algoritmos, analisis-datos]
author: Elio Rincón
lang: es
description: "La historia detrás de crear dataspot - una librería open-source nacida de desafíos reales de detección de fraude y noches sin dormir pensando en patrones de datos."
---

# Construyendo dataspot: Lecciones desde la Detección de Fraude Real

*Cómo obsesionarme con patrones de fraude llevó a una herramienta open-source que encuentra concentraciones de datos*

---

## La Obsesión Comienza

Creo que detectar fraude es una de las tareas más interesantes y apasionantes que existe.

Durante mi tiempo liderando el área de operaciones de riesgo, pude validar que siempre era muy interesante saber **cómo** o **qué** hicieron para hacer fraude. Los casos eran infinitamente creativos:

- **Ingeniería social** - Solicitando al CEO directamente que le activaran productos o que le cambiaran configuraciones para poder pasar más transacciones
- **Ataques para librarse de impuestos** - Pagando con tarjetas de terceros para sumar descuentos al momento de pagar impuestos, aprovechándose de promociones
- **Corrupción interna** - Intentando sobornar a personas dentro de la empresa para que activaran empresas fraudulentas
- Entre muchos otros casos...

Pero durante mucho tiempo pensé en cómo hacer para detectar un fraude, **algún punto de partida debe tener**, algún truco.

Lo estuve pensando durante mucho tiempo, mientras dormía, mientras comía, mientras hacía otras cosas. **Tiene que haber algo.**

## El Momento Eureka

La revelación que lo cambió todo: *Tengo que ver concentraciones.*

Sin embargo, debo decir que **no todas las concentraciones o anomalías son fraude**. Pero **sí todos los fraudes tienen alguna concentración o anomalía en él**.

Al escuchar durante mucho tiempo sobre esto, decía "por ahí debe haber algo pero que no sea tan complicado ni que sea tan difícil de implementar."

Hasta que un día dije: **"¡Claro! Esto puede ayudar."** Y pensé en el algoritmo de dataspot.

## El Algoritmo: Hilos e Inspiración Cuántica

El algoritmo como tal, en realidad lo pensé como **hilos agrupándose** - recuerdo haber escuchado algún documental sobre física cuántica y teoría de cuerdas.

No fue instantáneo, soy un poco lento a veces jajaja.

Pero se me quedó la idea, y decía: "Si puedo hacer que algo se acumule que por su naturaleza es así, porque son concentraciones. Ahora ¿cómo represento esto?"

Pensé otros días más sobre esto, ya estaba cerca. Hasta que dije: **"¡Claro! Usando los paths de los JSON."** Si es el mismo JSON entonces tienen el mismo path. Ahora si casi que son similares entonces el path se va a parecer mucho y **pum**.

Empecé a probar manualmente hasta que entendí que algo tenía entre manos.

Para explicar mejor el algoritmo, pueden ver este link que lo refleja claramente: [Visualización del Algoritmo](https://frauddi.github.io/dataspot/algorithm-dataspot.html)

Para más info, pueden visitar la página oficial de GitHub acá: [Documentación de dataspot](https://frauddi.github.io/dataspot/)

## Desarrollo en Silencio

Lo estuve probando en silencio sin decir nada durante un tiempo, y de hecho hasta un frontend para dibujar los nodos y la data de forma más fácil de ver hice.

Debo decir, que fue una tool que utilicé tanto como para:
- **Evaluar y detectar fraude**
- **Ayudar al equipo** a ver qué pasaba en algunos casos complicados

Creo que es una herramienta que puede ayudar mucho a visualizar y darte mucha idea de lo que puede estar ocurriendo.

No es una navaja suiza que soluciona todos los problemas, pero sí creo que es una buena idea para ayudarte a encontrar problemas, visualizar claramente concentraciones y ayudar a detectar fraude. Es una de esas tools para tener en tu caja de herramientas para usar cuando toque.

## Desafíos Técnicos

Crear estas herramientas viene con desafíos técnicos reales:

### Performance: Manejar Miles de JSONs
Procesar datasets grandes sin que demore una eternidad era crucial. Dentro de performance siempre al representar la data como un árbol, lidias con:
- **Complejidad de recursión**
- **Notación O** 
- **For anidados**
- **Visualización**: Representar la Data de Forma Visible

Aquí la forma de pensar en cómo diseñarla de forma de afectar lo menos posible todo esto.

## El Viaje Iterativo

El desarrollo fue algo iterativo, paso a paso. Sacando más cosas y detectando oportunidades de mejoras, corrigiendo bugs al paso.

Nunca la definí como una herramienta open-source, o pues puede que sí. Pero por eso al principio quizás no la definí como un proyecto como tal. Con todos los juguetitos: pruebas unitarias, pruebas de carga, API, estructura, base de datos, etc.

Luego de un tiempo, yo sentí que esa era una herramienta que podía ayudar a otras personas como siento que me había ayudado a mí. Por eso decidí realizar el proyecto oficial y sacarla.

Además de que siempre quise hacer un proyecto open-source, y pues, puede que este sí sea uno de esos sueños por cumplir.

Ya había intentado con alguno de prueba, pero que quedó un poco en el olvido. Ya no recuerdo ese código ni dónde está jajaja. Liberada en Enero de 2018: [eprocess en PyPI](https://pypi.org/project/eprocess/)

## Mirando Hacia Adelante

En fin, es un proyecto que me parece súper interesante, voy a seguir dándole mantenimiento de a poco.

Invito a todo el que pueda/quiera a aportar ideas, mejoras, correcciones al código, siempre van a ser bienvenidos :)

---

**dataspot** está disponible en [GitHub](https://github.com/frauddi/dataspot) y [PyPI](https://pypi.org/project/dataspot/).

*¿Has trabajado con detección de fraude? Me encantaría escuchar sobre tus experiencias y patrones que hayas descubierto.*
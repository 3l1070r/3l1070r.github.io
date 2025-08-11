---
layout: single
title: "Mi POC con MCP: Conectando Claude con una API de Prueba"
date: 2025-08-10
categories: [posts, mcp, claude, api, poc]
tags: [python, mcp, claude, fastapi, integracion]
author: Elio Rincón
lang: es
permalink: /es/2025/08/10/mcp-claude-poc.html
description: "Experimentando con Model Context Protocol para conectar Claude Desktop con APIs externas. Un POC que muestra el potencial de las interfaces conversacionales."
---

POC con MCP: Conectando Claude con una API de Prueba

---

## Como empezó todo

Eran las 4 AM y por alguna razón no podía dormir. Estaba scrolleando cuando vi un video sobre MCP (Model Context Protocol) y se me prendió el foco.

En el video mostraban cómo Claude Desktop puede conectarse directamente con APIs externas. Se me ocurrieron varias ideas y dije "voy a crear un POC sobre esto a ver qué onda".

## Por qué me llamó la atención

Me parece que MCP es realmente útil y puede ser una revolución en la forma en que los LLMs trabajan con backends. Básicamente ofrece un lenguaje de consulta natural sin ser técnico.

Esta herramienta puede ayudar a los clientes de un servicio a:

- Explotar su data de forma natural
- Generar resúmenes automáticos
- Encontrar fallos en sus sistemas
- Mapear información compleja
- Exportar datos específicos

También me parece que puede servir excelentemente como un backoffice super potente para facilitar la operación de cualquier empresa, además de ofrecer resultados rápidos y mejorar el soporte a los usuarios.

## El POC que armé

Para probar el concepto, creé una API de prueba básica que maneja charges (como un sistema de pagos). Nada complejo, solo endpoints para crear, listar y actualizar charges.

La idea era ver si realmente podía decirle a Claude "crea un charge de $100 para juan@email.com" y que se ejecute automáticamente contra mi API de prueba.

## Mi setup

El flujo que armé fue simple:

- Yo le digo algo a Claude
- Claude identifica qué herramienta usar
- Un script (MCP Server) traduce el comando a HTTP requests
- Mi API de prueba procesa la petición

Necesité tres componentes:

1. La API de prueba (FastAPI básica)
2. Un MCP Server que traduce comandos de Claude a HTTP
3. Configurar Claude Desktop para reconocer mi servidor

## Los tropiezos del proceso

**Primer problema:** Configuré `python` pero en Mac necesitas `python3` o mejor un script bash.

**Segundo problema:** Usé rutas relativas y Claude no las reconoce. Necesitas rutas absolutas.

**Tercer problema:** Instalé dependencias global pero Claude usaba otro Python. Terminé con virtual environment.

**Cuarto problema:** Mi API esperaba query parameters pero enviaba JSON body. Típico error de documentación.

## Cómo funciona en la práctica

Una vez funcionando, el flujo es bastante natural:

- "Crea un charge de $150 para maria@empresa.com"
- "Muéstrame todos los charges pendientes"
- "Actualiza el charge de María a completado"

Claude mantiene contexto, así que entiende referencias como "el charge de María".

## Lo que me emocionó del experimento

**Para clientes finales:** Imagínate darle a tus usuarios la capacidad de consultar su data con lenguaje natural. "Muéstrame mis ventas de octubre" o "Exporta todos mis clientes activos".

**Para backoffice:** En lugar de navegar interfaces complejas, el equipo puede decir "Cancela todas las suscripciones vencidas de la región norte" y que se ejecute automáticamente.

**Para soporte:** Los agentes pueden resolver casos complejos conversando con el sistema en lugar de buscar en múltiples pantallas.

## Las limitaciones que encontré

**Solo para operaciones simples:** Para workflows complejos sigue siendo mejor una UI dedicada.

**Sin confirmación visual:** Claude ejecuta inmediatamente las acciones.

**Setup técnico:** Requiere conocimiento técnico para implementar.

**Dependiente de Claude Desktop:** Solo funciona ahí, no en web.

## Mi conclusión del POC

Creo que esto es una revolución en cuanto a lo que conocemos hoy en día. La posibilidad de democratizar el acceso a sistemas complejos a través de conversación natural cambia completamente la experiencia de usuario.

Pero no es todo color de rosa. Hay un asunto muy importante que validar: la seguridad de los datos y qué tan vulnerable puede llegar a ser este tipo de integración.

Eso lo voy a explorar en la parte 2 de este tema.

---

El código completo del POC está [mcp-poc](https://github.com/3l1070r/mcp-poc) si quieres replicar el experimento.

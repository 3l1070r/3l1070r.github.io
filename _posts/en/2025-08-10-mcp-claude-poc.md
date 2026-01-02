---
layout: single
title: "My POC with MCP: Connecting Claude with a Test API"
date: 2025-08-10
categories: [posts, mcp, claude, api, poc]
tags: [python, mcp, claude, fastapi, integration]
author: Elio Rincón
lang: en
permalink: /en/2025/08/10/mcp-claude-poc.html
description: "Experimenting with Model Context Protocol to connect Claude Desktop with external APIs. A POC showing the potential of conversational interfaces."
---

POC with MCP: Connecting Claude with a Test API

---

## How it all started

It was 4 AM and for some reason I couldn't sleep. I was scrolling when I saw a video about MCP (Model Context Protocol) and it clicked.

The video showed how Claude Desktop can connect directly with external APIs. Several ideas came to mind and I said "I'm going to create a POC about this to see what's up".

## Why it caught my attention

I think MCP is really useful and can be a revolution in the way LLMs work with backends. Basically it offers a natural query language without being technical.

This tool can help service clients to:

- Exploit their data naturally
- Generate automatic summaries
- Find failures in their systems
- Map complex information
- Export specific data

I also think it can work excellently as a super powerful backoffice to facilitate the operation of any company, plus offering fast results and improving user support.

## The POC I built

To test the concept, I created a basic test API that handles charges (like a payment system). Nothing complex, just endpoints to create, list and update charges.

The idea was to see if I could really tell Claude "create a charge of $100 for juan@email.com" and have it execute automatically against my test API.

## My setup

The flow I built was simple:

- I tell something to Claude
- Claude identifies which tool to use
- A script (MCP Server) translates the command to HTTP requests
- My test API processes the request

I needed three components:

1. The test API (basic FastAPI)
2. An MCP Server that translates Claude commands to HTTP
3. Configure Claude Desktop to recognize my server

## The bumps in the process

**First problem:** I configured `python` but on Mac you need `python3` or better a bash script.

**Second problem:** I used relative paths and Claude doesn't recognize them. You need absolute paths.

**Third problem:** I installed dependencies globally but Claude was using another Python. Ended up with virtual environment.

**Fourth problem:** My API expected query parameters but was sending JSON body. Typical documentation error.

## How it works in practice

Once working, the flow is pretty natural:

- "Create a charge of $150 for maria@empresa.com"
- "Show me all pending charges"
- "Update Maria's charge to completed"

Claude maintains context, so it understands references like "Maria's charge".

## What got me excited about the experiment

**For end customers:** Imagine giving your users the ability to query their data with natural language. "Show me my October sales" or "Export all my active customers".

**For backoffice:** Instead of navigating complex interfaces, the team can say "Cancel all expired subscriptions from the north region" and have it execute automatically.

**For support:** Agents can resolve complex cases by talking with the system instead of searching through multiple screens.

## The limitations I found

**Only for simple operations:** For complex workflows a dedicated UI is still better.

**No visual confirmation:** Claude executes actions immediately.

**Technical setup:** Requires technical knowledge to implement.

**Claude Desktop dependent:** Only works there, not on web.

## My conclusion from the POC

I think this is a revolution in terms of what we know today. The possibility of democratizing access to complex systems through natural conversation completely changes the user experience.

But it's not all roses. There's a very important issue to validate: data security and how vulnerable this type of integration can be.

I'm going to explore that in part 2 of this topic.

---

The complete POC code is at [mcp-poc](https://github.com/3l1070r/mcp-poc) if you want to replicate the experiment.

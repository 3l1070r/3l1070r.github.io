---
layout: single
title: "Building dataspot: Lessons from Real-World Fraud Detection"
date: 2025-01-24
categories: [fraud-detection, data-science, open-source]
tags: [python, security, algorithms, data-analysis]
author: Elio Rincón
lang: en
permalink: /en/2025/01/24/building-dataspot.html
description: "The story behind creating dataspot - an open-source library born from real fraud detection challenges and sleepless nights thinking about data patterns."
---

# Building dataspot: Lessons from Real-World Fraud Detection

How obsessing over fraud patterns led to an open-source tool that finds data concentrations

---

## The Obsession Begins

I believe fraud detection is one of the most interesting and passionate tasks that exists.

During my time leading the risk operation team, I could validate that it was always fascinating to understand **how** and **what** fraudsters did to commit fraud. The cases were endlessly creative:

- **Social engineering attacks** - Fraudsters directly contacting the CEO, requesting product activations or configuration changes to process more transactions
- **Tax evasion schemes** - Using third-party cards to accumulate discounts when paying taxes, exploiting promotional loopholes
- **Internal corruption** - Attempting to bribe company employees to activate fraudulent merchants
- And many, many more...

But for a long time, I kept thinking: **there has to be a starting point for detecting fraud**. Some trick, some pattern.

I thought about this constantly - while sleeping, while eating, while doing other things. **There has to be something.**

## The Eureka Moment

The insight that changed everything: _I need to see concentrations._

However, I must say that **penot all concentrations or anomalies are fraud**. But **every fraud has some concentration or anomaly in it**.

After listening to fraud cases for so long, I kept saying "there must be something, but it shouldn't be too complicated or difficult to implement."

Until one day I said: **"Of course! This could help."** And I thought of the dataspot algorithm.

## The Algorithm: Threads and Quantum Inspiration

The algorithm itself came from an unexpected place. I actually thought of it like **threads grouping together** - I remember hearing some documentary about quantum physics and string theory.

It wasn't instantaneous - I'm a bit slow sometimes! 😄

But the idea stuck with me. I kept thinking: "If I can make something accumulate that by its nature is like that - because they are concentrations - how do I represent this?"

I thought about it for several more days, getting closer to the solution. Until I said: **"Of course! Using JSON paths."** If it's the same JSON, then they have the same path. If they're almost similar, then the path will look very similar and **boom**.

I started testing manually until I understood I had something in my hands.

For a clearer explanation of the algorithm, you can check this link that reflects it clearly: [Algorithm Visualization](https://frauddi.github.io/dataspot/algorithm-dataspot.html)

For more info, visit the official GitHub page: [dataspot Documentation](https://frauddi.github.io/dataspot/)

## Silent Development

I tested it in silence for a while without telling anyone. I even built a frontend to visualize the nodes and data in a more digestible way.

I must say, it became a tool I used both for:

- **Evaluating and detecting fraud**
- **Helping the team understand complex cases**

I believe it's a tool that can help a lot to visualize and give you insights into what might be happening.

It's not a Swiss Army knife that solves all problems, but I do think it's a good tool to help you find problems, clearly visualize concentrations, and help detect fraud. It's one of those tools to have in your toolbox for when you need it.

## Technical Challenges

Creating these tools comes with real technical challenges:

### Performance: Handling Thousands of JSONs

Processing large datasets without taking forever was crucial. When representing data as a tree, you deal with:

- **Recursion complexity**
- **O notation concerns**
- **Nested loops**
- **Visualization**: Representing Data Visually

The key was thinking about how to design it to minimize performance impact.

## The Iterative Journey

Development was iterative, step by step. Removing unnecessary complexity, detecting improvement opportunities, fixing bugs along the way.

I never initially defined it as an open-source tool - maybe I did, maybe I didn't. That's why at first I didn't structure it as a proper project with all the bells and whistles: unit tests, load tests, API, structure, database, etc.

After some time, I felt this was a tool that could help other people the way it had helped me. That's why I decided to make it official and release it.

Besides, I always wanted to create an open-source project, and this might be one of those dreams worth pursuing.

I had tried before with a test project that got forgotten - I don't even remember that code or where it is! 😄 Released in January 2018: [eprocess on PyPI](https://pypi.org/project/eprocess/)

## Looking Forward

This is a project I find super interesting. I'll continue maintaining it gradually.

I invite everyone who can/wants to contribute ideas, improvements, code corrections - you'll always be welcome :)

---

**dataspot** is available on [GitHub](https://github.com/frauddi/dataspot) and [PyPI](https://pypi.org/project/dataspot/).

_Have you worked with fraud detection? I'd love to hear about your experiences and patterns you've discovered._

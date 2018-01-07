---
title: Service resilience and deployment automation at the BBC
desc: My talk at the Velocity conf in Barcelona 2014 presenting my teams work at the BBC.
---

<div class="video-container">
<iframe class="video" src="https://www.youtube.com/embed/d6pU4C4PVoY" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>
</div>

*In 2014 I went to present some of my BBC team's work at the [Velocity conf](https://conferences.oreilly.com/velocity/velocityeu2014/public/schedule/detail/36837) in Barcelona.*

## Overview

The days of fixed physical infrastructure and isolated Ops teams are over. It is no longer excusable for a developer to write their code, throw it over a wall and let someone else deal with the impact.

As hardware becomes software, engineers are empowered to create infrastructure that is reproducible, scalable and specifically dedicated to their service. They can spin up identical environments that give them testing confidence. They can form automated pipelines to continuously push services to their audiences. They have the power and responsibility to shape their application, the machines that run it and the infrastructure that glues their service together.

For the BBC Platform team, which I am part of, this is exciting – we no longer have to be gate keepers and we could focus on being enablers.

In this talk, we will speak about the main ingredients that shape a service in the cloud and the path from a developers keyboard to the audience.

Key topics:
 - Building software cleanly and in a reproducible way and why this matters
 - The fastest way to bake an AMI and some considerations for what to bake into the machine.
 - The key benefits of being able to declaratively define and provision infrastructure as code
 - Cosmos, the BBC tool that orchestrates and automates the deployment of software
 - Integrating automated testing with a deployment pipeline.
 - How teams change the way they develop and operate in order to fully maintain their services.

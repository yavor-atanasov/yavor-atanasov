---
title: CloudFormation, HTML and virtual infrastructure
desc: We are virtualising hardware the same way we started digitising information years ago when the web came about. Yet a lot of us are missing the point.
---

We are virtualising hardware the same way we started digitising information years ago when the web came about. Yet a lot of us are missing the point.


## Let's look at the very basics of the web

Books, video, audio - all forms of physical data carriers were transformed into bytes that are easily accessible, transferable and reproducible. If I want to create a web page, I define it declaratively using HTML. I describe all text and images that make up my page and then I let the browser render that. I can then start serving that HTML page to the rest of the world and people's browsers will render it in the exact same way. The browser parses the HTML and creates all headings, paragraphs, links etc.

Take HTML out of that picture for a moment. On one end it's me with my web page - at the other end are myriads of users with browsers that have internal APIs for rendering headings, paragraphs, images etc. All those users need to render my web page in the same shape that I intended it. Since I don't have a language to describe my page, I have to send my users instructions about which API methods they have to call in their browser, in what order and what arguments they have to pass in. Then my users will have to follow those instructions and if all goes well, they will manage to render my web page and read it.

That's unthinkably absurd and makes the web useless doesn't it. My web page will never be reliably reproduced and people will get sick of manually programming their browsers to render my page every time. Soon they will abandon that way of consuming data because it's time consuming, unreliable and too tedious. The web would be dead without HTML.

Why did I just take 3 mins of your life stating quite obvious and simple concepts? Well, consider this:


## Virtual infrastructure as a web page

**Scenario:** *I've created a virtual infrastructure stack, just like my web page. Virtual machines, networks, storage devices and firewalls are like my headings, paragraphs, images and links. Cloud providers are the browsers that can render all those elements and build my infrastructure stack. People want to reproduce my infrastructure stack.*

This scenario is exactly equivalent to the one described above. Yet a lot of authors of infrastructure stacks solve that problem by documenting the manual steps people need to do to recreate those stacks. They make people click buttons, call individual APIs, follow a certain order...and then if all goes well, they manage to render that infrastructure. Absolute nonsense.

## AWS CloudFormation is the HTML for virtual infrastructure

Hardware is now software. So let's make it easily accessible, transferable and reproducible. Let's stop fooling around with pushing buttons, and individual API calls. Let's describe our infrastructural designs declaratively once in a document exactly the way we want it. Then we can distribute that and people can just send that to the cloud provider they use and let them render that.

[CloudFormation](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/Welcome.html) is one of the technologies that can pave the way towards commoditising cloud computing. It let's you define infrastructure the same way HTML let's you define data. **When working with AWS, CloudFormation should be the only way to build infrastructure.** I'd even argue that should have been the only interface AWS provides. It is the right level of abstraction for defining and building cloud architectures. The APIs underneath are too low of a level for that.

Some of the core reasons for using CloudFormation are:

* Reproducibility and determinism
* Possibility to version infrastructure alongside the software that runs on it
* Let AWS do the dependency resolution for the resources and determine the order they have to be created in
* Let them deal with their individual APIs, handle errors, retries etc.


## Does that mean we need standardised specification and cross-provider compatibility?

Following the "HTML and browser" analogy one would have to agree that we need a standard compatible with all cloud providers. That would definitely be nice and useful, but it's early days. Cloud providers are very different in their approach to infrastructure and have different levels of functionality. As with the web, things will happen organically. The important thing for engineers is to resonate with the right vibes that appear in the technological cacophony we live in. CloudFormation seems like one.

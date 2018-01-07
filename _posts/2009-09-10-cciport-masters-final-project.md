---
title: CCiPort - a video on demand platform
desc: CCiPort is the final project for my MSc Digital Media course. It is a website that offers video on demand, live streaming and additional functionality for students and teachers.
---


**CCiPort** is the final project for my MSc Digital Media course. It is a website that offers video on demand and, potentially, other media related opportunities to both staff and students of the Faculty of Creative and Cultural Industries at the University of Portsmouth. It is a web channel for the University TV and also a video showcase for the students from the Creative Technologies school.

## Short Intro

<img class="img-inline-right" src="{{ site.baseurl }}/assets/img/master-project/cciport_dissertation.png">

The final project of my MSc Digital Media course, with the title CCiPort, involves the creation of a video on demand website for the School of Creative Technologies at the University of Portsmouth.

On the one hand, this website hosts all programs created by the school's TV channel called CCiTV and has the option to stream live over the net.

On the other hand, it is a website, where students from the School of Creative Technologies are able to upload their own videos (created either for a class or as a side project). These videos are available to lecturers who are registered on the website. The lecturers are able to view them and choose the best ones and feature them on the public part of the website where they can be viewed by anyone over the web.

This essentially loads CCiPort with two main functions – a web channel for CCiTV and a video showcase for the School of Creative Technologies.

## Screenshot previews
Here is a quick screenshot overview of the front end of the system before we dive into architecture.

### CCiPort Logo

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_1.jpg">

*The logo of the website had to clearly show its connection with the faculty of Creative and Cultural Industries at the University of Portsmouth.*

---------------------------------------

### Home Page

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_2.jpg">

*The Home page shows the best videos voted by professors (the so called "Our best bits")*

---------------------------------------

### Video Search

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_3.jpg">

*CCiPort provides extensive search options for filtering the video content according to categories, sets and keywords.*

---------------------------------------

### Upload Page

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_4.jpg">

*The video upload requires thourough description of the video to be entered - title, category, description, keywords. Only registered users can upload videos.*

---------------------------------------

### Registration

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_5.jpg">

*The registration process is designed in a way that makes it virtually impossible for someone outside the university to register. It uses AJAX to immediatelly check the entered data against the database to prevent errors.*

---------------------------------------

### Advanced Player

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_6.jpg">

*This is the advanced flash application available only to lecturers. It enables lecturers to interactively create annotations onto the students videos as feedback.*

---------------------------------------

### Profile Page

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_7.jpg">

*The profile page shows the registered user's videos only, including the annotations made by lecturers on those videos. This way they can get immediate and clear feedback from lecturers about the submitted material.*


## Project Objectives

The requirements elicitation process starts with capturing the objectives and expectations of the project’s stakeholders. Based on the meetings and conversations with the clients of the current project several objectives were defined. All of those key points were successfully completed in the final result according to clients' final evaluations. Some of the main objectives are as follows:


 - Should be developed within a **three and a half month period**
 - Must stream videos using **Flash Media Streaming Server 3.5** and the associated with it RTMP (Real Time Protocol).
 - Must be **compatible with the latest versions of the leading web browsers at the time**
 - Must be **secure**.
 - The website should support four types of user accounts - **students, lecturers, CCiTV and administrator**.
 - Should provide a **system for annotating** student videos.
 - Should allow **easy maintenance** and should be able to accommodate **further extensions**.
 - Should be **well designed** and **easy to navigate**.


## Macro Architecture

An important first step before designing the web application is to create a model of the environment that it is going to run in. This will provide a macro view of the architecture before focusing on the separate elements.

<img class="img-inline-right" src="{{ site.baseurl }}/assets/img/master-project/cciport_macro_architecture.png">

The CCiPort website is designed to make use of three separate server machines. One is the main Web server (running Apache) listening to HTTP requests and essentially hosting the web application including the PHP framework and the MySQL Database Management System.

Another machine is dedicated to encoding the uploaded videos into the proper format (the encoding software is chosen by the clients’ technical support team and is out of the scope of the current project). The encoding machine receives videos via the File Transfer Protocol (FTP) or HTTP, encodes them, creates thumbnails and transfers the ready videos to the streaming server (again via FTP or HTTP).

The third machine acts as a media streaming server that delivers all video content via the Real Time Messaging Protocol (RTMP). It runs the Flash Media Streaming Server 3.5, which also comes with an Apache server incorporated into the system. This way the third machine can listen to HTTP requests as well (and deliver media via that protocol if it has to). The delivery of the video content requires Flash Player 10 to be installed on the client machine.


## PHP Application Architecture

CCiPort uses the MVC (Model-View-Controller) architectural pattern. The MVC pattern separates the components of the application into three groups – application logic components, data components and presentation components.

<img class="img-inline-left" src="{{ site.baseurl }}/assets/img/master-project/cciport_codeigniter.png">

The CCiPort project utilizes the popular open-source PHP MVC framework called CodeIgniter.

Apart from being extremely light as a framework, CodeIgniter comes with an extensive library of classes that make easier the implementation of form validation, database manipulations, XSS filtering, authentication, sessions etc.


## Flash Video Player Applications

CCiPort offers three flash applications (or three versions of video players):

### A general flash video player

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_base_player.png">

This player provides basic functionalities including playback controls, progress bar, volume controls, quality controls, etc. It is also able to catch live streams. This version of the video player is embedded on the Home page of the website and also the general video playback page. This version of the flash video player was based on the Actionscript 3 classes of the default player that comes with the installation of the FMS 3.5

---------------------------------------

### Annotation-reading video player

<img src="{{ site.baseurl }}/assets/img/master-project/cciport_captions_read_player.png">

This player is an extension to the basic player. It is able to load the annotations made by lecturers on the students’ personal videos. Therefore, this version of the player is only available on the profile page of the logged in users.

---------------------------------------

### Annotation-creating flash video player
<img src="{{ site.baseurl }}/assets/img/master-project/cciport_advanced_player.png">

This is the video player application available only to lecturers. Using that application the lecturer can interactively create annotations onto the video.

The Captions classes written to extend the basic functionality of the flash video player use an interesting method to transfer and keep the captions data. Instead of using XML (which is the usual way of transferring data when working with Actionscript) those classes use the Action Message Format (AMF) to allow binary serialization of Actionscript 3 native types and objects to be sent to the server side. This way PHP methods and functions can be referenced directly within Actionscript and the data can be stored in the MySQL database.

---------------------------------------

## Final words

This short overview of the CCiPort project just gives a basic hint of the development process and the used technologies and software. In case you are curious about any of the stages of the project and would like to dig deeper into some of its aspects, please contact me and I'll be more than happy to answer all your questions.

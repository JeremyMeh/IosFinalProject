Original App Design Project
===

# Application Name: Tricky Trivia (Working Title)

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
A Trivia game app that allows you to auto generate trivia quizzes or be able to create your own trivia quizzes and share them with friends and family.

### App Evaluation
- **Category:**
    - Trivia Game
- **Mobile:**
    - Game
- **Story:**
    - A way to share a laugh and have fun with friends and family by creating and sharing quizzes that they can take.
- **Market:**
    - Family friendly
    - On the go little party game
- **Habit:**
    - Peiodic quizzes to take whenever
- **Scope:**
    - Mini Trivia quizzes (10 questions)

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* [x] Save functionality
* [x] Api Call to get the Auto generated quiz (set up but is still needs work)
* [x] Auto Generated Page (gathers info for API call)
* [x] Account Page
* [x] Create account
* [x] Login
* [x] Auto Generated Take the quiz page
* [x] Set up Backend (Parse)
* [x] Home Page
* [ ] Handmade Take the quiz page (Stretch)
* [ ] Results page
* [ ] Go through past saved quiz page
* [ ] Share Functionality
* [ ] Create Quiz Section (Stretch)

**Optional Nice-to-have Stories**

* N/A

***Video Walkthrough***
**Week 1**
* Create Account
<img src="https://i.imgur.com/VjL01Yf.gif" title='Video Walkthrough' height='480' alt='Video Walkthrough' />

* Login
<img src="https://i.imgur.com/104D7tK.gif" title='Video Walkthrough' height='480' alt='Video Walkthrough' />

* Home Page (Layout)
<img src="https://i.imgur.com/tUK3tDK.png" title='Video Walkthrough' height='480' alt='Video Walkthrough' />

**Week 2**

* Auto Generate Quiz Page & Account Page (old and has been changed)
<img src="https://i.imgur.com/ssjdyRg.gif" title='Video Walkthrough' height='480' alt='Video Walkthrough' />

* Create Quiz Cell Layout
<img src="https://i.imgur.com/RTT49sa.png" title='Video Walkthrough' height='480' alt='Image Walkthrough' />

**Week 3**

* Auto Generate Quiz Api Call
<img src="https://i.imgur.com/hy4YXMg.png" title='Video Walkthrough' alt='Image Walkthrough' />

* Take the Auto Generated Quiz Page (still needs to have the api fixed)
<img src="https://i.imgur.com/2Fwl9mF.gif" title='Video Walkthrough' height='480' alt='Video Walkthrough' />
<img src="https://i.imgur.com/pcRcNa9.gif" title='Video Walkthrough' height='480' alt='Video Walkthrough' />

**Week 4**

* Fix API Call and Data is Displayed
<img src="https://i.imgur.com/An3Ojob.gif" title='Video Walkthrough' alt='Image Walkthrough' />

* Saved Qizzes when called from API
<img src="https://i.imgur.com/X5sJan5.png" title='Video Walkthrough' alt='Image Walkthrough' />

### 2. Screen Archetypes

* Login Screen
   * Create account page section
   * login page
* Home Screen
   * Account Page Button
   * Saved Quizes Button
   * Auto Generate Quiz Button
   * Create Quiz Button
* Account Page
    * View and Edit password and email
* Saved Quized Page
    * View previously made and taken quizzes
    * Share option allows for sharing quiz by providing link
* Auto Generate Quiz page
    * Enter the information for the type of quiz wanted
    * Call Api and auto generate the Quiz
* Create Quiz Page
    * Gives question boxes to allow user to enter questions they want to ask and 4 answer options and a little box to mark which question is correct
* Take Quiz Page
    * Allow users to answer the quiz questions in a scrollable view
* Results Page
    * Shows the results from the recently taken quiz

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* No tabs will be used as it could break the app when creating a game.

**Flow Navigation** (Screen to Screen)

* Quizzes Tab
    * Each button takes you to the page associated and the page associated will be able to return back to the previous page
   * Create Quiz Button
   * Auto Generate Quiz Button
   * Saved Quiz button
* Quiz Pages
    * Results Page
* Account Tab
   * Edit Account Button

## Wireframes
<img src="https://i.imgur.com/1PBrDAz.png" width=600>

### [BONUS] Digital Wireframes & Mockups

### [BONUS] Interactive Prototype

## Schema 
### Models
| Property  | Type               | Description                                               |
|-----------|:------------------:| --------------------------------------------------------- |
| UserId    | Number             | Unique Id for each user                                   |
| Quizes    | Array of Quiz      | Holds the Quizes each user has saved unique to the UserId |
| Quiz      | Array of questions | Quiz holds all the questions                              |
| Question  | Array of arrays    | Each Question holds its own answers and quiz question     |
| Link      | String             | This is a link that the user can share their quiz with    |

### Networking
- Create Quiz
    - (Create/Quiz) Creates a quiz after the user enters the quiz information
    - (Get/Quiz) Gets an auto generated quiz based on inputed request
- Saved Quiz
    - (Get/Quiz) Gets the saved quizes that the user can share or retake
- Share Quiz
    - (Get/Link) Gets the link to the quiz that was saved
- [OPTIONAL: List endpoints if using existing API such as Yelp]

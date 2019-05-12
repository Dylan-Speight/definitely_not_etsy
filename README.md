# Ruby on Rails Web App Project: Itzy

[App Link (Heroku)](https://www.heroku.com/carnivorous-raisin-4432)  
[Github Repo Link](https://github.com/Dylan-Speight/definitely_not_etsy/)

# Table of Contents
<!-- @import "[TOC]" {cmd="toc" depthFrom=1 depthTo=6 orderedList=false} -->

<!-- code_chunk_output -->

- [Ruby on Rails Web App Project: Itzy](#ruby-on-rails-web-app-project-itzy)
- [Table of Contents](#table-of-contents)
  - [Project Description](#project-description)
    - [Problem Definition & Purpose (SAQ 1-3)](#problem-definition--purpose-saq-1-3)
    - [Functionality & Features](#functionality--features)
    - [Site Screenshots](#site-screenshots)
    - [Tech Stack Rundown (SAQ 5 & 10)](#tech-stack-rundown-saq-5--10)
    - [Heroku - What Is It? (SAQ 4)](#heroku---what-is-it-saq-4)
    - [Heroku - Running a Database in the Cloud (SAQ 6 & 7)](#heroku---running-a-database-in-the-cloud-saq-6--7)
    - [Instructions for App Use](#instructions-for-app-use)
  - [Design Documentation](#design-documentation)
    - [Design Process](#design-process)
    - [Workflow Diagram of the User Journey/s](#workflow-diagram-of-the-user-journeys)
    - [Application Architecture (SAQ 8 & 9)](#application-architecture-saq-8--9)
    - [Database Design (SAQ 11-13)](#database-design-saq-11-13)
    - [Test Driven Development (SAQ 20)](#test-driven-development-saq-20)
    - [Future Development](#future-development)
  - [Planning Process](#planning-process)
    - [Timeline](#timeline)
    - [Project Plan](#project-plan)
    - [Entity Relationship Diagram/Database Design Planning (SAQ 14)](#entity-relationship-diagramdatabase-design-planning-saq-14)
    - [User Stories (SAQ 15)](#user-stories-saq-15)
    - [Wireframing (SAQ 16)](#wireframing-saq-16)
    - [Trello Screenshots](#trello-screenshots)
    - [Task Allocation (SAQ 17)](#task-allocation-saq-17)
    - [Agile Methodology (SAQ 18)](#agile-methodology-saq-18)
    - [Source Control Process (SAQ 19)](#source-control-process-saq-19)
    - [Protecting User Data and Our Legal Obligations Regarding Information Security (SAQ 21-23)](#protecting-user-data-and-our-legal-obligations-regarding-information-security-saq-21-23)

<!-- /code_chunk_output -->



## Project Description
### Problem Definition & Purpose (SAQ 1-3)
*1. What is the need (i.e. challenge) that you will be addressing in your project?*
*2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?*
*3. Describe the project will you be conducting and how your App will address the needs.*

While Etsy and Ebay fill the 'User Store' marketplace, we identified them as being successful for different reasons. Ebay allows users to sell whatever they wanted with good search functionality to accomodate for it's broad scope. Etsy is focused more on user created items and craft goods, but with a much more appealing interface and design layout that makes it easy to use, and identify highly-rated products/stores.

We feel as though there is a gap in the market for an application that combines both of the traits of these highly successful websites. We set out to design a general purpose marketplace that was both fun and easy to navigate. We wanted users feel as though they were able to find what they were looking for easily, and find themselves interacting with more personal stores that something that you might find on Ebay, which feel more like retail outlets rather than real people.

### Functionality & Features

Our application allows any user to peruse products, although only authenticated users will be able to purchase products. Users can edit their view and edit their cart, and then pay for their order using Stripe as a third party for payment. Authenticated users can set up a store, and are able to define a category for their store, and provide a name (must be unique), and description for it. Store owners can create products for their store, with the ability to provide it an image, name, description, and price. Admins have permissions to delete users, and stores through stylised, private administrator panels. The use case for allowing these permissions was determined to be for handling users/stores that are creating inappropriate products. The footer features a live counter of the current number of users, stores, and products the application currently has in it's database. This counter will only update on refresh, and is one of the drawbacks of using something like embedded Ruby over asynchronous Javascript that would update as the data in the back-end changed.

### Site Screenshots



### Tech Stack Rundown (SAQ 5 & 10)
*5. Identify and describe the software to be used in your App.*
*10. Detail any third party services that your App will use.*

We used Ruby on Rails (RoR) as the framework for this application's development. The base for each page was built using HTML5 and styled using CSS (utilising SCSS). A minimal amount of Javascript was used to create the toggle functionality for the hamburger/user menus in the navigation bar. The application was deployed to Heroku, a platform as a service (PaaS) provider, allowing build and run an application that exists in the cloud. We called the Google Fonts API to import our font choice, 'Work Sans', and the Font Awesome CDN to utilise some groovy little icons throughout our web application.

**Ruby Version:** 2.6.2

**Ruby on Rails Version:** 5.2.3

**Database:** PostgreSQL

**Gem Overview:**

*Bundler* - Gem management system. Enables easy gem install, update and dependency mangement capabilities.

*Devise* - User authentication. User account and session creation, password encryption and email reset functionality.

*Rolify* - User authorisation. Allows user role creation, and resource access allocation depending on user role id e.g. only admins can access user admin panel where account removal functionality resides.

*Dotenv* - Environment variable creation for development. Loads a .env file during rails server initialisation that holds sensitive information such as database passwords and API keys/secrets.

*RSpec* - A Domain Specific Language testing tool. Used to create tests that determine whether the HTML produced by both us as developers and helpers within RoR, functions as we expect it to.

*Cloudinary* - Cloud-based image and video management platform. Uploaded images are delivered through their personal CDN, allowing fast media load times regardless of user geolocation.

*Stripe* - Remote payment infrastructure. Payment solution stack, that takes transactions away from the scope of your web application, removing much of the liability that comes with handling sensitive information such as credit card details, and deals with the frustration of things like chargebacks. Encrypts user traffic, aligning with our model/approach to information security.

### Heroku - What Is It? (SAQ 4)
*4. Describe the network infrastructure the App may be based on.*

### Heroku - Running a Database in the Cloud (SAQ 6 & 7) 
*6. Identify the database to be used in your App and provide a justification for your choice.*
*7. Identify and describe the production database setup (i.e. postgres instance).*



### Instructions for App Use
HOW DOES A USER USE THE SITE

How would a user clone our repo an get it working if they wanted to help contribute


## Design Documentation
### Design Process
Design choices // Accessability // Usability // Performance // Challenges (Should have utilised something like bootstrap/bulma - made reused all own elements and used significantly more time that would have + result wasn't as nice since no time to really refine it > Some user stories a bit limited in scope, didn't really take into account what it meant in rails to view store products - should have been view store, THEN view products in store, THEN add products to store)

### Workflow Diagram of the User Journey/s

### Application Architecture (SAQ 8 & 9)
*8. Describe the architecture of your App.*
*9. Explain the different high-level components (abstractions) in your App.*

### Database Design (SAQ 11-13)
*11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).*
*12. Discuss the database relations to be implemented.*
*13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.*

- *User Model*
    - devise  
        - FILL OUT DEVISE MODEL STUFF
    - has_one :store
        - A user can choose to have a store. has_one specifies a one-to-one relationship i.e. a user can only have one store. Without specific validation it allows the user to exist without any link to a store i.e. in this circumstance, a user can have a store, but does not have to.  
    - has_many :orders
        - A user can make many different product orders. This relationship enables users to access their own previous order details by pulling all order table entries referencing for that specific user_id    
- *Store Model*  
    - belongs_to :user
        - A store must belong to a user. For a entry to be created in the Store table, it must reference a user_id. This means a person visiting the site cannot create a store without first creating a regular user account. This provides a layer of authentication and prevents stores from easily being spam created.
    - has_many :products
        - A store can have many products. This relationship is relatively self-explanatory. Any store should be able to stock many different items. Any other relationship would not really make sense here.

### Test Driven Development (SAQ 20)
*20. Provide an overview and description of your Testing process.*

Rspec logger file. What we would have done if time permitted.

TDD and how that SHOULD influence design and code building from the ground up.

### Future Development

Next page for products and limiting total products on products show page, rather than having to search or scroll through ALL products. Category being a dropdown rather than user chosen and implement sidebar allowing users to filter products by category. user_id reuse after deletion. Image slideshow. Destroyed elements still show in admin panel, search bar on home page, unique names validation so no two users or stores can have the same name, MFA

## Planning Process
### Timeline

- *Sprint 1 (29/04 > 01/05):*

- *Sprint 2 (02/05 > 04/05):* 

- *05/05:* 
  - Dylan and I took a break over the weekend during the middle of the project

- *Sprint 3 (06/05 > 08/05):*  

- *Sprint 4 (09/05 > 11/05):*

- *Submission Day (12/05):* 
  - Finalised project structure for assignment submission
  - Remaining questions for README answered
  - Final deployment to Heroku performed and checked for any remaining issues that may have been missed

### Project Plan

Rough site plan on paper (link image),

![picture](docs/Paper-Planning.jpg) 

from there user stories in Trello, ERD based on user stories and from there wireframing.

### Entity Relationship Diagram/Database Design Planning (SAQ 14)
*14.  Provide your database schema design.*

![picture](docs/Entity-Relationship-Diagram.png)

TALK ABOUT ACTIVE STORAGE (available in 5.2)

### User Stories (SAQ 15)
*15. Provide User stories for your App.*

![picture](docs/User-Stories-1-12.png)
![picture](docs/User-Stories-13-14.png)

### Wireframing (SAQ 16)
*16. Provide Wireframes for your App.*

**Mobile Home Page:**
![picture](docs/Wireframe-Mobile-Home.png)

**Tablet Home Page:**
![picture](docs/Wireframe-Tablet-Home.png)

**Desktop Home Page:**
![picture](docs/Wireframe-Desktop-Home.png)

**Desktop Store Page:**
![picture](docs/Wireframe-Desktop-Store-Show.png)

**Desktop Product Page:**
![picture](docs/Wireframe-Desktop-Product-Index.png)

### Trello Screenshots

Sprint 1:  
![picture](docs/30-04-Trello.png)

Sprint 2:  
![picture](docs/02-05-Trello.png)

Sprint 3:  
![picture](docs/06-05-Trello.png)

Sprint 4:  
![picture](docs/09-05-Trello.png)

Finished:  
![picture](docs/12-05-Trello.png)

### Task Allocation (SAQ 17)
*17. Describe the way tasks are allocated and tracked in your project.*

Tasks were allocated through discussion with one another, each day deciding what we would work on from the list of tasks allocated for the current sprint. To ensure we were on the same page we then placed a "Person working on this task" label on the corresponding Trello card. While this may seem a bit redundant, we tried to simulate a real software development environment as possible, just to get comfortable with a workflow our future employers will likely have in place. Dylan tended to take tasks more related to the back-end of our application i.e. the controllers and their relationship with the models , while I took tasks with more front-end related elements i.e. views, and their relationship with the model.

### Agile Methodology (SAQ 18)
*18. Discuss how Agile methodology is being implemented in your project.*

We decided from the outset of this project that we would attempt to use a feature oriented, sprint-based approach to development. This was a new experience for both of us. We set up three day sprints during which we would try to get a certain set of features/user stories finished. The decision making process behind which features/user stories we assigned to each sprint took into account two factors. The first was total time; we didn't want to assign more work than we thought we could finish based on estimated time allotments for each task. The second was how that feature fit into the overall design of our product. We wanted to develop features in a way that would make sense allow the building process to flow smoothly i.e. we wanted users to be able to register and sign-in first before we worried about how they would edit their profile.

### Source Control Process (SAQ 19)
*19.  Provide an overview and description of your Source control process.*

We chose to use a feature branching workflow for this project. For each new feature/user story that we were addressing we 

![picture](docs/Pull-Requests.png)

### Protecting User Data and Our Legal Obligations Regarding Information Security (SAQ 21-23)
*21. Discuss and analyse requirements related to information system security.*
*22. Discuss methods you will use to protect information and data.*
*23. Research what your legal obligations are in relation to handling user data.*


21/
Only have one level of admin role. Dangerous as someone who gained control of an admin role could delete everything through admin panels.

Gem verificiation (supply chain poisoning)


22/
Devise Rolify Good routing MFA



23/
GDPR // Australian encryption

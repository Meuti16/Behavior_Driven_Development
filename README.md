##Behaviour driven development
1. Apa itu BDD : pendekatan untuk meminimalisir requirement gap
Bberapa proyek perangkat lunak mengalami kegagalan overtime 
Terjadi perbedaan pemahaman terhadap software yang dibutuhkan antara costumer, system analyst, software engineer. 
Bdd dan tdd saling berkaitan .

2. Bdd tidak hanya membantu software secara benar tapi juga mengembangan dengan cara yang benar dan menghasilkan yang benar. 

3. Pembuatan bdd :
User story, jabarkan dengan format as a[x] i want [y] so that [z], membuat scenario, 
Given : step awal 
When : step
Then : hasil akhir
Framework yang bisa digunakan cucumber

4. sintak gherkin login : 
Feature login : 
Definisikan aktor :  as a user
I want to : tujuan 
So that i can see dashboard page : ekspektasi nya apa

5. contoh sintaks gherkin :
Feature: Login
As a user
I want to login
So that I can access dashboard page

Scenario: As a user I can login with valid crede
Given I am on the login page
When I enter valid email
And I enter valid password
And I click login button
Then I redirected to the dashboard page

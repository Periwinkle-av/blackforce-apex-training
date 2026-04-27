# Session 1 — Architecture Reflection

## Question 1: What is multi-tenancy and why does it mean Apex has governor limits?

Multi-tenancy means that thousands of different companies all share 
the same Salesforce servers at the same time — like many families 
living in the same apartment building sharing the same electricity 
and water supply. Because everyone shares the same resources, 
Salesforce created governor limits to make sure no single company 
uses too much power and slows down everyone else. These limits 
control things like how many database queries you can run and how 
much memory your code can use.

## Question 2: What is the difference between declarative and programmatic customisation?

Declarative customisation means building things in Salesforce by 
clicking and filling out forms — no coding required. For example, 
creating a custom field in Object Manager is declarative because 
you just fill in a form and Salesforce does the rest. Programmatic 
customisation means writing actual code to build more complex things 
that clicking alone cannot do. For example, writing an Apex trigger 
that automatically updates a field when a record is saved is 
programmatic.

## Question 3: Why do we use Git and source control instead of making changes directly in the org?

Making changes directly in the org is risky because if you make a 
mistake there is no way to undo it easily. Git keeps a full history 
of every single change you make, so you can always go back to a 
previous version if something goes wrong. It also allows multiple 
developers to work on the same project at the same time without 
overwriting each other's work, using branches to keep changes 
separate until they are ready to be merged.
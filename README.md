# myStories App

"myStories" is an iOS native demo application. It's an Instagram Stories-like feature.

## Architecture

The code is divided into 3 layers, inspired by the Clean Architecture principle.

- Presentation: the UI/UX layer. It uses MVVM design pattern with Coordinators. It contains UI elements (views + view models), navigation elements (coordinators).
- Domain: it contains the business logic, i.e. object models and use cases that are required by the UI.
- Data: the data layer purpose is to provide data to the application (through the Domain) without needing to know where it came form (API, database, ...).

Each layer manage its own data objects :
- Presentation layer uses `State` objects containing ready to display informations.
- Domain layer uses business model objects containing all information required to implement business rules.
- Data layer uses `DTO` that represent raw data as provided by the data source.
Mappers allow to convert data objects from a layer to another.
The purpose of that is to have independant layers, that have just what they need for the work they have to do.

I also started to implement dependency injection by creating Containers and Factories (i didn't have time to implement factory for presentation layer). It would probably have been more appropriate to use a library for this purpose, as it is mainly "boilerplate" code.

## Features

- Story list screen : scrollable horizontal list of users
- Story view screen : work in progress... only the navigation in/out has been implemented
- dark/light mode management

## External librairies

There is no external library.
As it is a demo application, i think the purpose is to write your own code.
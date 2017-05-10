## User Stories

Objects | Messages
------------ | -------------
User            |
Bike            | bike_is_working?
                | bike_is_docked?
Docking Station | release_a_bike
                | dock_a_bike
                | bike_available?
                | dock_at_capacity?
Maintainer      | 


## Relationship Diagrams

Bike <-- bike_is_working? --> true/false

Docking Station <-- release_a_bike --> Bike

Bike <-- bike_is_docked? --> true/false

Docking Station <-- dock_a_bike --> Bike

Docking Station <-- bike_available? --> true/false

Docking Station <-- dock_at_capacity --> true/false

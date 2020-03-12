# DinnerChoice

![avatar](docs/Dinner_choice.png)

#### R3 Attribution to referenced sources

* https://undraw.co/illustrations
* https://github.com/harrisonmalone/harrisons-food-app

#### R4 Link to source control repository

* https://github.com/Lanzhou-J/DinnerChoice

#### R5 Statement of purpose and scope

This gem is designed to record information (e.g. name, address, average price) and user-reviews of restaurants. Users are able to add restaurants entry, display restaurants list, delete any restaurant and update information. More importantly, the gem can help users make quick lunch/dinner decisions. Users can "roll a dice" to get a random selection from the restaurants list.

Have you ever spent too much time trying to make a decision as where to go for lunch or dinner? No more "decidophobia", no more time-wasting...*The DinnerChoice gem is designed just for you!*

#### R6 Features:
* Create your resaurants collections.

* View name, address and price of restaurants -- information that you need to choose a restaurant for dine out.

* Rate and review restaurants that you have been visited before.
* Update restaurants' information easily.

* Delete any restaurant from you list.

* Make quick decisions.

#### R7 Outline of user interaction and experience

 * The user will find out how to interact with the terminal app by reading the contents of "<font color="#dddd00">MAIN MENU</font>". Then users can select from the main menu (input number, select from 1 to 6). By doing so, they can choose to use each feature. After executing a function, the main menu list will display again and ask the user to select again. User can leave the app by inputing '6' (or '6.', 'exit').

 ```
MAIN MENU
1. Create a new restaurant entry
2. Display or search restaurants by key words
3. Delete an existing entry
4. Update info of an existing entry
5. Make a choice! (random generator)
6. Exit (or input "exit")

Please select from the MAIN MENU (select numbers 1 to 6):
> 6
See you next time!
```
##### 1. Create new entry: 
* After selecting "1" (or "1."). The user will be aksed to input the name (brand), address, rating and money usually spent(unit: AUD) of the restaurant (e.g. name:"Pappa Rich", address:"Southern cross station", rating:"3.5", average price:"9")
```
What's the name of the restaurant you'd like to add?
> 
What's the address of the restaurant you'd like to add?
> 
How do you like this restaurant? please rate on a scale of 1-5, 1 being the lowest(poor), 5 being the highest(great).
> 
How much do you usually spend in this restaurant?
> 
```
* After adding a new restaurant, the app will calculate if the list count has increased by 1, if yes, then output a message telling users that the new entry has been successfully added.
```
> > > > > > > > > > > > > > > > > > 
New restaurant is successfully added!
```
##### 2. Display restaurants
* If nothing is added to the default restaurants list, the default restaurants list will be displayed as below:
```
-------------------------
ID: 1
Name: Pappa Rich
Address: Southern cross station, L1-CS-03
Rating: 3.5
Average Price: $9
-------------------------
ID: 2
Name: Hungry Jack's
Address: Spencer Street
Rating: 2.5
Average Price: $9.5
-------------------------
ID: 3
Name: Grill'd
Address: Southern cross station
Rating: 4
Average Price: $17
-------------------------
```
* After adding a new entry, the added restaurant will be appended to the bottom of the list with a new automatically generated ID.

##### 3. Delete an existing entry

##### 4. Update info

##### 5. Make a choice!



#### R8 Diagram of the control flow

![avatar](docs/Activity_Diagram.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'DinnerChoice'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install DinnerChoice

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Lanzhou-J/DinnerChoice. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/DinnerChoice/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the DinnerChoice project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/DinnerChoice/blob/master/CODE_OF_CONDUCT.md).

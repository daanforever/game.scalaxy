# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

```
class Logic
    def turn(game)
        game.user.messages
    end
end
```

## Turn
```
pool = Concurrent::FixedThreadPool.new(5) # 5 threads
Account.find_each do |account|
  sandbox = Sandbox::Base.new(code: account.source.code)
  state = account.units
  pool.post do
    sandbox.run
    sandbox.alive(account.units)
    locations = account.units.find_each(&:location)
    sandbox.turn(game.state)
  end  
end
```

### State
{
  account: {name: 'String', balance: 1000},
  materials: {'Al': 1000, 'Fe': 1000},
  units: {
    [
      {id: 300, type: Starship, enemies: []},
      {
        id: 201, type: Car,
        enemies: [
          {id: 522, type: Starship, coordinates: [1,2,3], speed: 0},
          {id: 753, type: Car, coordinates: [1,2,3], speed: 10}
        ]
      }
    ]
  }
}

TODO:
User has_many :assets

class Api::V1Controller < ApplicationController
  def galactics
    render json: {
      galactics: [
        { id: 0, coordinates: [0, 0, 0],  name: 'Milky Way' },
        { id: 1, coordinates: [1, 0, 0],  name: 'Cacti' },
        { id: 2, coordinates: [0, -1, 0], name: 'Zulu' },
      ]
    }
  end
end

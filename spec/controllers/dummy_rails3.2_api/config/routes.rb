DummyRails32Api::Application.routes.draw do

  resource :members do
    put 'add', on: :collection
  end

end

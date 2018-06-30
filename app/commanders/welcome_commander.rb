class WelcomeCommander < Fie::Commander

  pool :chat do
    state.messages = Message.all.to_a
    # execute_js_function('console.log', @published_object)
    state
  end

  def say_hello
  end
end

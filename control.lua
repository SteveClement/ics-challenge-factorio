-- Test function for command
function hello(tableIn)
    local player = game.get_player(tableIn.player_index)
    player.print("Hellow :) this is a private message " .. player.name)
    game.print("This is a broadcast to all connected players.")

end

commands.add_command("say_hello", "This is a cry for help", hello)

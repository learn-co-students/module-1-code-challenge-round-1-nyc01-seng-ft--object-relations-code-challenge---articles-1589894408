@shawn_elliot = Author.new("shawn elliot")
@shawn_malloy = Author.new("shawn malloy")
@jeff_green = Author.new("jeff green")

@basketball_times = Magazine.new("basketball times", "sports")
@car_magazine = Magazine.new("car magazine", "hobby")
@games_for_windows = Magazine.new("games for windows", "technology")

@how_stuff_works = Article.new(@shawn_elliot, @car_magazine, "how stuff works")
@my_new_car = Article.new(@shawn_elliot, @car_magazine, "my new car")
@my_vacation = Article.new(@shawn_malloy, @car_magazine, "my vacation")
@why_physics_is_cool = Article.new(@shawn_malloy, @basketball_times, "why physics is cool")
@coding_in_three_short_steps = Article.new(@shawn_malloy, @games_for_windows, "coding in three_short steps")
@learn_to_dribble  = Article.new(@jeff_green, @basketball_times, "learn to dribble")
@inside_valve_studios  = Article.new(@jeff_green, @games_for_windows, "inside valve studios")


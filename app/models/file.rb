SHAWN_ELLIOT = Author.new("shawn elliot")
SEAN_MALLOY = Author.new("shawn malloy")
JEFF_GREEN = Author.new("jeff green")

BASKETBALL_TIMES = Magazine.new("basketball times", "sports")
CAR_MAGAZINE = Magazine.new("car magazine", "hobby")
GAMES_FOR_WINDOWS = Magazine.new("games for windows", "technology")


HOW_STUFF_WORKS= Article.new(SHAWN_ELLIOT, CAR_MAGAZINE, "new article")
HOW_STUFF_WORKS= Article.new(SHAWN_ELLIOT, CAR_MAGAZINE, "how stuff works")
MY_NEW_CAR = Article.new(SHAWN_ELLIOT, CAR_MAGAZINE, "my new car")
MY_VACATION = Article.new(SEAN_MALLOY, CAR_MAGAZINE, "my vacation")
WHY_PHYSICS_IS_COOL = Article.new(SEAN_MALLOY, BASKETBALL_TIMES, "why physics is cool")
CODING_IN_THREE_SHORT_STEPS = Article.new(SEAN_MALLOY, GAMES_FOR_WINDOWS, "coding in three_short steps")
LEARN_TO_DRIBBLE  = Article.new(JEFF_GREEN, BASKETBALL_TIMES, "learn to dribble")
INSIDE_VALVE_STUDIOS  = Article.new(JEFF_GREEN, GAMES_FOR_WINDOWS, "inside valve studios")


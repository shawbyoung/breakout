
/* Represents the state of the game */
enum GameState {
    GAME_ACTIVE,
    GAME_MENU,
    GAME_WIN
};

/* Class representation of the game itself */
class Game
{
    public:
        GameState    State;
        bool         Keys[1024];
        unsigned int Width, Height;

        Game(unsigned int width, unsigned int height);
        ~Game();

        // initialize game state (load all shaders/textures/levels)
        void Init();

        // game loop
        void ProcessInput(float dt);

        void Update(float dt);
        void Render();
};

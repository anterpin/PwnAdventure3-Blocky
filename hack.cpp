#include <bits/stdc++.h>
#include <dlfcn.h>
#include <time.h>
#include <cstdint>
#include "Game.h"
using namespace std;

GameAPI* game;
void brute_force() {
    size_t len = game->GetCircuitOutputCount("FinalStage");
    bool* tmp = new bool[len];
    clock_t start = clock();
    for (uint64_t state = 0; state <= UINT_MAX; state++) {
        bool result = false;
        game->GetCircuitOutputs("FinalStage", state, tmp, len, &result);
        if (result) {
            cout << "result " << result << endl;
            cout << "state " << state << endl;
            break;
        }
        if (state % 500 == 0) {
            cout << "state " << state << endl;
        }
    }

    cout << "seconds " << (clock() - start) / 1000 << endl;
    for (int i = 0; i < len; i++) {
        cout << tmp[i];
    }
    cout << endl;
    // result 1
    // state 1771023354
    // tmp
    // 110000000001101000100000010111100010010000101000010000010100010010000110000010101001101010010001110000000011000000100101110000110110000001000000010001000001000000100000010010
    delete[] tmp;
}
void Player::Chat(const char* cstr) {
    if (strcmp(cstr, "blocky") == 0) {
        cout << cstr << endl;
        game = *(GameAPI**)dlsym(RTLD_DEFAULT, "Game");
        printf("%p\n", game);
        if (game) {
            brute_force();
        }
    }
}

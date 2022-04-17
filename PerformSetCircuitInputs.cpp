#include <bits/stdc++.h>
#define ln '\n'
#define MP make_pair
#include "Game.h"
#include "libGameLogic.h"
using namespace std;

void Player::PerformSetCircuitInputs(const std::string& name, uint32_t state) {
    this->m_circuitInputs[name] = state;
    if (Game->IsAuthority()) {
        size_t len = Game->GetCircuitOutputCount(name.c_str());
        bool* tmp = new bool[len];
        bool result;
        Game->GetCircuitOutputs(name.c_str(), state, tmp, len, &result);
        std::vector<bool> arr;
        for (int i = 0; i < len; i++) {
            arr.push_back(tmp[i]);
        }
        if (tmp != nullptr) {
            delete[] tmp;
        }
        this->m_circuitOutputs[name] = arr;

        GameWorld->SetCircuitInputs(this, name, state);
        this->m_circuitStateCooldownTimer = 0.25;
        // DO NOT RELY ON THIS PART OF THE CODE
        // I'M NOT SURE IT IS RIGHT
        if (name != "Stage4" || !result) {
            if (name == "FinalStage" && result) {
                IQuest* quest = Game->GetQuestByName("Blocky");
                bool st = this->IsQuestStarted(quest);  // or started?
                if (!st) {
                    this->StartQuest(quest);
                }
                bool com = this->IsQuestCompleted(quest);
                if (!com) {
                    this->CompleteQuest(quest);
                }
            }
        } else {
            IAchievement* achivement = Game->GetAchievement("Logical");
            this->MarkAsAchieved(achivement);
        }
    }
}

int main() {
    return 0;
}

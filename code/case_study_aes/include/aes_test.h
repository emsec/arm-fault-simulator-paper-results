#pragma once

#include "armory/types.h"

namespace aes_test
{
    extern u8 round_keys[176];
    extern u8 correct_ciphertext[16];
    extern u8 state_before_sbox_in_round[11][16];
    extern u8 state_after_round7_mixcolumns[16];
    extern u8 state_after_last_sbox[16];

    void initialize(const u8 master_key[16], const u8 plaintext[16]);
    bool test_aes_output(u8* output);
} // namespace aes_test

#include "aes_test.h"

#include <cstring>
#include <iomanip>
#include <iostream>

#define print_state(X, Y)                                                                   \
    std::cout << X;                                                                         \
    for (u32 i = 0; i < 16; ++i)                                                            \
    {                                                                                       \
        std::cout << std::hex << std::setw(2) << std::setfill('0') << (u32)((Y)[i]) << " "; \
    }                                                                                       \
    std::cout << std::endl;

namespace aes_test
{

    typedef u8 state_t[4][4];

    namespace
    {

        static const u8 sbox[256] = {
            0x63, 0x7c, 0x77, 0x7b, 0xf2, 0x6b, 0x6f, 0xc5, 0x30, 0x01, 0x67, 0x2b, 0xfe, 0xd7, 0xab, 0x76,
            0xca, 0x82, 0xc9, 0x7d, 0xfa, 0x59, 0x47, 0xf0, 0xad, 0xd4, 0xa2, 0xaf, 0x9c, 0xa4, 0x72, 0xc0,
            0xb7, 0xfd, 0x93, 0x26, 0x36, 0x3f, 0xf7, 0xcc, 0x34, 0xa5, 0xe5, 0xf1, 0x71, 0xd8, 0x31, 0x15,
            0x04, 0xc7, 0x23, 0xc3, 0x18, 0x96, 0x05, 0x9a, 0x07, 0x12, 0x80, 0xe2, 0xeb, 0x27, 0xb2, 0x75,
            0x09, 0x83, 0x2c, 0x1a, 0x1b, 0x6e, 0x5a, 0xa0, 0x52, 0x3b, 0xd6, 0xb3, 0x29, 0xe3, 0x2f, 0x84,
            0x53, 0xd1, 0x00, 0xed, 0x20, 0xfc, 0xb1, 0x5b, 0x6a, 0xcb, 0xbe, 0x39, 0x4a, 0x4c, 0x58, 0xcf,
            0xd0, 0xef, 0xaa, 0xfb, 0x43, 0x4d, 0x33, 0x85, 0x45, 0xf9, 0x02, 0x7f, 0x50, 0x3c, 0x9f, 0xa8,
            0x51, 0xa3, 0x40, 0x8f, 0x92, 0x9d, 0x38, 0xf5, 0xbc, 0xb6, 0xda, 0x21, 0x10, 0xff, 0xf3, 0xd2,
            0xcd, 0x0c, 0x13, 0xec, 0x5f, 0x97, 0x44, 0x17, 0xc4, 0xa7, 0x7e, 0x3d, 0x64, 0x5d, 0x19, 0x73,
            0x60, 0x81, 0x4f, 0xdc, 0x22, 0x2a, 0x90, 0x88, 0x46, 0xee, 0xb8, 0x14, 0xde, 0x5e, 0x0b, 0xdb,
            0xe0, 0x32, 0x3a, 0x0a, 0x49, 0x06, 0x24, 0x5c, 0xc2, 0xd3, 0xac, 0x62, 0x91, 0x95, 0xe4, 0x79,
            0xe7, 0xc8, 0x37, 0x6d, 0x8d, 0xd5, 0x4e, 0xa9, 0x6c, 0x56, 0xf4, 0xea, 0x65, 0x7a, 0xae, 0x08,
            0xba, 0x78, 0x25, 0x2e, 0x1c, 0xa6, 0xb4, 0xc6, 0xe8, 0xdd, 0x74, 0x1f, 0x4b, 0xbd, 0x8b, 0x8a,
            0x70, 0x3e, 0xb5, 0x66, 0x48, 0x03, 0xf6, 0x0e, 0x61, 0x35, 0x57, 0xb9, 0x86, 0xc1, 0x1d, 0x9e,
            0xe1, 0xf8, 0x98, 0x11, 0x69, 0xd9, 0x8e, 0x94, 0x9b, 0x1e, 0x87, 0xe9, 0xce, 0x55, 0x28, 0xdf,
            0x8c, 0xa1, 0x89, 0x0d, 0xbf, 0xe6, 0x42, 0x68, 0x41, 0x99, 0x2d, 0x0f, 0xb0, 0x54, 0xbb, 0x16};

        static const u8 rsbox[256] = {
            0x52, 0x09, 0x6a, 0xd5, 0x30, 0x36, 0xa5, 0x38, 0xbf, 0x40, 0xa3, 0x9e, 0x81, 0xf3, 0xd7, 0xfb,
            0x7c, 0xe3, 0x39, 0x82, 0x9b, 0x2f, 0xff, 0x87, 0x34, 0x8e, 0x43, 0x44, 0xc4, 0xde, 0xe9, 0xcb,
            0x54, 0x7b, 0x94, 0x32, 0xa6, 0xc2, 0x23, 0x3d, 0xee, 0x4c, 0x95, 0x0b, 0x42, 0xfa, 0xc3, 0x4e,
            0x08, 0x2e, 0xa1, 0x66, 0x28, 0xd9, 0x24, 0xb2, 0x76, 0x5b, 0xa2, 0x49, 0x6d, 0x8b, 0xd1, 0x25,
            0x72, 0xf8, 0xf6, 0x64, 0x86, 0x68, 0x98, 0x16, 0xd4, 0xa4, 0x5c, 0xcc, 0x5d, 0x65, 0xb6, 0x92,
            0x6c, 0x70, 0x48, 0x50, 0xfd, 0xed, 0xb9, 0xda, 0x5e, 0x15, 0x46, 0x57, 0xa7, 0x8d, 0x9d, 0x84,
            0x90, 0xd8, 0xab, 0x00, 0x8c, 0xbc, 0xd3, 0x0a, 0xf7, 0xe4, 0x58, 0x05, 0xb8, 0xb3, 0x45, 0x06,
            0xd0, 0x2c, 0x1e, 0x8f, 0xca, 0x3f, 0x0f, 0x02, 0xc1, 0xaf, 0xbd, 0x03, 0x01, 0x13, 0x8a, 0x6b,
            0x3a, 0x91, 0x11, 0x41, 0x4f, 0x67, 0xdc, 0xea, 0x97, 0xf2, 0xcf, 0xce, 0xf0, 0xb4, 0xe6, 0x73,
            0x96, 0xac, 0x74, 0x22, 0xe7, 0xad, 0x35, 0x85, 0xe2, 0xf9, 0x37, 0xe8, 0x1c, 0x75, 0xdf, 0x6e,
            0x47, 0xf1, 0x1a, 0x71, 0x1d, 0x29, 0xc5, 0x89, 0x6f, 0xb7, 0x62, 0x0e, 0xaa, 0x18, 0xbe, 0x1b,
            0xfc, 0x56, 0x3e, 0x4b, 0xc6, 0xd2, 0x79, 0x20, 0x9a, 0xdb, 0xc0, 0xfe, 0x78, 0xcd, 0x5a, 0xf4,
            0x1f, 0xdd, 0xa8, 0x33, 0x88, 0x07, 0xc7, 0x31, 0xb1, 0x12, 0x10, 0x59, 0x27, 0x80, 0xec, 0x5f,
            0x60, 0x51, 0x7f, 0xa9, 0x19, 0xb5, 0x4a, 0x0d, 0x2d, 0xe5, 0x7a, 0x9f, 0x93, 0xc9, 0x9c, 0xef,
            0xa0, 0xe0, 0x3b, 0x4d, 0xae, 0x2a, 0xf5, 0xb0, 0xc8, 0xeb, 0xbb, 0x3c, 0x83, 0x53, 0x99, 0x61,
            0x17, 0x2b, 0x04, 0x7e, 0xba, 0x77, 0xd6, 0x26, 0xe1, 0x69, 0x14, 0x63, 0x55, 0x21, 0x0c, 0x7d};

        static const u8 Rcon[11] = {
            0x8d, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40, 0x80, 0x1b, 0x36};

        // This function produces 4(10+1) round keys. The round keys are used in each round to decrypt the states.
        static void key_expansion(u8* roundkey, const u8* key)
        {
            unsigned i, j, k;
            u8 tempa[4]; // Used for the column/row operations

            // The first round key is the key itself.
            for (i = 0; i < 4; ++i)
            {
                roundkey[(i * 4) + 0] = key[(i * 4) + 0];
                roundkey[(i * 4) + 1] = key[(i * 4) + 1];
                roundkey[(i * 4) + 2] = key[(i * 4) + 2];
                roundkey[(i * 4) + 3] = key[(i * 4) + 3];
            }

            // All other round keys are found from the previous round keys.
            for (i = 4; i < 4 * (10 + 1); ++i)
            {
                {
                    k = (i - 1) * 4;
                    tempa[0] = roundkey[k + 0];
                    tempa[1] = roundkey[k + 1];
                    tempa[2] = roundkey[k + 2];
                    tempa[3] = roundkey[k + 3];
                }

                if (i % 4 == 0)
                {
                    // This function shifts the 4 bytes in a word to the left once.
                    // [a0,a1,a2,a3] becomes [a1,a2,a3,a0]

                    // Function RotWord()
                    {
                        const u8 u8tmp = tempa[0];
                        tempa[0] = tempa[1];
                        tempa[1] = tempa[2];
                        tempa[2] = tempa[3];
                        tempa[3] = u8tmp;
                    }

                    // SubWord() is a function that takes a four-byte input word and
                    // applies the S-box to each of the four bytes to produce an output word.

                    // Function Subword()
                    {
                        tempa[0] = sbox[tempa[0]];
                        tempa[1] = sbox[tempa[1]];
                        tempa[2] = sbox[tempa[2]];
                        tempa[3] = sbox[tempa[3]];
                    }

                    tempa[0] = tempa[0] ^ Rcon[i / 4];
                }
                j = i * 4;
                k = (i - 4) * 4;
                roundkey[j + 0] = roundkey[k + 0] ^ tempa[0];
                roundkey[j + 1] = roundkey[k + 1] ^ tempa[1];
                roundkey[j + 2] = roundkey[k + 2] ^ tempa[2];
                roundkey[j + 3] = roundkey[k + 3] ^ tempa[3];
            }
        }

        // This function adds the round key to state.
        // The round key is added to the state by an XOR function.
        static void add_round_key(u8 round, state_t* state, const u8* roundkey)
        {
            u8 i, j;
            for (i = 0; i < 4; ++i)
            {
                for (j = 0; j < 4; ++j)
                {
                    (*state)[i][j] ^= roundkey[(round * 4 * 4) + (i * 4) + j];
                }
            }
        }

        static u8 xtime(u8 x)
        {
            return ((x << 1) ^ (((x >> 7) & 1) * 0x1b));
        }

#define multiply(x, y)                         \
    (((y & 1) * x) ^                           \
     ((y >> 1 & 1) * xtime(x)) ^               \
     ((y >> 2 & 1) * xtime(xtime(x))) ^        \
     ((y >> 3 & 1) * xtime(xtime(xtime(x)))) ^ \
     ((y >> 4 & 1) * xtime(xtime(xtime(xtime(x))))))

        static void mix_columns(state_t* state)
        {
            u8 i;
            u8 Tmp, Tm, t;
            for (i = 0; i < 4; ++i)
            {
                t = (*state)[i][0];
                Tmp = (*state)[i][0] ^ (*state)[i][1] ^ (*state)[i][2] ^ (*state)[i][3];
                Tm = (*state)[i][0] ^ (*state)[i][1];
                Tm = xtime(Tm);
                (*state)[i][0] ^= Tm ^ Tmp;
                Tm = (*state)[i][1] ^ (*state)[i][2];
                Tm = xtime(Tm);
                (*state)[i][1] ^= Tm ^ Tmp;
                Tm = (*state)[i][2] ^ (*state)[i][3];
                Tm = xtime(Tm);
                (*state)[i][2] ^= Tm ^ Tmp;
                Tm = (*state)[i][3] ^ t;
                Tm = xtime(Tm);
                (*state)[i][3] ^= Tm ^ Tmp;
            }
        }

        static void inv_mix_columns(state_t* state)
        {
            int i;
            u8 a, b, c, d;
            for (i = 0; i < 4; ++i)
            {
                a = (*state)[i][0];
                b = (*state)[i][1];
                c = (*state)[i][2];
                d = (*state)[i][3];

                (*state)[i][0] = multiply(a, 0x0e) ^ multiply(b, 0x0b) ^ multiply(c, 0x0d) ^ multiply(d, 0x09);
                (*state)[i][1] = multiply(a, 0x09) ^ multiply(b, 0x0e) ^ multiply(c, 0x0b) ^ multiply(d, 0x0d);
                (*state)[i][2] = multiply(a, 0x0d) ^ multiply(b, 0x09) ^ multiply(c, 0x0e) ^ multiply(d, 0x0b);
                (*state)[i][3] = multiply(a, 0x0b) ^ multiply(b, 0x0d) ^ multiply(c, 0x09) ^ multiply(d, 0x0e);
            }
        }

        static void sub_bytes(state_t* state)
        {
            u8 i, j;
            for (i = 0; i < 4; ++i)
            {
                for (j = 0; j < 4; ++j)
                {
                    (*state)[j][i] = sbox[(*state)[j][i]];
                }
            }
        }

        static void inv_sub_bytes(state_t* state)
        {
            u8 i, j;
            for (i = 0; i < 4; ++i)
            {
                for (j = 0; j < 4; ++j)
                {
                    (*state)[j][i] = rsbox[(*state)[j][i]];
                }
            }
        }

        static void shift_rows(state_t* state)
        {
            u8 temp;

            temp = (*state)[0][1];
            (*state)[0][1] = (*state)[1][1];
            (*state)[1][1] = (*state)[2][1];
            (*state)[2][1] = (*state)[3][1];
            (*state)[3][1] = temp;

            temp = (*state)[0][2];
            (*state)[0][2] = (*state)[2][2];
            (*state)[2][2] = temp;

            temp = (*state)[1][2];
            (*state)[1][2] = (*state)[3][2];
            (*state)[3][2] = temp;

            temp = (*state)[0][3];
            (*state)[0][3] = (*state)[3][3];
            (*state)[3][3] = (*state)[2][3];
            (*state)[2][3] = (*state)[1][3];
            (*state)[1][3] = temp;
        }

        static void inv_shift_rows(state_t* state)
        {
            u8 temp;

            // Rotate first row 1 columns to right
            temp = (*state)[3][1];
            (*state)[3][1] = (*state)[2][1];
            (*state)[2][1] = (*state)[1][1];
            (*state)[1][1] = (*state)[0][1];
            (*state)[0][1] = temp;

            // Rotate second row 2 columns to right
            temp = (*state)[0][2];
            (*state)[0][2] = (*state)[2][2];
            (*state)[2][2] = temp;

            temp = (*state)[1][2];
            (*state)[1][2] = (*state)[3][2];
            (*state)[3][2] = temp;

            // Rotate third row 3 columns to right
            temp = (*state)[0][3];
            (*state)[0][3] = (*state)[1][3];
            (*state)[1][3] = (*state)[2][3];
            (*state)[2][3] = (*state)[3][3];
            (*state)[3][3] = temp;
        }

        static void cipher(state_t* state)
        {
            u8 round = 0;
            add_round_key(0, state, round_keys);
            for (round = 1; round < 10; ++round)
            {
                std::memcpy(state_before_sbox_in_round[round], (u8*)state, 16);
                sub_bytes(state);
                shift_rows(state);
                mix_columns(state);

                if (round == 7)
                {
                    std::memcpy(state_after_round7_mixcolumns, (u8*)state, 16);
                }
                // print_state("round  " << std::dec << (u32)round << ":   ", (u8*)state);

                add_round_key(round, state, round_keys);
            }

            std::memcpy(state_before_sbox_in_round[10], (u8*)state, 16);
            sub_bytes(state);
            std::memcpy(state_after_last_sbox, (u8*)state, 16);

            shift_rows(state);
            add_round_key(10, state, round_keys);
        }

    } // namespace

    u8 round_keys[176];
    u8 correct_ciphertext[16];

    u8 state_before_sbox_in_round[11][16];
    u8 state_after_round7_mixcolumns[16];
    u8 state_after_last_sbox[16];

    void initialize(const u8 master_key[16], const u8 plaintext[16])
    {
        std::memcpy(correct_ciphertext, plaintext, 16);
        key_expansion(round_keys, master_key);
        cipher((state_t*)correct_ciphertext);
    }

    bool test_aes_output(u8* output)
    {
        if (std::memcmp(output, correct_ciphertext, 16) == 0)
        {
            return false;
        }

        // Round 10
        add_round_key(10, (state_t*)output, round_keys);
        inv_shift_rows((state_t*)output);
        inv_sub_bytes((state_t*)output);

        u32 different = 0;
        for (u32 i = 0; i < 16; ++i)
        {
            if (output[i] != state_before_sbox_in_round[10][i])
            {
                different++;
            }
        }
        if (different == 1)
        {
            return true;
        }

        // Round 9
        add_round_key(9, (state_t*)output, round_keys);
        inv_mix_columns((state_t*)output);
        inv_shift_rows((state_t*)output);
        inv_sub_bytes((state_t*)output);

        different = 0;
        for (u32 i = 0; i < 16; ++i)
        {
            if (output[i] != state_before_sbox_in_round[9][i])
            {
                different++;
            }
        }
        if (different == 1)
        {
            return true;
        }

        // Round 8
        add_round_key(8, (state_t*)output, round_keys);
        inv_mix_columns((state_t*)output);
        inv_shift_rows((state_t*)output);
        inv_sub_bytes((state_t*)output);

        different = 0;
        for (u32 i = 0; i < 16; ++i)
        {
            if (output[i] != state_before_sbox_in_round[8][i])
            {
                different++;
            }
        }
        if (different == 1)
        {
            return true;
        }
        return false;
    }
} // namespace aes_test

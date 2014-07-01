/* Copyright (C) 2006 - 2013 ScriptDev2 <http://www.scriptdev2.com/>
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

#include "precompiled.h"
#include "stonecore.h"

/***************************************TRASH SPELLS*************************************/
// Crystalspawn Giant (42810) Health: 536, 810 - 1, 202, 925
// update creature_template set
enum Spells
{
    SPELL_QUAKE              = 81008,
    H_SPELL_QUAKE            = 92631,

    // IMP (43014) Health: 4, 468 - 7, 749, Mana: 16, 676 - 17, 816
    SPELL_FELL_FIREBALL      = 80344,
    H_SPELL_FELL_FIREBALL    = 92638,

    // Millhouse Manastorm (43391) Health: 386, 505 - 513, 248, Mana: 186, 560 - 197, 380
    SPELL_BLUR               = 81216,
    SPELL_MILL_FEAR          = 81442,
    SPELL_FROSTBOLT_VOLLEY   = 81440,
    H_SPELL_FROSTBOLT_VOLLEY = 92642,
    SPELL_IMPENDING_DOOM     = 86830,
    SPELL_SHADOW_BOLT        = 81439,
    H_SPELL_SHADOW_BOLT      = 92641,
    SPELL_SHADOWFURY         = 81441,
    H_SPELL_SHADOWFURY       = 92644,
    SPELL_TIGULE             = 81220,

    // Rock Borer (43917, 42845) Health: 6, 702 - 11, 624
    SPELL_ROCK_BORE          = 80028,
    H_SPELL_ROCK_BORE        = 92630,

    // Stonecore Berserker (43430) Health: 312, 753 - 387, 450
    SPELL_SCHARGE            = 81574,
    SPELL_SPINNING_SLASH     = 81568,

    // Stonecore Bruiser (42692) Health: 590, 491 - 1, 202, 925
    SPELL_BODY_SLAM          = 80180,
    SPELL_SHOCKWAVE          = 80195,
    H_SPELL_SHOCKWAVE        = 92640,

    // Stonecore Earthshaper (43537) Health: 250, 201 - 309, 960, Mana: 19, 394
    SPELL_DUST_STORM         = 81463,
    SPELL_FORCE_OF_EARTH     = 81459,
    SPELL_GROUND_SHOCK       = 81530,
    H_SPELL_GROUND_SHOCK     = 92628,
    SPELL_LAVA_BURST         = 81576,
    H_SPELL_LAVA_BURST       = 92626,

    // Stonecore Flayer (42808) Health: 312, 753 - 387, 450
    SPELL_FLAY               = 79922,

    // Stonecore Magmalord (42789) Health: 312, 753 - 387, 450, Mana: 25, 014 - 26, 724
    SPELL_IGNITE             = 80151,
    H_SPELL_IGNITE           = 92636,
    SPELL_MAGMA_ERUPTION     = 80038,

    // Stonecore Rift Conjurer (42691) Health: 312, 753 - 387, 450, Mana: 16, 676 - 17, 816
    SPELL_DEMON_PORTAL       = 80308,
    SPELL_SHADOWBOLT         = 80279,
    H_SPELL_SHADOWBOLT       = 92637,

    //Stonecore Sentry (42695) Health: 6, 702 - 11, 624

    // Stonecore Warbringer (42696) Health: 312, 753 - 387, 450
    SPELL_CLEAVE             = 15496,
    SPELL_RAGE               = 80158,
};

enum eEvents
{
    EVENT_NONE,
    EVENT_QUAKE,
    EVENT_FELL_FIREBALL,
    EVENT_BLUR,
    EVENT_MILL_FEAR,
    EVENT_FROSTBOLT_VOLLEY,
    EVENT_IMPENDING_DOOM,
    EVENT_SHADOW_BOLT,
    EVENT_SHADOWFURY,
    EVENT_TIGULE,
    EVENT_ROCK_BORE,
    EVENT_SCHARGE,
    EVENT_SPINNING_SLASH,
    EVENT_BODY_SLAM,
    EVENT_SHOCKWAVE,
    EVENT_DUST_STORM,
    EVENT_FORCE_OF_EARTH,
    EVENT_GROUND_SHOCK,
    EVENT_LAVA_BURST,
    EVENT_FLAY,
    EVENT_IGNITE,
    EVENT_MAGMA_ERUPTION,
    EVENT_DEMON_PORTAL,
    EVENT_SHADOWBOLT,
    EVENT_CLEAVE,
    EVENT_RAGE,
};

// Crystalspawn Giant AI
struct MANGOS_DLL_DECL mob_crystalspawn_giantAI : public ScriptedAI
{
    mob_crystalspawn_giantAI(Creature* creature) : ScriptedAI(creature) { }
    void Reset() {};
};

// Imp AI
struct MANGOS_DLL_DECL mob_imppAI : public ScriptedAI
{
    mob_imppAI(Creature* creature) : ScriptedAI(creature) {}
    void Reset() {};
};

// Rock Borer AI
struct MANGOS_DLL_DECL mob_rock_borerAI : public ScriptedAI
{
    mob_rock_borerAI(Creature* creature) : ScriptedAI(creature) {}
    void Reset() {};
};

// Millhouse Manastorm AI
struct MANGOS_DLL_DECL mob_millhouse_manastormAI : public ScriptedAI
{
    mob_millhouse_manastormAI(Creature* creature) : ScriptedAI(creature) {}
    void Reset() {};
};

CreatureAI* GetAI_mob_crystalspawn_giant(Creature* pCreature)
{
    return new mob_crystalspawn_giantAI(pCreature);
}

CreatureAI* GetAI_mob_impp(Creature* pCreature)
{
    return new mob_imppAI(pCreature);
}

CreatureAI* GetAI_mob_millhouse_manastorm(Creature* pCreature)
{
    return new mob_millhouse_manastormAI(pCreature);
}

CreatureAI* GetAI_mob_rock_borer(Creature* pCreature)
{
    return new mob_rock_borerAI(pCreature);
}

void AddSC_stonecore()
{
    Script* pNewScript;

    pNewScript = new Script;
    pNewScript->Name = "mob_crystalspawn_giant";
    pNewScript->GetAI = &GetAI_mob_crystalspawn_giant;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_impp";
    pNewScript->GetAI = &GetAI_mob_impp;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_millhouse_manastorm";
    pNewScript->GetAI = &GetAI_mob_millhouse_manastorm;
    pNewScript->RegisterSelf();

    pNewScript = new Script;
    pNewScript->Name = "mob_rock_borer";
    pNewScript->GetAI = &GetAI_mob_rock_borer;
    pNewScript->RegisterSelf();
}
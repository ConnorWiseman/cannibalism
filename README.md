# Cannibalism
> A fairly macabre Dwarf Fortress mod.

Adds the ability to butcher dwarf corpses, then craft objects, construct buildings, and perform cult rituals from their remains, to Fortress Mode. Why let perfectly good materials go to waste just because Urist McTenderflesh died of old age? Tested and working with Dwarf Fortress 0.43.05 and DFHack 0.43.05-r3.




## Table of contents
1. [Download](#download)
2. [Installation](#installation)
3. [Features](#features)
    1. [Overview](#overview)
    2. [Charnel Pit](#charnel-pit)
    3. [Dwarf Skull Totem](#dwarf-skull-totem)
    4. [Ossuary](#ossuary)
    5. [Keratin Loom](#keratin-loom)
    6. [Haircloth Workshop](#haircloth-workshop)
    7. [Shrine to Armok](#shrine-to-armok)
4. [Known Issues](#known-issues)
5. [FAQ](#faq)
6. [License](#license)




## Download
Check the [releases](https://github.com/ConnorWiseman/cannibalism/releases) page and download the release package targeting your version of Dwarf Fortress.




## Installation

1. Manually modify `[ENTITY:MOUNTAIN]` in `<Dwarf Fortress>/raw/objects/entity_default.txt`.
    1. Permit killing, eating, and crafting trophies from the remains of sapient races:
    ```
    [ETHIC:EAT_SAPIENT_OTHER:ACCEPTABLE]
    [ETHIC:EAT_SAPIENT_KILL:ACCEPTABLE]
    [ETHIC:MAKE_TROPHY_SAME_RACE:ACCEPTABLE]
    [ETHIC:MAKE_TROPHY_SAPIENT:ACCEPTABLE]
    ```
    2. Enable this mod's buildings and reactions:
    ```
    [PERMITTED_BUILDING:CHARNEL_PIT]
    [PERMITTED_REACTION:BUTCHER_CORPSE]
    [PERMITTED_BUILDING:DWARF_SKULL_TOTEM]
    [PERMITTED_REACTION:POLISH_TOTEM]
    [PERMITTED_REACTION:SMEAR_BLOOD]
    [PERMITTED_BUILDING:ALTAR_TO_ARMOK]
    [PERMITTED_REACTION:CONDUCT_BLOODLETTING]
    [PERMITTED_REACTION:COMMUNE_WITH_ARMOK]
    [PERMITTED_BUILDING:OSSUARY]
    [PERMITTED_REACTION:CARVE_DWARF_BONE_BLOCKS]
    [PERMITTED_REACTION:CARVE_DWARF_BONE_SLAB]
    [PERMITTED_REACTION:CARVE_DWARF_BONE_POT]
    [PERMITTED_REACTION:CARVE_DWARF_BONE_MECHANISM]
    [PERMITTED_BUILDING:KERATIN_LOOM]
    [PERMITTED_REACTION:WEAVE_DWARF_HAIR_CLOTH]
    [PERMITTED_BUILDING:HAIRCLOTH_WORKSHOP]
    ```
2. Merge the contents of `raw/` with `<Dwarf Fortress>/raw/`.
3. Generate a new world with the updated raw files.




## Features

### Charnel Pit
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>c</kbd>

A 5x5 workshop used to dismantle the dead. A worker with the _Butcher_ labor enabled can construct and use the Charnel Pit to butcher corpses belonging to anything, even his fellow dwarves. It is advised to place a corpse stockpile near any Charnel Pit you construct to optimize throughput.

Butchering a corpse at a Charnel Pit always yields 1 stack of 15 meat from the creature butchered. Butchering a corpse at a Charnel Pit also the following materials regardless of the type of corpse butchered:

* 5-9 dwarf bone
* 3-5 dwarf skin leather
* 1-3 dwarf fat
* 1 dwarf hair thread [35000]
* 1 totem

Reaction       | Hotkeys                   | Description
-------------- | ------------------------- | -----------
Butcher corpse | <kbd>a</kbd> <kbd>b</kbd> | Butchers a corpse.


### Dwarf Skull Totem
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>t</kbd>

A 1x1 workshop that mimics buildable dwarf skull totems. A worker with the _Bone Carving_ labor enabled can construct one using a totem from the Charnel Pit's _Butcher corpse_ reaction. Dwarf Skull Totems are purely cosmetic and have no other effects on any creature, though creatures with the appropriate BUILDINGDESTROYER token value will still target them.

Dwarves may polish or smear dwarf blood on any specified totem to gain a little extra experience in _Bone Carving_.

Reaction     | Hotkeys                   | Description
------------ | ------------------------- | -----------
Polish totem | <kbd>a</kbd> <kbd>p</kbd> | Polishes the totem.
Smear blood  | <kbd>a</kbd> <kbd>s</kbd> | Requires 1 large dwarven bone pot containing blood. Smears a little dwarf blood on the totem.


### Ossuary
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>o</kbd>

A 3x3 workshop used to carve dwarf bone. A worker with the _Bone Carving_ labor enabled can construct the Ossuary from 1 dwarf bone and use the workshop to process dwarf bone into more specialized materials.

Reaction        | Hotkeys                   | Description
--------------- | ------------------------- | -----------
Carve pot       | <kbd>a</kbd> <kbd>p</kbd> | Carves 1 dwarf bone into 1 large dwarven bone pot.
Carve blocks    | <kbd>a</kbd> <kbd>b</kbd> | Carves 1 dwarf bone into 4 dwarf bone blocks.
Carve mechanism | <kbd>a</kbd> <kbd>t</kbd> | Carves 1 dwarf bone block into 1 dwarf bone mechanism.
Carve slab      | <kbd>a</kbd> <kbd>s</kbd> | Compresses 2 dwarf bone blocks into 1 dwarf bone slab.


### Keratin Loom
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>l</kbd>

A 3x3 workshop used to weave dwarf hair thread into dwarf hair cloth. A worker with the _Weaving_ labor enabled can construct the Keratin Loom from 2 dwarf bone blocks and use the workshop to automatically process nearby dwarf hair thread.


### Haircloth Workshop
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>l</kbd>

A 3x3 workshop used to process woven dwarf hair cloth. A worker with the _Clothesmaking_ labor enabled can construct the Hairclot Workshop from 2 dwarf bone blocks and use the workshop to manufacture clothing fashioned from dwarf hair.


### Shrine to Armok
<kbd>b</kbd> <kbd>w</kbd> <kbd>Shift</kbd>+<kbd>a</kbd>

A 3x3 workshop used to honor the God of Blood. A worker with the _Bone Carving_ labor enabled can construct a Shrine to Armok, which may be used by any dwarf seeking to offer their blood in sacrifice or to commune with Armok Himself. Shrines to Armok are generally located away from the main thoroughfares of any Dwarf Fortress in places chosen especially to honor Armok, lest He grace unwary witnesses with His divinity.

Because _any_ dwarf can perform either of the functions provided by a Shrine to Armok, it is heavily recommended to restrict access to the intended worshiper by profiling Shrines to Armok with <kbd>Shift</kbd>+<kbd>p</kbd>.

Reaction             | Hotkeys                   | Description
-------------------- | ------------------------- | -----------
Conduct bloodletting | <kbd>a</kbd> <kbd>b</kbd> | Fills 1 large dwarven dwarf bone pot with blood; may kill the dwarf who performs the ceremony.
Commune with Armok   | <kbd>a</kbd> <kbd>c</kbd> | Requires 1 large dwarve bone pot filled with dwarf blood; may bestow random boons on the faithful.

Successful communion with Armok always bestows the following boons to faithful worshipers:

* An intense but temporary feeling of awe
* The added display name "Devotee of Armok"

Successful communion with Armok _may also_ bestow any or all of the following boons:

Blessing          | Probability
----------------- | -----------
BRAVERY+5         | 10%
EXTRAVISION       | 5%
LAW+5             | 10%
LOYALTY+5         | 10%
LIKES_FIGHTING    | 5%
MARTIAL_PROWESS+5 | 10%
NATURE-5          | 10%
NO_AGING          | 1%
NO_DIZZINESS      | 5%
NO_PHYS_ATT_RUST  | 5%
NOEXERT           | 5%
NOFEAR            | 5%
NONAUSEA          | 5%
NOSTUN            | 5%
NOSTUN            | 5%
PEACE-5           | 10%
POWER+5           | 10%
SPEED_PERC+5%     | 5%
VIOLENT+5         | 10%


## Known Issues

* There is no known way to limit `CORPSE` reagents to a specific creature type. Trial and error has also revealed that there is no way to use a corpse's base material type (except for `MEAT`, oddly enough) for the product of a reaction. The Charnel Pit will therefore happily butcher _any_ corpse, miraculously and mysteriously transforming its remains (except for its meat) into the dwarven equivalent.
* Some item types like bone, skulls, hair, and skin have no equivalent or functional item token (attempts to use `CORPSEPIECE` will crash Dwarf Fortress) and cannot be produced directly as the product of a reaction that keeps the resulting product true to the source creature and not, specifically, to the source creature's corpse. Where possible, the next best thing has been included as an alternative for each of these.
* It's not possible to define custom item classes, so there is no way to make buildable dwarf skull totems short of defining an entire workshop to mimic the process.
* Item stacking in reactions is buggy. The Dwarf Skull Totem workshop's _Smear blood_ reaction should consume 10 dwarf blood; it only consumes 1 dwarf blood.
* Because liquids inside workshops don't make the transition into being puddles or pools of their associated material, the Dwarf Skull Totem workshop's _Smear blood_ reaction effectively does nothing.
    * As a workaround to the above, one can _Smear blood_ on a single Dwarf Skull Totem repeatedly and then deconstruct the target workshop to produce a lovely red mess on surrounding tiles. Workshops built on pools of blood will clean the tile beneath them, however.
* The boiling stone method of delivering inhalable symptoms is unreliable, as dwarves performing reactions in any given workshop may occasionally not be breathing or manage to hold their breath through the resulting cloud of symptom-infused vapor.
    * Unfortunate passersby, including wandering animals, may also be caught up in any syndrome vapor cloud.
* Thread manufactured from animal hair may not be used in the manufacture of cloth; cloth made from animal hair thread may not be used in the manufacture of clothing or other goods.


## FAQ

__Q:__ _Is Cannibalism compatible with other mods?_ <br />
__A:__ In theory? Yes. In practice? Absolutely no idea.

__Q:__ _Is Cannibalism compatible with <older version> of Dwarf Fortress?_ <br />
__A:__ There are no plans to backport Cannibalism for older versions of Dwarf Fortress. Feel free to [fork the project](https://github.com/ConnorWiseman/cannibalism/tree/master#fork-destination-box) and modify it to suit your needs.

__Q:__ _Will Cannibalism support newer versions of Dwarf Fortress?_ <br />
__A:__ Yes, with one caveat. As Tarn Adams patches whatever oddness caused civilized races to stop butchering their own dead, the dependency on DFHack may be dropped entirely.

__Q:__ _Does Cannibalism let me butcher live dwarves?_ <br />
__A:__ No; the mechanism for using live creatures as reagents in a reaction is either undocumented or nonexistent. If you wish to butcher your dwarves, you must somehow turn them into corpses beforehand.

__Q:__ _Does Cannibalism interfere with traditional burial?_ <br />
__A:__ No. Fallen dwarves may still be dumped in garbage dumps, placed in corpse stockpiles, interred in coffins or casks and/or commemorated with memorial slabs, crushed beneath dwarven trash compactors, dropped into pools of magma, or whatever your preferred method of disposing of corpses may be. Cannibalism merely lets you do entertaining things with their remains.

__Q:__ _Why won't my dwarves butcher any of their corpses?_ <br />
__A:__ Cannibalism relies on DFHack to automatically set the `dead_dwarf` flag of all fallen dwarves to `false` when they die to permit your dwarves to use the corpses of members of their own civilization as reagents in a reaction. This mod won't function without DFHack.

Alternatively, the remains of your fallen corpses may be too far away for the Charnel Pit to work with them. Consider placing a corpse stockpile closer to your workshop.

__Q:__ _Will my dwarves return as ghosts if I butcher their corpses with the Charnel Pit?_ <br />
__A:__ Yes. Because the reaction consumes the corpse of your fallen dwarves, if you want to lay them to rest after butchering their remains, you must build and engrave a slab to honor their memory. The Charnel Pit has a crafting option to craft slabs from dwarf bone blocks, if you wish to honor your fallen with a memorial constructed from bits and pieces of themselves.

__Q:__ _Why can't I build constructions with dwarf bone?_ <br />
__A:__ Dwarf Fortress automatically marks any stone material you can craft blocks from as a reserved material. You must use the _Stone_ submenu of the _Status_ (<kbd>z</kbd>) menu to permit the use of dwarf bone.

__Q:__ _How can I report a bug, request a feature, or ask a question?_ <br />
__A:__ [Create a new issue](https://github.com/ConnorWiseman/cannibalism/issues/new) and apply the either `bug`, `feature request`, or `question` labels from the menu on the right.




## License

Cannibalism is licensed under [the MIT license](https://github.com/ConnorWiseman/cannibalism/blob/master/LICENSE).

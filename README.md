# Godot 2D Top-Down Template

<img src="https://alchemy-pot.web.app/res/2d-topdown-template-godot4.png" width="100%">

A comprehensive game template designed for Godot 4, providing everything you need to kickstart your 2D top-down game development journey.

### Supported Godot Version

[![Godot Engine](https://img.shields.io/badge/Godot_4.4+-blue?logo=godotengine&logoColor=white)](https://godotengine.org)

### Latest tested Godot Version

[![Godot Engine](https://img.shields.io/badge/Godot_4.6.1-blue?logo=godotengine&logoColor=white)](https://godotengine.org)

Godot version 4.4 or later is required, as the code utilizes [typed dictionaries](https://godotengine.org/article/dev-snapshot-godot-4-4-dev-2/#typed-dictionaries).

## 🎮 Web Demo

[Play the web demo](https://alchemy-pot.web.app/files/godot-2d-topdown-template/play) to get a grasp of the available features.

## ⚙️ Features

- **Character Controller** (basic movement + run, jump, attack, flash)
- **Health Controller** with optional health bars
- **Interaction System**
- **State Management** using State Machines
- **Save/Load System**
- **Inventory Management**
- ...and more!

# 📄 Docs

Read the [documentation](https://alchemy-pot.web.app/resources/godot-2d-topdown-template).

To explore a specific topic in more detail, you can refer directly to the code—**all key properties and functions are fully documented**.  

When starting your own project, you can safely remove all scenes that begin with **"playground_"**, as they are only meant for demonstration purposes. Then, set your desired starting level by configuring the **`start_level`** property in the `start_screen.tscn` scene.

## [Character Controller](https://alchemy-pot.web.app/godot-2d-topdown-template/character-controller)

Take full control of your characters: make them move, run, attack, jump, and flash while managing their states seamlessly.

## [Interaction System](https://alchemy-pot.web.app/godot-2d-topdown-template/interaction-system)

Enable your characters to interact with the game world. Trigger actions such as opening a chest, activating switches, or unlocking doors using the flexible interaction system.

## [Inventory System](https://alchemy-pot.web.app/godot-2d-topdown-template/inventory-system)

The inventory manages all the items owned by a player. The project provides a simple node (`Inventory.tscn`) assigned as a child of the player, which shows all the items owned by him. You can delete this inventory and create your own according to your preferences. Press _ESC_ on your keyboard to open/close the inventory.

## [Save/Load System](https://alchemy-pot.web.app/godot-2d-topdown-template/save-load-system)

Easily save and load game progress, including player data, entity positions, and the current state of state machines. Saved data persists across levels and can be stored in a file for later retrieval, allowing players to continue from where they left off.

## [State Management](https://alchemy-pot.web.app/godot-2d-topdown-template/state-machines)

State machines form the backbone of this template, controlling characters, NPCs, enemies, objects, and more. Each state focuses on a single behavior, allowing you to decide when and how states are activated.

## [Scenes Transition](https://alchemy-pot.web.app/godot-2d-topdown-template/scenes-transition)

Seamlessly move between scenes, whether transitioning from a title screen to a level or from one level to another, and customize the transition effects to match your game's aesthetic.

## [User Prefs and Localization](https://alchemy-pot.web.app/godot-2d-topdown-template/user-prefs-and-localization)

Save and load user preferences, such as music and sound effect volumes or selected language. Effortlessly implement multi-language support and game localization.

## [Dialogue System](https://alchemy-pot.web.app/godot-2d-topdown-template/dialogue-system)

Integrate a robust dialogue system to display message boxes and manage dialogues between game characters, enhancing narrative depth and player engagement.

## [Tilemaps and Levels](https://alchemy-pot.web.app/godot-2d-topdown-template/tilemaps-and-levels)

If you plan to use Tilemaps and the pre-built Level scene to build your levels, here you can discover some useful tips to create new levels and setting up autotiles in no time.

## [Debugger](https://alchemy-pot.web.app/godot-2d-topdown-template/debugger)

Simplify testing with a configurable debugger. Test features like saving sessions, toggling player collisions, restoring health, or blocking enemies. The debugger is extendable, so you can add custom functionalities as needed.

## 🙏 Credits

- **nathanhoad** for [Godot Dialogue Manager](https://github.com/nathanhoad/godot_dialogue_manager)
- **baconandgames** for [Godot4 Game Template](https://github.com/baconandgames/godot4-game-template)
- **dandeliondino** for [Tile Bit Tools](https://github.com/dandeliondino/tile_bit_tools)

## In Conclusion...

The Godot 2D Top-Down Template is one of the most comprehensive systems I have designed and developed. It is the result of my experience creating and playing various top-down action-adventure and RPG-style games. My hope is that this template helps you build something amazing and that one day, I’ll get to play your game!

The template is fully open-source, so feel free to explore the code and customize it to fit your needs. If you encounter bugs, missing features, or unclear documentation, don't hesitate to open an issue. Feature requests and contributions are also welcome, so feel free to submit them on the [GitHub repository](https://github.com/stesproject/godot-2d-topdown-template/issues).

Check out my [RPG Maker games](https://store.steampowered.com/search/?developer=Ste%27s%20Project) that inspired the creation of this template!

Enjoy creating! 🚀

<a href="https://ko-fi.com/stesproject" target="_blank"><img src="https://cdn.ko-fi.com/cdn/kofi1.png?v=3" alt="Ko-Fi" width="145px"></a>

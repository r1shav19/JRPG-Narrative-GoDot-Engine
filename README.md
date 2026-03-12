# PixelRPG-Core 🎮

A modular **JRPG-style narrative and quest framework** built using Godot Engine.
This project demonstrates core systems used in classic role-playing games such as dialogue trees, NPC interaction, quest triggers, and animated player movement.

The goal of this project is to build a **lightweight narrative-driven RPG prototype** that can serve as a base for story-focused games.

---

## ✨ Features

* 🧍 **Player Controller**

  * Top-down RPG movement
  * Animated sprite movement (up / down / left / right)

* 💬 **Dialogue System**

  * Branching dialogue tree
  * Choice-based interactions
  * NPC interaction system
  * Dialogue UI framework

* 📜 **Quest System**

  * Start quests via dialogue
  * Track quest states
  * Extendable quest architecture

* 🧠 **Narrative Manager**

  * Dialogue graph management
  * Story node progression
  * Modular structure for narrative expansion

* 🎮 **RPG Interaction System**

  * Player proximity interaction
  * NPC triggers
  * Dialogue progression system

---

## 🛠 Tech Stack

* **Engine:** Godot Engine 4.x
* **Language:** GDScript
* **Architecture:** Modular node-based game systems

---

## 🗂 Project Structure

```
PixelRPG-Core
│
├── scenes
│   ├── world.tscn
│   ├── player.tscn
│   └── npc.tscn
│
├── scripts
│   ├── player.gd
│   ├── npc.gd
│   ├── dialogue_ui.gd
│   ├── narrative_manager.gd
│   └── quest_manager.gd
│
└── assets
```

---

## 🎮 Current Gameplay Loop

1. Move the player around the map
2. Interact with NPCs
3. Trigger dialogue conversations
4. Choose dialogue options
5. Start quests through narrative decisions

---

## 🚧 Planned Features

* Quest Log UI
* Save / Load System
* Dynamic NPC dialogue based on quest progress
* JSON-based dialogue scripting
* Camera follow system
* Tile-based movement (classic JRPG style)

---

## 🎯 Project Goal

This project aims to build a **reusable narrative engine for JRPG-style games**, focusing on:

* branching story systems
* quest-driven gameplay
* modular RPG architecture

---

## 📷 Prototype Preview

Early development prototype showcasing dialogue interaction and animated movement.

---

## 🤝 Contributions

This project is currently in early development and open to improvements, experimentation, and system expansion.

---

## 📜 License

This project is released under the MIT License.

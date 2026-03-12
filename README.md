# 🎮 JRPG Narrative Engine (Godot)

A lightweight **JRPG-style narrative and dialogue system** built using the **Godot Engine**.
This project demonstrates how to create **interactive NPC dialogue, narrative branching, and player interaction systems** for pixel RPG games.

The engine is designed as a **modular foundation for story-driven RPGs** and can easily be expanded into a full JRPG framework.

---

## ✨ Features

* 🧍 **NPC Interaction System**
  Players can interact with NPCs using proximity triggers.

* 💬 **Dynamic Dialogue UI**
  Custom dialogue box system with text progression.

* 🔁 **Dialogue Loop / Branching Support**
  Dialogue can cycle or branch based on narrative logic.

* 📜 **Narrative Manager System**
  Central script controlling story flow and dialogue triggers.

* 🎮 **Player Controller**
  Basic player movement and interaction system.

* 🧠 **Expandable Architecture**
  Scripts are modular and designed to support:

  * quests
  * branching storylines
  * choice systems
  * cutscenes

---

## 🏗 Project Structure

```
pixel-rpg-core
│
├── player.gd              # Player movement & interaction
├── npc.gd                 # NPC interaction logic
├── narrative_manager.gd   # Narrative control system
├── dialogue_ui.gd         # Dialogue box UI
├── canvas_layer.gd        # UI layer control
│
├── player.tscn            # Player scene
├── world.tscn             # Main game world
├── canvas_layer.tscn      # UI scene
├── dialogue_ui.tscn       # Dialogue interface
│
└── project.godot          # Godot project configuration
```

---

## 🛠 Built With

* **Godot Engine**
* **GDScript**
* **Pixel RPG architecture**

---

## 🚀 Getting Started

1. Install **Godot Engine**
2. Clone the repository

```
git clone https://github.com/r1shav19/JRPG-Narrative-GoDot-Engine.git
```

3. Open the project in **Godot**
4. Run the `world.tscn` scene.

---

## 🔮 Future Improvements

* Dialogue choices system
* Save / load system
* Quest manager
* Cutscene support
* Inventory system
* Character portraits in dialogue

---

## 👨‍💻 Author

Developed by **Rishav**

GitHub:
https://github.com/r1shav19

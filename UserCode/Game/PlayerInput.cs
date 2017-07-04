using Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace Game
{
    [StructLayout(LayoutKind.Sequential)]
    public struct PlayerInput
    {
        public Vector2 Look;
        public Vector3 Move;
        public Vector3 SneakMove;
        public Vector2 CameraLook;
        public Vector3 CameraMove;
        public Vector3 CameraSneakMove;
        public bool ToggleCreativeFly;
        public bool ToggleSneak;
        public bool ToggleMount;
        public bool EditItem;
        public bool Jump;
        public int ScrollInventory;
        public bool ToggleInventory;
        public bool ToggleClothing;
        public bool TakeScreenshot;
        public bool SwitchCameraMode;
        public bool TimeOfDay;
        public bool Lighting;
        public bool KeyboardHelp;
        public bool GamepadHelp;
        public Vector2? Dig;
        public Vector2? Hit;
        public Vector2? Aim;
        public Vector2? Interact;
        public Vector2? PickBlockType;
        public bool Drop;
        public int? SelectInventorySlot;

        public bool isNetPlayer;
    }
}

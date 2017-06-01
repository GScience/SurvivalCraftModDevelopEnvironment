using Engine;
using Engine.Input;
using Game;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GScienceStudio
{
    class InputManager
    {
        public static void Initialize()
        {
            Keyboard.KeyDown += key => onKeyboardDown(key);
        }
        public static void onKeyboardDown(Key key)
        {
            if (key == Key.F12)
            {
                DialogsManager.HideAllDialogs();
                DialogsManager.ShowDialog(new ViewGameLogDialog());
            }
        }
    }
}

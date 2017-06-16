using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GScience.ModAPI.Block
{
    public class Block<BlockBaseType> where BlockBaseType : Game.Block
    {
        private static Block<BlockBaseType> m_block;

        protected static void setContentAndAddToGame(string blockContent)
        {
            BlockManager.addBlock<BlockBaseType>(blockContent);
        }
    }
}

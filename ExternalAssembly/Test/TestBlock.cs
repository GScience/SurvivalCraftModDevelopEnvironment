using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExternalAssembly.Test
{
    public class TestBlock : GScience.ModAPI.Block.Block<Game.CubeBlock>
    {
        static TestBlock()
        {
            setContentAndAddToGame("DirtBlock;Dirt;Terrain;;5;0,0,0;1, 1, 1;1;0.4;0.5, -0.5, -0.6;0, 40, 0;0.3;0,0.12,0;0, 0, 45;dirt;0;TRUE;TRUE;FALSE;FALSE;FALSE;FALSE;FALSE;FALSE;FALSE;FALSE;TRUE;FALSE;-1;0;0;1;#;1;0;40;40;0.5;1;3;FALSE;FALSE;0;0;Dirt;1;1;1;1;0.66;1;1;-1;FALSE;FALSE;FALSE;0;;0;FALSE;0.75;0;25;;;FALSE;Shovel;1.5;1;0;;2;1;test.");
        }
    }
}

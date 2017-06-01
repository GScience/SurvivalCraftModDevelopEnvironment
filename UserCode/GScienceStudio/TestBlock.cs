using Game;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GScienceStudio
{
    public class TestBlock : CubeBlock
    {
        public const int Index = 300;

        public override int GetFaceTextureSlot(int face, int value)
        {
            if (face == 4)
            {
                return 0;
            }
            if (face == 5)
            {
                return 2;
            }
            if (TerrainData.ExtractData(value) == 0)
            {
                return 3;
            }
            return 0x44;
        }
    }
}

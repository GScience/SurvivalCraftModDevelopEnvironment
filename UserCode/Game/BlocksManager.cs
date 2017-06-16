using Engine;
using Engine.Graphics;
using Engine.Serialization;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace Game
{
    public static class BlocksManager
    {
        // Fields
        private static Block[] m_blocks;
        private static List<string> m_categories = new List<string>();
        private static DrawBlockEnvironmentData m_defaultEnvironmentData = new DrawBlockEnvironmentData();
        private static FluidBlock[] m_fluidBlocks;
        private static RasterizerState m_rasterizerState;
        private static Vector4[] m_slotTexCoords;

        // Methods
        static BlocksManager()
        {
            RasterizerState state1 = new RasterizerState
            {
                CullMode = CullMode.CullCounterClockwise,
                ScissorTestEnable = true
            };
            m_rasterizerState = state1;
            m_slotTexCoords = new Vector4[0x100];
        }

        private static void CalculateSlotTexCoordTables()
        {
            for (int i = 0; i < 0x100; i++)
            {
                m_slotTexCoords[i] = TextureSlotToTextureCoords(i);
            }
        }

        public static int DamageItem(int value, int damageCount)
        {
            int index = TerrainData.ExtractContents(value);
            Block block = Blocks[index];
            if (block.Durability < 0)
            {
                return value;
            }
            int damage = block.GetDamage(value) + damageCount;
            if (damage <= block.Durability)
            {
                return block.SetDamage(value, damage);
            }
            return block.GetDamageDestructionValue(value);
        }

        public static void DrawCubeBlock(PrimitivesRenderer3D primitivesRenderer, int value, Vector3 size, ref Matrix matrix, Color color, Color topColor, DrawBlockEnvironmentData environmentData)
        {
            environmentData = environmentData ?? m_defaultEnvironmentData;
            Texture2D texture = (environmentData.SubsystemTerrain != null) ? environmentData.SubsystemTerrain.SubsystemAnimatedTextures.AnimatedBlocksTexture : BlocksTexturesManager.DefaultBlocksTexture;
            float num = LightingManager.LightIntensityByLightValue[environmentData.Light];
            color *= num;
            color.A = 0xff;
            topColor *= num;
            topColor.A = 0xff;
            Vector3 vector = matrix.Right * size.X;
            Vector3 vector2 = matrix.Up * size.Y;
            Vector3 vector3 = matrix.Forward * size.Z;
            Vector3 translation = matrix.Translation;
            Vector3 v = translation + (0.5f * ((-vector - vector2) - vector3));
            Vector3 vector5 = translation + (0.5f * ((vector - vector2) - vector3));
            Vector3 vector6 = translation + (0.5f * ((-vector + vector2) - vector3));
            Vector3 vector7 = translation + (0.5f * ((vector + vector2) - vector3));
            Vector3 vector8 = translation + (0.5f * ((-vector - vector2) + vector3));
            Vector3 vector9 = translation + (0.5f * ((vector - vector2) + vector3));
            Vector3 vector10 = translation + (0.5f * ((-vector + vector2) + vector3));
            Vector3 vector11 = translation + (0.5f * ((vector + vector2) + vector3));
            if (environmentData.ViewProjectionMatrix.HasValue)
            {
                Matrix m = environmentData.ViewProjectionMatrix.Value;
                Vector3.Transform(ref v, ref m, out v);
                Vector3.Transform(ref vector5, ref m, out vector5);
                Vector3.Transform(ref vector6, ref m, out vector6);
                Vector3.Transform(ref vector7, ref m, out vector7);
                Vector3.Transform(ref vector8, ref m, out vector8);
                Vector3.Transform(ref vector9, ref m, out vector9);
                Vector3.Transform(ref vector10, ref m, out vector10);
                Vector3.Transform(ref vector11, ref m, out vector11);
            }
            int index = TerrainData.ExtractContents(value);
            Block block = Blocks[index];
            Vector4 vector12 = m_slotTexCoords[block.GetFaceTextureSlot(0, value)];
            Color color2 = color * LightingManager.CalculateLighting(-matrix.Forward);
            color2.A = 0xff;
            TexturedBatch3D batchd1 = primitivesRenderer.TexturedBatch(texture, true, 0, null, m_rasterizerState, null, SamplerState.PointClamp);
            batchd1.QueueQuad(v, vector6, vector7, vector5, new Vector2(vector12.X, vector12.W), new Vector2(vector12.X, vector12.Y), new Vector2(vector12.Z, vector12.Y), new Vector2(vector12.Z, vector12.W), color2);
            vector12 = m_slotTexCoords[block.GetFaceTextureSlot(2, value)];
            color2 = color * LightingManager.CalculateLighting(matrix.Forward);
            color2.A = 0xff;
            batchd1.QueueQuad(vector8, vector9, vector11, vector10, new Vector2(vector12.Z, vector12.W), new Vector2(vector12.X, vector12.W), new Vector2(vector12.X, vector12.Y), new Vector2(vector12.Z, vector12.Y), color2);
            vector12 = m_slotTexCoords[block.GetFaceTextureSlot(5, value)];
            color2 = color * LightingManager.CalculateLighting(-matrix.Up);
            color2.A = 0xff;
            batchd1.QueueQuad(v, vector5, vector9, vector8, new Vector2(vector12.X, vector12.Y), new Vector2(vector12.Z, vector12.Y), new Vector2(vector12.Z, vector12.W), new Vector2(vector12.X, vector12.W), color2);
            vector12 = m_slotTexCoords[block.GetFaceTextureSlot(4, value)];
            color2 = topColor * LightingManager.CalculateLighting(matrix.Up);
            color2.A = 0xff;
            batchd1.QueueQuad(vector6, vector10, vector11, vector7, new Vector2(vector12.X, vector12.Y), new Vector2(vector12.X, vector12.W), new Vector2(vector12.Z, vector12.W), new Vector2(vector12.Z, vector12.Y), color2);
            vector12 = m_slotTexCoords[block.GetFaceTextureSlot(1, value)];
            color2 = color * LightingManager.CalculateLighting(-matrix.Right);
            color2.A = 0xff;
            batchd1.QueueQuad(v, vector8, vector10, vector6, new Vector2(vector12.Z, vector12.W), new Vector2(vector12.X, vector12.W), new Vector2(vector12.X, vector12.Y), new Vector2(vector12.Z, vector12.Y), color2);
            vector12 = m_slotTexCoords[block.GetFaceTextureSlot(3, value)];
            color2 = color * LightingManager.CalculateLighting(matrix.Right);
            color2.A = 0xff;
            batchd1.QueueQuad(vector5, vector7, vector11, vector9, new Vector2(vector12.X, vector12.W), new Vector2(vector12.X, vector12.Y), new Vector2(vector12.Z, vector12.Y), new Vector2(vector12.Z, vector12.W), color2);
        }

        public static void DrawFlatBlock(PrimitivesRenderer3D primitivesRenderer, int value, float size, ref Matrix matrix, Color color, DrawBlockEnvironmentData environmentData)
        {
            Vector3 right;
            Vector3 up;
            environmentData = environmentData ?? m_defaultEnvironmentData;
            Texture2D texture = (environmentData.SubsystemTerrain != null) ? environmentData.SubsystemTerrain.SubsystemAnimatedTextures.AnimatedBlocksTexture : BlocksTexturesManager.DefaultBlocksTexture;
            TexturedBatch3D batchd = primitivesRenderer.TexturedBatch(texture, true, 0, null, m_rasterizerState, null, SamplerState.PointClamp);
            float num = LightingManager.LightIntensityByLightValue[environmentData.Light];
            color *= num;
            color.A = 0xff;
            if (environmentData.BillboardDirection.HasValue)
            {
                right = Vector3.Normalize(Vector3.Cross(environmentData.BillboardDirection.Value, Vector3.UnitY));
                up = -Vector3.Normalize(Vector3.Cross(environmentData.BillboardDirection.Value, right));
            }
            else
            {
                right = matrix.Right;
                up = matrix.Up;
            }
            Vector3 translation = matrix.Translation;
            Vector3 v = translation + ((0.85f * size) * (-right - up));
            Vector3 vector4 = translation + ((0.85f * size) * (right - up));
            Vector3 vector5 = translation + ((0.85f * size) * (-right + up));
            Vector3 vector6 = translation + ((0.85f * size) * (right + up));
            if (environmentData.ViewProjectionMatrix.HasValue)
            {
                Matrix m = environmentData.ViewProjectionMatrix.Value;
                Vector3.Transform(ref v, ref m, out v);
                Vector3.Transform(ref vector4, ref m, out vector4);
                Vector3.Transform(ref vector5, ref m, out vector5);
                Vector3.Transform(ref vector6, ref m, out vector6);
            }
            int index = TerrainData.ExtractContents(value);
            Block block = Blocks[index];
            Vector4 vector7 = m_slotTexCoords[block.GetFaceTextureSlot(-1, value)];
            batchd.QueueQuad(v, vector5, vector6, vector4, new Vector2(vector7.X, vector7.W), new Vector2(vector7.X, vector7.Y), new Vector2(vector7.Z, vector7.Y), new Vector2(vector7.Z, vector7.W), color);
            if (!environmentData.BillboardDirection.HasValue)
            {
                batchd.QueueQuad(v, vector4, vector6, vector5, new Vector2(vector7.X, vector7.W), new Vector2(vector7.Z, vector7.W), new Vector2(vector7.Z, vector7.Y), new Vector2(vector7.X, vector7.Y), color);
            }
        }

        public static void DrawMeshBlock(PrimitivesRenderer3D primitivesRenderer, BlockMesh blockMesh, float size, ref Matrix matrix, DrawBlockEnvironmentData environmentData)
        {
            environmentData = environmentData ?? m_defaultEnvironmentData;
            Texture2D texture = (environmentData.SubsystemTerrain != null) ? environmentData.SubsystemTerrain.SubsystemAnimatedTextures.AnimatedBlocksTexture : BlocksTexturesManager.DefaultBlocksTexture;
            DrawMeshBlock(primitivesRenderer, blockMesh, texture, Color.White, size, ref matrix, environmentData);
        }

        public static void DrawMeshBlock(PrimitivesRenderer3D primitivesRenderer, BlockMesh blockMesh, Color color, float size, ref Matrix matrix, DrawBlockEnvironmentData environmentData)
        {
            environmentData = environmentData ?? m_defaultEnvironmentData;
            Texture2D texture = (environmentData.SubsystemTerrain != null) ? environmentData.SubsystemTerrain.SubsystemAnimatedTextures.AnimatedBlocksTexture : BlocksTexturesManager.DefaultBlocksTexture;
            DrawMeshBlock(primitivesRenderer, blockMesh, texture, color, size, ref matrix, environmentData);
        }

        public static void DrawMeshBlock(PrimitivesRenderer3D primitivesRenderer, BlockMesh blockMesh, Texture2D texture, Color color, float size, ref Matrix matrix, DrawBlockEnvironmentData environmentData)
        {
            Matrix matrix2;
            environmentData = environmentData ?? m_defaultEnvironmentData;
            float num = LightingManager.LightIntensityByLightValue[environmentData.Light];
            Vector4 vector = new Vector4(color) * num;
            bool flag = vector == Vector4.One;
            TexturedBatch3D batchd = primitivesRenderer.TexturedBatch(texture, true, 0, null, m_rasterizerState, null, SamplerState.PointClamp);
            bool flag2 = false;
            if (environmentData.ViewProjectionMatrix.HasValue)
            {
                matrix2 = matrix * environmentData.ViewProjectionMatrix.Value;
            }
            else
            {
                matrix2 = matrix;
            }
            if (size != 1f)
            {
                matrix2 = Matrix.CreateScale(size) * matrix2;
            }
            if (((matrix2.M14 != 0f) || (matrix2.M24 != 0f)) || ((matrix2.M34 != 0f) || (matrix2.M44 != 1f)))
            {
                flag2 = true;
            }
            int count = blockMesh.Vertices.Count;
            BlockMeshVertex[] vertexArray = blockMesh.Vertices.Array;
            int num3 = blockMesh.Indices.Count;
            ushort[] numArray = blockMesh.Indices.Array;
            DynamicArray<VertexPositionColorTexture> triangleVertices = batchd.TriangleVertices;
            int num4 = triangleVertices.Count;
            int num5 = triangleVertices.Count;
            triangleVertices.Count += count;
            for (int i = 0; i < count; i++)
            {
                BlockMeshVertex vertex = vertexArray[i];
                if (flag2)
                {
                    Vector4 v = new Vector4(vertex.Position, 1f);
                    Vector4.Transform(ref v, ref matrix2, out v);
                    float num8 = 1f / v.W;
                    vertex.Position = new Vector3(v.X * num8, v.Y * num8, v.Z * num8);
                }
                else
                {
                    Vector3.Transform(ref vertex.Position, ref matrix2, out vertex.Position);
                }
                if (vertex.IsEmissive | flag)
                {
                    triangleVertices.Array[num5++] = new VertexPositionColorTexture(vertex.Position, vertex.Color, vertex.TextureCoordinates);
                }
                else
                {
                    Color color2 = new Color((byte)(vertex.Color.R * vector.X), (byte)(vertex.Color.G * vector.Y), (byte)(vertex.Color.B * vector.Z));
                    triangleVertices.Array[num5++] = new VertexPositionColorTexture(vertex.Position, color2, vertex.TextureCoordinates);
                }
            }
            DynamicArray<ushort> triangleIndices = batchd.TriangleIndices;
            int num6 = triangleIndices.Count;
            triangleIndices.Count += num3;
            for (int j = 0; j < num3; j++)
            {
                triangleIndices.Array[num6++] = (ushort)(num4 + numArray[j]);
            }
        }

        public static Block FindBlockByTypeName(string typeName, bool throwIfNotFound)
        {
            Block block = Enumerable.FirstOrDefault<Block>(Blocks, delegate (Block b) {
                return b.GetType().Name == typeName;
            });
            if ((block == null) & throwIfNotFound)
            {
                object[] objArray1 = new object[] { typeName };
                throw new InvalidOperationException(string.Format("Block with type {0} not found.", (object[])objArray1));
            }
            return block;
        }

        public static Block[] FindBlocksByCraftingId(string craftingId)
        {
            return Enumerable.ToArray<Block>((IEnumerable<Block>)(from b in Blocks select b));
        }

        public static void Initialize()
        {
            CalculateSlotTexCoordTables();
            
            m_blocks = new Block[GScience.ModAPI.Block.BlockManager.getCount() + 1];
            m_fluidBlocks = new FluidBlock[GScience.ModAPI.Block.BlockManager.getCount() + 1];
            foreach (KeyValuePair<int, Block> pair in GScience.ModAPI.Block.BlockManager.getBlockList())
            {
                int index = pair.Key;
                m_blocks[index] = pair.Value;
                int introduced19 = pair.Key;
                m_fluidBlocks[introduced19] = pair.Value as FluidBlock;
            }
            for (int i = 0; i < m_blocks.Length; i++)
            {
                if (m_blocks[i] == null)
                {
                    m_blocks[i] = m_blocks[0];
                }
            }
            ContentManager.Dispose("BlocksData");
            LoadBlocksData(ContentManager.Get<string>("BlocksData"));
            Block[] blocks = Blocks;
            for (int j = 0; j < blocks.Length; j++)
            {
                blocks[j].Initialize();
            }
            m_categories.Add("Terrain");
            m_categories.Add("Plants");
            m_categories.Add("Construction");
            m_categories.Add("Items");
            m_categories.Add("Tools");
            m_categories.Add("Clothes");
            m_categories.Add("Electrics");
            m_categories.Add("Food");
            m_categories.Add("Spawner Eggs");
            m_categories.Add("Painted");
            m_categories.Add("Dyed");
            m_categories.Add("Fireworks");
            foreach (Block block2 in Blocks)
            {
                foreach (int num5 in block2.GetCreativeValues())
                {
                    string category = block2.GetCategory(num5);
                    if (!m_categories.Contains(category))
                    {
                        m_categories.Add(category);
                    }
                }
            }
        }

        private static void LoadBlocksData(string data)
        {
            Dictionary<Block, bool> dictionary = new Dictionary<Block, bool>();
            data = data.Replace("\r", string.Empty);
            char[] chArray1 = new char[] { '\n' };
            string[] strArray = data.Split(chArray1, (StringSplitOptions)StringSplitOptions.RemoveEmptyEntries);
            string[] strArray2 = null;
            for (int i = 0; i < strArray.Length; i++)
            {
                char[] separator = new char[] { ';' };
                string[] strArray3 = strArray[i].Split(separator);
                if (i == 0)
                {
                    strArray2 = new string[strArray3.Length - 1];
                    Array.Copy(strArray3, 1, strArray2, 0, strArray3.Length - 1);
                }
                else
                {
                    if (strArray3.Length != (strArray2.Length + 1))
                    {
                        object[] objArray1 = new object[] { (strArray3.Length != 0) ? strArray3[0] : "unknown" };
                        throw new InvalidOperationException(string.Format("Not enough field values for block \"{0}\".", (object[])objArray1));
                    }
                    string typeName = strArray3[0];
                    if (!string.IsNullOrEmpty(typeName))
                    {
                        Block block = Enumerable.FirstOrDefault<Block>(m_blocks, delegate (Block v) {
                            return v.GetType().Name == typeName;
                        });
                        if (block == null)
                        {
                            object[] objArray2 = new object[] { typeName };
                            throw new InvalidOperationException(string.Format("Block \"{0}\" not found when loading block data.", (object[])objArray2));
                        }
                        if (dictionary.ContainsKey(block))
                        {
                            object[] objArray3 = new object[] { typeName };
                            throw new InvalidOperationException(string.Format("Data for block \"{0}\" specified more than once when loading block data.", (object[])objArray3));
                        }
                        dictionary.Add(block, true);
                        Dictionary<string, FieldInfo> dictionary2 = new Dictionary<string, FieldInfo>();
                        foreach (FieldInfo info in RuntimeReflectionExtensions.GetRuntimeFields(block.GetType()))
                        {
                            if (info.IsPublic && !info.IsStatic)
                            {
                                dictionary2.Add(info.Name, info);
                            }
                        }
                        for (int j = 1; j < strArray3.Length; j++)
                        {
                            string str = strArray2[j - 1];
                            string str2 = strArray3[j];
                            if (!string.IsNullOrEmpty(str2))
                            {
                                FieldInfo info2;
                                if (!dictionary2.TryGetValue(str, out info2))
                                {
                                    object[] objArray4 = new object[] { str };
                                    throw new InvalidOperationException(string.Format("Field \"{0}\" not found or not accessible when loading block data.", (object[])objArray4));
                                }
                                object blockIndex = null;
                                if (str2.StartsWith("#"))
                                {
                                    string refTypeName = str2.Substring(1);
                                    if (string.IsNullOrEmpty(refTypeName))
                                    {
                                        blockIndex = (int)block.BlockIndex;
                                    }
                                    else
                                    {
                                        Block block2 = Enumerable.FirstOrDefault<Block>(m_blocks, delegate (Block v) {
                                            return v.GetType().Name == refTypeName;
                                        });
                                        if (block2 == null)
                                        {
                                            object[] objArray5 = new object[] { refTypeName };
                                            throw new InvalidOperationException(string.Format("Reference block \"{0}\" not found when loading block data.", (object[])objArray5));
                                        }
                                        blockIndex = (int)block2.BlockIndex;
                                    }
                                }
                                else
                                {
                                    blockIndex = HumanReadableConverter.ConvertFromString(info2.FieldType, str2);
                                }
                                info2.SetValue(block, blockIndex);
                            }
                        }
                    }
                }
            }
            foreach (Block block3 in Enumerable.Except<Block>(m_blocks, (IEnumerable<Block>)dictionary.Keys))
            {
                object[] objArray6 = new object[] { block3.GetType().Name };
                throw new InvalidOperationException(string.Format("Data for block \"{0}\" not found when loading blocks data.", (object[])objArray6));
            }
        }

        private static Vector4 TextureSlotToTextureCoords(int slot)
        {
            int num = slot / 0x10;
            int num1 = slot % 0x10;
            float x = (num1 + 0.001f) / 16f;
            float y = (num + 0.001f) / 16f;
            float z = ((num1 + 1) - 0.001f) / 16f;
            return new Vector4(x, y, z, ((num + 1) - 0.001f) / 16f);
        }

        // Properties
        public static Block[] Blocks
        {
            get
            {
                return m_blocks;
            }
        }

        public static ReadOnlyList<string> Categories
        {
            get
            {
                return new ReadOnlyList<string>(m_categories);
            }
        }

        public static FluidBlock[] FluidBlocks
        {
            get
            {
                return m_fluidBlocks;
            }
        }

    }
}

using Engine;
using Game;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace GScience.ModAPI.Block
{
    public static class BlockManager
    {
        private static int m_blockCount = 0;
        private static Dictionary<int, Game.Block> blockList = new Dictionary<int, Game.Block>();
        private static bool m_hasLoafSCBlock = false;

        public static int getCount()
        {
            if (!m_hasLoafSCBlock)
            {
                loadBlocks();
                m_hasLoafSCBlock = true;
            }
            return m_blockCount;
        }
        public static Dictionary<int, Game.Block> getBlockList()
        {
            if (!m_hasLoafSCBlock)
            {
                loadBlocks();
                m_hasLoafSCBlock = true;
            }
            return blockList;
        }
        internal static void addBlock<BlockBaseType>(string blockContent) where BlockBaseType : Game.Block
        {
            Game.Block block = (Game.Block)Activator.CreateInstance((typeof(BlockBaseType)).GetType());

            FieldInfo blockIndexField = block.GetType().GetRuntimeFields().Where<FieldInfo>((Func<FieldInfo, bool>)(fi =>
            {
                if (fi.Name == "Index" && fi.IsPublic)
                    return fi.IsStatic;
                return false;
            })).FirstOrDefault<FieldInfo>();

            if ((blockIndexField == null) || (blockIndexField.FieldType != typeof(int)))
            {
                object[] objArray2 = new object[] { block.GetType().FullName };
                throw new InvalidOperationException(string.Format("Block type \"{0}\" does not have static field Index of type int.", (object[])objArray2));
            }

            int blockIndex = (int)((int)blockIndexField.GetValue(null));
            if (blockList.ContainsKey(blockIndex))
            {
                object[] objArray1 = new object[] { block.GetType().FullName };
                throw new InvalidOperationException(string.Format("Index of block type \"{0}\" conflicts with another block.", (object[])objArray1));
            }

            block.BlockIndex = blockIndex;
            blockList.Add(blockIndex, block);
            m_blockCount = MathUtils.Max(m_blockCount, blockIndex);
        }
        internal static void loadBlocks()
        {
            foreach (TypeInfo info in IntrospectionExtensions.GetTypeInfo((Type)typeof(Game.BlocksManager)).Assembly.DefinedTypes)
            {
                if (info.IsSubclassOf(typeof(Game.Block)) && !info.IsAbstract)
                {
                    FieldInfo info2 = info.AsType().GetRuntimeFields().Where<FieldInfo>((Func<FieldInfo, bool>)(fi =>
                    {
                        if (fi.Name == "Index" && fi.IsPublic)
                            return fi.IsStatic;
                        return false;
                    })).FirstOrDefault<FieldInfo>();
                    if ((info2 == null) || (info2.FieldType != typeof(int)))
                    {
                        object[] objArray2 = new object[] { info.FullName };
                        throw new InvalidOperationException(string.Format("Block type \"{0}\" does not have static field Index of type int.", (object[])objArray2));
                    }
                    int blockIndex = (int)((int)info2.GetValue(null));
                    if (blockList.ContainsKey(blockIndex))
                    {
                        object[] objArray1 = new object[] { info.FullName };
                        throw new InvalidOperationException(string.Format("Index of block type \"{0}\" conflicts with another block.", (object[])objArray1));
                    }
                    Game.Block block = (Game.Block)Activator.CreateInstance(info.AsType());
                    block.BlockIndex = blockIndex;
                    blockList.Add(blockIndex, block);
                    m_blockCount = MathUtils.Max(m_blockCount, blockIndex);
                }
                else if (info.IsSubclassOf(typeof(GScience.ModAPI.Block.Block<>)) && !info.IsAbstract)
                {
                    FieldInfo info2 = info.AsType().GetRuntimeFields().Where<FieldInfo>((Func<FieldInfo, bool>)(fi =>
                    {
                        if (fi.Name == "m_block" && fi.IsPublic)
                            return fi.IsStatic;
                        return false;
                    })).FirstOrDefault<FieldInfo>();

                    if ((info2 == null) || (info2.FieldType != typeof(Block<>)))
                    {
                        object[] objArray2 = new object[] { info.FullName };
                        throw new InvalidOperationException(string.Format("Block type \"{0}\" does not have static field m_block of type int.", (object[])objArray2));
                    }
                    throw new InvalidOperationException("Block type \"{0}\" does not have static field m_block of type int.");
                    info2.GetValue(null);
                }
            }
        }
    }
}

using System;
using System.Collections.Generic;

namespace Utility
{
    public static class CollectionExtensions
    {
        public static void Foreach<T>(this IEnumerable<T> items, Action<T> action)
        {
            foreach (var i in items)
                action.Invoke(i);
        }
    }
}

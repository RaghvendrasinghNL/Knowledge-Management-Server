using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace AppUnitTest
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void TestSum()
        {
            /// arrange or mock
            var a = 1;
            var b = 4;
            var expected = 5;

            // Act
            var result = Sum(a, b);

            /// Assert
            Assert.AreEqual(expected, result);
        }

        private int Sum(int a, int b)
        {
            return a + b;
        }
    }
}

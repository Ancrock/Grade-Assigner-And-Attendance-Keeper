using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.WebPages;
using System.Web.Mvc;
using UnitTestProject1;



namespace UnitTestProject1
{
    [TestClass]
    public class UnitTest1
    {
        [TestMethod]
        public void Calc_Scale_Total()
        {
            //Arrange
            var p = new amarks();
                System.Int32 a = 1;
                System.Int32 b = 2;
                 System.Int32 c = 3;
                  System.Int32 d = 4;
                   System.Int32 e = 5;
                    System.Int32 actual = p.add(a,b,c,d,e);
            int expected = 15;
            //Act
            actual = p.add(a,b,c,d,e);
            //Assert
            Assert.AreEqual(expected, actual);
        }
    }
    [TestClass]

    public class Unitest2
    {
        [TestMethod]
        public void Progress_Report_Total()
        {
            var a = new rreport();
            System.Int32 q = 5;
            System.Int32 b = 6;
            System.Int32 c = 7;
            System.Int32 d = 8;
            System.Int32 e = 9;
            System.Int32 actual = a.calculate(q, b, c, d, e);
            int expected = 35;
            actual = a.calculate(q, b, c, d, e);
            Assert.AreEqual(expected, actual);

        }
    }
    [TestClass]

    public class Unitest3
    {
        [TestMethod]
        public void Student_Percentage()
        {
            var b = new rreport();
            int i = 78;
            int j = 80;
            int expected = 97;
            int actual;
            actual = b.percentage(i, j);
            Assert.AreEqual(expected, actual);
        }
    }

    [TestClass]

    public class Unitest4
    {
        [TestMethod]
        public void Calc_Attendance_Percentage()
        {
            var b = new ratten();
            int i = 67;
            int j = 80;
            int expected = 83;
            int actual;
            actual = b.att_calculate(i, j);
            Assert.AreEqual(expected, actual);
        }
    }
    [TestClass]

    public class Unitest5
    {
        [TestMethod]
        public void Total_marks_Recieved()
        {
            var b = new assign();
            int i = 20;
            int j = 80;
            int expected = 25;
            int actual;
            actual = b.findout(i, j);
            Assert.AreEqual(expected, actual);
        }
    }
    [TestClass]

    public class Unitest6
    {
        [TestMethod]
        public void calc_student_total()
        {
            var a = new assign();
            System.Int32 q = 10;
            System.Int32 b = 6;
            System.Int32 c = 7;
            System.Int32 d = 8;
            System.Int32 e = 9;
            System.Int32 actual = a.findtotal(q, b, c, d, e);
            int expected = 40;
            actual = a.findtotal(q, b, c, d, e);
            Assert.AreEqual(expected, actual);

        }
    }
}

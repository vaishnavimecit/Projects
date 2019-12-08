using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;


/// <summary>
/// Summary description for Class1
/// </summary>
class GetSucc
{
    //if search go forward from 0 to number n 

    public ArrayList GetSussessor(int State)
    {
        ArrayList Result = new ArrayList();
        Result.Add(2 * State + 1);
        Result.Add(2 * State + 2);
        return Result;

    }
    //if search go backward from n to number 0
    public ArrayList GetSussessor_Reverse(int State)
    {
        ArrayList Result = new ArrayList();
        if (State % 2 == 0)
        {
            int P = State / 2 - 1;
            Result.Add(P);
        }
        else
        {
            int Sib = State + 1;
            Result.Add(Sib / 2 - 1);

        }

        return Result;
    }
    //if the cost of each node must be determined
    public ArrayList GetSussessor(int State, Node Parent)
    {
        ArrayList Result = new ArrayList();
        Random n = new Random();
        Test s = new Test();
        Result.Add(new Node(2 * State + 1, Parent, n.Next(1, 100) + Parent.Cost));
        Result.Add(new Node(2 * State + 2, Parent, n.Next(1, 100) + Parent.Cost));
        Result.Sort(s);
        return Result;

    }
}//end class

//implement the interface IComparer to compare objects in ArrayList 
public class Test : IComparer
{
    public int Compare(object x, object y)
    {
        int val1 = ((Node)x).Cost;
        int val2 = ((Node)y).Cost;
        if (val1 <= val2)
            return 1;
        else
            return 0;
    }
}//end class Test
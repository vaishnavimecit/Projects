using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for IterativeDeepeningDepthFirst
/// </summary>
public static class BreadthDeepeningSearch
{	

    public static void Iterative_Deepening_Search(Node Start, Node Goal)
    {
        bool Cutt_off = false;
        int depth = 0;
        while (Cutt_off == false)
        {
            Console.WriteLine("Search Goal at Depth {0}", depth);
            Depth_Limited_Search(Start, Goal, depth, ref Cutt_off);
            Console.WriteLine("-----------------------------");
            depth++;
        }
    }//end method

    public static void Depth_Limited_Search(Node Start, Node Goal,
        int depth_Limite, ref bool Cut_off)
    {
        GetSucc x = new GetSucc();
        ArrayList children = new ArrayList();
        Stack Fringe = new Stack();
        Fringe.Push(Start);
        while (Fringe.Count != 0)
        {
            Node Parent = (Node)Fringe.Pop();
            Console.WriteLine("Node {0} Visited ", Parent.State);
            // Console.ReadKey();
            if (Parent.State == Goal.State)
            {
                Console.WriteLine();
                Console.WriteLine("Find Goal   " + Parent.State);
                Cut_off = true;
                break;
            }//end if
            if (Parent.depth == depth_Limite)
            {
                continue;
            }
            else
            {
                children = x.GetSussessor(Parent.State);
                for (int i = 0; i < children.Count; i++)
                {
                    int State = (int)children[i];
                    Node Tem = new Node(State, Parent);
                    Fringe.Push(Tem);

                }//end for
            }//end else

        }//end while

    }//end method
   
}




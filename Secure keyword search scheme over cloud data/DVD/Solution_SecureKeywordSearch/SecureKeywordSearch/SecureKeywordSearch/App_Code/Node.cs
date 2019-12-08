using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Node
/// </summary>
// class Node.cs
public class Node
{
    public int depth;
    public int State;
    public int Cost;
    public Node Parent;
    // Parent Node  which has depth =0 and parent = null;
    public Node(int State)
    {
        this.State = State;
        this.Parent = null;
        this.depth = 0;
    }
    // another form of Node Constructor which accepts only the State;

    //public Node(int State)
    //{
    //    this.State = State;
    //}
    // this form of Generalization of Node Constructor which accepts 
    // any node root or ordinary node;

    public Node(int State, Node Parent)
    {
        this.State = State;
        this.Parent = Parent;
        if (Parent == null)
            this.depth = 0;
        else
            this.depth = Parent.depth + 1;
    }

    // this form of Generalization of Node Constructor which accept 
    // any node root or ordinary node and  accept the cost of each node;

    public Node(int State, Node Parent, int Cost)
    {
        this.State = State;
        this.Parent = Parent;
        this.Cost = Cost;
        if (Parent == null)
            this.depth = 0;
        else
            this.depth = Parent.depth + 1;
    }
}
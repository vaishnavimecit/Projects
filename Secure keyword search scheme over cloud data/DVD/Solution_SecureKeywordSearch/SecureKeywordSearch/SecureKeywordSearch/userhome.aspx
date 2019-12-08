<%@ Page Title="" Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="userhome.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p align="justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        In this paper, a secure, efficient and dynamic search scheme is proposed, which 
        supports not only the accurate multi-keyword ranked search but also the dynamic 
        deletion and insertion of documents. We construct a special keyword balanced 
        binary tree as the index, and propose a “Greedy Depth-first Search” algorithm to 
        obtain better efficiency than linear search. In addition, the parallel search 
        process can be carried out to further reduce the time cost. The security of the 
        scheme is protected against two threat models by using the secure kNN algorithm. 
        Experimental results demonstrate the efficiency of our proposed scheme. There 
        are still many challenge problems in symmetric SE schemes. In the proposed 
        scheme, the data owner is responsible for generating updating information and 
        sending them to the cloud server. Thus, the data owner needs to store the 
        unencrypted index tree and the information that are necessary to recalculate the 
        IDF values.</p>
    <p align="center">
&nbsp;<img src="images/user2.png" 
            style="height: 299px; width: 282px; position:absolute; top: 445px; left: 488px;" /></p>
</asp:Content>


using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Pizzeria.Models
{
public class Order {
[ScaffoldColumn(false)]
public  int	OrderId	{  get;  set;  }
[ScaffoldColumn(false)]
public System.DateTime OrderDate { get; set; }
[ScaffoldColumn(false)]
public string OrderStatus { get; set; } 


[Required(ErrorMessage = "First  Name  is  required")]
//[RegularExpression(@"/^[A-z]+$/", ErrorMessage = "Only characters and space are allowed.")]
[DisplayName("First  Name")]
[StringLength(160)] 
public  string  FirstName	{  get;  set;  }
[Required(ErrorMessage = "Last  Name  is  required")]
//[RegularExpression(@"/^[a-zA-Z]*$/", ErrorMessage = "Only characters and space are allowed.")]
[DisplayName("Last  Name")]
[StringLength(160)] 
public  string  LastName	{  get;  set;  }
[Required(ErrorMessage = "Address  is  required")]
[StringLength(70)]

public  string  Address	{  get;  set;  }
[Required(ErrorMessage = "Zip code  is  required")]
[RegularExpression(@"^\d{5}$", ErrorMessage = "Please enter a 5 digit zip code.")]
[DisplayName("Zip Code")]
[StringLength(40)] 
public  string  ZipCode  {  get;  set;  }
[Required(ErrorMessage = "Phone number is  required")]
[RegularExpression(@"^\([0-9]{3}\)[0-9]{3}-[0-9]{4}$", ErrorMessage = "Please enter valid a phone number (XXX)XXX-XXXX.")]
[DisplayName("Phone Number")]
[StringLength(40)] 
public  string  Phone	{  get;  set;  }
[DisplayName("Email  Address")]
[RegularExpression(@"[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,4}", ErrorMessage = "Email  is not  valid.")]

public  string  Email	{  get;  set;  }
[ScaffoldColumn(false)]
[DisplayName("Total ($)")]
public  decimal Total	{  get;  set;  }
public List<OrderDetail> OrderDetails { get; set; }
  }
}
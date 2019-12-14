using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	public class Program
	{
		public static BaseBehavior CurrentBehavior
		{
			get;
			set;
		}
	}
}

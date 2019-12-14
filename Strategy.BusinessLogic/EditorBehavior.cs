using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	/// <summary>
	/// Editor Behavior - can publish or reject
	/// </summary>
	public class EditorBehavior : BaseBehavior
	{
		public EditorBehavior()
		{
			CanEdit = false;
			CanPublish = true;
			CanReject = true;
			CanSubmit = false;
		}
	}
}

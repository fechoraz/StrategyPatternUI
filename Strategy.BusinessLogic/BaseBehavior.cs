using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Strategy.BusinessLogic
{
	public abstract class BaseBehavior
	{
		public bool CanEdit { get; protected set; }
		public bool CanSubmit { get; protected set; }
		public bool CanReject { get; protected set; }
		public bool CanPublish { get; protected set; }

		/// <summary>
		/// Get Behavior based on role type
		/// </summary>
		/// <param name="type">The role type</param>
		public static BaseBehavior GetBehavior(RoleType type)
		{
			switch(type)
			{
				case RoleType.Writer:
					return new WriterBehavior();

				case RoleType.Editor:
					return new EditorBehavior();

                case RoleType.Administrator:
                    return new AdministratorBehavior();

				default:
					return new UserBehavior();
			}
		}
	}
}

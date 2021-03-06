﻿using AL.Events.Business.Authentication;
using System.Web;
using System.Web.Mvc;

namespace AL.Events.WEB.RoleAttributes
{
    public class ForUser : AuthorizeAttribute
    {
        protected override bool AuthorizeCore(HttpContextBase httpContext)
        {
            var user = HttpContext.Current.User;
            if (user is UserPrincipal)
            {
                if (user.IsInRole("user") || user.IsInRole("admin") || user.IsInRole("editor"))
                {
                    return true;
                }
            }
            return false;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Login_v4
{
    public class User
    {
        public String username;
        public String email;
      
        public User(String username , String email)
        {
            this.username = username;
            this.email = email;
        }
        
    }
}
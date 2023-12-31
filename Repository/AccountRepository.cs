﻿using BusinessObject.Models;
using ManagementDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public class AccountRepository : IAccountRepository
    {
        public bool AddAcount(Account account) => AccountDAO.Instance.AddAcount(account);

        public Account GetAccount(string username, string passWord) => AccountDAO.Instance.GetAccount(username, passWord);

        public List<Account> GetAlll() => AccountDAO.Instance.GetAlll();

        public bool UpdateAccount(Account account) => AccountDAO.Instance.UpdateAccount(account);
    }
}

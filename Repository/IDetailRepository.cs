﻿using BusinessObject.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repository
{
    public interface IDetailRepository
    {
        List<AccountDetail> GetAll();
        bool AddAccountDetail(AccountDetail accountDetail);
        bool UpdateAccoutDetail(AccountDetail accountDetail);
    }
}

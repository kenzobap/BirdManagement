﻿using BusinessObject.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ManagementDAO
{
    public class BillDetailDAO
    {
        private static BillDetailDAO instance;
        private BillDetailDAO() { }
        public static BillDetailDAO Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new BillDetailDAO();
                }
                return instance;
            }
        }

        public List<BillDescription> GetAll()
        {
            using(var context = new BirdManagementContext())
            {
                return context.BillDescriptions.Include(b => b.Product).ToList();
            }
        }

        public bool AddBillDetail(BillDescription billDetail)
        {
            try
            {
                using(var context = new BirdManagementContext())
                {
                    context.BillDescriptions.Add(billDetail);
                    context.SaveChanges();
                }
                return true;
            }
            catch
            {
                return false;
            }
        }
    }
}
